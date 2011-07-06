/* -*- c++ -*- */

%include "gnuradio.i"			// the common stuff

%{
#include "gr_dsp_clean.h"
%}

// ----------------------------------------------------------------

/*
 * First arg is the package prefix.
 * Second arg is the name of the class minus the prefix.
 *
 * This does some behind-the-scenes magic so we can
 * access howto_square_ff from python as howto.square_ff
 */
//GR_SWIG_BLOCK_MAGIC(gr,dsp_clean);

// ----------------------------------------------------------------
%rename(dsp_clean) gr_dsp_clean;
//%rename(clean) dsp_clean;
int gr_dsp_clean();


