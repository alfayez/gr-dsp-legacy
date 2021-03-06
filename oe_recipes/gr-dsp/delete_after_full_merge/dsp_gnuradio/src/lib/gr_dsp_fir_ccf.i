/* -*- c++ -*- */

%include "gnuradio.i"			// the common stuff

%{
#include "gr_dsp_fir_ccf.h"
%}

// ----------------------------------------------------------------

/*
 * First arg is the package prefix.
 * Second arg is the name of the class minus the prefix.
 *
 * This does some behind-the-scenes magic so we can
 * access howto_square_ff from python as howto.square_ff
 */
GR_SWIG_BLOCK_MAGIC(gr,dsp_fir_ccf);

gr_dsp_fir_ccf_sptr gr_make_dsp_fir_ccf (const std::vector<float> &taps, short scale_data, short interpolation, short input_sig, short output_sig, short dsp_init_flag, short fir_id);

//enum io_sig_type {
//    FLOATING_POINT = 0,
//    FIXED_POINT = 1,
//  };
  
class gr_dsp_fir_ccf : public gr_block
{
private:
  gr_dsp_fir_ccf (const std::vector<float> &taps, short scale_data, short interpolation, short input_sig, short output_sig, short dsp_init_flag, short fir_id);
};

// ----------------------------------------------------------------

