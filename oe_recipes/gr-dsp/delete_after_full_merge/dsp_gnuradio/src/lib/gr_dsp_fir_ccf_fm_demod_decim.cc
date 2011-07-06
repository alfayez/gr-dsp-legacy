/* -*- c++ -*- */
/*
 * Copyright 2004 Free Software Foundation, Inc.
 * 
 * This file is part of GNU Radio
 * 
 * GNU Radio is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 * 
 * GNU Radio is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with GNU Radio; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */

/*
 * config.h is generated by configure.  It contains the results
 * of probing for features, options etc.  It should be the first
 * file included in your .cc file.
 */
#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include <gr_dsp_fir_ccf_fm_demod_decim.h>
#include <gr_io_signature.h>
#include <gr_reverse.h>
#include <math.h>
//#include "cwt_support_func.h"
#include <gnuradio_beagleboard_dsp.h>
#include <gri_float_to_short.h>
#include <string.h>
#include <gr_math.h>
#include <gr_realtime.h>

/*
 * Create a new instance of dsp_fir_ccf and return
 * a boost shared_ptr.  This is effectively the public constructor.
 */
gr_dsp_fir_ccf_fm_demod_decim_sptr 
gr_make_dsp_fir_ccf_fm_demod_decim (const std::vector<float> &taps, 
		  short scale_data, 
		  short decimation, 
		  bufferType input_sig, 
		  bufferType output_sig,
		  bufferType dsp_init_flag,
		  bufferType fir_id)
{
  return gr_dsp_fir_ccf_fm_demod_decim_sptr (new gr_dsp_fir_ccf_fm_demod_decim (taps, scale_data, decimation, input_sig, output_sig, dsp_init_flag, fir_id));
}

/*
 * Specify constraints on number of input and output streams.
 * This info is used to construct the input and output signatures
 * (2nd & 3rd args to gr_block's constructor).  The input and
 * output signatures are used by the runtime system to
 * check that a valid number and type of inputs and outputs
 * are connected to this block.  In this case, we accept
 * only 1 input and 1 output.
 */
static const int MIN_IN = 1;	// mininum number of input streams
static const int MAX_IN = 1;	// maximum number of input streams
static const int MIN_OUT = 1;	// minimum number of output streams
static const int MAX_OUT = 1;	// maximum number of output streams

/*
 * The private constructor
 */
 /*
 gr_dsp_fir_ccf::gr_dsp_fir_ccf (const std::vector<float> &taps, float scale_data, unsigned interpolation)
  : gr_sync_interpolator ("square2_ff",
		   gr_make_io_signature (MIN_IN, MAX_IN, sizeof (gr_complex)*FIR_SIZE),
		   gr_make_io_signature (MIN_OUT, MAX_OUT, sizeof (gr_complex)*FIR_SIZE),
		   interpolation)
*/		   
gr_dsp_fir_ccf_fm_demod_decim::gr_dsp_fir_ccf_fm_demod_decim (const std::vector<float> &taps, 
			  short scale_data, 
			  short decimation, 
			  bufferType input_sig, 
			  bufferType output_sig,
			  bufferType dsp_init_flag,
			  bufferType fir_id)
  : gr_sync_decimator ("gr_dsp_fir_ccf_fm_demod_decim",
		   gr_make_io_signature (MIN_IN, MAX_IN, sizeof (gr_complex)),
		   gr_make_io_signature (MIN_OUT, MAX_OUT, sizeof (float)),
		   decimation)
{
	std::vector<float> temp_taps;
	std::vector<short> d_taps_temp;
	short d_temp_buff_source[MAX_SIZE];
	short d_temp_buff_dest[MAX_SIZE];
	short coeff_size = taps.size();
	short buff_size = 0;
	short temp_short=0;
	
		
	memset(d_temp_buff_source, 0, sizeof(d_temp_buff_source));
	memset(d_temp_buff_dest, 0, sizeof(d_temp_buff_dest));

	d_interpolation = 1;
	d_decimation = decimation;
	
	d_temp_buff_source[DSP_BLOCK_TYPE_INDEX] = CFF_FM_DEMOD_DECIM_INIT;
	d_temp_buff_source[DSP_BLOCK_ID_INDEX]   = fir_id;
	d_temp_buff_source[SCALING_INDEX]   = scale_data;
	d_temp_buff_source[INTERPOLATION_INDEX] = (short)d_interpolation;
	d_temp_buff_source[DECIMATION_INDEX] = (short)d_decimation;
	d_temp_buff_source[COEFF_INDEX] = (short)coeff_size;
	

	
	d_taps.resize(coeff_size);
	d_taps_temp.resize(coeff_size);	
	d_input_sig = input_sig; 
	d_output_sig  = output_sig;
	d_fir_id = fir_id;
	
	//////////////////
	// HERE HERE
	//temp_taps = gr_reverse(taps);
	
	//dsp_float_to_short( coeff_size,
	//	d_taps, 
	//	temp_taps, 
	//	scale_data);
	dsp_float_to_short( coeff_size,
		d_taps, 
		taps, 
		scale_data);
		
	copy_vector_to_buffer(d_temp_buff_source + COEFF_INDEX + 1, d_taps);	
	d_scale_data = scale_data;

	
#ifdef DEBUG	
	//fp = fopen("test.txt", "w");
	printf("COEFF Size = %d\n", coeff_size);
//	printf("Ext TAPS = %f %f %f %f %f\n", taps[0], taps[1], taps[2], taps[3], taps[4]);
//	printf("Temp TAPS = %f %f %f %f %f\n", temp_taps[0], temp_taps[1], temp_taps[2], temp_taps[3], temp_taps[4]);
//	printf("D TAPS = %d %d %d %d %d\n", d_taps[0], d_taps[1], d_taps[2], d_taps[3], d_taps[4]);
#endif
	
//	const short *in = (const short *) d_taps[0];
//  	short *out = (short *) d_taps_temp[0];
	
//	printf("GNURADIO in[0] = %d\n", d_taps[0]);

	d_ntaps = coeff_size;
	set_history (coeff_size);
	
	if (dsp_init_flag == 1)
	{
		printf("HEY INIT DSP CCF\n");	
		dsp_init_function("loopAl2.out");
		buff_size = coeff_size + COEFF_INDEX + 1;
		transmit_data_dsp(d_temp_buff_source, buff_size, d_interpolation, d_decimation, d_fir_id);
       		receive_data_dsp(d_temp_buff_dest, coeff_size, d_fir_id);
	}
	else
	{
		printf("HEY DON'T INIT DSP CCF\n");
		buff_size = coeff_size + COEFF_INDEX + 1;
		transmit_data_dsp(d_temp_buff_source, buff_size, d_interpolation, d_decimation, d_fir_id);
       		receive_data_dsp(d_temp_buff_dest, coeff_size, d_fir_id);

	}
		


#ifdef DEBUG		
	printf("Finished sending coefficients\n");
#endif	
	
  // nothing else required in this example
}

/*
 * Our virtual destructor.
 */
gr_dsp_fir_ccf_fm_demod_decim::~gr_dsp_fir_ccf_fm_demod_decim ()
{
  #ifdef DEBUG
  printf("Virtual Destructor\n");
  #endif
  // nothing else required in this example
}

int 
gr_dsp_fir_ccf_fm_demod_decim::work (int noutput_items,
			gr_vector_const_void_star &input_items,
			gr_vector_void_star &output_items)
{
  const gr_complex *in0 = (const gr_complex *) input_items[0];
  //const float *in1 = (const float *) input_items[1];
  float *out0 = (float *) output_items[0];  
  //float *out1 = (float *) output_items[1];
  bufferType size_iteration = 0;
  bufferType size_current = 0;
  bufferType size_current_pass = 0;
  bufferType size_rx =0;
  int iteration = 0;
  int i = 0;
  int one=0;
  char **two = NULL;
  
  
  #ifdef DEBUG
  printf("Before CCF WORK with d_taps = %d\n", d_ntaps);
    printf("input0[0] = %f (%x) &&  %f (%x)\n",in0[0].real(), in0[0].real(), in0[0].imag(), in0[0].imag());
    printf("input0[1] = %f (%x) &&  %f (%x)\n",in0[1].real(), in0[1].real(), in0[1].imag(), in0[1].imag());
    printf("input0[2] = %f (%x) &&  %f (%x)\n",in0[2].real(), in0[2].real(), in0[2].imag(), in0[2].imag());
    printf("input0[3] = %f (%x) &&  %f (%x)\n",in0[3].real(), in0[3].real(), in0[3].imag(), in0[3].imag());
    printf("input0[4] = %f (%x) &&  %f (%x)\n",in0[4].real(), in0[4].real(), in0[4].imag(), in0[4].imag());
  #endif
  
  iteration = (int)ceil((double)noutput_items*d_decimation/FIR_SIZE);
  if (set_mutex())
  {
	  for (i = 0; i < iteration; i++)
	  {
	  	  if (noutput_items*d_decimation/d_interpolation < (size_iteration + FIR_SIZE)*d_decimation/d_interpolation) {
	  	  	size_current = noutput_items*d_decimation - size_iteration*d_interpolation;// + d_ntaps*d_interpolation;
	  	  	size_current_pass = size_current + d_ntaps;//*d_interpolation;
	  	  	//size_current = noutput_items - size_iteration;
	  	  }
	  	  else {
	  	  	size_iteration = size_iteration + FIR_SIZE*d_decimation/d_interpolation;
	  	  	size_current = FIR_SIZE; //+d_ntaps;
	  	  	size_current_pass = size_current + d_ntaps; 
	  	  	//size_current = FIR_SIZE;
	  	  }
	  	  #ifdef DEBUG	
	  	  printf("current size = %d and size_current_pass = %d and iteration = %d and interpolation = %d \n", size_current, size_current_pass, iteration, d_interpolation);	
	  	  #endif
	  	  //set_history (d_ntaps);
	  	  
		  transmit_data_dsp_cs(in0, size_current_pass, d_scale_data, d_input_sig, d_output_sig, d_interpolation, d_decimation, d_ntaps,  d_fir_id);
		  size_rx = noutput_items - size_iteration*d_interpolation;
		  receive_data_dsp_fs(out0, size_rx, d_scale_data, d_input_sig, d_output_sig, d_fir_id);
		   #ifdef DEBUG
		   printf("WORK Done receive CS"); 
		   printf("d_ntaps = %d\n", d_ntaps);
		   #endif
		  if (i < (iteration-1))
		  {
			  in0 = in0 + size_current;
			  out0 = out0 + size_current;
		  }
		  
	  }
	  
	  #ifdef DEBUG
	    printf("After CCF WORK\n");    
	    //printf("output0[0] = %f (%x) &&  %f (%x)\n",out0[0].real(), out0[0].real(), out0[0].imag(), out0[0].imag());
	    //printf("output0[1] = %f (%x) &&  %f (%x)\n",out0[1].real(), out0[1].real(), out0[1].imag(), out0[1].imag());
	    //printf("output0[2] = %f (%x) &&  %f (%x)\n",out0[2].real(), out0[2].real(), out0[2].imag(), out0[2].imag());
	    //printf("output0[3] = %f (%x) &&  %f (%x)\n",out0[3].real(), out0[3].real(), out0[3].imag(), out0[3].imag());
	    //printf("output0[4] = %f (%x) &&  %f (%x)\n",out0[4].real(), out0[4].real(), out0[4].imag(), out0[4].imag());    

	  #endif
	  clear_mutex();
  }
 // else
 // 	printf("ERROR Mutex is set\n");

  // Tell runtime system how many output items we produced.
  //return size_current_pass;
  return noutput_items;
}

int
gr_dsp_fir_ccf_fm_demod_decim::dsp_float_to_short( short &nsamples,
		std::vector<short> &taps_dest, 
		const std::vector<float> &taps_source, 
		const short &scale)
{
	static const int MIN_SHORT = -32768;
	static const int MAX_SHORT =  32767;
	short scale_mult = pow(2, scale);
	//const std::vector<float> in = taps_source[0];
	//std::vector<short> out = taps_dest[0];
	//gri_float_to_short (in, out, noutput_items);
	
	for (int i = 0; i < nsamples; i++){
    		long int r = (long int) rint (taps_source[i] * scale_mult);
    		if (r < MIN_SHORT)
      			r = MIN_SHORT;
    		else if (r > MAX_SHORT)
      			r = MAX_SHORT;
    		taps_dest[i] = (short)r;
	}
	
	return NO_ERROR;
}

int
gr_dsp_fir_ccf_fm_demod_decim::copy_vector_to_buffer(short *out, 
					const std::vector<short> in)
{
	int size = in.size();
	for (int i=0; i<size; i++)
	{
		out[i] = in[i];
	}
	
	return NO_ERROR;					
}
