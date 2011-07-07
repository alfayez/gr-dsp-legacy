/** ============================================================================
 *  @file   tskLoop.c
 *
 *  @path   $(DSPLINK)/dsp/src/samples/loop/
 *
 *  @desc   This is simple TSK based application that uses SIO interface to
 *          implement loopback for GPP. It receives data from the a input
 *          channel and send the same data back from output channel. Input and
 *          output channel numbers are configurable through header file of this
 *          application.
 *
 *  @ver    1.61.03
 *  ============================================================================
 *  Copyright (c) Texas Instruments Incorporated 2002-2008
 *
 *  Use of this software is controlled by the terms and conditions found in the
 *  license agreement under which this software has been supplied or provided.
 *  ============================================================================
 */


/*  ----------------------------------- DSP/BIOS Headers            */
#include <std.h>
#include <log.h>
#include <swi.h>
#include <sys.h>
#include <sio.h>
#if defined (DSP_BOOTMODE_NOBOOT)
#include <dio.h>
#include <iom.h>
#endif
#include <tsk.h>

/*  ----------------------------------- DSP/BIOS LINK Headers       */
#include <failure.h>
#include <dsplink.h>
#include <platform.h>
#if defined (DSP_BOOTMODE_NOBOOT)
#include <sma_pool.h>
#include <zcpy_data.h>
#endif

/*  ----------------------------------- Sample Headers              */
#include <loop_config.h>
#include <tskLoop.h>
#include <_hal_cache.h>
//#include <csl.h>
//#include <csl_cache.h>
#include <string.h>
#include "typedef.h"
#include "IQmath.h"


#define GLOBAL_Q (14)


//#include <dsp_fir_cplx.h>

    //bufferType rf_data_in0[MAX_SIZE];
    //bufferType rf_data_in1[MAX_SIZE/2];
    bufferType rf_data_size = 0;    
    bufferType fir_coeff[MAX_DSP_BLOCKS][MAX_SIZE/2];
    bufferType fir_coeff_size[MAX_DSP_BLOCKS], scaling_factor[MAX_DSP_BLOCKS], interpolation_factor[MAX_DSP_BLOCKS];
    
    int		first_entry = 0;
    int		stallVar=1, stallCount=0;
    short	iq_data1_short=0, iq_data2_short=0, iq_result_short=0;
    _iq		iq_data1, iq_data2, iq_result, iq_scale;
/** ============================================================================
 *  @const  FILEID
 *
 *  @desc   FILEID is used by SET_FAILURE_REASON macro.
 *  ============================================================================
 */
#define FILEID  FID_APP_C

/** ============================================================================
 *  @name   xferBufSize
 *
 *  @desc   Size of the buffer size for TSK based loopback.
 *  ============================================================================
 */
extern Uint32 xferBufSize ;

/** ============================================================================
 *  @name   numTransfers
 *
 *  @desc   Iterations of data transfer to be done by the application.
 *          A value of 0 in numTransfers implies infinite iterations.
 *  ============================================================================
 */
extern Uint16 numTransfers ;

#if defined (DSP_BOOTMODE_NOBOOT)
/** ============================================================================
 *  @name   smaPoolObj
 *
 *  @desc   Global object for pool parameters for the dynamic POOL_open call
 *  ============================================================================
 */
SMAPOOL_Params            smaPoolObj ;

extern IOM_Fxns ZCPYDATA_FXNS ;
extern Void ZCPYDATA_init (Void) ;


DIO_Params dioAttrs = {
     "/dsplink",
      NULL
} ;

DEV_Attrs devAttrs = {
        0,            /* devId */
        0,            /* dsplink deviceParams */
        DEV_IOMTYPE,  /* dsplink driver type */
        0             /* dsplink devp */
} ;

DEV_Attrs dioDevAttrs = {
        0,            /* devId */
        &dioAttrs,    /* DIO deviceParams */
        DEV_SIOTYPE,  /* DIO type */
        0             /* devp */
} ;
#endif


/** ============================================================================
 *  @func   TSKLOOP_create
 *
 *  @desc   Create phase function for the TSKLOOP application. Initializes the
 *          TSKLOOP_TransferInfo structure with the information that will be
 *          used by the other phases of the application.
 *
 *  @modif  None.
 *  ============================================================================
 */
Int TSKLOOP_create (TSKLOOP_TransferInfo ** infoPtr)
{
    Int                     status = SYS_OK ;
    TSKLOOP_TransferInfo *  info = NULL ;
    SIO_Attrs               attrs ;
    Uint16                  i ;
    Uint16                  j ;
#if  defined (DSP_BOOTMODE_NOBOOT)
    POOL_Obj                poolObj ;

    smaPoolObj.poolId        = 0;
    smaPoolObj.exactMatchReq = TRUE ;
    poolObj.initFxn          = SMAPOOL_init ;
    poolObj.fxns             = (POOL_Fxns *) &SMAPOOL_FXNS ;
    poolObj.params           = &(smaPoolObj) ;
    poolObj.object           = NULL ;

    status = POOL_open (0, &poolObj) ;

    /* Create IOM driver dynamically */
    status = DEV_createDevice("/dsplink", &ZCPYDATA_FXNS, (Fxn) &ZCPYDATA_init, &devAttrs) ;

    /* Create DIO adapter dynamically */
    status = DEV_createDevice("/dio_dsplink", &DIO_tskDynamicFxns, NULL, &dioDevAttrs);
#endif

    /* Allocate TSKLOOP_TransferInfo structure that will be initialized
     * and passed to other phases of the application
     */
    *infoPtr = MEM_calloc (DSPLINK_SEGID,
                           sizeof (TSKLOOP_TransferInfo),
                           DSPLINK_BUF_ALIGN) ;

    if (*infoPtr == NULL) {
        status = SYS_EALLOC ;
    }
    else {
        info = *infoPtr ;
    }

    if (status == SYS_OK) {
        /* Filling up the transfer info structure */
        info->numTransfers =  numTransfers ;
        info->bufferSize   =  xferBufSize ;
        info->numBuffers   =  TSK_NUM_BUFFERS ;

        /* Attributes for the stream creation */
        attrs = SIO_ATTRS ;
        attrs.nbufs   = info->numBuffers ;
        attrs.segid   = DSPLINK_SEGID ;
        attrs.align   = DSPLINK_BUF_ALIGN ;
        attrs.flush   = TRUE ;
        attrs.model   = SIO_ISSUERECLAIM ;
        attrs.timeout = SYS_FOREVER ;

        /* Creating input and output streams */
        info->inputStream = SIO_create (INPUT_CHANNEL,
                                        SIO_INPUT,
                                        info->bufferSize,
                                        &attrs) ;
        info->outputStream = SIO_create (OUTPUT_CHANNEL,
                                         SIO_OUTPUT,
                                         info->bufferSize,
                                         &attrs) ;

        if (   (info->inputStream  == NULL)
            || (info->outputStream == NULL)) {
            status = SYS_EALLOC ;
        }
    }

    /* Allocating all the buffers that will be used in the transfer */
    if (status == SYS_OK) {
        for (i = 0 ; (i < info->numBuffers) && (status == SYS_OK) ; i++) {
            status = POOL_alloc (SAMPLE_POOL_ID,
                                 (Ptr *) &(info->buffers [i]),
                                 info->bufferSize) ;
            if (status != SYS_OK) {
                for (j = 0 ; j < i ; j++) {
                    POOL_free (SAMPLE_POOL_ID,
                               info->buffers [i],
                               info->bufferSize) ;
                    info->buffers [j] = NULL ;
                }
                status = SYS_EALLOC ;
            }
        }
    }
    
    
    ///////////////////////////////
    // init buffers
    memset(fir_coeff,            0, sizeof(fir_coeff));
    memset(fir_coeff_size,       0, sizeof(fir_coeff_size));
    memset(scaling_factor,       0, sizeof(scaling_factor));
    memset(interpolation_factor, 0, sizeof(interpolation_factor));

    return status ;
}


/** ============================================================================
 *  @func   TSKLOOP_execute
 *
 *  @desc   Execute phase function for the TSKLOOP application. Application
 *          receives the data from the input channel and sends the same data
 *          back on output channel. Channel numbers can be configured through
 *          header file.
 *
 *  @modif  None.
 *  ============================================================================
 */
Int TSKLOOP_execute(TSKLOOP_TransferInfo * info)
{
    Int         status  = SYS_OK ;
    Char *      buffer  = info->buffers [0] ;
    Arg         arg     = 0 ;
    Uint32      i=0,k=0, l=0;
    Int         nmadus ;
	bufferType	temp_zero=0;
	bufferType  fir_interp_div = 0;
	bufferType  fir_interp_rem = 0;
	bufferType  block_id = 0;
	bufferType  block_type = 0;
	bufferType* iq_temp=NULL;
	bufferType* coeff_temp=NULL;
	bufferType* buffer_temp=NULL;
	
    //bufferType* rf_data_in0_temp = rf_data_in0;
    //bufferType* rf_data_in1_temp = rf_data_in1;
    //Char *      buffer_temp  = info->buffers [0] ;
    
    /* Execute the loop for configured number of transfers
     * A value of 0 in numTransfers implies infinite iterations
     */

    //BCACHE_setMode(BCACHE_L1D, BCACHE_FREEZE);


//    for (i = 0 ;
//         (   ((info->numTransfers == 0) || (i < info->numTransfers))
//          && (status == SYS_OK)) ;
//         i++) {
//	while (stallVar)
//		stallCount++;

while (1) {
        /* Receive a data buffer from GPP */
        status = SIO_issue(info->inputStream,
                           buffer,
                           info->bufferSize,
                           arg) ;
        if (status == SYS_OK) {
            nmadus = SIO_reclaim (info->inputStream,
                                  (Ptr *) &buffer,
                                  &arg) ;
            if (nmadus < 0) {
                status = -nmadus ;
                SET_FAILURE_REASON (status) ;
            }
            else {
                info->receivedSize = nmadus ;
            }
        }
        else {
            SET_FAILURE_REASON(status);
        }
        /* Do processing on this buffer */
	
	if (status == SYS_OK) {    
			//block_type = _mem2_const(buffer+sizeof(bufferType)*(DSP_BLOCK_TYPE_INDEX+1));
            //block_id   = _mem2_const(buffer+sizeof(bufferType)*(DSP_BLOCK_ID_INDEX+1));
			
			memcpy(&block_type, buffer+sizeof(bufferType)*(DSP_BLOCK_TYPE_INDEX+1), sizeof(bufferType));
            memcpy(&block_id, buffer+sizeof(bufferType)*(DSP_BLOCK_ID_INDEX+1), sizeof(bufferType));
			
			//memcpy(&block_type,     buffer+sizeof(bufferType)*(DSP_BLOCK_TYPE_INDEX+1),      sizeof(bufferType));
     	    //memcpy(&block_id,       buffer+sizeof(bufferType)*(DSP_BLOCK_ID_INDEX+1),        sizeof(bufferType));

	     if (block_type == CCF_INIT)
	     {
		    scaling_factor[block_id]       = _mem2_const(buffer+sizeof(bufferType)*(SCALING_INDEX+1));
			interpolation_factor[block_id] = _mem2_const(buffer+sizeof(bufferType)*(INTERPOLATION_INDEX+1));
			fir_coeff_size[block_id]       = _mem2_const(buffer+sizeof(bufferType)*(COEFF_INDEX+1));
	        //memcpy(&scaling_factor[block_id], buffer+sizeof(bufferType)*(SCALING_INDEX+1),             sizeof(bufferType));
	     	//memcpy(&interpolation_factor[block_id], buffer+sizeof(bufferType)*(INTERPOLATION_INDEX+1), sizeof(bufferType));
	        //memcpy(&fir_coeff_size[block_id], buffer+sizeof(bufferType)*(COEFF_INDEX+1),               sizeof(bufferType));
	     	
			// HERE HERE
			fir_coeff_size[block_id] = fir_coeff_size[block_id]*2;
			k=0;
			for (i=0; i < fir_coeff_size[block_id]; i=i+2)
			{ 
			    memcpy(&fir_coeff[block_id][i], buffer+sizeof(bufferType)*(COEFF_INDEX+2+k), sizeof(bufferType));
				//memcpy(fir_coeff, buffer+sizeof(bufferType)*(COEFF_INDEX+2), sizeof(bufferType)*fir_coeff_size);
				k = k + 1;
			}
		
			if (interpolation_factor[block_id] > 1)
			{
				fir_interp_div = fir_coeff_size[block_id] / interpolation_factor[block_id];
				fir_interp_rem = fir_coeff_size[block_id] % interpolation_factor[block_id];
				if (fir_interp_rem != 0)
					fir_coeff_size[block_id] = (fir_interp_div+1) * interpolation_factor[block_id];
			}
			
			fir_coeff_size[block_id] = fir_coeff_size[block_id]/2;
	     }
	     else
	     {
		rf_data_size = _mem2_const(&buffer[0]);
//		if (interpolation_factor[block_id] > 1)
//			if (rf_data_size < 1158)
				k=0;
		// MANIPULATE ARRAY
		//HAL_CACHE_WBALL;
		DSP_fir_cplx_test ((short *)buffer+((fir_coeff_size[block_id]-1)*2)*2, fir_coeff[block_id], (short *)buffer, fir_coeff_size[block_id], rf_data_size);
		
		
		iq_temp     = (bufferType *) buffer;
		buffer_temp = (bufferType *) buffer;
		iq_temp	    += (fir_coeff_size[block_id]-1)*2;
		/*
		for (i=0; i < (rf_data_size); i=i+1)
		{
			iq_data1_short = *(iq_temp);
			iq_data2_short = *(iq_temp+1);
			iq_data1 = _IQ(iq_data1_short); 
			iq_data2 = _IQ(iq_data2_short);
			iq_scale = _IQ(4096);
			iq_result = _IQatan2(iq_data1, iq_data2);
			iq_result = _IQmpy(iq_result, iq_scale);
			iq_result_short = (short)_IQint(iq_result);
			memcpy(buffer_temp, &iq_result_short, sizeof(bufferType));
			iq_temp		+= 2;
			buffer_temp 	+= 1;
		}
		*/
		
		for (i=0; i < (rf_data_size); i=i+1)
		{
			iq_data1_short = *(iq_temp);
			iq_data2_short = *(iq_temp+1);
			iq_data1 = _IQ(iq_data1_short); 
			iq_data2 = _IQ(iq_data2_short);
			
			*buffer_temp = _IQatan2(iq_data1, iq_data2);
			
			//memcpy(buffer_temp, &iq_result, sizeof(bufferType));
			iq_temp		+= 2;
			buffer_temp 	+= 8;
		}
		
	     }
	     //HAL_CACHE_WBALL;
	     //HAL_CACHE_WB(buffLocal, sizeof(bufferType)*ARRAY_SIZE);
        }
	else {
            SET_FAILURE_REASON(status);
        }
        /* Send the processed buffer back to GPP */
        if (status == SYS_OK) {
            status = SIO_issue(info->outputStream,
                               buffer,
                               info->receivedSize,
                               arg);

            if (status == SYS_OK) {
                nmadus = SIO_reclaim (info->outputStream,
                                      (Ptr *) &(buffer),
                                      &arg) ;
                if (nmadus < 0) {
                    status = -nmadus ;
                    SET_FAILURE_REASON (status) ;
                }
            }
            else {
                SET_FAILURE_REASON (status) ;
            }
        }
    }
    return status ;
}


/** ============================================================================
 *  @func   TSKLOOP_delete
 *
 *  @desc   Delete phase function for the TSKLOOP application. It deallocates
 *          all the resources of allocated during create phase of the
 *          application.
 *
 *  @modif  None.
 *  ============================================================================
 */
Int TSKLOOP_delete (TSKLOOP_TransferInfo * info)
{
    Int     status     = SYS_OK ;
    Uint16  tmpStatus = SYS_OK ;
    Bool    freeStatus = FALSE ;
    Uint16  j ;

    /* Delete input stream */
    if (info->inputStream != NULL) {
        status = SIO_delete (info->inputStream) ;
        if (status != SYS_OK) {
            SET_FAILURE_REASON (status) ;
        }
    }

    /* Delete output stream */
    if (info->outputStream != NULL) {
        tmpStatus = SIO_delete(info->outputStream);
        if ((status == SYS_OK) && (tmpStatus != SYS_OK)) {
            status = tmpStatus ;
            SET_FAILURE_REASON (status) ;
        }
    }

    /* Delete the buffers */
    if (info->numBuffers > 0) {
        for (j = 0 ;
             (j < info->numBuffers) && (info->buffers [j] != NULL) ;
             j++) {
            POOL_free (SAMPLE_POOL_ID, info->buffers [j], info->bufferSize) ;
        }
    }

    /* Free the info structure */
    freeStatus = MEM_free (DSPLINK_SEGID, info, sizeof (TSKLOOP_TransferInfo)) ;
    
    if ((status == SYS_OK) && (freeStatus != TRUE)) {
        status = SYS_EFREE ;
        SET_FAILURE_REASON (status) ;
    }

    return status ;
}

bufferType convolution(bufferType* in1, int length1, bufferType* in2, int length2, bufferType* out)
{
	int i=0,j=0;
	#pragma MUST_ITERATE(10,10)
	for (i=0; i < length1+length2-1; i++)
	{
		//#pragma MUST_ITERATE(2,2)
		for (j=0; j<length1; j++)
		{
			if (i-j >= 0)
			{
				//if (i==0)
				out[i] = out[i] + in1[j]*in2[i-j];
				//out[j]=in2[j];
				//printf("i=%d j=%d i=j=%d\n", i, j, i-j);
			}
		}
	}
	return 1;

}
void DSP_fir_cplx_test (
    const short *restrict x,    /* Input array [nr+nh-1 elements] */
    const short *restrict h,    /* Coeff array [nh elements]      */
    short       *restrict r,    /* Output array [nr elements]     */
    int nh,                     /* Number of coefficients         */
    int nr                      /* Number of output samples       */
)
{
    int i, j;
    int imag0, real0;
    int imag1, real1;
    int imag_real_0;
    int imag_real_1;
    int h_10, h_01;

    double x_3210;

    /*--------------------------------------------------------------------*/
    /* _nasserts are used to inform the compiler that the input, filter,  */
    /* output arrays are word or double word aligned. In addition the  #  */
    /* filter taps and output samples is stated to be even.               */
    /*--------------------------------------------------------------------*/
    _nassert((int)nr >= 8);
    _nassert((int)nr % 4 == 0);
    _nassert((int)nh >= 4);
    _nassert((int)nh % 2 == 0);

    /*--------------------------------------------------------------------*/
    /* Inform the compiler that the following loop will iterate at least  */
    /* once and that the # output samples is a multiple of 4.             */
    /*--------------------------------------------------------------------*/
    //#pragma MUST_ITERATE(500)
    #pragma MUST_ITERATE(4,,2)
    for (i = 0; i < 2*nr; i += 4) {
        /*----------------------------------------------------------------*/
        /* Zero out accumulators for 4 complex output samples             */
        /*----------------------------------------------------------------*/
        imag0 = real0 = imag1 = real1 = 0;

        /*----------------------------------------------------------------*/
        /* Inform compiler that filter taps is at least 4, and a multiple */
        /* of 2.                                                          */
        /*----------------------------------------------------------------*/
        _nassert((int)nr >= 8);
        _nassert((int)nr % 4 == 0);
        _nassert((int)nh >= 4);
        _nassert((int)nh % 2 == 0);
        #pragma MUST_ITERATE(4,,2)
        for (j = 0; j < 2*nh; j += 2) {
            /*------------------------------------------------------------*/
            /* Perform word-wide loads using intrinsic, swizzle using the */
            /* packlh2 instruction to exchange the lower/upper half words */
            /*------------------------------------------------------------*/
            h_10 = _mem4_const(&h[j]);
            h_01 = _packlh2(h_10, h_10);

            /*------------------------------------------------------------*/
            /* Load input data using aligned word wide loads.             */
            /*------------------------------------------------------------*/
            x_3210 = _memd8_const(&x[i - j]);

            /*------------------------------------------------------------*/
            /* Perform multiplies using complex data, filter taps and     */
            /* accumulate results using either dotp2/dotpn2 instr.        */
            /*------------------------------------------------------------*/
            real0 -= _dotpn2(_lo(x_3210), h_10);
            real1 -= _dotpn2(_hi(x_3210), h_10);

            imag0 += _dotp2 (_lo(x_3210), h_01);
            imag1 += _dotp2 (_hi(x_3210), h_01);
        }

        /*----------------------------------------------------------------*/
        /*  Shift out accumulated sum, and store as half words            */
        /*----------------------------------------------------------------*/
        imag_real_0 = _packh2(imag0 << 1, real0 << 1);
        imag_real_1 = _packh2(imag1 << 1, real1 << 1);
        _memd8(&r[i]) = _itod(imag_real_1, imag_real_0);
    }
}

