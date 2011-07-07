;******************************************************************************
;* TMS320C6x C/C++ Codegen                                       Unix v6.0.21 *
;* Date/Time created: Tue Apr 12 22:18:54 2011                                *
;******************************************************************************
	.compiler_opts --c64p_l1d_workaround=default --disable:=sploop --endian=little --hll_source=on --mem_model:code=far --mem_model:data=far --predefine_memory_model_macros --quiet --silicon_version=6500 --symdebug:dwarf 

;******************************************************************************
;* GLOBAL FILE PARAMETERS                                                     *
;*                                                                            *
;*   Architecture      : TMS320C64x+                                          *
;*   Optimization      : Enabled at level 3                                   *
;*   Optimizing for    : Speed 1st, size 2nd                                  *
;*                       Based on options: -o3, -ms0                          *
;*   Endian            : Little                                               *
;*   Interrupt Thrshld : Disabled                                             *
;*   Data Access Model : Far                                                  *
;*   Pipelining        : Enabled                                              *
;*   Speculate Loads   : Enabled with threshold = 129                         *
;*   Memory Aliases    : Presume are aliases (pessimistic)                    *
;*   Debug Info        : DWARF Debug                                          *
;*                                                                            *
;******************************************************************************

	.asg	A15, FP
	.asg	B14, DP
	.asg	B15, SP
	.global	$bss


$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("tskLoop.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen Unix v6.0.21 Copyright (c) 1996-2008 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
;*****************************************************************************
;* CINIT RECORDS                                                             *
;*****************************************************************************
	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_rf_data_size+0,32
	.field  	0,16			; _rf_data_size @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_buffer_interp_ptr+0,32
	.field  	_buffer_interp,32		; _buffer_interp_ptr @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_iter_count+0,32
	.field  	0,32			; _iter_count @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_first_entry+0,32
	.field  	0,32			; _first_entry @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_stallVar+0,32
	.field  	1,32			; _stallVar @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_stallCount+0,32
	.field  	0,32			; _stallCount @ 0

	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_iq_data1_real_short+0,32
	.field  	0,16			; _iq_data1_real_short @ 0

	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_iq_data1_imag_short+0,32
	.field  	0,16			; _iq_data1_imag_short @ 0

	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_iq_result_short+0,32
	.field  	0,16			; _iq_result_short @ 0

	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_iq_data2_real_short+0,32
	.field  	0,16			; _iq_data2_real_short @ 0

	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_iq_data2_imag_short+0,32
	.field  	0,16			; _iq_data2_imag_short @ 0

	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_iq_result_short_2+0,32
	.field  	0,16			; _iq_result_short_2 @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_iq_int+0,32
	.field  	0,32			; _iq_int @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_iq_frac+0,32
	.field  	0,32			; _iq_frac @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_iq_int_2+0,32
	.field  	0,32			; _iq_int_2 @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_iq_frac_2+0,32
	.field  	0,32			; _iq_frac_2 @ 0

	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_offset_0+0,32
	.field  	0,16			; _offset_0 @ 0

	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_offset_1+0,32
	.field  	0,16			; _offset_1 @ 0

	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_offset_2+0,32
	.field  	0,16			; _offset_2 @ 0

	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_offset_3+0,32
	.field  	0,16			; _offset_3 @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_iq_phase+0,32
	.field  	0,32			; _iq_phase @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_iq_phase2+0,32
	.field  	0,32			; _iq_phase2 @ 0


$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("_nassert")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("__nassert")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("memcpy")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_memcpy")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
$C$DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$3)
$C$DW$5	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$208)
$C$DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$64)
	.dwendtag $C$DW$3


$C$DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("_hi")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("__hi")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
$C$DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$17)
	.dwendtag $C$DW$7


$C$DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("_lo")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("__lo")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
$C$DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$17)
	.dwendtag $C$DW$9


$C$DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("_itod")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("__itod")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
$C$DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$11)
$C$DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$11


$C$DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("_dotp2")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("__dotp2")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
$C$DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
$C$DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$14


$C$DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("_dotpn2")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("__dotpn2")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$17, DW_AT_declaration
	.dwattr $C$DW$17, DW_AT_external
$C$DW$18	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
$C$DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$17


$C$DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("_mem2_const")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("__mem2_const")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$278)
	.dwattr $C$DW$20, DW_AT_declaration
	.dwattr $C$DW$20, DW_AT_external
$C$DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$208)
	.dwendtag $C$DW$20


$C$DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("_mem4_const")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("__mem4_const")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$363)
	.dwattr $C$DW$22, DW_AT_declaration
	.dwattr $C$DW$22, DW_AT_external
$C$DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$208)
	.dwendtag $C$DW$22


$C$DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("_memd8_const")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("__memd8_const")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$382)
	.dwattr $C$DW$24, DW_AT_declaration
	.dwattr $C$DW$24, DW_AT_external
$C$DW$25	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$208)
	.dwendtag $C$DW$24


$C$DW$26	.dwtag  DW_TAG_subprogram, DW_AT_name("_memd8")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("__memd8")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$378)
	.dwattr $C$DW$26, DW_AT_declaration
	.dwattr $C$DW$26, DW_AT_external
$C$DW$27	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$26


$C$DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("_packh2")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("__packh2")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$28, DW_AT_declaration
	.dwattr $C$DW$28, DW_AT_external
$C$DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$11)
$C$DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$28


$C$DW$31	.dwtag  DW_TAG_subprogram, DW_AT_name("_packlh2")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("__packlh2")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$31, DW_AT_declaration
	.dwattr $C$DW$31, DW_AT_external
$C$DW$32	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$11)
$C$DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$31


$C$DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("MEM_free")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_MEM_free")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$34, DW_AT_declaration
	.dwattr $C$DW$34, DW_AT_external
$C$DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$22)
$C$DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$65)
$C$DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$64)
	.dwendtag $C$DW$34


$C$DW$38	.dwtag  DW_TAG_subprogram, DW_AT_name("MEM_valloc")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_MEM_valloc")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$38, DW_AT_declaration
	.dwattr $C$DW$38, DW_AT_external
$C$DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$22)
$C$DW$40	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$64)
$C$DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$64)
$C$DW$42	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$84)
	.dwendtag $C$DW$38


$C$DW$43	.dwtag  DW_TAG_subprogram, DW_AT_name("SIO_create")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_SIO_create")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$43, DW_AT_declaration
	.dwattr $C$DW$43, DW_AT_external
$C$DW$44	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$32)
$C$DW$45	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$22)
$C$DW$46	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$64)
$C$DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$389)
	.dwendtag $C$DW$43


$C$DW$48	.dwtag  DW_TAG_subprogram, DW_AT_name("SIO_delete")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_SIO_delete")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$48, DW_AT_declaration
	.dwattr $C$DW$48, DW_AT_external
$C$DW$49	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$81)
	.dwendtag $C$DW$48


$C$DW$50	.dwtag  DW_TAG_subprogram, DW_AT_name("SIO_issue")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_SIO_issue")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$50, DW_AT_declaration
	.dwattr $C$DW$50, DW_AT_external
$C$DW$51	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$81)
$C$DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$65)
$C$DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$64)
$C$DW$54	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$40)
	.dwendtag $C$DW$50


$C$DW$55	.dwtag  DW_TAG_subprogram, DW_AT_name("SIO_reclaim")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_SIO_reclaim")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$55, DW_AT_declaration
	.dwattr $C$DW$55, DW_AT_external
$C$DW$56	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$81)
$C$DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$88)
$C$DW$58	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$112)
	.dwendtag $C$DW$55


$C$DW$59	.dwtag  DW_TAG_subprogram, DW_AT_name("SetReason")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_SetReason")
	.dwattr $C$DW$59, DW_AT_declaration
	.dwattr $C$DW$59, DW_AT_external
$C$DW$60	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
$C$DW$61	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
$C$DW$62	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$59


$C$DW$63	.dwtag  DW_TAG_subprogram, DW_AT_name("memset")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_memset")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$63, DW_AT_declaration
	.dwattr $C$DW$63, DW_AT_external
$C$DW$64	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$3)
$C$DW$65	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
$C$DW$66	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$64)
	.dwendtag $C$DW$63


$C$DW$67	.dwtag  DW_TAG_subprogram, DW_AT_name("_FtoIQN")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("__FtoIQN")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$67, DW_AT_declaration
	.dwattr $C$DW$67, DW_AT_external
$C$DW$68	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$16)
$C$DW$69	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$295)
	.dwendtag $C$DW$67


$C$DW$70	.dwtag  DW_TAG_subprogram, DW_AT_name("_IQNmpy")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("__IQNmpy")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$70, DW_AT_declaration
	.dwattr $C$DW$70, DW_AT_external
$C$DW$71	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
$C$DW$72	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
$C$DW$73	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$295)
	.dwendtag $C$DW$70


$C$DW$74	.dwtag  DW_TAG_subprogram, DW_AT_name("_IQNrmpy")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("__IQNrmpy")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$74, DW_AT_declaration
	.dwattr $C$DW$74, DW_AT_external
$C$DW$75	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
$C$DW$76	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
$C$DW$77	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$298)
	.dwendtag $C$DW$74


$C$DW$78	.dwtag  DW_TAG_subprogram, DW_AT_name("_IQNdiv")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("__IQNdiv")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$78, DW_AT_declaration
	.dwattr $C$DW$78, DW_AT_external
$C$DW$79	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
$C$DW$80	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
$C$DW$81	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$298)
	.dwendtag $C$DW$78


$C$DW$82	.dwtag  DW_TAG_subprogram, DW_AT_name("_IQNsin")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("__IQNsin")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$82, DW_AT_declaration
	.dwattr $C$DW$82, DW_AT_external
$C$DW$83	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
$C$DW$84	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$295)
	.dwendtag $C$DW$82


$C$DW$85	.dwtag  DW_TAG_subprogram, DW_AT_name("_IQNcos")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("__IQNcos")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$85, DW_AT_declaration
	.dwattr $C$DW$85, DW_AT_external
$C$DW$86	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
$C$DW$87	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$295)
	.dwendtag $C$DW$85


$C$DW$88	.dwtag  DW_TAG_subprogram, DW_AT_name("_IQNatan2")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("__IQNatan2")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$88, DW_AT_declaration
	.dwattr $C$DW$88, DW_AT_external
$C$DW$89	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
$C$DW$90	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
$C$DW$91	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$295)
	.dwendtag $C$DW$88


$C$DW$92	.dwtag  DW_TAG_subprogram, DW_AT_name("_IQNint")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("__IQNint")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$92, DW_AT_declaration
	.dwattr $C$DW$92, DW_AT_external
$C$DW$93	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
$C$DW$94	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$295)
	.dwendtag $C$DW$92


$C$DW$95	.dwtag  DW_TAG_subprogram, DW_AT_name("_IQNfrac")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("__IQNfrac")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$95, DW_AT_declaration
	.dwattr $C$DW$95, DW_AT_external
$C$DW$96	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
$C$DW$97	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$295)
	.dwendtag $C$DW$95


$C$DW$98	.dwtag  DW_TAG_subprogram, DW_AT_name("_IQNabs")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("__IQNabs")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$98, DW_AT_declaration
	.dwattr $C$DW$98, DW_AT_external
$C$DW$99	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
	.dwendtag $C$DW$98

$C$DW$100	.dwtag  DW_TAG_variable, DW_AT_name("SIO_ATTRS")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_SIO_ATTRS")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$388)
	.dwattr $C$DW$100, DW_AT_declaration
	.dwattr $C$DW$100, DW_AT_external
$C$DW$101	.dwtag  DW_TAG_variable, DW_AT_name("DDR2")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_DDR2")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$101, DW_AT_declaration
	.dwattr $C$DW$101, DW_AT_external
$C$DW$102	.dwtag  DW_TAG_variable, DW_AT_name("POOL")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_POOL")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$405)
	.dwattr $C$DW$102, DW_AT_declaration
	.dwattr $C$DW$102, DW_AT_external
	.global	_rf_data_size
_rf_data_size:	.usect	".far",2,2
$C$DW$103	.dwtag  DW_TAG_variable, DW_AT_name("rf_data_size")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_rf_data_size")
	.dwattr $C$DW$103, DW_AT_location[DW_OP_addr _rf_data_size]
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$227)
	.dwattr $C$DW$103, DW_AT_external
	.global	_fir_coeff
_fir_coeff:	.usect	".far",8192,8
$C$DW$104	.dwtag  DW_TAG_variable, DW_AT_name("fir_coeff")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_fir_coeff")
	.dwattr $C$DW$104, DW_AT_location[DW_OP_addr _fir_coeff]
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$261)
	.dwattr $C$DW$104, DW_AT_external
	.global	_buffer_interp
_buffer_interp:	.usect	".far",81920,8
$C$DW$105	.dwtag  DW_TAG_variable, DW_AT_name("buffer_interp")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_buffer_interp")
	.dwattr $C$DW$105, DW_AT_location[DW_OP_addr _buffer_interp]
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$262)
	.dwattr $C$DW$105, DW_AT_external
	.global	_buffer_interp_ptr
_buffer_interp_ptr:	.usect	".far",4,4
$C$DW$106	.dwtag  DW_TAG_variable, DW_AT_name("buffer_interp_ptr")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_buffer_interp_ptr")
	.dwattr $C$DW$106, DW_AT_location[DW_OP_addr _buffer_interp_ptr]
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$231)
	.dwattr $C$DW$106, DW_AT_external
	.global	_fir_coeff_size
_fir_coeff_size:	.usect	".far",4,8
$C$DW$107	.dwtag  DW_TAG_variable, DW_AT_name("fir_coeff_size")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_fir_coeff_size")
	.dwattr $C$DW$107, DW_AT_location[DW_OP_addr _fir_coeff_size]
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$263)
	.dwattr $C$DW$107, DW_AT_external
	.global	_scaling_factor
_scaling_factor:	.usect	".far",4,8
$C$DW$108	.dwtag  DW_TAG_variable, DW_AT_name("scaling_factor")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_scaling_factor")
	.dwattr $C$DW$108, DW_AT_location[DW_OP_addr _scaling_factor]
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$263)
	.dwattr $C$DW$108, DW_AT_external
	.global	_interpolation_factor
_interpolation_factor:	.usect	".far",4,8
$C$DW$109	.dwtag  DW_TAG_variable, DW_AT_name("interpolation_factor")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_interpolation_factor")
	.dwattr $C$DW$109, DW_AT_location[DW_OP_addr _interpolation_factor]
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$263)
	.dwattr $C$DW$109, DW_AT_external
	.global	_decimation_factor
_decimation_factor:	.usect	".far",4,8
$C$DW$110	.dwtag  DW_TAG_variable, DW_AT_name("decimation_factor")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_decimation_factor")
	.dwattr $C$DW$110, DW_AT_location[DW_OP_addr _decimation_factor]
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$263)
	.dwattr $C$DW$110, DW_AT_external
	.global	_block_type_array
_block_type_array:	.usect	".far",4,8
$C$DW$111	.dwtag  DW_TAG_variable, DW_AT_name("block_type_array")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_block_type_array")
	.dwattr $C$DW$111, DW_AT_location[DW_OP_addr _block_type_array]
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$263)
	.dwattr $C$DW$111, DW_AT_external
	.global	_iter_count
_iter_count:	.usect	".far",4,4
$C$DW$112	.dwtag  DW_TAG_variable, DW_AT_name("iter_count")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_iter_count")
	.dwattr $C$DW$112, DW_AT_location[DW_OP_addr _iter_count]
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$112, DW_AT_external
	.global	_first_entry
_first_entry:	.usect	".far",4,4
$C$DW$113	.dwtag  DW_TAG_variable, DW_AT_name("first_entry")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_first_entry")
	.dwattr $C$DW$113, DW_AT_location[DW_OP_addr _first_entry]
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$113, DW_AT_external
	.global	_stallVar
_stallVar:	.usect	".far",4,4
$C$DW$114	.dwtag  DW_TAG_variable, DW_AT_name("stallVar")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_stallVar")
	.dwattr $C$DW$114, DW_AT_location[DW_OP_addr _stallVar]
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$114, DW_AT_external
	.global	_stallCount
_stallCount:	.usect	".far",4,4
$C$DW$115	.dwtag  DW_TAG_variable, DW_AT_name("stallCount")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_stallCount")
	.dwattr $C$DW$115, DW_AT_location[DW_OP_addr _stallCount]
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$115, DW_AT_external
	.global	_iq_data1_real_short
_iq_data1_real_short:	.usect	".far",2,2
$C$DW$116	.dwtag  DW_TAG_variable, DW_AT_name("iq_data1_real_short")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_iq_data1_real_short")
	.dwattr $C$DW$116, DW_AT_location[DW_OP_addr _iq_data1_real_short]
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$116, DW_AT_external
	.global	_iq_data1_imag_short
_iq_data1_imag_short:	.usect	".far",2,2
$C$DW$117	.dwtag  DW_TAG_variable, DW_AT_name("iq_data1_imag_short")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_iq_data1_imag_short")
	.dwattr $C$DW$117, DW_AT_location[DW_OP_addr _iq_data1_imag_short]
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$117, DW_AT_external
	.global	_iq_result_short
_iq_result_short:	.usect	".far",2,2
$C$DW$118	.dwtag  DW_TAG_variable, DW_AT_name("iq_result_short")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_iq_result_short")
	.dwattr $C$DW$118, DW_AT_location[DW_OP_addr _iq_result_short]
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$118, DW_AT_external
	.global	_iq_data2_real_short
_iq_data2_real_short:	.usect	".far",2,2
$C$DW$119	.dwtag  DW_TAG_variable, DW_AT_name("iq_data2_real_short")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_iq_data2_real_short")
	.dwattr $C$DW$119, DW_AT_location[DW_OP_addr _iq_data2_real_short]
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$119, DW_AT_external
	.global	_iq_data2_imag_short
_iq_data2_imag_short:	.usect	".far",2,2
$C$DW$120	.dwtag  DW_TAG_variable, DW_AT_name("iq_data2_imag_short")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_iq_data2_imag_short")
	.dwattr $C$DW$120, DW_AT_location[DW_OP_addr _iq_data2_imag_short]
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$120, DW_AT_external
	.global	_iq_result_short_2
_iq_result_short_2:	.usect	".far",2,2
$C$DW$121	.dwtag  DW_TAG_variable, DW_AT_name("iq_result_short_2")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_iq_result_short_2")
	.dwattr $C$DW$121, DW_AT_location[DW_OP_addr _iq_result_short_2]
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$121, DW_AT_external
	.global	_iq_scale
_iq_scale:	.usect	".far",4,4
$C$DW$122	.dwtag  DW_TAG_variable, DW_AT_name("iq_scale")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_iq_scale")
	.dwattr $C$DW$122, DW_AT_location[DW_OP_addr _iq_scale]
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$302)
	.dwattr $C$DW$122, DW_AT_external
	.global	_iq_conj
_iq_conj:	.usect	".far",4,4
$C$DW$123	.dwtag  DW_TAG_variable, DW_AT_name("iq_conj")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_iq_conj")
	.dwattr $C$DW$123, DW_AT_location[DW_OP_addr _iq_conj]
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$302)
	.dwattr $C$DW$123, DW_AT_external
	.global	_iq_data1_real
_iq_data1_real:	.usect	".far",4,4
$C$DW$124	.dwtag  DW_TAG_variable, DW_AT_name("iq_data1_real")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_iq_data1_real")
	.dwattr $C$DW$124, DW_AT_location[DW_OP_addr _iq_data1_real]
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$302)
	.dwattr $C$DW$124, DW_AT_external
	.global	_iq_data1_imag
_iq_data1_imag:	.usect	".far",4,4
$C$DW$125	.dwtag  DW_TAG_variable, DW_AT_name("iq_data1_imag")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_iq_data1_imag")
	.dwattr $C$DW$125, DW_AT_location[DW_OP_addr _iq_data1_imag]
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$302)
	.dwattr $C$DW$125, DW_AT_external
	.global	_iq_data2_real
_iq_data2_real:	.usect	".far",4,4
$C$DW$126	.dwtag  DW_TAG_variable, DW_AT_name("iq_data2_real")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_iq_data2_real")
	.dwattr $C$DW$126, DW_AT_location[DW_OP_addr _iq_data2_real]
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$302)
	.dwattr $C$DW$126, DW_AT_external
	.global	_iq_data2_imag
_iq_data2_imag:	.usect	".far",4,4
$C$DW$127	.dwtag  DW_TAG_variable, DW_AT_name("iq_data2_imag")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_iq_data2_imag")
	.dwattr $C$DW$127, DW_AT_location[DW_OP_addr _iq_data2_imag]
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$302)
	.dwattr $C$DW$127, DW_AT_external
	.global	_iq_result
_iq_result:	.usect	".far",4,4
$C$DW$128	.dwtag  DW_TAG_variable, DW_AT_name("iq_result")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_iq_result")
	.dwattr $C$DW$128, DW_AT_location[DW_OP_addr _iq_result]
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$302)
	.dwattr $C$DW$128, DW_AT_external
	.global	_iq_result2
_iq_result2:	.usect	".far",4,4
$C$DW$129	.dwtag  DW_TAG_variable, DW_AT_name("iq_result2")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_iq_result2")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_addr _iq_result2]
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$302)
	.dwattr $C$DW$129, DW_AT_external
	.global	_iq_result_2
_iq_result_2:	.usect	".far",4,4
$C$DW$130	.dwtag  DW_TAG_variable, DW_AT_name("iq_result_2")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_iq_result_2")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_addr _iq_result_2]
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$302)
	.dwattr $C$DW$130, DW_AT_external
	.global	_iq_result2_2
_iq_result2_2:	.usect	".far",4,4
$C$DW$131	.dwtag  DW_TAG_variable, DW_AT_name("iq_result2_2")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_iq_result2_2")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_addr _iq_result2_2]
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$302)
	.dwattr $C$DW$131, DW_AT_external
	.global	_result1
_result1:	.usect	".far",4,4
$C$DW$132	.dwtag  DW_TAG_variable, DW_AT_name("result1")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_result1")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_addr _result1]
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$303)
	.dwattr $C$DW$132, DW_AT_external
	.global	_result2
_result2:	.usect	".far",4,4
$C$DW$133	.dwtag  DW_TAG_variable, DW_AT_name("result2")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_result2")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_addr _result2]
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$303)
	.dwattr $C$DW$133, DW_AT_external
	.global	_iq_int
_iq_int:	.usect	".far",4,4
$C$DW$134	.dwtag  DW_TAG_variable, DW_AT_name("iq_int")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_iq_int")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_addr _iq_int]
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$134, DW_AT_external
	.global	_iq_frac
_iq_frac:	.usect	".far",4,4
$C$DW$135	.dwtag  DW_TAG_variable, DW_AT_name("iq_frac")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_iq_frac")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_addr _iq_frac]
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$135, DW_AT_external
	.global	_iq_int_2
_iq_int_2:	.usect	".far",4,4
$C$DW$136	.dwtag  DW_TAG_variable, DW_AT_name("iq_int_2")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_iq_int_2")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_addr _iq_int_2]
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$136, DW_AT_external
	.global	_iq_frac_2
_iq_frac_2:	.usect	".far",4,4
$C$DW$137	.dwtag  DW_TAG_variable, DW_AT_name("iq_frac_2")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_iq_frac_2")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_addr _iq_frac_2]
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$137, DW_AT_external
	.global	_offset_0
_offset_0:	.usect	".far",2,2
$C$DW$138	.dwtag  DW_TAG_variable, DW_AT_name("offset_0")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_offset_0")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_addr _offset_0]
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$138, DW_AT_external
	.global	_offset_1
_offset_1:	.usect	".far",2,2
$C$DW$139	.dwtag  DW_TAG_variable, DW_AT_name("offset_1")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_offset_1")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_addr _offset_1]
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$139, DW_AT_external
	.global	_offset_2
_offset_2:	.usect	".far",2,2
$C$DW$140	.dwtag  DW_TAG_variable, DW_AT_name("offset_2")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_offset_2")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_addr _offset_2]
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$140, DW_AT_external
	.global	_offset_3
_offset_3:	.usect	".far",2,2
$C$DW$141	.dwtag  DW_TAG_variable, DW_AT_name("offset_3")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_offset_3")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_addr _offset_3]
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$141, DW_AT_external
	.global	_iq_phase
_iq_phase:	.usect	".far",4,4
$C$DW$142	.dwtag  DW_TAG_variable, DW_AT_name("iq_phase")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_iq_phase")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_addr _iq_phase]
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$302)
	.dwattr $C$DW$142, DW_AT_external
	.global	_iq_phase2
_iq_phase2:	.usect	".far",4,4
$C$DW$143	.dwtag  DW_TAG_variable, DW_AT_name("iq_phase2")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_iq_phase2")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_addr _iq_phase2]
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$302)
	.dwattr $C$DW$143, DW_AT_external
	.global	_iq_sensitivity_mod
_iq_sensitivity_mod:	.usect	".far",4,4
$C$DW$144	.dwtag  DW_TAG_variable, DW_AT_name("iq_sensitivity_mod")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_iq_sensitivity_mod")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_addr _iq_sensitivity_mod]
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$302)
	.dwattr $C$DW$144, DW_AT_external
	.global	_fm_phase_limit
_fm_phase_limit:	.usect	".far",4,4
$C$DW$145	.dwtag  DW_TAG_variable, DW_AT_name("fm_phase_limit")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_fm_phase_limit")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_addr _fm_phase_limit]
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$302)
	.dwattr $C$DW$145, DW_AT_external
	.global	_fm_2_phase_limit
_fm_2_phase_limit:	.usect	".far",4,4
$C$DW$146	.dwtag  DW_TAG_variable, DW_AT_name("fm_2_phase_limit")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_fm_2_phase_limit")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_addr _fm_2_phase_limit]
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$302)
	.dwattr $C$DW$146, DW_AT_external
	.global	_d_phase_limit_temp
_d_phase_limit_temp:	.usect	".far",4,4
$C$DW$147	.dwtag  DW_TAG_variable, DW_AT_name("d_phase_limit_temp")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_d_phase_limit_temp")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_addr _d_phase_limit_temp]
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$302)
	.dwattr $C$DW$147, DW_AT_external
	.global	_iq_iout
_iq_iout:	.usect	".far",4,4
$C$DW$148	.dwtag  DW_TAG_variable, DW_AT_name("iq_iout")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_iq_iout")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_addr _iq_iout]
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$302)
	.dwattr $C$DW$148, DW_AT_external
	.global	_iq_qout
_iq_qout:	.usect	".far",4,4
$C$DW$149	.dwtag  DW_TAG_variable, DW_AT_name("iq_qout")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_iq_qout")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_addr _iq_qout]
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$302)
	.dwattr $C$DW$149, DW_AT_external
	.global	_iq_in
_iq_in:	.usect	".far",4,4
$C$DW$150	.dwtag  DW_TAG_variable, DW_AT_name("iq_in")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_iq_in")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_addr _iq_in]
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$302)
	.dwattr $C$DW$150, DW_AT_external
$C$DW$151	.dwtag  DW_TAG_variable, DW_AT_name("xferBufSize")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_xferBufSize")
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$151, DW_AT_declaration
	.dwattr $C$DW$151, DW_AT_external
$C$DW$152	.dwtag  DW_TAG_variable, DW_AT_name("numTransfers")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_numTransfers")
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$152, DW_AT_declaration
	.dwattr $C$DW$152, DW_AT_external
;	/home/alfayez/oe/tmp_beagleboard/staging/x86_64-linux/ti-cgt6x-native/bin/opt6x /tmp/14900lTE6WZ /tmp/149001TuAxF 
	.sect	".text"
	.global	_convolution

$C$DW$153	.dwtag  DW_TAG_subprogram, DW_AT_name("convolution")
	.dwattr $C$DW$153, DW_AT_low_pc(_convolution)
	.dwattr $C$DW$153, DW_AT_high_pc(0x00)
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_convolution")
	.dwattr $C$DW$153, DW_AT_external
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$227)
	.dwattr $C$DW$153, DW_AT_TI_begin_file("tskLoop.c")
	.dwattr $C$DW$153, DW_AT_TI_begin_line(0x261)
	.dwattr $C$DW$153, DW_AT_TI_begin_column(0x0c)
	.dwpsn	file "tskLoop.c",line 610,column 1,is_stmt,address _convolution

	.dwfde $C$DW$CIE, _convolution

;******************************************************************************
;* FUNCTION NAME: convolution                                                 *
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,A5,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,SP,B16,B17 *
;*   Regs Used         : A0,A3,A4,A5,A6,A8,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,DP,  *
;*                           SP,B16,B17                                       *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_convolution:
;** --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 228, 19
           STW     .D2T2   B3,*SP--(8)       ; |610| 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 19, 0
$C$DW$154	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in1")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_in1")
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$231)
	.dwattr $C$DW$154, DW_AT_location[DW_OP_reg4]
$C$DW$155	.dwtag  DW_TAG_formal_parameter, DW_AT_name("length1")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_length1")
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$155, DW_AT_location[DW_OP_reg20]
$C$DW$156	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in2")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_in2")
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$231)
	.dwattr $C$DW$156, DW_AT_location[DW_OP_reg6]
$C$DW$157	.dwtag  DW_TAG_formal_parameter, DW_AT_name("length2")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_length2")
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$157, DW_AT_location[DW_OP_reg22]
$C$DW$158	.dwtag  DW_TAG_formal_parameter, DW_AT_name("out")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_out")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$231)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_reg8]
$C$DW$159	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_reg21]
$C$DW$160	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_reg3]
$C$DW$161	.dwtag  DW_TAG_variable, DW_AT_name("in1")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_in1")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$257)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_regx 0x35]
$C$DW$162	.dwtag  DW_TAG_variable, DW_AT_name("length1")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_length1")
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$360)
	.dwattr $C$DW$162, DW_AT_location[DW_OP_regx 0x36]
$C$DW$163	.dwtag  DW_TAG_variable, DW_AT_name("in2")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_in2")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$257)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_reg25]
$C$DW$164	.dwtag  DW_TAG_variable, DW_AT_name("length2")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_length2")
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$360)
	.dwattr $C$DW$164, DW_AT_location[DW_OP_reg22]
$C$DW$165	.dwtag  DW_TAG_variable, DW_AT_name("out")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_out")
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$257)
	.dwattr $C$DW$165, DW_AT_location[DW_OP_reg23]

           ADD     .L2     B6,B4,B0
||         MV      .S2X    A6,B9             ; |610| 

           MV      .L2X    A4,B16            ; |610| 

           MV      .L2     B4,B17            ; |610| 
||         SUB     .L1X    B0,1,A4
||         MV      .S2X    A8,B7             ; |610| 

	.dwpsn	file "tskLoop.c",line 611,column 6,is_stmt
           ZERO    .L1     A3                ; |611| 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L1
;** --------------------------------------------------------------------------*
$C$L1:    
$C$DW$L$_convolution$2$B:
	.dwpsn	file "tskLoop.c",line 616,column 13,is_stmt
           CMPGT   .L2     B17,0,B0          ; |616| 
   [!B0]   BNOP    .S1     $C$L5,5           ; |616| 
           ; BRANCHCC OCCURS {$C$L5}         ; |616| 
$C$DW$L$_convolution$2$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_convolution$3$B:
	.dwpsn	file "tskLoop.c",line 618,column 4,is_stmt
           MV      .L1X    B17,A5            ; |618| 
	.dwpsn	file "tskLoop.c",line 616,column 8,is_stmt

           ZERO    .L2     B5                ; |616| 
||         SUB     .L1     A5,1,A0
||         DINT                              ; interrupts off
||         MV      .D2X    A3,B4

           SUB     .L2X    A3,B5,B6          ; |618| 
           CMPLT   .L2     B6,0,B1           ; |618| (P) <0,1> 
$C$DW$L$_convolution$3$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 616
;*      Loop opening brace source line   : 617
;*      Loop closing brace source line   : 625
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 9
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 4
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        1     
;*      .S units                     1        0     
;*      .D units                     0        4*    
;*      .M units                     0        1     
;*      .X cross paths               0        0     
;*      .T address paths             0        4*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        3     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     1        3     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 9  Did not find schedule
;*         ii = 10 Schedule found with 2 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: |*                               | *********      *               |
;*       1: |*                               | ***** ***      *               |
;*       2: |*                               | ***** ***      *               |
;*       3: |*                               | ***** ***      *               |
;*       4: |*                               | ***** ***      *               |
;*       5: |*                               | ***** ***      *               |
;*       6: |*                               | ***** ***      *               |
;*       7: |*                               | ***** ***      *               |
;*       8: |*                               | *********      *               |
;*       9: |*                               |**********      *               |
;*          +-----------------------------------------------------------------+
;*
;*      Done
;*
;*      Collapsed epilog stages     : 1
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  SUB             A0,1,A0
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C48:
;*   0              SUB     .L2     B4,B5,B6          ; |618| 
;*   1              CMPLT   .L2     B6,0,B1           ; |618| 
;*   2      [!B1]   LDH     .D2T2   *+B9[B6],B8       ; |621|  ^ 
;*   3      [!B1]   LDH     .D2T2   *+B16[B5],B3      ; |621|  ^ 
;*   4      [!B1]   LDH     .D2T2   *+B7[B4],B2       ; |621| 
;*   5              NOP             1
;*   6      [ A0]   BDEC    .S1     $C$C48,A0         ; |616| 
;*   7              NOP             1
;*   8              MPY     .M2     B3,B8,B6          ; |621|  ^ 
;*   9              ADD     .L2     1,B5,B5           ; |616| 
;*  10              ADD     .S2     B6,B2,B0          ; |621|  ^ 
;*  11      [!B1]   STH     .D2T2   B0,*+B7[B4]       ; |621|  ^ 
;*  12              ; BRANCHCC OCCURS {$C$C48}        ; |616| 
;*----------------------------------------------------------------------------*
$C$L2:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
$C$L3:    ; PIPED LOOP KERNEL
$C$DW$L$_convolution$5$B:
   [!B1]   LDH     .D2T2   *+B9[B6],B8       ; |621| <0,2>  ^ 
   [!B1]   LDH     .D2T2   *+B16[B5],B3      ; |621| <0,3>  ^ 
   [!B1]   LDH     .D2T2   *+B7[B4],B2       ; |621| <0,4> 
           NOP             1
   [ A0]   BDEC    .S1     $C$L3,A0          ; |616| <0,6> 
           NOP             1
           MPY     .M2     B3,B8,B6          ; |621| <0,8>  ^ 
           ADD     .L2     1,B5,B5           ; |616| <0,9> 

           ADD     .S2     B6,B2,B0          ; |621| <0,10>  ^ 
||         SUB     .L2     B4,B5,B6          ; |618| <1,0> 

   [!B1]   STH     .D2T2   B0,*+B7[B4]       ; |621| <0,11>  ^ 
||         CMPLT   .L2     B6,0,B1           ; |618| <1,1> 

$C$DW$L$_convolution$5$E:
;** --------------------------------------------------------------------------*
$C$L4:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
$C$DW$L$_convolution$7$B:

           MV      .L1X    B4,A3
||         RINT                              ; interrupts on

$C$DW$L$_convolution$7$E:
;** --------------------------------------------------------------------------*
$C$L5:    
$C$DW$L$_convolution$8$B:
	.dwpsn	file "tskLoop.c",line 613,column 35,is_stmt
           ADD     .L1     1,A3,A3           ; |613| 
	.dwpsn	file "tskLoop.c",line 613,column 12,is_stmt

           SUB     .L2X    A4,1,B0           ; |613| 
||         SUB     .L1     A4,1,A4           ; |613| 

   [ B0]   BNOP    .S1     $C$L1,5           ; |613| 
           ; BRANCHCC OCCURS {$C$L1}         ; |613| 
$C$DW$L$_convolution$8$E:
;** --------------------------------------------------------------------------*
	.dwpsn	file "tskLoop.c",line 627,column 2,is_stmt
           MVK     .L1     0x1,A4            ; |627| 
	.dwpsn	file "tskLoop.c",line 629,column 1,is_stmt
           LDW     .D2T2   *++SP(8),B3       ; |629| 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 19
	.dwcfi	cfa_offset, 0
           NOP             4
           RETNOP  .S2     B3,5              ; |629| 
           ; BRANCH OCCURS {B3}              ; |629| 

$C$DW$166	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$166, DW_AT_name("/home/alfayez/oe/tmp_beagleboard/staging/beagleboard-angstrom-linux-gnueabi/ti-dsplink-module/packages/dsplink/dsp/src/samples/loopAl2/tskLoop.asm:$C$L1:1:1302661134")
	.dwattr $C$DW$166, DW_AT_TI_begin_file("tskLoop.c")
	.dwattr $C$DW$166, DW_AT_TI_begin_line(0x265)
	.dwattr $C$DW$166, DW_AT_TI_end_line(0x272)
$C$DW$167	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$167, DW_AT_low_pc($C$DW$L$_convolution$2$B)
	.dwattr $C$DW$167, DW_AT_high_pc($C$DW$L$_convolution$2$E)
$C$DW$168	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$168, DW_AT_low_pc($C$DW$L$_convolution$3$B)
	.dwattr $C$DW$168, DW_AT_high_pc($C$DW$L$_convolution$3$E)
$C$DW$169	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$169, DW_AT_low_pc($C$DW$L$_convolution$7$B)
	.dwattr $C$DW$169, DW_AT_high_pc($C$DW$L$_convolution$7$E)
$C$DW$170	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$170, DW_AT_low_pc($C$DW$L$_convolution$8$B)
	.dwattr $C$DW$170, DW_AT_high_pc($C$DW$L$_convolution$8$E)

$C$DW$171	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$171, DW_AT_name("/home/alfayez/oe/tmp_beagleboard/staging/beagleboard-angstrom-linux-gnueabi/ti-dsplink-module/packages/dsplink/dsp/src/samples/loopAl2/tskLoop.asm:$C$L3:2:1302661134")
	.dwattr $C$DW$171, DW_AT_TI_begin_file("tskLoop.c")
	.dwattr $C$DW$171, DW_AT_TI_begin_line(0x268)
	.dwattr $C$DW$171, DW_AT_TI_end_line(0x271)
$C$DW$172	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$172, DW_AT_low_pc($C$DW$L$_convolution$5$B)
	.dwattr $C$DW$172, DW_AT_high_pc($C$DW$L$_convolution$5$E)
	.dwendtag $C$DW$171

	.dwendtag $C$DW$166

	.dwattr $C$DW$153, DW_AT_TI_end_file("tskLoop.c")
	.dwattr $C$DW$153, DW_AT_TI_end_line(0x275)
	.dwattr $C$DW$153, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$153

	.sect	".text"
	.global	_DSP_fm_mod

$C$DW$173	.dwtag  DW_TAG_subprogram, DW_AT_name("DSP_fm_mod")
	.dwattr $C$DW$173, DW_AT_low_pc(_DSP_fm_mod)
	.dwattr $C$DW$173, DW_AT_high_pc(0x00)
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_DSP_fm_mod")
	.dwattr $C$DW$173, DW_AT_external
	.dwattr $C$DW$173, DW_AT_TI_begin_file("tskLoop.c")
	.dwattr $C$DW$173, DW_AT_TI_begin_line(0x2c6)
	.dwattr $C$DW$173, DW_AT_TI_begin_column(0x06)
	.dwpsn	file "tskLoop.c",line 715,column 3,is_stmt,address _DSP_fm_mod

	.dwfde $C$DW$CIE, _DSP_fm_mod

;******************************************************************************
;* FUNCTION NAME: DSP_fm_mod                                                  *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,  *
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,  *
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Local Frame Size  : 0 Args + 12 Auto + 56 Save = 68 byte                 *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_DSP_fm_mod:
;** --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 228, 19
           STW     .D2T1   A15,*SP--(8)      ; |715| 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 15, 0
           STDW    .D2T2   B13:B12,*SP--     ; |715| 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 29, -4
	.dwcfi	save_reg_to_mem, 28, -8
           STDW    .D2T2   B11:B10,*SP--     ; |715| 
	.dwcfi	cfa_offset, 24
	.dwcfi	save_reg_to_mem, 27, -12
	.dwcfi	save_reg_to_mem, 26, -16
           STW     .D2T2   B3,*SP--(8)       ; |715| 
	.dwcfi	cfa_offset, 32
	.dwcfi	save_reg_to_mem, 19, -24
           STW     .D2T1   A14,*SP--(8)      ; |715| 
	.dwcfi	cfa_offset, 40
	.dwcfi	save_reg_to_mem, 14, -32
           STDW    .D2T1   A13:A12,*SP--     ; |715| 
	.dwcfi	cfa_offset, 48
	.dwcfi	save_reg_to_mem, 13, -36
	.dwcfi	save_reg_to_mem, 12, -40
           STDW    .D2T1   A11:A10,*SP--     ; |715| 
	.dwcfi	cfa_offset, 56
	.dwcfi	save_reg_to_mem, 11, -44
	.dwcfi	save_reg_to_mem, 10, -48
           SUB     .D2     SP,16,SP          ; |715| 
	.dwcfi	cfa_offset, 16
$C$DW$174	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input_buff")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_input_buff")
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$230)
	.dwattr $C$DW$174, DW_AT_location[DW_OP_reg4]
$C$DW$175	.dwtag  DW_TAG_formal_parameter, DW_AT_name("output_buff")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_output_buff")
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$232)
	.dwattr $C$DW$175, DW_AT_location[DW_OP_reg20]
$C$DW$176	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input_count")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_input_count")
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$176, DW_AT_location[DW_OP_reg6]
$C$DW$177	.dwtag  DW_TAG_formal_parameter, DW_AT_name("interpolation_factor")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_interpolation_factor")
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$177, DW_AT_location[DW_OP_reg22]
$C$DW$178	.dwtag  DW_TAG_variable, DW_AT_name("output_buff_local")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_output_buff_local")
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$231)
	.dwattr $C$DW$178, DW_AT_location[DW_OP_reg10]
$C$DW$179	.dwtag  DW_TAG_variable, DW_AT_name("input_buff_local")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_input_buff_local")
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$231)
	.dwattr $C$DW$179, DW_AT_location[DW_OP_reg27]
$C$DW$180	.dwtag  DW_TAG_variable, DW_AT_name("output_buff")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_output_buff")
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$232)
	.dwattr $C$DW$180, DW_AT_location[DW_OP_reg20]
$C$DW$181	.dwtag  DW_TAG_variable, DW_AT_name("input_buff")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_input_buff")
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$230)
	.dwattr $C$DW$181, DW_AT_location[DW_OP_reg4]
$C$DW$182	.dwtag  DW_TAG_variable, DW_AT_name("input_count")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_input_count")
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$360)
	.dwattr $C$DW$182, DW_AT_location[DW_OP_reg6]
$C$DW$183	.dwtag  DW_TAG_variable, DW_AT_name("interpolation_factor")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_interpolation_factor")
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$360)
	.dwattr $C$DW$183, DW_AT_location[DW_OP_reg3]
           MV      .L1X    B6,A3             ; |715| 
	.dwpsn	file "tskLoop.c",line 722,column 2,is_stmt
           MV      .L2X    A4,B11            ; |722| 
	.dwpsn	file "tskLoop.c",line 723,column 2,is_stmt
           MV      .L1X    B4,A10            ; |723| 
	.dwpsn	file "tskLoop.c",line 725,column 12,is_stmt
           CMPGT   .L1     A6,0,A0           ; |725| 

   [!A0]   BNOP    .S1     $C$L7,4           ; |725| 
|| [ A0]   ADD     .L1     A3,A3,A0

           EXT     .S1     A0,16,15,A0
           ; BRANCHCC OCCURS {$C$L7}         ; |725| 
;** --------------------------------------------------------------------------*
           STW     .D2T1   A0,*+SP(4)
	.dwpsn	file "tskLoop.c",line 727,column 3,is_stmt

           MVKL    .S1     _iq_result,A3
||         MVKL    .S2     _iq_in,B13
||         MV      .L2X    A6,B10            ; |727| 

           MVKH    .S1     _iq_result,A3
||         MVKH    .S2     _iq_in,B13

           STW     .D2T1   A3,*+SP(8)        ; |733| 
||         MVKL    .S1     _iq_sensitivity_mod,A3
||         MVKL    .S2     _iq_qout,B12

           MVKH    .S1     _iq_sensitivity_mod,A3
||         MVKH    .S2     _iq_qout,B12

           STW     .D2T1   A3,*+SP(12)       ; |729| 
||         MVKL    .S1     _iq_iout,A15

           LDH     .D2T2   *B11++,B4         ; |727| 
||         MVKL    .S1     _iq_result2,A14

           MVKL    .S1     _iq_int,A13
           MVKL    .S1     _iq_int_2,A12
           MVKL    .S1     _iq_phase,A11
           MVKH    .S1     _iq_phase,A11

           STW     .D2T2   B4,*B13           ; |727| 
||         MVKH    .S1     _iq_iout,A15

           MVKH    .S1     _iq_result2,A14
           MVKH    .S1     _iq_int,A13
           MVKH    .S1     _iq_int_2,A12
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
$C$L6:    
$C$DW$L$_DSP_fm_mod$3$B:
	.dwpsn	file "tskLoop.c",line 729,column 3,is_stmt
           LDW     .D2T1   *+SP(12),A4       ; |729| 
           MVKL    .S2     __IQNrmpy,B5      ; |729| 
           MVKH    .S2     __IQNrmpy,B5      ; |729| 
           MVK     .L1     0xe,A6            ; |729| 
           CALL    .S2     B5                ; |729| 
           LDW     .D1T1   *A4,A4            ; |729| 
           ADDKPC  .S2     $C$RL0,B3,3       ; |729| 
$C$RL0:    ; CALL OCCURS {__IQNrmpy}         ; |729| 
$C$DW$L$_DSP_fm_mod$3$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_DSP_fm_mod$4$B:
           LDW     .D1T1   *A11,A0           ; |729| 
           NOP             4
           ADD     .L1     A0,A4,A4          ; |729| 
           STW     .D1T1   A4,*A11           ; |729| 
	.dwpsn	file "tskLoop.c",line 730,column 3,is_stmt
           MVKL    .S1     __IQNcos,A3       ; |730| 
           MVKH    .S1     __IQNcos,A3       ; |730| 
           MVK     .L2     0xe,B4            ; |730| 
           CALL    .S2X    A3                ; |730| 
           ADDKPC  .S2     $C$RL1,B3,4       ; |730| 
$C$RL1:    ; CALL OCCURS {__IQNcos}          ; |730| 
           STW     .D1T1   A4,*A15           ; |730| 
	.dwpsn	file "tskLoop.c",line 731,column 3,is_stmt
           MVKL    .S1     __IQNsin,A3       ; |731| 
           MVKH    .S1     __IQNsin,A3       ; |731| 
           LDW     .D1T1   *A11,A4           ; |731| 
           CALL    .S2X    A3                ; |731| 
           ADDKPC  .S2     $C$RL2,B3,3       ; |731| 
           MVK     .L2     0xe,B4            ; |731| 
$C$RL2:    ; CALL OCCURS {__IQNsin}          ; |731| 
           STW     .D2T1   A4,*B12           ; |731| 
	.dwpsn	file "tskLoop.c",line 733,column 3,is_stmt
           LDW     .D1T1   *A15,A0           ; |733| 
           LDW     .D2T1   *+SP(8),A5        ; |733| 
           NOP             3
           SHL     .S1     A0,14,A0          ; |733| 
           STW     .D1T1   A0,*A5            ; |733| 
	.dwpsn	file "tskLoop.c",line 734,column 3,is_stmt
           SHL     .S1     A4,14,A1          ; |734| 
           STW     .D1T1   A1,*A14           ; |734| 
	.dwpsn	file "tskLoop.c",line 735,column 3,is_stmt
           MVKL    .S1     __IQNint,A3       ; |735| 
           MVKH    .S1     __IQNint,A3       ; |735| 
           MV      .L1     A0,A4             ; |735| 
           CALL    .S2X    A3                ; |735| 
           MVK     .L2     0xe,B4            ; |735| 
           ADDKPC  .S2     $C$RL3,B3,3       ; |735| 
$C$RL3:    ; CALL OCCURS {__IQNint}          ; |735| 
           STW     .D1T1   A4,*A13           ; |735| 
	.dwpsn	file "tskLoop.c",line 736,column 3,is_stmt
           MVKL    .S2     __IQNint,B5       ; |736| 
           MVKH    .S2     __IQNint,B5       ; |736| 
           CALL    .S2     B5                ; |736| 
           LDW     .D1T1   *A14,A4           ; |736| 
           ADDKPC  .S2     $C$RL4,B3,2       ; |736| 
           MVK     .L2     0xe,B4            ; |736| 
$C$RL4:    ; CALL OCCURS {__IQNint}          ; |736| 
$C$DW$L$_DSP_fm_mod$4$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_DSP_fm_mod$5$B:
           STW     .D1T1   A4,*A12           ; |736| 
	.dwpsn	file "tskLoop.c",line 738,column 3,is_stmt
           LDH     .D1T1   *A13,A0           ; |738| 
           NOP             4
           STH     .D1T1   A0,*A10           ; |738| 
	.dwpsn	file "tskLoop.c",line 739,column 3,is_stmt
           LDH     .D1T1   *A12,A0           ; |739| 
           ADD     .L1     2,A10,A4          ; |739| 
           NOP             3
           STH     .D1T1   A0,*A4            ; |739| 
	.dwpsn	file "tskLoop.c",line 742,column 3,is_stmt
           LDW     .D2T1   *+SP(4),A0
           NOP             4
           ADD     .L1     A0,A10,A10        ; |742| 
	.dwpsn	file "tskLoop.c",line 725,column 12,is_stmt

           SUB     .L1X    B10,1,A0          ; |725| 
||         SUB     .L2     B10,1,B10         ; |725| 

   [ A0]   BNOP    .S1     $C$L6,4           ; |725| 
|| [ A0]   LDH     .D2T2   *B11++,B4         ; |727| 

   [ A0]   STW     .D2T2   B4,*B13           ; |727| 
           ; BRANCHCC OCCURS {$C$L6}         ; |725| 
$C$DW$L$_DSP_fm_mod$5$E:
;** --------------------------------------------------------------------------*
$C$L7:    
	.dwpsn	file "tskLoop.c",line 746,column 2,is_stmt
           MVKL    .S1     __IQNabs,A3       ; |746| 
           MVKH    .S1     __IQNabs,A3       ; |746| 
           MVKL    .S1     _iq_phase,A10

           CALL    .S2X    A3                ; |746| 
||         MVKH    .S1     _iq_phase,A10

           LDW     .D1T1   *A10,A4           ; |746| 
           ADDKPC  .S2     $C$RL5,B3,3       ; |746| 
$C$RL5:    ; CALL OCCURS {__IQNabs}          ; |746| 
;** --------------------------------------------------------------------------*
           MVKL    .S2     _fm_phase_limit,B4
           MVKH    .S2     _fm_phase_limit,B4
           LDW     .D2T2   *B4,B0            ; |746| 
           NOP             4
           CMPGT   .L2X    A4,B0,B0          ; |746| 
   [!B0]   BNOP    .S1     $C$L8,5           ; |746| 
           ; BRANCHCC OCCURS {$C$L8}         ; |746| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "tskLoop.c",line 748,column 3,is_stmt

           MVKL    .S1     __IQNdiv,A3       ; |748| 
||         MVKL    .S2     _fm_2_phase_limit,B10

           MVKH    .S1     __IQNdiv,A3       ; |748| 
||         MVKH    .S2     _fm_2_phase_limit,B10

           LDW     .D2T2   *B10,B4           ; |748| 
           CALL    .S2X    A3                ; |748| 
           LDW     .D1T1   *A10,A4           ; |748| 
           ADDKPC  .S2     $C$RL6,B3,2       ; |748| 
           MVK     .L1     0xe,A6            ; |748| 
$C$RL6:    ; CALL OCCURS {__IQNdiv}          ; |748| 
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A0             ; |748| 
||         MVKL    .S1     _d_phase_limit_temp,A4

           MVKH    .S1     _d_phase_limit_temp,A4
           STW     .D1T1   A0,*A4            ; |748| 
	.dwpsn	file "tskLoop.c",line 749,column 3,is_stmt
           MVKL    .S2     __IQNmpy,B5       ; |749| 
           MVKH    .S2     __IQNmpy,B5       ; |749| 

           CALL    .S2     B5                ; |749| 
||         MV      .L2     B10,B4            ; |749| 

           LDW     .D2T2   *B4,B4            ; |749| 
           ADDKPC  .S2     $C$RL7,B3,2       ; |749| 

           MVK     .L1     0xe,A6            ; |749| 
||         MV      .S1     A0,A4             ; |749| 

$C$RL7:    ; CALL OCCURS {__IQNmpy}          ; |749| 
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A1             ; |749| 
||         MV      .S1     A10,A4            ; |749| 

           LDW     .D1T1   *A4,A0            ; |749| 
           NOP             4
           SUB     .L1     A0,A1,A0          ; |749| 
           STW     .D1T1   A0,*A4            ; |749| 
;** --------------------------------------------------------------------------*
$C$L8:    
	.dwpsn	file "tskLoop.c",line 751,column 1,is_stmt
           ADDK    .S2     16,SP             ; |751| 
	.dwcfi	cfa_offset, 0
           LDDW    .D2T1   *++SP,A11:A10
	.dwcfi	cfa_offset, 48
	.dwcfi	restore_reg, 11
	.dwcfi	restore_reg, 10
           LDDW    .D2T1   *++SP,A13:A12
	.dwcfi	cfa_offset, 40
	.dwcfi	restore_reg, 13
	.dwcfi	restore_reg, 12
           LDW     .D2T1   *++SP(8),A14
	.dwcfi	cfa_offset, 32
	.dwcfi	restore_reg, 14
           LDW     .D2T2   *++SP(8),B3
           NOP             1
	.dwcfi	cfa_offset, 24
	.dwcfi	restore_reg, 19
           LDDW    .D2T2   *++SP,B11:B10
	.dwcfi	cfa_offset, 16
	.dwcfi	restore_reg, 27
	.dwcfi	restore_reg, 26
           LDDW    .D2T2   *++SP,B13:B12
	.dwcfi	cfa_offset, 8
	.dwcfi	restore_reg, 29
	.dwcfi	restore_reg, 28
           LDW     .D2T1   *++SP(8),A15      ; |751| 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 15
	.dwcfi	cfa_offset, 0
           RETNOP  .S2     B3,5
           ; BRANCH OCCURS {B3} 

$C$DW$184	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$184, DW_AT_name("/home/alfayez/oe/tmp_beagleboard/staging/beagleboard-angstrom-linux-gnueabi/ti-dsplink-module/packages/dsplink/dsp/src/samples/loopAl2/tskLoop.asm:$C$L6:1:1302661134")
	.dwattr $C$DW$184, DW_AT_TI_begin_file("tskLoop.c")
	.dwattr $C$DW$184, DW_AT_TI_begin_line(0x2d5)
	.dwattr $C$DW$184, DW_AT_TI_end_line(0x2e8)
$C$DW$185	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$185, DW_AT_low_pc($C$DW$L$_DSP_fm_mod$3$B)
	.dwattr $C$DW$185, DW_AT_high_pc($C$DW$L$_DSP_fm_mod$3$E)
$C$DW$186	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$186, DW_AT_low_pc($C$DW$L$_DSP_fm_mod$4$B)
	.dwattr $C$DW$186, DW_AT_high_pc($C$DW$L$_DSP_fm_mod$4$E)
$C$DW$187	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$187, DW_AT_low_pc($C$DW$L$_DSP_fm_mod$5$B)
	.dwattr $C$DW$187, DW_AT_high_pc($C$DW$L$_DSP_fm_mod$5$E)
	.dwendtag $C$DW$184

	.dwattr $C$DW$173, DW_AT_TI_end_file("tskLoop.c")
	.dwattr $C$DW$173, DW_AT_TI_end_line(0x2ef)
	.dwattr $C$DW$173, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$173

	.sect	".text"
	.global	_TSKLOOP_execute

$C$DW$188	.dwtag  DW_TAG_subprogram, DW_AT_name("TSKLOOP_execute")
	.dwattr $C$DW$188, DW_AT_low_pc(_TSKLOOP_execute)
	.dwattr $C$DW$188, DW_AT_high_pc(0x00)
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_TSKLOOP_execute")
	.dwattr $C$DW$188, DW_AT_external
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$188, DW_AT_TI_begin_file("tskLoop.c")
	.dwattr $C$DW$188, DW_AT_TI_begin_line(0x11d)
	.dwattr $C$DW$188, DW_AT_TI_begin_column(0x05)
	.dwpsn	file "tskLoop.c",line 286,column 1,is_stmt,address _TSKLOOP_execute

	.dwfde $C$DW$CIE, _TSKLOOP_execute

;******************************************************************************
;* FUNCTION NAME: TSKLOOP_execute                                             *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,  *
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,   *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 24 Auto + 56 Save = 80 byte                 *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_TSKLOOP_execute:
;** --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 228, 19
           STW     .D2T1   A15,*SP--(8)      ; |286| 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 15, 0
           STDW    .D2T2   B13:B12,*SP--     ; |286| 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 29, -4
	.dwcfi	save_reg_to_mem, 28, -8
           STDW    .D2T2   B11:B10,*SP--     ; |286| 
	.dwcfi	cfa_offset, 24
	.dwcfi	save_reg_to_mem, 27, -12
	.dwcfi	save_reg_to_mem, 26, -16
           STW     .D2T2   B3,*SP--(8)       ; |286| 
	.dwcfi	cfa_offset, 32
	.dwcfi	save_reg_to_mem, 19, -24
           STW     .D2T1   A14,*SP--(8)      ; |286| 
	.dwcfi	cfa_offset, 40
	.dwcfi	save_reg_to_mem, 14, -32
           STDW    .D2T1   A13:A12,*SP--     ; |286| 
	.dwcfi	cfa_offset, 48
	.dwcfi	save_reg_to_mem, 13, -36
	.dwcfi	save_reg_to_mem, 12, -40
           STDW    .D2T1   A11:A10,*SP--     ; |286| 
	.dwcfi	cfa_offset, 56
	.dwcfi	save_reg_to_mem, 11, -44
	.dwcfi	save_reg_to_mem, 10, -48
           SUB     .D2     SP,24,SP          ; |286| 
	.dwcfi	cfa_offset, 24
$C$DW$189	.dwtag  DW_TAG_formal_parameter, DW_AT_name("info")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$291)
	.dwattr $C$DW$189, DW_AT_location[DW_OP_reg4]
$C$DW$190	.dwtag  DW_TAG_variable, DW_AT_name("info")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$396)
	.dwattr $C$DW$190, DW_AT_location[DW_OP_reg11]
$C$DW$191	.dwtag  DW_TAG_variable, DW_AT_name("buffer")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_buffer")
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$191, DW_AT_location[DW_OP_breg31 4]
$C$DW$192	.dwtag  DW_TAG_variable, DW_AT_name("arg")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$192, DW_AT_location[DW_OP_breg31 8]
$C$DW$193	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$193, DW_AT_location[DW_OP_reg27]
$C$DW$194	.dwtag  DW_TAG_variable, DW_AT_name("block_id")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("_block_id")
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$227)
	.dwattr $C$DW$194, DW_AT_location[DW_OP_breg31 12]
$C$DW$195	.dwtag  DW_TAG_variable, DW_AT_name("block_type")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_block_type")
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$227)
	.dwattr $C$DW$195, DW_AT_location[DW_OP_breg31 14]
$C$DW$196	.dwtag  DW_TAG_variable, DW_AT_name("iq_temp")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_iq_temp")
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$231)
	.dwattr $C$DW$196, DW_AT_location[DW_OP_reg10]
$C$DW$197	.dwtag  DW_TAG_variable, DW_AT_name("buffer_temp")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_buffer_temp")
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$231)
	.dwattr $C$DW$197, DW_AT_location[DW_OP_reg26]
$C$DW$198	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$198, DW_AT_location[DW_OP_reg14]
$C$DW$199	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$199, DW_AT_location[DW_OP_reg16]
$C$DW$200	.dwtag  DW_TAG_variable, DW_AT_name("nmadus")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_nmadus")
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$200, DW_AT_location[DW_OP_reg4]
$C$DW$201	.dwtag  DW_TAG_variable, DW_AT_name("nmadus")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_nmadus")
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$201, DW_AT_location[DW_OP_reg3]
           MV      .L1     A4,A11            ; |286| 
	.dwpsn	file "tskLoop.c",line 288,column 17,is_stmt
           LDW     .D1T1   *+A11(20),A0      ; |288| 
           NOP             4
           STW     .D2T1   A0,*+SP(4)        ; |288| 
	.dwpsn	file "tskLoop.c",line 289,column 17,is_stmt
           ZERO    .L1     A0                ; |289| 
           STW     .D2T1   A0,*+SP(8)        ; |289| 
	.dwpsn	file "tskLoop.c",line 295,column 14,is_stmt
           STH     .D2T1   A0,*+SP(12)       ; |295| 
	.dwpsn	file "tskLoop.c",line 296,column 14,is_stmt
           LDH     .D2T2   *+SP(12),B0       ; |296| 
           NOP             4
           STH     .D2T2   B0,*+SP(14)       ; |296| 
	.dwpsn	file "tskLoop.c",line 304,column 2,is_stmt
           MVKL    .S1     __FtoIQN,A3       ; |304| 
           MVKH    .S1     __FtoIQN,A3       ; |304| 
           MVKL    .S1     0x3d7b53d1,A4
           CALL    .S2X    A3                ; |304| 
           ADDKPC  .S2     $C$RL8,B3,3       ; |304| 

           MVKH    .S1     0x3d7b53d1,A4
||         MVK     .L2     0xe,B4            ; |304| 

$C$RL8:    ; CALL OCCURS {__FtoIQN}          ; |304| 
;** --------------------------------------------------------------------------*
           MVKL    .S2     _iq_sensitivity_mod,B4

           MVKH    .S2     _iq_sensitivity_mod,B4
||         MV      .L2X    A4,B0             ; |304| 

           STW     .D2T2   B0,*B4            ; |304| 
	.dwpsn	file "tskLoop.c",line 305,column 2,is_stmt
           MVKL    .S1     __FtoIQN,A3       ; |305| 
           MVKH    .S1     __FtoIQN,A3       ; |305| 
           MVKL    .S1     0x42490fdf,A4
           CALL    .S2X    A3                ; |305| 
           ADDKPC  .S2     $C$RL9,B3,3       ; |305| 

           MVKH    .S1     0x42490fdf,A4
||         MVK     .L2     0xe,B4            ; |305| 

$C$RL9:    ; CALL OCCURS {__FtoIQN}          ; |305| 
           MVKL    .S2     _fm_phase_limit,B4

           MVKH    .S2     _fm_phase_limit,B4
||         MV      .L2X    A4,B0             ; |305| 

           STW     .D2T2   B0,*B4            ; |305| 
	.dwpsn	file "tskLoop.c",line 306,column 2,is_stmt
           MVKL    .S2     __FtoIQN,B5       ; |306| 
           MVKH    .S2     __FtoIQN,B5       ; |306| 
           CALL    .S2     B5                ; |306| 
           MVKL    .S1     0x42c90fdf,A4
           ADDKPC  .S2     $C$RL10,B3,2      ; |306| 

           MVKH    .S1     0x42c90fdf,A4
||         MVK     .L2     0xe,B4            ; |306| 

$C$RL10:   ; CALL OCCURS {__FtoIQN}          ; |306| 
           MVKL    .S2     _fm_2_phase_limit,B4
           MVKH    .S2     _fm_2_phase_limit,B4
           STW     .D2T1   A4,*B4            ; |306| 
	.dwpsn	file "tskLoop.c",line 327,column 5,is_stmt

           MVK     .S2     0x0,B0
||         MVKL    .S1     _iq_scale,A4

           SET     .S2     B0,0xe,0xe,B0
||         MVKH    .S1     _iq_scale,A4

           STW     .D1T2   B0,*A4            ; |327| 
	.dwpsn	file "tskLoop.c",line 328,column 5,is_stmt
           MVKL    .S1     _iq_conj,A4

           MVKH    .S1     _iq_conj,A4
||         MVK     .L1     -1,A0             ; |328| 

           STW     .D1T1   A0,*A4            ; |328| 
	.dwpsn	file "tskLoop.c",line 329,column 5,is_stmt
           MVKL    .S2     _memset,B5        ; |329| 
           MVKH    .S2     _memset,B5        ; |329| 
           CALL    .S2     B5                ; |329| 
           MVKL    .S1     _buffer_interp,A13
           MVK     .S1     0x5,A6
           MVKH    .S1     _buffer_interp,A13
           ADDKPC  .S2     $C$RL11,B3,0      ; |329| 

           MV      .L1     A13,A4            ; |329| 
||         SHL     .S1     A6,0xe,A6
||         ZERO    .L2     B4                ; |329| 

$C$RL11:   ; CALL OCCURS {_memset}           ; |329| 
;** --------------------------------------------------------------------------*

           MVKL    .S2     _block_type_array,B4
||         MVKL    .S1     _fir_coeff,A4

           MVKL    .S2     _decimation_factor,B5
||         MVKL    .S1     _fir_coeff_size,A3

           MVKL    .S2     _interpolation_factor,B13
||         MVKH    .S1     _fir_coeff,A4

           STW     .D2T1   A4,*+SP(24)
||         MVKH    .S1     _fir_coeff_size,A3
||         MVKH    .S2     _block_type_array,B4

           STW     .D2T2   B4,*+SP(16)
||         MVKH    .S2     _decimation_factor,B5

           MV      .L2X    A3,B12
||         STW     .D2T2   B5,*+SP(20)
||         MVKH    .S2     _interpolation_factor,B13
||         MVK     .S1     0x101,A15

;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L9
;** --------------------------------------------------------------------------*
$C$L9:    
$C$DW$L$_TSKLOOP_execute$4$B:
	.dwpsn	file "tskLoop.c",line 332,column 9,is_stmt
           MVKL    .S2     _SIO_issue,B5     ; |332| 
           MVKH    .S2     _SIO_issue,B5     ; |332| 

           CALL    .S2     B5                ; |332| 
||         LDW     .D1T1   *A11,A4           ; |332| 
||         LDW     .D2T2   *+SP(8),B6        ; |332| 

           LDW     .D1T1   *+A11(12),A6      ; |332| 
||         LDW     .D2T2   *+SP(4),B4        ; |332| 

           ADDKPC  .S2     $C$RL12,B3,3      ; |332| 
$C$RL12:   ; CALL OCCURS {_SIO_issue}        ; |332| 
$C$DW$L$_TSKLOOP_execute$4$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$5$B:

           MV      .L1     A4,A0             ; |332| 
||         MV      .S1     A4,A14            ; |332| 

   [ A0]   BNOP    .S1     $C$L10,5          ; |332| 
           ; BRANCHCC OCCURS {$C$L10}        ; |332| 
$C$DW$L$_TSKLOOP_execute$5$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$6$B:
	.dwpsn	file "tskLoop.c",line 337,column 13,is_stmt
           MVKL    .S2     _SIO_reclaim,B5   ; |337| 
           MVKH    .S2     _SIO_reclaim,B5   ; |337| 
           CALL    .S2     B5                ; |337| 
           LDW     .D1T1   *A11,A4           ; |337| 
           ADDKPC  .S2     $C$RL13,B3,2      ; |337| 

           ADD     .L2     4,SP,B4           ; |337| 
||         ADD     .L1X    8,SP,A6           ; |337| 

$C$RL13:   ; CALL OCCURS {_SIO_reclaim}      ; |337| 
$C$DW$L$_TSKLOOP_execute$6$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$7$B:
           CMPLT   .L1     A4,0,A0           ; |337| 
	.dwpsn	file "tskLoop.c",line 345,column 17,is_stmt

   [!A0]   BNOP    .S1     $C$L11,5          ; |345| 
|| [!A0]   STH     .D1T1   A4,*+A11(16)      ; |345| 

           ; BRANCHCC OCCURS {$C$L11}        ; |345| 
$C$DW$L$_TSKLOOP_execute$7$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$8$B:
	.dwpsn	file "tskLoop.c",line 341,column 17,is_stmt
           NEG     .L1     A4,A0             ; |341| 
           MV      .L1     A0,A14            ; |341| 
	.dwpsn	file "tskLoop.c",line 342,column 17,is_stmt
           MVKL    .S2     _SetReason,B5     ; |342| 
           MVKH    .S2     _SetReason,B5     ; |342| 
           CALL    .S2     B5                ; |342| 
           MV      .L1     A0,A6             ; |342| 
           MVK     .S2     0x56,B4
           SET     .S2     B4,0x8,0x8,B4
           ADDKPC  .S2     $C$RL14,B3,0      ; |342| 
           MV      .L1     A15,A4            ; |342| 
$C$RL14:   ; CALL OCCURS {_SetReason}        ; |342| 
$C$DW$L$_TSKLOOP_execute$8$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$9$B:
	.dwpsn	file "tskLoop.c",line 343,column 13,is_stmt
           BNOP    .S1     $C$L11,5          ; |343| 
           ; BRANCH OCCURS {$C$L11}          ; |343| 
$C$DW$L$_TSKLOOP_execute$9$E:
;** --------------------------------------------------------------------------*
$C$L10:    
$C$DW$L$_TSKLOOP_execute$10$B:
	.dwpsn	file "tskLoop.c",line 349,column 13,is_stmt
           MVKL    .S1     _SetReason,A3     ; |349| 
           MVKH    .S1     _SetReason,A3     ; |349| 
           MVK     .S2     0x5d,B4
           CALL    .S2X    A3                ; |349| 
           SET     .S2     B4,0x8,0x8,B4
           ADDKPC  .S2     $C$RL15,B3,2      ; |349| 

           MV      .L1     A15,A4            ; |349| 
||         MV      .S1     A14,A6            ; |349| 

$C$RL15:   ; CALL OCCURS {_SetReason}        ; |349| 
$C$DW$L$_TSKLOOP_execute$10$E:
;** --------------------------------------------------------------------------*
$C$L11:    
$C$DW$L$_TSKLOOP_execute$11$B:
	.dwpsn	file "tskLoop.c",line 353,column 2,is_stmt
           MV      .L1     A14,A0
   [ A0]   BNOP    .S1     $C$L21,5          ; |353| 
           ; BRANCHCC OCCURS {$C$L21}        ; |353| 
$C$DW$L$_TSKLOOP_execute$11$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$12$B:
	.dwpsn	file "tskLoop.c",line 358,column 4,is_stmt
           LDW     .D2T2   *+SP(4),B0        ; |358| 
           ADD     .L1X    14,SP,A31         ; |358| 
           NOP             3
           ADD     .L1X    2,B0,A4           ; |358| 
           LDB     .D1T1   *+A4(1),A0        ; |358| 
           LDB     .D1T1   *A4,A1            ; |358| 
           NOP             3
           STB     .D1T1   A0,*+A31(1)       ; |358| 
           STB     .D1T1   A1,*A31           ; |358| 
	.dwpsn	file "tskLoop.c",line 359,column 13,is_stmt
           LDW     .D2T2   *+SP(4),B0        ; |359| 
           ADD     .L2     12,SP,B31         ; |359| 
           NOP             3
           ADD     .L2     4,B0,B4           ; |359| 
           LDB     .D2T2   *+B4(1),B0        ; |359| 
           LDB     .D2T2   *B4,B1            ; |359| 
           NOP             3
           STB     .D2T2   B0,*+B31(1)       ; |359| 
           STB     .D2T2   B1,*B31           ; |359| 
	.dwpsn	file "tskLoop.c",line 364,column 7,is_stmt
           LDH     .D2T2   *+SP(14),B0       ; |364| 
           LDH     .D2T2   *+SP(14),B1       ; |364| 
           NOP             3
           CMPEQ   .L2     B0,1,B0           ; |364| 
   [!B0]   BNOP    .S1     $C$L15,5          ; |364| 
           ; BRANCHCC OCCURS {$C$L15}        ; |364| 
$C$DW$L$_TSKLOOP_execute$12$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$13$B:
	.dwpsn	file "tskLoop.c",line 397,column 4,is_stmt
           LDW     .D2T2   *+SP(4),B4        ; |397| 
           MVKL    .S2     _rf_data_size,B11
           MVKH    .S2     _rf_data_size,B11
           NOP             2
           LDNW    .D2T2   *B4,B0            ; |397| 
           NOP             4

           STH     .D2T2   B0,*B11           ; |397| 
||         EXT     .S2     B0,16,16,B0       ; |397| 

	.dwpsn	file "tskLoop.c",line 398,column 4,is_stmt
           MVKL    .S1     _memcpy,A3        ; |398| 
           MVKH    .S1     _memcpy,A3        ; |398| 
           ADD     .L2     B0,B0,B0          ; |398| 
           CALL    .S2X    A3                ; |398| 
           MV      .L1X    B0,A6             ; |398| 
           ADDKPC  .S2     $C$RL16,B3,2      ; |398| 
           MV      .L1     A13,A4            ; |398| 
$C$RL16:   ; CALL OCCURS {_memcpy}           ; |398| 
$C$DW$L$_TSKLOOP_execute$13$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$14$B:
	.dwpsn	file "tskLoop.c",line 410,column 4,is_stmt
           LDH     .D2T2   *+SP(12),B4       ; |410| 
           LDW     .D2T2   *+SP(16),B5
           LDH     .D2T2   *+SP(12),B3       ; |410| 
           NOP             3
           LDH     .D2T2   *+B5[B4],B0       ; |410| 
           NOP             4
           CMPEQ   .L2     B0,4,B0           ; |410| 
   [!B0]   BNOP    .S1     $C$L12,5          ; |410| 
           ; BRANCHCC OCCURS {$C$L12}        ; |410| 
$C$DW$L$_TSKLOOP_execute$14$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$15$B:
	.dwpsn	file "tskLoop.c",line 416,column 5,is_stmt

           LDH     .D2T2   *+SP(12),B4       ; |416| 
||         MVKL    .S1     _DSP_fm_mod,A3    ; |416| 
||         MVKL    .S2     _buffer_interp_ptr,B6

           MVKH    .S2     _buffer_interp_ptr,B6
           MVKH    .S1     _DSP_fm_mod,A3    ; |416| 
           LDW     .D2T2   *B6,B0            ; |416| 
           LDW     .D2T2   *+SP(4),B2        ; |416| 
           LDH     .D2T2   *+B12[B4],B1      ; |416| 

           CALL    .S2X    A3                ; |416| 
||         MV      .L2     B11,B5            ; |416| 
||         LDH     .D2T2   *+B13[B4],B6      ; |416| 

           LDH     .D2T1   *B5,A6            ; |416| 
           ADDKPC  .S2     $C$RL17,B3,0      ; |416| 
           ADD     .L1X    4,B2,A4           ; |416| 
           SHL     .S2     B1,3,B4
           ADD     .L2     B0,B4,B4
$C$RL17:   ; CALL OCCURS {_DSP_fm_mod}       ; |416| 
$C$DW$L$_TSKLOOP_execute$15$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$16$B:
           LDH     .D2T2   *+SP(12),B3       ; |416| 
           NOP             4
$C$DW$L$_TSKLOOP_execute$16$E:
;** --------------------------------------------------------------------------*
$C$L12:    
$C$DW$L$_TSKLOOP_execute$17$B:
	.dwpsn	file "tskLoop.c",line 453,column 4,is_stmt
           LDW     .D2T2   *+SP(16),B5       ; |453| 
           MV      .L2     B3,B4             ; |453| 
           NOP             3
           LDH     .D2T2   *+B5[B4],B3       ; |453| 
           NOP             4
           CMPEQ   .L2     B3,2,B0           ; |453| 

           MV      .S2     B0,B1             ; guard predicate rewrite
|| [ B0]   B       .S1     $C$L13            ; |453| 
|| [!B0]   CMPEQ   .L2     B3,3,B0           ; |453| 

   [ B1]   MVK     .L2     0x1,B0            ; |453| nullify predicate
   [!B0]   BNOP    .S1     $C$L22,3          ; |453| 
           ; BRANCHCC OCCURS {$C$L13}        ; |453| 
$C$DW$L$_TSKLOOP_execute$17$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$18$B:
           NOP             2
           ; BRANCHCC OCCURS {$C$L22}        ; |453| 
$C$DW$L$_TSKLOOP_execute$18$E:
;** --------------------------------------------------------------------------*
$C$L13:    
$C$DW$L$_TSKLOOP_execute$19$B:
	.dwpsn	file "tskLoop.c",line 465,column 5,is_stmt
           LDW     .D2T1   *+SP(4),A10       ; |465| 
	.dwpsn	file "tskLoop.c",line 466,column 5,is_stmt
           NOP             4
           MV      .L2X    A10,B10           ; |466| 
	.dwpsn	file "tskLoop.c",line 470,column 5,is_stmt
           LDW     .D2T2   *+SP(20),B5
           MVKL    .S2     _offset_1,B31
           MVKH    .S2     _offset_1,B31
           NOP             2
           LDH     .D2T2   *+B5[B4],B0       ; |470| 
           NOP             4

           MV      .L1X    B0,A0             ; |470| Define a twin register
||         STH     .D2T2   B0,*B31           ; |470| 

	.dwpsn	file "tskLoop.c",line 471,column 5,is_stmt
           EXT     .S1     A0,17,16,A4       ; |471| 

           MVKL    .S1     _offset_2,A5
||         MV      .L1     A4,A0             ; |471| 

           MVKH    .S1     _offset_2,A5
           STH     .D1T1   A0,*A5            ; |471| 
	.dwpsn	file "tskLoop.c",line 472,column 5,is_stmt

           MPY     .M2     B0,3,B0           ; |472| 
||         MVKL    .S2     _offset_3,B4

           MVKH    .S2     _offset_3,B4
           STH     .D2T2   B0,*B4            ; |472| 
	.dwpsn	file "tskLoop.c",line 475,column 15,is_stmt
           MV      .L2     B11,B4
           LDH     .D2T2   *B4,B0            ; |475| 
           NOP             4
           CMPEQ   .L2     B0,2,B0           ; |475| 
   [ B0]   BNOP    .S1     $C$L22,5          ; |475| 
           ; BRANCHCC OCCURS {$C$L22}        ; |475| 
$C$DW$L$_TSKLOOP_execute$19$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$20$B:
	.dwpsn	file "tskLoop.c",line 475,column 10,is_stmt
           ZERO    .L2     B11               ; |475| 
$C$DW$L$_TSKLOOP_execute$20$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L14:    
$C$DW$L$_TSKLOOP_execute$21$B:
	.dwpsn	file "tskLoop.c",line 477,column 6,is_stmt
           LDH     .D1T1   *A10,A0           ; |477| 
           LDH     .D1T1   *+A10(2),A1       ; |477| 
           MVKL    .S1     _iq_data1_real_short,A5
           MVKH    .S1     _iq_data1_real_short,A5
           NOP             1

           STH     .D1T1   A0,*A5            ; |477| 
||         MV      .L1     A0,A2             ; |477| 

	.dwpsn	file "tskLoop.c",line 478,column 6,is_stmt

           MVKL    .S1     _iq_data1_imag_short,A5
||         MV      .L1     A1,A0             ; |478| 
||         MV      .L2X    A1,B0             ; |478| 

           MVKH    .S1     _iq_data1_imag_short,A5
           STH     .D1T1   A0,*A5            ; |478| 
	.dwpsn	file "tskLoop.c",line 479,column 6,is_stmt
           LDH     .D1T1   *+A10[A4],A0      ; |479| 
           ADDAH   .D1     A10,A4,A4         ; |479| 
           LDH     .D1T1   *+A4(2),A3        ; |479| 
           MVKL    .S2     _iq_data2_real_short,B4
           MVKH    .S2     _iq_data2_real_short,B4

           STH     .D2T1   A0,*B4            ; |479| 
||         MV      .L1     A0,A1             ; |479| 

	.dwpsn	file "tskLoop.c",line 480,column 6,is_stmt
           MVKL    .S2     _iq_data2_imag_short,B4

           MVKH    .S2     _iq_data2_imag_short,B4
||         MV      .L2X    A3,B1             ; |480| 
||         MV      .L1     A3,A0             ; |480| 

           STH     .D2T2   B1,*B4            ; |480| 
	.dwpsn	file "tskLoop.c",line 482,column 6,is_stmt
           MVKL    .S2     _iq_data1_real,B4
           MVKH    .S2     _iq_data1_real,B4
           STW     .D2T1   A2,*B4            ; |482| 
	.dwpsn	file "tskLoop.c",line 483,column 6,is_stmt
           MVKL    .S2     _iq_data1_imag,B4
           MVKH    .S2     _iq_data1_imag,B4
           STW     .D2T2   B0,*B4            ; |483| 
	.dwpsn	file "tskLoop.c",line 484,column 6,is_stmt
           MVKL    .S1     _iq_data2_real,A4
           MVKH    .S1     _iq_data2_real,A4
           STW     .D1T1   A1,*A4            ; |484| 
	.dwpsn	file "tskLoop.c",line 485,column 6,is_stmt
           MVKL    .S2     _iq_data2_imag,B4
           MVKH    .S2     _iq_data2_imag,B4
           STW     .D2T1   A0,*B4            ; |485| 
	.dwpsn	file "tskLoop.c",line 489,column 6,is_stmt
           MVKL    .S1     __IQNmpy,A3       ; |489| 
           MVKH    .S1     __IQNmpy,A3       ; |489| 
           MV      .L2X    A0,B4             ; |489| 
           CALL    .S2X    A3                ; |489| 
           MV      .L1     A2,A4             ; |489| 
           ADDKPC  .S2     $C$RL18,B3,2      ; |489| 
           MVK     .L1     0xe,A6            ; |489| 
$C$RL18:   ; CALL OCCURS {__IQNmpy}          ; |489| 
$C$DW$L$_TSKLOOP_execute$21$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$22$B:
           MVKL    .S2     _iq_result_2,B4

           MVKH    .S2     _iq_result_2,B4
||         MV      .L1     A4,A12            ; |489| 

           STW     .D2T1   A12,*B4           ; |489| 
	.dwpsn	file "tskLoop.c",line 490,column 6,is_stmt
           MVKL    .S2     __IQNmpy,B5       ; |490| 
           MVKL    .S2     _iq_data2_real,B4
           MVKH    .S2     __IQNmpy,B5       ; |490| 

           MVKL    .S1     _iq_data1_imag,A4
||         MVKH    .S2     _iq_data2_real,B4

           CALL    .S2     B5                ; |490| 
||         MVKH    .S1     _iq_data1_imag,A4

           LDW     .D1T1   *A4,A4            ; |490| 
||         LDW     .D2T2   *B4,B4            ; |490| 

           ADDKPC  .S2     $C$RL19,B3,2      ; |490| 
           MVK     .L1     0xe,A6            ; |490| 
$C$RL19:   ; CALL OCCURS {__IQNmpy}          ; |490| 
           MVKL    .S2     _iq_result_2,B4

           MVKH    .S2     _iq_result_2,B4
||         SUB     .L1     A12,A4,A4         ; |490| 

           STW     .D2T1   A4,*B4            ; |490| 
	.dwpsn	file "tskLoop.c",line 492,column 6,is_stmt
           MVKL    .S1     __IQNint,A3       ; |492| 
           MVKH    .S1     __IQNint,A3       ; |492| 
           MVK     .L2     0xe,B4            ; |492| 
           CALL    .S2X    A3                ; |492| 
           ADDKPC  .S2     $C$RL20,B3,4      ; |492| 
$C$RL20:   ; CALL OCCURS {__IQNint}          ; |492| 

           MV      .L1     A4,A0             ; |492| 
||         MVKL    .S1     _iq_int_2,A4

           MVKH    .S1     _iq_int_2,A4
           STW     .D1T1   A0,*A4            ; |492| 
	.dwpsn	file "tskLoop.c",line 493,column 6,is_stmt
           MVKL    .S1     __IQNfrac,A3      ; |493| 
           MVKH    .S1     __IQNfrac,A3      ; |493| 
           MVKL    .S1     _iq_result_2,A4

           CALL    .S2X    A3                ; |493| 
||         MVKH    .S1     _iq_result_2,A4

           LDW     .D1T1   *A4,A4            ; |493| 
           ADDKPC  .S2     $C$RL21,B3,2      ; |493| 
           MVK     .L2     0xe,B4            ; |493| 
$C$RL21:   ; CALL OCCURS {__IQNfrac}         ; |493| 
           MVKL    .S2     _iq_frac_2,B4
           MVKH    .S2     _iq_frac_2,B4
           STW     .D2T1   A4,*B4            ; |493| 
	.dwpsn	file "tskLoop.c",line 497,column 6,is_stmt
           MVKL    .S1     __IQNmpy,A3       ; |497| 

           MVKH    .S1     __IQNmpy,A3       ; |497| 
||         MVKL    .S2     _iq_data2_real,B4

           MVKL    .S1     _iq_data1_real,A4
||         MVKH    .S2     _iq_data2_real,B4

           CALL    .S2X    A3                ; |497| 
||         MVKH    .S1     _iq_data1_real,A4

           LDW     .D2T2   *B4,B4            ; |497| 
||         LDW     .D1T1   *A4,A4            ; |497| 

           ADDKPC  .S2     $C$RL22,B3,2      ; |497| 
           MVK     .L1     0xe,A6            ; |497| 
$C$RL22:   ; CALL OCCURS {__IQNmpy}          ; |497| 
           MVKL    .S2     _iq_result,B4

           MVKH    .S2     _iq_result,B4
||         MV      .L1     A4,A12            ; |497| 

           STW     .D2T1   A12,*B4           ; |497| 
	.dwpsn	file "tskLoop.c",line 498,column 6,is_stmt
           MVKL    .S2     __IQNmpy,B5       ; |498| 
           MVKL    .S2     _iq_data2_imag,B4
           MVKH    .S2     __IQNmpy,B5       ; |498| 

           MVKL    .S1     _iq_data1_imag,A4
||         MVKH    .S2     _iq_data2_imag,B4

           CALL    .S2     B5                ; |498| 
||         MVKH    .S1     _iq_data1_imag,A4

           LDW     .D2T2   *B4,B4            ; |498| 
||         LDW     .D1T1   *A4,A4            ; |498| 

           ADDKPC  .S2     $C$RL23,B3,2      ; |498| 
           MVK     .L1     0xe,A6            ; |498| 
$C$RL23:   ; CALL OCCURS {__IQNmpy}          ; |498| 
           MVKL    .S1     _iq_result,A5

           MVKH    .S1     _iq_result,A5
||         ADD     .L1     A12,A4,A4         ; |498| 

           STW     .D1T1   A4,*A5            ; |498| 
	.dwpsn	file "tskLoop.c",line 500,column 6,is_stmt
           MVKL    .S1     __IQNint,A3       ; |500| 
           MVKH    .S1     __IQNint,A3       ; |500| 
           MVK     .L2     0xe,B4            ; |500| 
           CALL    .S2X    A3                ; |500| 
           ADDKPC  .S2     $C$RL24,B3,4      ; |500| 
$C$RL24:   ; CALL OCCURS {__IQNint}          ; |500| 
           MVKL    .S2     _iq_int,B4
           MVKH    .S2     _iq_int,B4
           STW     .D2T1   A4,*B4            ; |500| 
	.dwpsn	file "tskLoop.c",line 501,column 6,is_stmt
           MVKL    .S1     __IQNfrac,A3      ; |501| 
           MVKH    .S1     __IQNfrac,A3      ; |501| 
           MVKL    .S1     _iq_result,A4

           CALL    .S2X    A3                ; |501| 
||         MVKH    .S1     _iq_result,A4

           LDW     .D1T1   *A4,A4            ; |501| 
           ADDKPC  .S2     $C$RL25,B3,2      ; |501| 
           MVK     .L2     0xe,B4            ; |501| 
$C$RL25:   ; CALL OCCURS {__IQNfrac}         ; |501| 
           MVKL    .S2     _iq_frac,B4
           MVKH    .S2     _iq_frac,B4
           STW     .D2T1   A4,*B4            ; |501| 
	.dwpsn	file "tskLoop.c",line 503,column 6,is_stmt
           MVKL    .S1     __IQNatan2,A3     ; |503| 

           MVKH    .S1     __IQNatan2,A3     ; |503| 
||         MVKL    .S2     _iq_result,B4

           MVKL    .S1     _iq_result_2,A4
||         MVKH    .S2     _iq_result,B4

           CALL    .S2X    A3                ; |503| 
||         MVKH    .S1     _iq_result_2,A4

           LDW     .D2T2   *B4,B4            ; |503| 
||         LDW     .D1T1   *A4,A4            ; |503| 

           ADDKPC  .S2     $C$RL26,B3,2      ; |503| 
           MVK     .L1     0xe,A6            ; |503| 
$C$RL26:   ; CALL OCCURS {__IQNatan2}        ; |503| 

           MV      .L1     A4,A0             ; |503| 
||         MVKL    .S1     _iq_result,A4

           MVKH    .S1     _iq_result,A4
           STW     .D1T1   A0,*A4            ; |503| 
	.dwpsn	file "tskLoop.c",line 505,column 6,is_stmt
           MVKL    .S2     __IQNint,B5       ; |505| 
           MVKH    .S2     __IQNint,B5       ; |505| 
           CALL    .S2     B5                ; |505| 
           ADDKPC  .S2     $C$RL27,B3,3      ; |505| 

           MVK     .L2     0xe,B4            ; |505| 
||         MV      .L1     A0,A4             ; |505| 

$C$RL27:   ; CALL OCCURS {__IQNint}          ; |505| 

           MV      .L1     A4,A0             ; |505| 
||         MVKL    .S1     _iq_int,A4

           MVKH    .S1     _iq_int,A4
           STW     .D1T1   A0,*A4            ; |505| 
	.dwpsn	file "tskLoop.c",line 506,column 6,is_stmt
           MVKL    .S1     __IQNfrac,A3      ; |506| 
           MVKH    .S1     __IQNfrac,A3      ; |506| 
           MVKL    .S1     _iq_result,A4

           CALL    .S2X    A3                ; |506| 
||         MVKH    .S1     _iq_result,A4

           LDW     .D1T1   *A4,A4            ; |506| 
           ADDKPC  .S2     $C$RL28,B3,2      ; |506| 
           MVK     .L2     0xe,B4            ; |506| 
$C$RL28:   ; CALL OCCURS {__IQNfrac}         ; |506| 
$C$DW$L$_TSKLOOP_execute$22$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$23$B:
           MVKL    .S2     _iq_frac,B4
           MVKH    .S2     _iq_frac,B4
           STW     .D2T1   A4,*B4            ; |506| 
	.dwpsn	file "tskLoop.c",line 510,column 6,is_stmt
           MVKL    .S1     _iq_result,A4
           MVKH    .S1     _iq_result,A4
           LDW     .D1T1   *A4,A0            ; |510| 
           MVKL    .S1     _iq_result2,A5
           MVKH    .S1     _iq_result2,A5
           NOP             2
           SHL     .S1     A0,14,A4          ; |510| 
           STW     .D1T1   A4,*A5            ; |510| 
	.dwpsn	file "tskLoop.c",line 512,column 6,is_stmt
           MVKL    .S2     __IQNint,B5       ; |512| 
           MVKH    .S2     __IQNint,B5       ; |512| 
           CALL    .S2     B5                ; |512| 
           ADDKPC  .S2     $C$RL29,B3,3      ; |512| 
           MVK     .L2     0xe,B4            ; |512| 
$C$RL29:   ; CALL OCCURS {__IQNint}          ; |512| 
$C$DW$L$_TSKLOOP_execute$23$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$24$B:
           MVKL    .S2     _iq_int,B4
           MVKH    .S2     _iq_int,B4
           STW     .D2T1   A4,*B4            ; |512| 
	.dwpsn	file "tskLoop.c",line 513,column 6,is_stmt
           MVKL    .S1     __IQNfrac,A3      ; |513| 
           MVKH    .S1     __IQNfrac,A3      ; |513| 
           MVKL    .S1     _iq_result2,A4

           CALL    .S2X    A3                ; |513| 
||         MVKH    .S1     _iq_result2,A4

           LDW     .D1T1   *A4,A4            ; |513| 
           ADDKPC  .S2     $C$RL30,B3,2      ; |513| 
           MVK     .L2     0xe,B4            ; |513| 
$C$RL30:   ; CALL OCCURS {__IQNfrac}         ; |513| 
$C$DW$L$_TSKLOOP_execute$24$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$25$B:
           MVKL    .S2     _iq_frac,B4
           MVKH    .S2     _iq_frac,B4
           STW     .D2T1   A4,*B4            ; |513| 
	.dwpsn	file "tskLoop.c",line 516,column 6,is_stmt
           MVKL    .S2     _iq_int,B4
           MVKH    .S2     _iq_int,B4
           LDH     .D2T2   *B4,B0            ; |516| 
           MVKL    .S1     _iq_result_short,A4
           MVKH    .S1     _iq_result_short,A4
           NOP             2
           STH     .D1T2   B0,*A4            ; |516| 
	.dwpsn	file "tskLoop.c",line 517,column 6,is_stmt
           MV      .L2X    A4,B4
           LDH     .D2T2   *B4,B0            ; |517| 
           NOP             4
           STH     .D2T2   B0,*B10           ; |517| 
	.dwpsn	file "tskLoop.c",line 518,column 6,is_stmt
           MVKL    .S1     _offset_2,A4
           MVKH    .S1     _offset_2,A4
           LDH     .D1T1   *A4,A4            ; |518| 
           NOP             4
           ADDAH   .D1     A10,A4,A10        ; |518| 
	.dwpsn	file "tskLoop.c",line 475,column 37,is_stmt
           MVKL    .S2     _offset_1,B4
           MVKH    .S2     _offset_1,B4
           LDH     .D2T2   *B4,B0            ; |475| 
           NOP             4
           ADD     .L2     B0,B11,B11        ; |475| 
	.dwpsn	file "tskLoop.c",line 519,column 6,is_stmt
           ADD     .L2     2,B10,B10         ; |519| 
	.dwpsn	file "tskLoop.c",line 475,column 15,is_stmt
           MVKL    .S2     _rf_data_size,B4
           MVKH    .S2     _rf_data_size,B4
           LDH     .D2T2   *B4,B1            ; |475| 
           MVK     .L2     0xfffffffe,B0
           NOP             3
           ADD     .L2     B0,B1,B0          ; |475| 
           CMPLTU  .L2     B11,B0,B0         ; |475| 
   [ B0]   B       .S1     $C$L14            ; |475| 
   [!B0]   BNOP    .S1     $C$L22,4          ; |475| 
           ; BRANCHCC OCCURS {$C$L14}        ; |475| 
$C$DW$L$_TSKLOOP_execute$25$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$26$B:
           NOP             1
           ; BRANCH OCCURS {$C$L22}          ; |475| 
$C$DW$L$_TSKLOOP_execute$26$E:
;** --------------------------------------------------------------------------*
$C$L15:    
$C$DW$L$_TSKLOOP_execute$27$B:
	.dwpsn	file "tskLoop.c",line 366,column 7,is_stmt
           LDW     .D2T2   *+SP(4),B0        ; |366| 
           LDH     .D2T2   *+SP(12),B4       ; |366| 
           MVKL    .S2     _scaling_factor,B5
           MVKH    .S2     _scaling_factor,B5
           LDH     .D2T2   *+SP(12),B6       ; |366| 
           ADD     .L1X    6,B0,A4           ; |366| 
           LDNW    .D1T1   *A4,A0            ; |366| 
           LDH     .D2T2   *+SP(12),B3       ; |366| 
           NOP             3
           STH     .D2T1   A0,*+B5[B4]       ; |366| 
	.dwpsn	file "tskLoop.c",line 367,column 4,is_stmt
           MV      .L2     B0,B7             ; |367| 
           LDNW    .D2T2   *+B7(8),B0        ; |367| 
           ADDAH   .D2     B13,B4,B4         ; |367| 
           NOP             3
           STH     .D2T2   B0,*B4            ; |367| 
	.dwpsn	file "tskLoop.c",line 368,column 4,is_stmt

           MVK     .L2     10,B0
||         LDH     .D2T2   *+SP(12),B5       ; |368| 

           ADD     .L2     B0,B7,B0
||         LDW     .D2T2   *+SP(20),B8

           LDNW    .D2T2   *B0,B0            ; |368| 
           NOP             4
           STH     .D2T2   B0,*+B8[B5]       ; |368| 
	.dwpsn	file "tskLoop.c",line 369,column 4,is_stmt
           LDNW    .D2T2   *+B7(12),B0       ; |369| 
           NOP             4
           EXT     .S2     B0,16,16,B0       ; |369| 
	.dwpsn	file "tskLoop.c",line 370,column 4,is_stmt
           LDH     .D2T2   *+SP(12),B2       ; |370| 
           LDW     .D2T2   *+SP(16),B8       ; |370| 
           NOP             3
           ADDAH   .D2     B12,B2,B7         ; |370| 
           STH     .D2T2   B0,*B7            ; |370| 
           STH     .D2T2   B1,*+B8[B5]       ; |370| 
           LDH     .D2T2   *+SP(12),B1       ; |370| 
	.dwpsn	file "tskLoop.c",line 376,column 4,is_stmt
           EXT     .S2     B0,17,16,B0       ; |376| 
	.dwpsn	file "tskLoop.c",line 377,column 4,is_stmt
           MV      .L2     B7,B5             ; |377| 
           STH     .D2T2   B0,*B5            ; |377| 
	.dwpsn	file "tskLoop.c",line 378,column 14,is_stmt

   [ B0]   LDW     .D2T2   *+SP(4),B7
|| [!B0]   B       .S1     $C$L19            ; |378| 

   [ B0]   LDW     .D2T2   *+SP(24),B5
   [ B0]   LDH     .D2T2   *B4,B6
   [ B0]   SHL     .S2     B1,12,B8
   [ B0]   MVK     .L2     14,B4
   [ B0]   ADD     .L2     B4,B7,B4
           ; BRANCHCC OCCURS {$C$L19}        ; |378| 
$C$DW$L$_TSKLOOP_execute$27$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$28$B:
           ADD     .L2     B5,B8,B5
	.dwpsn	file "tskLoop.c",line 380,column 8,is_stmt

           ADD     .L2     1,B0,B7           ; |380| 
||         LDW     .D2T2   *+SP(24),B2
||         MV      .L1X    B6,A7
||         DINT                              ; interrupts off

           ZERO    .L2     B0
||         SHRU    .S2     B7,1,B1           ; |380| 

           MV      .L1X    B5,A4
           SUB     .L1X    B1,1,A0
$C$DW$L$_TSKLOOP_execute$28$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 378
;*      Loop opening brace source line   : 379
;*      Loop closing brace source line   : 384
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 15
;*      Unpartitioned Resource Bound     : 4
;*      Partitioned Resource Bound(*)    : 4
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1        1     
;*      .D units                     3        4*    
;*      .M units                     1        0     
;*      .X cross paths               2        0     
;*      .T address paths             3        4*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          2        7     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2        4*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 15 Schedule found with 1 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: |*   *  *                        |* ***          *                |
;*       1: |*   *  *                        |*** *          *                |
;*       2: |*   *  *                        |*** *          *                |
;*       3: |*   *  *                        |*** *          *                |
;*       4: |*   *  *                        |*** **         *                |
;*       5: |*   ** *                        |*** **         *                |
;*       6: |*  *** *                        |*** **         *                |
;*       7: |*   *  *                        |* * *          *                |
;*       8: |*   *  *                        |* * *          *                |
;*       9: |*   *  *                        |* * *          *                |
;*      10: |*   *  *                        |* * *          *                |
;*      11: |*   *  *                        |* * *          *                |
;*      12: |*  **  *                        |*** *          *                |
;*      13: |*   *  *                        |*****          *                |
;*      14: |*   * **                        |*****          *                |
;*          +-----------------------------------------------------------------+
;*
;*      Done
;*
;*      Collapsed epilog stages     : 0
;*      Collapsed prolog stages     : 0
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  SUB             A0,1,A0
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C120:
;*   0              SHL     .S2     B3,12,B1          ; |380| 
;*     ||           LDB     .D2T2   *B4++(2),B1       ; |380|  ^ 
;*   1              ADD     .L2     B0,B1,B1          ; |380| 
;*     ||           LDB     .D2T2   *-B4(1),B1        ; |380|  ^ 
;*   2              ADD     .L2     B2,B1,B1          ; |380| 
;*   3              MV      .L2     B1,B5             ; |380| Split a long life
;*   4              MV      .L1X    B1,A5             ; |380| Define a twin register
;*   5              MV      .L1X    B1,A3             ; |380|  ^ Define a twin register
;*   6              STB     .D1T1   A3,*A5            ; |380|  ^ 
;*     ||           STB     .D2T2   B1,*+B5(1)        ; |380|  ^ 
;*   7              LDH     .D2T2   *+SP(12),B1       ; |381| 
;*     ||           LDH     .D1T1   *A4,A3            ; |381|  ^ 
;*   8              NOP             1
;*   9      [ A0]   BDEC    .S1     $C$C120,A0        ; |378| 
;*  10              NOP             2
;*  12              MV      .L2     B1,B3             ; |381| 
;*     ||           MPY     .M1     A3,A7,A6          ; |381|  ^ 
;*  13              NOP             1
;*  14              STH     .D1T1   A6,*A4++(4)       ; |381|  ^ 
;*     ||           ADD     .L2     4,B0,B0           ; |378| 
;*  15              ; BRANCHCC OCCURS {$C$C120}       ; |378| 
;*----------------------------------------------------------------------------*
$C$L16:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
$C$L17:    ; PIPED LOOP KERNEL
$C$DW$L$_TSKLOOP_execute$30$B:

           SHL     .S2     B3,12,B1          ; |380| <0,0> 
||         LDB     .D2T2   *B4++(2),B1       ; |380| <0,0>  ^ 

           ADD     .L2     B0,B1,B1          ; |380| <0,1> 
||         LDB     .D2T2   *-B4(1),B1        ; |380| <0,1>  ^ 

           ADD     .L2     B2,B1,B1          ; |380| <0,2> 
           MV      .L2     B1,B5             ; |380| <0,3> Split a long life
           MV      .L1X    B1,A5             ; |380| <0,4> Define a twin register
           MV      .L1X    B1,A3             ; |380| <0,5>  ^ Define a twin register

           STB     .D1T1   A3,*A5            ; |380| <0,6>  ^ 
||         STB     .D2T2   B1,*+B5(1)        ; |380| <0,6>  ^ 

           LDH     .D2T2   *+SP(12),B1       ; |381| <0,7> 
||         LDH     .D1T1   *A4,A3            ; |381| <0,7>  ^ 

           NOP             1
   [ A0]   BDEC    .S1     $C$L17,A0         ; |378| <0,9> 
           NOP             2

           MV      .L2     B1,B3             ; |381| <0,12> 
||         MPY     .M1     A3,A7,A6          ; |381| <0,12>  ^ 

           NOP             1

           ADD     .L2     4,B0,B0           ; |378| <0,14> 
||         STH     .D1T1   A6,*A4++(4)       ; |381| <0,14>  ^ 

$C$DW$L$_TSKLOOP_execute$30$E:
;** --------------------------------------------------------------------------*
$C$L18:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$32$B:

           MV      .L2     B1,B6
||         RINT                              ; interrupts on
||         STW     .D2T2   B2,*+SP(24)

$C$DW$L$_TSKLOOP_execute$32$E:
;** --------------------------------------------------------------------------*
$C$L19:    
$C$DW$L$_TSKLOOP_execute$33$B:
	.dwpsn	file "tskLoop.c",line 386,column 4,is_stmt
           LDH     .D2T2   *+B13[B6],B7      ; |386| 
           ADD     .L2     B6,B6,B8          ; |386| 
           NOP             3
           CMPLT   .L2     B7,2,B0           ; |386| 
   [ B0]   BNOP    .S1     $C$L20,5          ; |386| 
           ; BRANCHCC OCCURS {$C$L20}        ; |386| 
$C$DW$L$_TSKLOOP_execute$33$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$34$B:
	.dwpsn	file "tskLoop.c",line 390,column 5,is_stmt

           MVKL    .S2     __remi,B9         ; |390| 
||         LDH     .D2T2   *+B12[B6],B5      ; |390| 

           MVKH    .S2     __remi,B9         ; |390| 
           CALL    .S2     B9                ; |390| 
           ADDKPC  .S2     $C$RL31,B3,2      ; |390| 
           MV      .L1X    B5,A4             ; |390| 
           MV      .L2     B7,B4             ; |390| 
$C$RL31:   ; CALL OCCURS {__remi}            ; |390| 
$C$DW$L$_TSKLOOP_execute$34$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$35$B:
           EXT     .S1     A4,16,16,A0       ; |390| 
   [!A0]   BNOP    .S1     $C$L20,5          ; |390| 
           ; BRANCHCC OCCURS {$C$L20}        ; |390| 
$C$DW$L$_TSKLOOP_execute$35$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$36$B:
	.dwpsn	file "tskLoop.c",line 391,column 6,is_stmt
           MVKL    .S1     __divi,A3         ; |391| 
           MVKH    .S1     __divi,A3         ; |391| 
           MV      .L1X    B5,A4             ; |391| 
           CALL    .S2X    A3                ; |391| 
           MV      .L2     B7,B4             ; |391| 
           ADDKPC  .S2     $C$RL32,B3,3      ; |391| 
$C$RL32:   ; CALL OCCURS {__divi}            ; |391| 
$C$DW$L$_TSKLOOP_execute$36$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$37$B:
           ADD     .L1     1,A4,A0           ; |391| 
           NOP             1
           MPY     .M2X    A0,B7,B0          ; |391| 
           NOP             1
           STH     .D2T2   B0,*+B12[B6]      ; |391| 
$C$DW$L$_TSKLOOP_execute$37$E:
;** --------------------------------------------------------------------------*
$C$L20:    
$C$DW$L$_TSKLOOP_execute$38$B:
	.dwpsn	file "tskLoop.c",line 393,column 4,is_stmt
           ADD     .L2     B8,B12,B4         ; |393| 
           LDH     .D2T2   *B4,B0            ; |393| 
           NOP             4
           SHRU    .S2     B0,31,B1          ; |393| 
           ADD     .L2     B0,B1,B0          ; |393| 
           SHR     .S2     B0,1,B0           ; |393| 
           STH     .D2T2   B0,*B4            ; |393| 
	.dwpsn	file "tskLoop.c",line 394,column 7,is_stmt
           BNOP    .S1     $C$L22,5          ; |394| 
           ; BRANCH OCCURS {$C$L22}          ; |394| 
$C$DW$L$_TSKLOOP_execute$38$E:
;** --------------------------------------------------------------------------*
$C$L21:    
$C$DW$L$_TSKLOOP_execute$39$B:
	.dwpsn	file "tskLoop.c",line 528,column 13,is_stmt
           MVKL    .S1     _SetReason,A3     ; |528| 
           MVKH    .S1     _SetReason,A3     ; |528| 
           MVK     .S2     0x10,B4
           CALL    .S2X    A3                ; |528| 
           SET     .S2     B4,0x9,0x9,B4
           ADDKPC  .S2     $C$RL33,B3,2      ; |528| 

           MV      .L1     A15,A4            ; |528| 
||         MV      .S1     A14,A6            ; |528| 

$C$RL33:   ; CALL OCCURS {_SetReason}        ; |528| 
$C$DW$L$_TSKLOOP_execute$39$E:
;** --------------------------------------------------------------------------*
$C$L22:    
$C$DW$L$_TSKLOOP_execute$40$B:
	.dwpsn	file "tskLoop.c",line 531,column 9,is_stmt
           MV      .L1     A14,A0
   [ A0]   BNOP    .S1     $C$L9,5           ; |531| 
           ; BRANCHCC OCCURS {$C$L9}         ; |531| 
$C$DW$L$_TSKLOOP_execute$40$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$41$B:
	.dwpsn	file "tskLoop.c",line 532,column 13,is_stmt
           MVKL    .S2     _SIO_issue,B5     ; |532| 
           MVKH    .S2     _SIO_issue,B5     ; |532| 

           CALL    .S2     B5                ; |532| 
||         LDW     .D2T2   *+SP(4),B4        ; |532| 
||         LDW     .D1T1   *+A11(4),A4       ; |532| 

           LDW     .D2T2   *+SP(8),B6        ; |532| 
||         LDHU    .D1T1   *+A11(16),A6      ; |532| 

           ADDKPC  .S2     $C$RL34,B3,3      ; |532| 
$C$RL34:   ; CALL OCCURS {_SIO_issue}        ; |532| 
$C$DW$L$_TSKLOOP_execute$41$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$42$B:
           MV      .L2X    A4,B0             ; |532| 
   [ B0]   BNOP    .S1     $C$L23,5          ; |532| 
           ; BRANCHCC OCCURS {$C$L23}        ; |532| 
$C$DW$L$_TSKLOOP_execute$42$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$43$B:
	.dwpsn	file "tskLoop.c",line 538,column 17,is_stmt
           MVKL    .S2     _SIO_reclaim,B5   ; |538| 
           MVKH    .S2     _SIO_reclaim,B5   ; |538| 
           CALL    .S2     B5                ; |538| 
           LDW     .D1T1   *+A11(4),A4       ; |538| 
           ADDKPC  .S2     $C$RL35,B3,2      ; |538| 

           ADD     .L2     4,SP,B4           ; |538| 
||         ADD     .L1X    8,SP,A6           ; |538| 

$C$RL35:   ; CALL OCCURS {_SIO_reclaim}      ; |538| 
$C$DW$L$_TSKLOOP_execute$43$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$44$B:

           CMPLT   .L1     A4,0,A0           ; |538| 
||         MV      .S1     A4,A3             ; |538| 

   [!A0]   BNOP    .S1     $C$L9,5           ; |538| 
           ; BRANCHCC OCCURS {$C$L9}         ; |538| 
$C$DW$L$_TSKLOOP_execute$44$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$45$B:
	.dwpsn	file "tskLoop.c",line 543,column 21,is_stmt
           MVKL    .S2     _SetReason,B5     ; |543| 
           MVKH    .S2     _SetReason,B5     ; |543| 
           CALL    .S2     B5                ; |543| 
           MVK     .S2     0x1f,B4
           SET     .S2     B4,0x9,0x9,B4
           ADDKPC  .S2     $C$RL36,B3,1      ; |543| 

           MV      .L1     A15,A4            ; |543| 
||         NEG     .S1     A3,A6             ; |543| 

$C$RL36:   ; CALL OCCURS {_SetReason}        ; |543| 
$C$DW$L$_TSKLOOP_execute$45$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$46$B:
           BNOP    .S1     $C$L9,5           ; |543| 
           ; BRANCH OCCURS {$C$L9}           ; |543| 
$C$DW$L$_TSKLOOP_execute$46$E:
;** --------------------------------------------------------------------------*
$C$L23:    
$C$DW$L$_TSKLOOP_execute$47$B:
	.dwpsn	file "tskLoop.c",line 547,column 17,is_stmt
           MVKL    .S1     _SetReason,A3     ; |547| 
           MVKH    .S1     _SetReason,A3     ; |547| 
           MVK     .S2     0x23,B4
           CALL    .S2X    A3                ; |547| 
           SET     .S2     B4,0x9,0x9,B4
           ADDKPC  .S2     $C$RL37,B3,2      ; |547| 

           MV      .L1     A15,A4            ; |547| 
||         MV      .S1X    B0,A6             ; |547| 

$C$RL37:   ; CALL OCCURS {_SetReason}        ; |547| 
$C$DW$L$_TSKLOOP_execute$47$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$48$B:
           BNOP    .S1     $C$L9,5           ; |547| 
           ; BRANCH OCCURS {$C$L9}           ; |547| 
$C$DW$L$_TSKLOOP_execute$48$E:
;** --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	cfa_offset, 48
	.dwcfi	restore_reg, 11
	.dwcfi	restore_reg, 10
	.dwcfi	cfa_offset, 40
	.dwcfi	restore_reg, 13
	.dwcfi	restore_reg, 12
	.dwcfi	cfa_offset, 32
	.dwcfi	restore_reg, 14
	.dwcfi	cfa_offset, 24
	.dwcfi	restore_reg, 19
	.dwcfi	cfa_offset, 16
	.dwcfi	restore_reg, 27
	.dwcfi	restore_reg, 26
	.dwcfi	cfa_offset, 8
	.dwcfi	restore_reg, 29
	.dwcfi	restore_reg, 28
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 15
	.dwcfi	cfa_offset, 0

$C$DW$202	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$202, DW_AT_name("/home/alfayez/oe/tmp_beagleboard/staging/beagleboard-angstrom-linux-gnueabi/ti-dsplink-module/packages/dsplink/dsp/src/samples/loopAl2/tskLoop.asm:$C$L9:1:1302661134")
	.dwattr $C$DW$202, DW_AT_TI_begin_file("tskLoop.c")
	.dwattr $C$DW$202, DW_AT_TI_begin_line(0x14a)
	.dwattr $C$DW$202, DW_AT_TI_end_line(0x226)
$C$DW$203	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$203, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$4$B)
	.dwattr $C$DW$203, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$4$E)
$C$DW$204	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$204, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$47$B)
	.dwattr $C$DW$204, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$47$E)
$C$DW$205	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$205, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$45$B)
	.dwattr $C$DW$205, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$45$E)
$C$DW$206	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$206, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$41$B)
	.dwattr $C$DW$206, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$41$E)
$C$DW$207	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$207, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$42$B)
	.dwattr $C$DW$207, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$42$E)
$C$DW$208	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$208, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$43$B)
	.dwattr $C$DW$208, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$43$E)
$C$DW$209	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$209, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$36$B)
	.dwattr $C$DW$209, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$36$E)
$C$DW$210	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$210, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$34$B)
	.dwattr $C$DW$210, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$34$E)
$C$DW$211	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$211, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$28$B)
	.dwattr $C$DW$211, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$28$E)
$C$DW$212	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$212, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$27$B)
	.dwattr $C$DW$212, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$27$E)
$C$DW$213	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$213, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$32$B)
	.dwattr $C$DW$213, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$32$E)
$C$DW$214	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$214, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$33$B)
	.dwattr $C$DW$214, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$33$E)
$C$DW$215	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$215, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$35$B)
	.dwattr $C$DW$215, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$35$E)
$C$DW$216	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$216, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$37$B)
	.dwattr $C$DW$216, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$37$E)
$C$DW$217	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$217, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$20$B)
	.dwattr $C$DW$217, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$20$E)
$C$DW$218	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$218, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$15$B)
	.dwattr $C$DW$218, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$15$E)
$C$DW$219	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$219, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$8$B)
	.dwattr $C$DW$219, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$8$E)
$C$DW$220	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$220, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$5$B)
	.dwattr $C$DW$220, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$5$E)
$C$DW$221	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$221, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$6$B)
	.dwattr $C$DW$221, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$6$E)
$C$DW$222	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$222, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$7$B)
	.dwattr $C$DW$222, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$7$E)
$C$DW$223	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$223, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$9$B)
	.dwattr $C$DW$223, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$9$E)
$C$DW$224	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$224, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$10$B)
	.dwattr $C$DW$224, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$10$E)
$C$DW$225	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$225, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$11$B)
	.dwattr $C$DW$225, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$11$E)
$C$DW$226	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$226, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$12$B)
	.dwattr $C$DW$226, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$12$E)
$C$DW$227	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$227, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$13$B)
	.dwattr $C$DW$227, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$13$E)
$C$DW$228	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$228, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$14$B)
	.dwattr $C$DW$228, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$14$E)
$C$DW$229	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$229, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$16$B)
	.dwattr $C$DW$229, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$16$E)
$C$DW$230	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$230, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$17$B)
	.dwattr $C$DW$230, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$17$E)
$C$DW$231	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$231, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$18$B)
	.dwattr $C$DW$231, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$18$E)
$C$DW$232	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$232, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$19$B)
	.dwattr $C$DW$232, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$19$E)
$C$DW$233	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$233, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$26$B)
	.dwattr $C$DW$233, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$26$E)
$C$DW$234	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$234, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$38$B)
	.dwattr $C$DW$234, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$38$E)
$C$DW$235	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$235, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$39$B)
	.dwattr $C$DW$235, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$39$E)
$C$DW$236	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$236, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$48$B)
	.dwattr $C$DW$236, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$48$E)
$C$DW$237	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$237, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$46$B)
	.dwattr $C$DW$237, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$46$E)
$C$DW$238	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$238, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$44$B)
	.dwattr $C$DW$238, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$44$E)
$C$DW$239	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$239, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$40$B)
	.dwattr $C$DW$239, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$40$E)

$C$DW$240	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$240, DW_AT_name("/home/alfayez/oe/tmp_beagleboard/staging/beagleboard-angstrom-linux-gnueabi/ti-dsplink-module/packages/dsplink/dsp/src/samples/loopAl2/tskLoop.asm:$C$L17:2:1302661134")
	.dwattr $C$DW$240, DW_AT_TI_begin_file("tskLoop.c")
	.dwattr $C$DW$240, DW_AT_TI_begin_line(0x17a)
	.dwattr $C$DW$240, DW_AT_TI_end_line(0x180)
$C$DW$241	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$241, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$30$B)
	.dwattr $C$DW$241, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$30$E)
	.dwendtag $C$DW$240


$C$DW$242	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$242, DW_AT_name("/home/alfayez/oe/tmp_beagleboard/staging/beagleboard-angstrom-linux-gnueabi/ti-dsplink-module/packages/dsplink/dsp/src/samples/loopAl2/tskLoop.asm:$C$L14:2:1302661134")
	.dwattr $C$DW$242, DW_AT_TI_begin_file("tskLoop.c")
	.dwattr $C$DW$242, DW_AT_TI_begin_line(0x1db)
	.dwattr $C$DW$242, DW_AT_TI_end_line(0x208)
$C$DW$243	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$243, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$21$B)
	.dwattr $C$DW$243, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$21$E)
$C$DW$244	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$244, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$22$B)
	.dwattr $C$DW$244, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$22$E)
$C$DW$245	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$245, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$23$B)
	.dwattr $C$DW$245, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$23$E)
$C$DW$246	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$246, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$24$B)
	.dwattr $C$DW$246, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$24$E)
$C$DW$247	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$247, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$25$B)
	.dwattr $C$DW$247, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$25$E)
	.dwendtag $C$DW$242

	.dwendtag $C$DW$202

	.dwattr $C$DW$188, DW_AT_TI_end_file("tskLoop.c")
	.dwattr $C$DW$188, DW_AT_TI_end_line(0x228)
	.dwattr $C$DW$188, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$188

	.sect	".text"
	.global	_TSKLOOP_delete

$C$DW$248	.dwtag  DW_TAG_subprogram, DW_AT_name("TSKLOOP_delete")
	.dwattr $C$DW$248, DW_AT_low_pc(_TSKLOOP_delete)
	.dwattr $C$DW$248, DW_AT_high_pc(0x00)
	.dwattr $C$DW$248, DW_AT_TI_symbol_name("_TSKLOOP_delete")
	.dwattr $C$DW$248, DW_AT_external
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$248, DW_AT_TI_begin_file("tskLoop.c")
	.dwattr $C$DW$248, DW_AT_TI_begin_line(0x235)
	.dwattr $C$DW$248, DW_AT_TI_begin_column(0x05)
	.dwpsn	file "tskLoop.c",line 566,column 1,is_stmt,address _TSKLOOP_delete

	.dwfde $C$DW$CIE, _TSKLOOP_delete

;******************************************************************************
;* FUNCTION NAME: TSKLOOP_delete                                              *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,SP,A16,A17,A18,A19,A20,  *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,SP,A16,A17,A18,A19,A20,  *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 32 Save = 32 byte                  *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_TSKLOOP_delete:
;** --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 228, 19
           STW     .D2T2   B3,*SP--(8)       ; |566| 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 19, 0
           STDW    .D2T1   A13:A12,*SP--     ; |566| 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 13, -4
	.dwcfi	save_reg_to_mem, 12, -8
           STDW    .D2T1   A11:A10,*SP--     ; |566| 
	.dwcfi	cfa_offset, 24
	.dwcfi	save_reg_to_mem, 11, -12
	.dwcfi	save_reg_to_mem, 10, -16
$C$DW$249	.dwtag  DW_TAG_formal_parameter, DW_AT_name("info")
	.dwattr $C$DW$249, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$291)
	.dwattr $C$DW$249, DW_AT_location[DW_OP_reg4]
$C$DW$250	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$250, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$250, DW_AT_location[DW_OP_reg11]
$C$DW$251	.dwtag  DW_TAG_variable, DW_AT_name("freeStatus")
	.dwattr $C$DW$251, DW_AT_TI_symbol_name("_freeStatus")
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$251, DW_AT_location[DW_OP_reg4]
$C$DW$252	.dwtag  DW_TAG_variable, DW_AT_name("tmpStatus")
	.dwattr $C$DW$252, DW_AT_TI_symbol_name("_tmpStatus")
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$252, DW_AT_location[DW_OP_reg6]
$C$DW$253	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$253, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$253, DW_AT_location[DW_OP_reg12]
$C$DW$254	.dwtag  DW_TAG_variable, DW_AT_name("info")
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$396)
	.dwattr $C$DW$254, DW_AT_location[DW_OP_reg10]
           MV      .L1     A4,A10            ; |566| 
	.dwpsn	file "tskLoop.c",line 573,column 5,is_stmt
           LDW     .D1T1   *A10,A0           ; |573| 
           NOP             4
   [!A0]   BNOP    .S1     $C$L24,5          ; |573| 
           ; BRANCHCC OCCURS {$C$L24}        ; |573| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "tskLoop.c",line 574,column 9,is_stmt
           MVKL    .S2     _SIO_delete,B4    ; |574| 
           MVKH    .S2     _SIO_delete,B4    ; |574| 
           CALL    .S2     B4                ; |574| 
           ADDKPC  .S2     $C$RL38,B3,3      ; |574| 
           MV      .L1     A0,A4             ; |574| 
$C$RL38:   ; CALL OCCURS {_SIO_delete}       ; |574| 
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A0             ; |574| 
||         MV      .S1     A4,A12            ; |574| 

   [!A0]   BNOP    .S1     $C$L25,5          ; |574| 
           ; BRANCHCC OCCURS {$C$L25}        ; |574| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "tskLoop.c",line 576,column 13,is_stmt
           MVKL    .S1     _SetReason,A3     ; |576| 
           MVKH    .S1     _SetReason,A3     ; |576| 
           MVK     .S2     0x40,B4
           CALL    .S2X    A3                ; |576| 
           SET     .S2     B4,0x9,0x9,B4
           MVK     .S1     0x1,A4
           SET     .S1     A4,0x8,0x8,A4
           ADDKPC  .S2     $C$RL39,B3,0      ; |576| 
           MV      .L1     A12,A6            ; |576| 
$C$RL39:   ; CALL OCCURS {_SetReason}        ; |576| 
;** --------------------------------------------------------------------------*
           BNOP    .S1     $C$L25,5          ; |576| 
           ; BRANCH OCCURS {$C$L25}          ; |576| 
;** --------------------------------------------------------------------------*
$C$L24:    
	.dwpsn	file "tskLoop.c",line 567,column 13,is_stmt
           ZERO    .L1     A12               ; |567| 
;** --------------------------------------------------------------------------*
$C$L25:    
	.dwpsn	file "tskLoop.c",line 581,column 5,is_stmt
           LDW     .D1T1   *+A10(4),A0       ; |581| 
           NOP             4
   [!A0]   BNOP    .S1     $C$L26,5          ; |581| 
           ; BRANCHCC OCCURS {$C$L26}        ; |581| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "tskLoop.c",line 582,column 9,is_stmt
           MVKL    .S2     _SIO_delete,B4    ; |582| 
           MVKH    .S2     _SIO_delete,B4    ; |582| 
           CALL    .S2     B4                ; |582| 
           ADDKPC  .S2     $C$RL40,B3,3      ; |582| 
           MV      .L1     A0,A4             ; |582| 
$C$RL40:   ; CALL OCCURS {_SIO_delete}       ; |582| 
;** --------------------------------------------------------------------------*
           EXTU    .S1     A4,16,16,A6       ; |582| 
	.dwpsn	file "tskLoop.c",line 583,column 9,is_stmt

           CMPEQ   .L1     A6,0,A0           ; |583| 
||         MV      .S1     A12,A1            ; |583| 

           XOR     .S1     1,A0,A1           ; |583| 
||         CMPEQ   .L1     A1,0,A0           ; |583| 

           AND     .L1     A1,A0,A0          ; |583| 
   [!A0]   BNOP    .S1     $C$L26,5          ; |583| 
           ; BRANCHCC OCCURS {$C$L26}        ; |583| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "tskLoop.c",line 584,column 13,is_stmt
           MV      .L1     A6,A12            ; |584| 
	.dwpsn	file "tskLoop.c",line 585,column 13,is_stmt
           MVKL    .S1     _SetReason,A3     ; |585| 
           MVKH    .S1     _SetReason,A3     ; |585| 
           MVK     .S2     0x49,B4
           CALL    .S2X    A3                ; |585| 
           SET     .S2     B4,0x9,0x9,B4
           MVK     .S1     0x1,A4
           SET     .S1     A4,0x8,0x8,A4
           ADDKPC  .S2     $C$RL41,B3,1      ; |585| 
$C$RL41:   ; CALL OCCURS {_SetReason}        ; |585| 
;** --------------------------------------------------------------------------*
$C$L26:    
           CMPEQ   .L1     A12,0,A13
	.dwpsn	file "tskLoop.c",line 590,column 5,is_stmt
           LDHU    .D1T1   *+A10(18),A0      ; |590| 
           NOP             4
   [!A0]   BNOP    .S1     $C$L28,5          ; |590| 
           ; BRANCHCC OCCURS {$C$L28}        ; |590| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "tskLoop.c",line 591,column 14,is_stmt
           ZERO    .L1     A11               ; |591| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L27:    
$C$DW$L$_TSKLOOP_delete$13$B:
	.dwpsn	file "tskLoop.c",line 592,column 14,is_stmt
           ADDAW   .D1     A10,A11,A4        ; |592| 
           LDW     .D1T1   *+A4(20),A0       ; |592| 
           NOP             4
   [!A0]   BNOP    .S1     $C$L28,5          ; |592| 
           ; BRANCHCC OCCURS {$C$L28}        ; |592| 
$C$DW$L$_TSKLOOP_delete$13$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_delete$14$B:
	.dwpsn	file "tskLoop.c",line 594,column 13,is_stmt
           MVKL    .S1     _POOL,A4
           MVKH    .S1     _POOL,A4
           LDW     .D1T1   *A4,A4            ; |594| 
           LDW     .D1T1   *+A10(12),A6      ; |594| 
           MV      .L2X    A0,B4             ; |594| 
           NOP             2
           LDW     .D1T1   *A4,A4            ; |594| 
           NOP             4
           LDW     .D1T1   *+A4(4),A5        ; |594| 
           LDW     .D1T1   *+A4(12),A4       ; |594| 
           NOP             3
           LDW     .D1T1   *+A5(12),A3       ; |594| 
           NOP             4
           CALL    .S2X    A3                ; |594| 
           ADDKPC  .S2     $C$RL42,B3,4      ; |594| 
$C$RL42:   ; CALL OCCURS {A3}                ; |594| 
$C$DW$L$_TSKLOOP_delete$14$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_delete$15$B:
	.dwpsn	file "tskLoop.c",line 593,column 14,is_stmt
           LDHU    .D1T1   *+A10(18),A1      ; |593| 
           ADD     .L1     1,A11,A0          ; |593| 
           EXTU    .S1     A0,16,16,A11      ; |593| 
           NOP             2
           CMPGTU  .L1     A1,A11,A0         ; |593| 
   [ A0]   BNOP    .S1     $C$L27,5          ; |593| 
           ; BRANCHCC OCCURS {$C$L27}        ; |593| 
$C$DW$L$_TSKLOOP_delete$15$E:
;** --------------------------------------------------------------------------*
$C$L28:    
	.dwpsn	file "tskLoop.c",line 599,column 5,is_stmt
           MVKL    .S2     _MEM_free,B5      ; |599| 

           MVKH    .S2     _MEM_free,B5      ; |599| 
||         MVKL    .S1     _DDR2,A4

           CALL    .S2     B5                ; |599| 
||         MVKH    .S1     _DDR2,A4

           LDW     .D1T1   *A4,A4            ; |599| 
           MVK     .S1     0xa4,A6
           ADDKPC  .S2     $C$RL43,B3,1      ; |599| 

           SET     .S1     A6,0x8,0x8,A6
||         MV      .L2X    A10,B4            ; |599| 

$C$RL43:   ; CALL OCCURS {_MEM_free}         ; |599| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "tskLoop.c",line 601,column 5,is_stmt
           CMPEQ   .L1     A4,1,A0           ; |601| 
           XOR     .L1     1,A0,A0           ; |601| 
           AND     .L1     A13,A0,A0         ; |601| 
   [!A0]   BNOP    .S1     $C$L29,5          ; |601| 
           ; BRANCHCC OCCURS {$C$L29}        ; |601| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "tskLoop.c",line 603,column 9,is_stmt
           MVKL    .S1     _SetReason,A3     ; |603| 
           MVKH    .S1     _SetReason,A3     ; |603| 
           MVK     .S2     0x5b,B4
           CALL    .S2X    A3                ; |603| 
           SET     .S2     B4,0x9,0x9,B4
           MVK     .S1     0x1,A4
           SET     .S1     A4,0x8,0x8,A4
           ADDKPC  .S2     $C$RL44,B3,0      ; |603| 
           MVK     .L1     0x2,A6            ; |603| 
$C$RL44:   ; CALL OCCURS {_SetReason}        ; |603| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "tskLoop.c",line 602,column 9,is_stmt
           MVK     .L1     0x2,A0            ; |602| 
           MV      .L1     A0,A12            ; |602| 
;** --------------------------------------------------------------------------*
$C$L29:    
	.dwpsn	file "tskLoop.c",line 606,column 5,is_stmt
           MV      .L1     A12,A4
	.dwpsn	file "tskLoop.c",line 607,column 1,is_stmt
           LDDW    .D2T1   *++SP,A11:A10
	.dwcfi	cfa_offset, 16
	.dwcfi	restore_reg, 11
	.dwcfi	restore_reg, 10
           LDDW    .D2T1   *++SP,A13:A12
	.dwcfi	cfa_offset, 8
	.dwcfi	restore_reg, 13
	.dwcfi	restore_reg, 12
           LDW     .D2T2   *++SP(8),B3       ; |607| 
           NOP             4
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 19
	.dwcfi	cfa_offset, 0
           RETNOP  .S2     B3,5
           ; BRANCH OCCURS {B3} 

$C$DW$255	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$255, DW_AT_name("/home/alfayez/oe/tmp_beagleboard/staging/beagleboard-angstrom-linux-gnueabi/ti-dsplink-module/packages/dsplink/dsp/src/samples/loopAl2/tskLoop.asm:$C$L27:1:1302661134")
	.dwattr $C$DW$255, DW_AT_TI_begin_file("tskLoop.c")
	.dwattr $C$DW$255, DW_AT_TI_begin_line(0x24f)
	.dwattr $C$DW$255, DW_AT_TI_end_line(0x253)
$C$DW$256	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$256, DW_AT_low_pc($C$DW$L$_TSKLOOP_delete$13$B)
	.dwattr $C$DW$256, DW_AT_high_pc($C$DW$L$_TSKLOOP_delete$13$E)
$C$DW$257	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$257, DW_AT_low_pc($C$DW$L$_TSKLOOP_delete$14$B)
	.dwattr $C$DW$257, DW_AT_high_pc($C$DW$L$_TSKLOOP_delete$14$E)
$C$DW$258	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$258, DW_AT_low_pc($C$DW$L$_TSKLOOP_delete$15$B)
	.dwattr $C$DW$258, DW_AT_high_pc($C$DW$L$_TSKLOOP_delete$15$E)
	.dwendtag $C$DW$255

	.dwattr $C$DW$248, DW_AT_TI_end_file("tskLoop.c")
	.dwattr $C$DW$248, DW_AT_TI_end_line(0x25f)
	.dwattr $C$DW$248, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$248

	.sect	".text"
	.global	_TSKLOOP_create

$C$DW$259	.dwtag  DW_TAG_subprogram, DW_AT_name("TSKLOOP_create")
	.dwattr $C$DW$259, DW_AT_low_pc(_TSKLOOP_create)
	.dwattr $C$DW$259, DW_AT_high_pc(0x00)
	.dwattr $C$DW$259, DW_AT_TI_symbol_name("_TSKLOOP_create")
	.dwattr $C$DW$259, DW_AT_external
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$259, DW_AT_TI_begin_file("tskLoop.c")
	.dwattr $C$DW$259, DW_AT_TI_begin_line(0xac)
	.dwattr $C$DW$259, DW_AT_TI_begin_column(0x05)
	.dwpsn	file "tskLoop.c",line 173,column 1,is_stmt,address _TSKLOOP_create

	.dwfde $C$DW$CIE, _TSKLOOP_create

;******************************************************************************
;* FUNCTION NAME: TSKLOOP_create                                              *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,SP,A16,A17,   *
;*                           A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29, *
;*                           A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25, *
;*                           B26,B27,B28,B29,B30,B31                          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,SP,A16,A17,   *
;*                           A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29, *
;*                           A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25, *
;*                           B26,B27,B28,B29,B30,B31                          *
;*   Local Frame Size  : 0 Args + 28 Auto + 40 Save = 68 byte                 *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_TSKLOOP_create:
;** --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 228, 19
           STW     .D2T2   B11,*SP--(8)      ; |173| 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 27, 0
           STW     .D2T2   B10,*SP--(8)      ; |173| 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 26, -8
           STW     .D2T2   B3,*SP--(8)       ; |173| 
	.dwcfi	cfa_offset, 24
	.dwcfi	save_reg_to_mem, 19, -16
           STW     .D2T1   A14,*SP--(8)      ; |173| 
	.dwcfi	cfa_offset, 32
	.dwcfi	save_reg_to_mem, 14, -24
           STDW    .D2T1   A13:A12,*SP--     ; |173| 
	.dwcfi	cfa_offset, 40
	.dwcfi	save_reg_to_mem, 13, -28
	.dwcfi	save_reg_to_mem, 12, -32
           STDW    .D2T1   A11:A10,*SP--     ; |173| 
	.dwcfi	cfa_offset, 48
	.dwcfi	save_reg_to_mem, 11, -36
	.dwcfi	save_reg_to_mem, 10, -40
           ADDK    .S2     -32,SP            ; |173| 
	.dwcfi	cfa_offset, 32
$C$DW$260	.dwtag  DW_TAG_formal_parameter, DW_AT_name("infoPtr")
	.dwattr $C$DW$260, DW_AT_TI_symbol_name("_infoPtr")
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$292)
	.dwattr $C$DW$260, DW_AT_location[DW_OP_reg4]
$C$DW$261	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$261, DW_AT_location[DW_OP_reg12]
$C$DW$262	.dwtag  DW_TAG_variable, DW_AT_name("info")
	.dwattr $C$DW$262, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$291)
	.dwattr $C$DW$262, DW_AT_location[DW_OP_reg27]
$C$DW$263	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$263, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$263, DW_AT_location[DW_OP_reg11]
$C$DW$264	.dwtag  DW_TAG_variable, DW_AT_name("infoPtr")
	.dwattr $C$DW$264, DW_AT_TI_symbol_name("_infoPtr")
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$395)
	.dwattr $C$DW$264, DW_AT_location[DW_OP_reg10]
$C$DW$265	.dwtag  DW_TAG_variable, DW_AT_name("attrs")
	.dwattr $C$DW$265, DW_AT_TI_symbol_name("_attrs")
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$388)
	.dwattr $C$DW$265, DW_AT_location[DW_OP_breg31 4]
           MV      .L1     A4,A10            ; |173| 
	.dwpsn	file "tskLoop.c",line 201,column 5,is_stmt
           MVKL    .S1     _MEM_valloc,A3    ; |201| 

           MVKH    .S1     _MEM_valloc,A3    ; |201| 
||         MVKL    .S2     _DDR2,B10

           MVKH    .S2     _DDR2,B10
           CALL    .S2X    A3                ; |201| 
           LDW     .D2T1   *B10,A4           ; |201| 
           MVK     .S2     0xa4,B4
           SET     .S2     B4,0x8,0x8,B4
           ADDKPC  .S2     $C$RL45,B3,0      ; |201| 

           MVK     .S1     0x80,A6           ; |201| 
||         ZERO    .L2     B6                ; |201| 

$C$RL45:   ; CALL OCCURS {_MEM_valloc}       ; |201| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |201| 
           STW     .D1T1   A0,*A10           ; |201| 
	.dwpsn	file "tskLoop.c",line 205,column 5,is_stmt
   [ A0]   BNOP    .S1     $C$L30,5          ; |205| 
           ; BRANCHCC OCCURS {$C$L30}        ; |205| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "tskLoop.c",line 175,column 29,is_stmt
           ZERO    .L2     B11               ; |175| 
	.dwpsn	file "tskLoop.c",line 206,column 9,is_stmt
           MVK     .L2     0x1,B0            ; |206| 
           NOP             1
           MV      .L1X    B0,A11            ; |206| 
	.dwpsn	file "tskLoop.c",line 207,column 5,is_stmt
           BNOP    .S1     $C$L31,5          ; |207| 
           ; BRANCH OCCURS {$C$L31}          ; |207| 
;** --------------------------------------------------------------------------*
$C$L30:    
	.dwpsn	file "tskLoop.c",line 209,column 9,is_stmt
           MV      .L2X    A0,B11            ; |209| 
	.dwpsn	file "tskLoop.c",line 174,column 29,is_stmt
           ZERO    .L1     A11               ; |174| 
;** --------------------------------------------------------------------------*
$C$L31:    
	.dwpsn	file "tskLoop.c",line 212,column 5,is_stmt

           MVKL    .S1     _xferBufSize,A4
||         MV      .L2     B10,B4            ; |212| 

           MV      .L2X    A11,B0            ; |212| 
||         MVKH    .S1     _xferBufSize,A4
||         LDW     .D2T2   *B4,B8            ; |212| 

   [ B0]   BNOP    .S1     $C$L32,5          ; |212| 
||         LDW     .D1T1   *A4,A3            ; |212| 

           ; BRANCHCC OCCURS {$C$L32}        ; |212| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "tskLoop.c",line 214,column 9,is_stmt
           MVKL    .S1     _numTransfers,A4
           MVKH    .S1     _numTransfers,A4
           LDHU    .D1T2   *A4,B0            ; |214| 
           NOP             4
           STH     .D2T2   B0,*+B11(8)       ; |214| 
	.dwpsn	file "tskLoop.c",line 215,column 9,is_stmt
           STW     .D2T1   A3,*+B11(12)      ; |215| 
	.dwpsn	file "tskLoop.c",line 216,column 9,is_stmt
           MVK     .L1     0x1,A0            ; |216| 
           STH     .D2T1   A0,*+B11(18)      ; |216| 
	.dwpsn	file "tskLoop.c",line 219,column 9,is_stmt
           MVKL    .S2     _SIO_ATTRS,B5
           MVKH    .S2     _SIO_ATTRS,B5
           LDNDW   .D2T2   *+B5(16),B1:B0    ; |219| 
           LDNDW   .D2T2   *+B5(8),B3:B2     ; |219| 
           LDNDW   .D2T2   *B5,B7:B6         ; |219| 
           LDW     .D2T2   *+B5(24),B4       ; |219| 
           ADD     .L1X    4,SP,A4           ; |219| 
           STNDW   .D1T2   B1:B0,*+A4(16)    ; |219| 
           STNDW   .D1T2   B3:B2,*+A4(8)     ; |219| 
           STNDW   .D1T2   B7:B6,*A4         ; |219| 
           STW     .D1T2   B4,*+A4(24)       ; |219| 
	.dwpsn	file "tskLoop.c",line 220,column 9,is_stmt
           LDHU    .D2T2   *+B11(18),B0      ; |220| 
           NOP             4
           STW     .D2T2   B0,*+SP(4)        ; |220| 
	.dwpsn	file "tskLoop.c",line 221,column 9,is_stmt
           STW     .D2T2   B8,*+SP(8)        ; |221| 
	.dwpsn	file "tskLoop.c",line 222,column 9,is_stmt
           MVK     .S2     0x80,B0           ; |222| 
           STW     .D2T2   B0,*+SP(12)       ; |222| 
	.dwpsn	file "tskLoop.c",line 223,column 9,is_stmt
           STH     .D2T1   A0,*+SP(16)       ; |223| 
	.dwpsn	file "tskLoop.c",line 224,column 9,is_stmt
           MVK     .L1     1,A0              ; |224| 
           STW     .D2T1   A0,*+SP(20)       ; |224| 
	.dwpsn	file "tskLoop.c",line 225,column 9,is_stmt
           ADD     .L1     -2,A0,A0
           STW     .D2T1   A0,*+SP(24)       ; |225| 
	.dwpsn	file "tskLoop.c",line 228,column 9,is_stmt

           MVKL    .S1     _SIO_create,A3    ; |228| 
||         LDW     .D2T1   *+B11(12),A6      ; |228| 
||         ZERO    .L2     B4                ; |228| 
||         ADD     .S2     4,SP,B6           ; |228| 

           MVKH    .S1     _SIO_create,A3    ; |228| 
           MVKL    .S1     $C$SL1+0,A4       ; |228| 

           CALL    .S2X    A3                ; |228| 
||         MVKH    .S1     $C$SL1+0,A4       ; |228| 

           ADDKPC  .S2     $C$RL46,B3,4      ; |228| 
$C$RL46:   ; CALL OCCURS {_SIO_create}       ; |228| 
;** --------------------------------------------------------------------------*
           STW     .D2T1   A4,*B11           ; |228| 
	.dwpsn	file "tskLoop.c",line 232,column 9,is_stmt
           MVKL    .S2     _SIO_create,B5    ; |232| 
           MVKH    .S2     _SIO_create,B5    ; |232| 
           CALL    .S2     B5                ; |232| 
           LDW     .D2T1   *+B11(12),A6      ; |232| 
           MVKL    .S1     $C$SL2+0,A4       ; |232| 
           ADDKPC  .S2     $C$RL47,B3,1      ; |232| 

           MVKH    .S1     $C$SL2+0,A4       ; |232| 
||         MVK     .L2     0x1,B4            ; |232| 
||         ADD     .S2     4,SP,B6           ; |232| 

$C$RL47:   ; CALL OCCURS {_SIO_create}       ; |232| 
;** --------------------------------------------------------------------------*
           STW     .D2T1   A4,*+B11(4)       ; |232| 
	.dwpsn	file "tskLoop.c",line 237,column 9,is_stmt
           LDW     .D2T2   *B11,B0           ; |237| 
           ZERO    .L2     B4                ; |237| 
           NOP             3
   [!B0]   MVK     .L2     0x1,B4            ; |237| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+B11(4),B0       ; |237| 
           ZERO    .L2     B3                ; |237| 
           NOP             3
   [!B0]   MVK     .L2     0x1,B3            ; |237| 
;** --------------------------------------------------------------------------*
           OR      .L2     B3,B4,B0          ; |237| 
   [!B0]   BNOP    .S1     $C$L32,5          ; |237| 
           ; BRANCHCC OCCURS {$C$L32}        ; |237| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "tskLoop.c",line 239,column 13,is_stmt
           MVK     .L2     0x1,B0            ; |239| 
           NOP             1
           MV      .L1X    B0,A11            ; |239| 
;** --------------------------------------------------------------------------*
$C$L32:    
	.dwpsn	file "tskLoop.c",line 244,column 5,is_stmt
           MV      .L1     A11,A0
   [ A0]   BNOP    .S1     $C$L37,5          ; |244| 
           ; BRANCHCC OCCURS {$C$L37}        ; |244| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "tskLoop.c",line 245,column 14,is_stmt
           LDHU    .D2T2   *+B11(18),B0      ; |245| 
           ZERO    .L1     A12               ; |245| 
           MV      .L2X    A11,B1            ; |245| 
           NOP             2
           CMPEQ   .L2     B0,0,B0           ; |245| 

           XOR     .S2     1,B0,B1           ; |245| 
||         CMPEQ   .L2     B1,0,B0           ; |245| 

           AND     .L2     B0,B1,B0          ; |245| 

   [!B0]   BNOP    .S1     $C$L37,5          ; |245| 
|| [ B0]   MV      .L2X    A12,B0

           ; BRANCHCC OCCURS {$C$L37}        ; |245| 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L33
;** --------------------------------------------------------------------------*
$C$L33:    
$C$DW$L$_TSKLOOP_create$14$B:
	.dwpsn	file "tskLoop.c",line 246,column 13,is_stmt
           MVKL    .S1     _POOL,A10
           MVKH    .S1     _POOL,A10
           LDW     .D1T1   *A10,A4           ; |246| 
           LDW     .D2T1   *+B11(12),A6      ; |246| 
           ADDAW   .D2     B11,B0,B0         ; |246| 
           ADD     .D2     B0,20,B10         ; |246| 
           MV      .L2     B10,B4            ; |246| 
           LDW     .D1T1   *A4,A4            ; |246| 
           NOP             4
           LDW     .D1T1   *+A4(4),A5        ; |246| 
           LDW     .D1T1   *+A4(12),A4       ; |246| 
           NOP             3
           LDW     .D1T1   *+A5(8),A0        ; |246| 
           NOP             4
           CALL    .S2X    A0                ; |246| 
           ADDKPC  .S2     $C$RL48,B3,4      ; |246| 
$C$RL48:   ; CALL OCCURS {A0}                ; |246| 
$C$DW$L$_TSKLOOP_create$14$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_create$15$B:

           MV      .L1     A4,A0             ; |246| 
||         MV      .S1     A4,A11            ; |246| 

   [!A0]   BNOP    .S1     $C$L36,5          ; |246| 
           ; BRANCHCC OCCURS {$C$L36}        ; |246| 
$C$DW$L$_TSKLOOP_create$15$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_create$16$B:
	.dwpsn	file "tskLoop.c",line 250,column 30,is_stmt
           MV      .L1     A12,A0

   [!A0]   BNOP    .S1     $C$L35,4          ; |250| 
|| [ A0]   ADD     .D2     B11,20,B0

   [ A0]   MV      .L1X    B0,A13            ; Define a twin register
           ; BRANCHCC OCCURS {$C$L35}        ; |250| 
$C$DW$L$_TSKLOOP_create$16$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_create$17$B:
	.dwpsn	file "tskLoop.c",line 251,column 21,is_stmt
           LDW     .D1T1   *A10,A4           ; |251| 
           ZERO    .L1     A14               ; |254| 
           MV      .L1     A12,A11           ; |251| 
           NOP             2
           LDW     .D1T1   *A4,A4            ; |251| 
$C$DW$L$_TSKLOOP_create$17$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
$C$L34:    
$C$DW$L$_TSKLOOP_create$18$B:
           LDW     .D2T1   *+B11(12),A6      ; |251| 
           LDW     .D2T2   *B10,B4           ; |251| 
           NOP             2
           LDW     .D1T1   *+A4(4),A5        ; |251| 
           LDW     .D1T1   *+A4(12),A4       ; |251| 
           NOP             3
           LDW     .D1T1   *+A5(12),A0       ; |251| 
           NOP             4
           CALL    .S2X    A0                ; |251| 
           ADDKPC  .S2     $C$RL49,B3,4      ; |251| 
$C$RL49:   ; CALL OCCURS {A0}                ; |251| 
$C$DW$L$_TSKLOOP_create$18$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_create$19$B:
	.dwpsn	file "tskLoop.c",line 254,column 21,is_stmt
           STW     .D1T1   A14,*A13++        ; |254| 
	.dwpsn	file "tskLoop.c",line 250,column 30,is_stmt

           SUB     .L1     A11,1,A0          ; |250| 
||         SUB     .S1     A11,1,A11         ; |250| 

   [ A0]   BNOP    .S1     $C$L34,4          ; |250| 
|| [ A0]   LDW     .D1T1   *A10,A4           ; |251| 

   [ A0]   LDW     .D1T1   *A4,A4            ; |251| 
           ; BRANCHCC OCCURS {$C$L34}        ; |250| 
$C$DW$L$_TSKLOOP_create$19$E:
;** --------------------------------------------------------------------------*
$C$L35:    
$C$DW$L$_TSKLOOP_create$20$B:
	.dwpsn	file "tskLoop.c",line 256,column 17,is_stmt
           MVK     .L2     0x1,B0            ; |256| 
           NOP             1
           MV      .L1X    B0,A11            ; |256| 
$C$DW$L$_TSKLOOP_create$20$E:
;** --------------------------------------------------------------------------*
$C$L36:    
$C$DW$L$_TSKLOOP_create$21$B:
	.dwpsn	file "tskLoop.c",line 245,column 69,is_stmt
           LDHU    .D2T2   *+B11(18),B1      ; |245| 
           NOP             1
           ADD     .L1     1,A12,A0          ; |245| 
           EXTU    .S1     A0,16,16,A0       ; |245| 
           CMPEQ   .L2X    A11,0,B0          ; |245| 
           CMPLTU  .L2X    A0,B1,B1          ; |245| 
           AND     .L2     B0,B1,B0          ; |245| 
   [ B0]   BNOP    .S1     $C$L33,2          ; |245| 
           MV      .L1     A0,A12            ; |245| 
           NOP             1
   [ B0]   MV      .L2X    A12,B0
           ; BRANCHCC OCCURS {$C$L33}        ; |245| 
$C$DW$L$_TSKLOOP_create$21$E:
;** --------------------------------------------------------------------------*
$C$L37:    
	.dwpsn	file "tskLoop.c",line 264,column 5,is_stmt
           MVKL    .S1     _memset,A3        ; |264| 
           MVKH    .S1     _memset,A3        ; |264| 
           MVKL    .S2     _fir_coeff,B5
           CALL    .S2X    A3                ; |264| 
           MVKH    .S2     _fir_coeff,B5
           MVK     .S1     0x0,A6
           ADDKPC  .S2     $C$RL50,B3,1      ; |264| 

           MV      .L1X    B5,A4             ; |264| 
||         SET     .S1     A6,0xd,0xd,A6
||         ZERO    .L2     B4                ; |264| 

$C$RL50:   ; CALL OCCURS {_memset}           ; |264| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "tskLoop.c",line 265,column 5,is_stmt
           MVKL    .S1     _memset,A3        ; |265| 
           MVKH    .S1     _memset,A3        ; |265| 
           MVKL    .S1     _fir_coeff_size,A4
           CALL    .S2X    A3                ; |265| 
           ADDKPC  .S2     $C$RL51,B3,3      ; |265| 

           MVKH    .S1     _fir_coeff_size,A4
||         ZERO    .L2     B4                ; |265| 
||         MVK     .L1     0x4,A6            ; |265| 

$C$RL51:   ; CALL OCCURS {_memset}           ; |265| 
	.dwpsn	file "tskLoop.c",line 266,column 5,is_stmt
           MVKL    .S2     _memset,B5        ; |266| 
           MVKH    .S2     _memset,B5        ; |266| 
           CALL    .S2     B5                ; |266| 
           MVKL    .S2     _scaling_factor,B6
           MVKH    .S2     _scaling_factor,B6
           ADDKPC  .S2     $C$RL52,B3,1      ; |266| 

           ZERO    .L2     B4                ; |266| 
||         MVK     .L1     0x4,A6            ; |266| 
||         MV      .S1X    B6,A4             ; |266| 

$C$RL52:   ; CALL OCCURS {_memset}           ; |266| 
	.dwpsn	file "tskLoop.c",line 267,column 5,is_stmt
           MVKL    .S1     _memset,A3        ; |267| 
           MVKH    .S1     _memset,A3        ; |267| 
           MVKL    .S1     _interpolation_factor,A4
           CALL    .S2X    A3                ; |267| 
           ADDKPC  .S2     $C$RL53,B3,3      ; |267| 

           MVKH    .S1     _interpolation_factor,A4
||         ZERO    .L2     B4                ; |267| 
||         MVK     .L1     0x4,A6            ; |267| 

$C$RL53:   ; CALL OCCURS {_memset}           ; |267| 
	.dwpsn	file "tskLoop.c",line 268,column 2,is_stmt
           MVKL    .S1     _memset,A3        ; |268| 
           MVKH    .S1     _memset,A3        ; |268| 
           MVKL    .S2     _decimation_factor,B5
           CALL    .S2X    A3                ; |268| 
           MVKH    .S2     _decimation_factor,B5
           ADDKPC  .S2     $C$RL54,B3,2      ; |268| 

           MV      .L1X    B5,A4             ; |268| 
||         ZERO    .L2     B4                ; |268| 
||         MVK     .S1     0x4,A6            ; |268| 

$C$RL54:   ; CALL OCCURS {_memset}           ; |268| 
	.dwpsn	file "tskLoop.c",line 269,column 2,is_stmt
           MVKL    .S2     _memset,B5        ; |269| 
           MVKH    .S2     _memset,B5        ; |269| 
           CALL    .S2     B5                ; |269| 
           MVKL    .S1     _block_type_array,A4
           ADDKPC  .S2     $C$RL55,B3,2      ; |269| 

           MVKH    .S1     _block_type_array,A4
||         ZERO    .L2     B4                ; |269| 
||         MVK     .L1     0x4,A6            ; |269| 

$C$RL55:   ; CALL OCCURS {_memset}           ; |269| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "tskLoop.c",line 270,column 5,is_stmt
           MV      .L1     A11,A4
	.dwpsn	file "tskLoop.c",line 271,column 1,is_stmt
           ADDK    .S2     32,SP             ; |271| 
	.dwcfi	cfa_offset, 0
           LDDW    .D2T1   *++SP,A11:A10
	.dwcfi	cfa_offset, 40
	.dwcfi	restore_reg, 11
	.dwcfi	restore_reg, 10
           LDDW    .D2T1   *++SP,A13:A12
	.dwcfi	cfa_offset, 32
	.dwcfi	restore_reg, 13
	.dwcfi	restore_reg, 12
           LDW     .D2T1   *++SP(8),A14
	.dwcfi	cfa_offset, 24
	.dwcfi	restore_reg, 14
           LDW     .D2T2   *++SP(8),B3
           NOP             2
	.dwcfi	cfa_offset, 16
	.dwcfi	restore_reg, 19
           LDW     .D2T2   *++SP(8),B10
	.dwcfi	cfa_offset, 8
	.dwcfi	restore_reg, 26
           LDW     .D2T2   *++SP(8),B11      ; |271| 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 27
	.dwcfi	cfa_offset, 0
           RETNOP  .S2     B3,5
           ; BRANCH OCCURS {B3} 

$C$DW$266	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$266, DW_AT_name("/home/alfayez/oe/tmp_beagleboard/staging/beagleboard-angstrom-linux-gnueabi/ti-dsplink-module/packages/dsplink/dsp/src/samples/loopAl2/tskLoop.asm:$C$L33:1:1302661134")
	.dwattr $C$DW$266, DW_AT_TI_begin_file("tskLoop.c")
	.dwattr $C$DW$266, DW_AT_TI_begin_line(0xf5)
	.dwattr $C$DW$266, DW_AT_TI_end_line(0x102)
$C$DW$267	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$267, DW_AT_low_pc($C$DW$L$_TSKLOOP_create$14$B)
	.dwattr $C$DW$267, DW_AT_high_pc($C$DW$L$_TSKLOOP_create$14$E)
$C$DW$268	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$268, DW_AT_low_pc($C$DW$L$_TSKLOOP_create$17$B)
	.dwattr $C$DW$268, DW_AT_high_pc($C$DW$L$_TSKLOOP_create$17$E)
$C$DW$269	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$269, DW_AT_low_pc($C$DW$L$_TSKLOOP_create$16$B)
	.dwattr $C$DW$269, DW_AT_high_pc($C$DW$L$_TSKLOOP_create$16$E)
$C$DW$270	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$270, DW_AT_low_pc($C$DW$L$_TSKLOOP_create$15$B)
	.dwattr $C$DW$270, DW_AT_high_pc($C$DW$L$_TSKLOOP_create$15$E)
$C$DW$271	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$271, DW_AT_low_pc($C$DW$L$_TSKLOOP_create$20$B)
	.dwattr $C$DW$271, DW_AT_high_pc($C$DW$L$_TSKLOOP_create$20$E)
$C$DW$272	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$272, DW_AT_low_pc($C$DW$L$_TSKLOOP_create$21$B)
	.dwattr $C$DW$272, DW_AT_high_pc($C$DW$L$_TSKLOOP_create$21$E)

$C$DW$273	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$273, DW_AT_name("/home/alfayez/oe/tmp_beagleboard/staging/beagleboard-angstrom-linux-gnueabi/ti-dsplink-module/packages/dsplink/dsp/src/samples/loopAl2/tskLoop.asm:$C$L34:2:1302661134")
	.dwattr $C$DW$273, DW_AT_TI_begin_file("tskLoop.c")
	.dwattr $C$DW$273, DW_AT_TI_begin_line(0xfa)
	.dwattr $C$DW$273, DW_AT_TI_end_line(0xff)
$C$DW$274	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$274, DW_AT_low_pc($C$DW$L$_TSKLOOP_create$18$B)
	.dwattr $C$DW$274, DW_AT_high_pc($C$DW$L$_TSKLOOP_create$18$E)
$C$DW$275	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$275, DW_AT_low_pc($C$DW$L$_TSKLOOP_create$19$B)
	.dwattr $C$DW$275, DW_AT_high_pc($C$DW$L$_TSKLOOP_create$19$E)
	.dwendtag $C$DW$273

	.dwendtag $C$DW$266

	.dwattr $C$DW$259, DW_AT_TI_end_file("tskLoop.c")
	.dwattr $C$DW$259, DW_AT_TI_end_line(0x10f)
	.dwattr $C$DW$259, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$259

	.sect	".text"
	.global	_DSP_fir_cplx_test

$C$DW$276	.dwtag  DW_TAG_subprogram, DW_AT_name("DSP_fir_cplx_test")
	.dwattr $C$DW$276, DW_AT_low_pc(_DSP_fir_cplx_test)
	.dwattr $C$DW$276, DW_AT_high_pc(0x00)
	.dwattr $C$DW$276, DW_AT_TI_symbol_name("_DSP_fir_cplx_test")
	.dwattr $C$DW$276, DW_AT_external
	.dwattr $C$DW$276, DW_AT_TI_begin_file("tskLoop.c")
	.dwattr $C$DW$276, DW_AT_TI_begin_line(0x276)
	.dwattr $C$DW$276, DW_AT_TI_begin_column(0x06)
	.dwpsn	file "tskLoop.c",line 637,column 1,is_stmt,address _DSP_fir_cplx_test

	.dwfde $C$DW$CIE, _DSP_fir_cplx_test

;******************************************************************************
;* FUNCTION NAME: DSP_fir_cplx_test                                           *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,   *
;*                           A23,A24,A25,A26,A27,A28,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,*
;*                           A23,A24,A25,A26,A27,A28,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23                                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 24 Save = 24 byte                  *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_DSP_fir_cplx_test:
;** --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 228, 19
           STW     .D2T2   B3,*SP--(8)       ; |637| 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 19, 0
           STDW    .D2T1   A11:A10,*SP--     ; |637| 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 11, -4
	.dwcfi	save_reg_to_mem, 10, -8
$C$DW$277	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x")
	.dwattr $C$DW$277, DW_AT_TI_symbol_name("_x")
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$223)
	.dwattr $C$DW$277, DW_AT_location[DW_OP_reg4]
$C$DW$278	.dwtag  DW_TAG_formal_parameter, DW_AT_name("h")
	.dwattr $C$DW$278, DW_AT_TI_symbol_name("_h")
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$223)
	.dwattr $C$DW$278, DW_AT_location[DW_OP_reg20]
$C$DW$279	.dwtag  DW_TAG_formal_parameter, DW_AT_name("r")
	.dwattr $C$DW$279, DW_AT_TI_symbol_name("_r")
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$225)
	.dwattr $C$DW$279, DW_AT_location[DW_OP_reg6]
$C$DW$280	.dwtag  DW_TAG_formal_parameter, DW_AT_name("nh")
	.dwattr $C$DW$280, DW_AT_TI_symbol_name("_nh")
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$280, DW_AT_location[DW_OP_reg22]
$C$DW$281	.dwtag  DW_TAG_formal_parameter, DW_AT_name("nr")
	.dwattr $C$DW$281, DW_AT_TI_symbol_name("_nr")
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$281, DW_AT_location[DW_OP_reg8]
$C$DW$282	.dwtag  DW_TAG_variable, DW_AT_name("h")
	.dwattr $C$DW$282, DW_AT_TI_symbol_name("_h")
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$223)
	.dwattr $C$DW$282, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$283	.dwtag  DW_TAG_variable, DW_AT_name("x")
	.dwattr $C$DW$283, DW_AT_TI_symbol_name("_x")
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$223)
	.dwattr $C$DW$283, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$284	.dwtag  DW_TAG_variable, DW_AT_name("nh")
	.dwattr $C$DW$284, DW_AT_TI_symbol_name("_nh")
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$360)
	.dwattr $C$DW$284, DW_AT_location[DW_OP_regx 0x30]
$C$DW$285	.dwtag  DW_TAG_variable, DW_AT_name("nr")
	.dwattr $C$DW$285, DW_AT_TI_symbol_name("_nr")
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$360)
	.dwattr $C$DW$285, DW_AT_location[DW_OP_reg1]

           MV      .L2X    A6,B22            ; |637| 
||         MV      .L1X    B6,A27            ; |637| 

           MV      .L1X    B4,A24            ; |637| 
||         MV      .S1     A8,A1             ; |637| 
||         SUB     .D1     A4,4,A26
||         MV      .L2X    A4,B23            ; |637| 

	.dwpsn	file "tskLoop.c",line 667,column 9,is_stmt
           MVK     .L1     7,A0              ; |667| 
           ADDAH   .D1     A0,A1,A0          ; |667| 

           SHR     .S1     A0,3,A28          ; |667| 
||         ZERO    .L1     A25

;** --------------------------------------------------------------------------*
$C$L38:    
           MV      .L2X    A24,B8

           ADD     .L2X    A25,B23,B5
||         ADD     .L1     A25,A26,A3

;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L39
;** --------------------------------------------------------------------------*
$C$L39:    
$C$DW$L$_DSP_fir_cplx_test$3$B:
	.dwpsn	file "tskLoop.c",line 683,column 13,is_stmt

           ZERO    .L1     A10               ; |683| 
||         ZERO    .S1     A9                ; |683| 
||         ZERO    .D1     A8                ; |683| 
||         ZERO    .L2     B3                ; |683| 
||         DINT                              ; interrupts off
||         ZERO    .D2     B9                ; |683| 

           ADD     .L1     8,A3,A5           ; undo prolog elim. side-effects
||         ZERO    .S1     A3                ; |683| 
||         ZERO    .D1     A17               ; |683| 
||         ZERO    .L2     B4                ; |683| 
||         ZERO    .S2     B6                ; |683| 
||         ZERO    .D2     B7                ; |683| 

           ZERO    .L2     B2                ; |683| 
||         ZERO    .L1     A6                ; |683| 
||         ZERO    .S1     A7                ; |683| 
||         MV      .D1X    B8,A4
||         ZERO    .S2     B0                ; |683| 
||         ZERO    .D2     B1                ; |683| 

           MVK     .L1     0x2,A1            ; init prolog collapse predicate
||         ZERO    .D1     A16               ; |683| 
||         SHR     .S1     A27,1,A0          ; |683| 

           MVK     .L1     0x1,A2            ; init prolog collapse predicate
$C$DW$L$_DSP_fir_cplx_test$3$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 678
;*      Loop opening brace source line   : 678
;*      Loop closing brace source line   : 700
;*      Loop Unroll Multiple             : 2x
;*      Known Minimum Trip Count         : 2                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 3
;*      Unpartitioned Resource Bound     : 8
;*      Partitioned Resource Bound(*)    : 8
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1        0     
;*      .D units                     2        3     
;*      .M units                     8*       8*    
;*      .X cross paths               4        8*    
;*      .T address paths             5        5     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           2        0     (.L or .S unit)
;*      Addition ops (.LSD)          8        8     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             2        0     
;*      Bound(.L .S .D .LS .LSD)     5        4     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 8  Schedule found with 3 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: |************    **** ***        |**********      *  ***          |
;*       1: |************    ****  **        |**********      *  * *          |
;*       2: |************    *** ****        |**********      *  *            |
;*       3: |************    *** ***         |**********        **            |
;*       4: |************    **  ****        |**********      ****            |
;*       5: |************    **  ****        |**********      ****            |
;*       6: |************    **  ****        |**********      * ****          |
;*       7: |************    ********        |**********      *  ***          |
;*          +-----------------------------------------------------------------+
;*
;*      Done
;*
;*      Epilog not entirely removed
;*      Collapsed epilog stages     : 1
;*      Collapsed prolog stages     : 2
;*      Minimum required memory pad : 8 bytes
;*      Minimum threshold value     : -mh16
;*
;*      Minimum safe trip count     : 1 (after unrolling)
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  SUB             A0,1,A0
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C234:
;*   0              LDNDW   .D1T1   *A4++(8),A21:A20  ; |695| 
;*   1              LDNDW   .D2T2   *B5--(8),B19:B18  ; |695| 
;*   2              LDNDW   .D2T2   *+B5(12),B17:B16  ; |695| 
;*   3              NOP             1
;*   4              LDNDW   .D2T2   *+B5(16),B21:B20  ; |695| 
;*   5              LDNDW   .D1T1   *A5--(8),A19:A18  ; |695| 
;*   6              DOTPN2  .M2X    B18,A20,B8        ; |695| 
;*     ||           PACKLH2 .L1     A20,A20,A23       ; |698| 
;*     ||           PACKLH2 .S1     A21,A21,A22       ; |698| 
;*   7              DOTPN2  .M2X    B19,A20,B8        ; |696| 
;*     ||           DOTP2   .M1X    B17,A22,A11       ; |699| 
;*   8              DOTPN2  .M2X    B16,A21,B8        ; |695| 
;*     ||           DOTPN2  .M1X    B17,A21,A11       ; |696| 
;*   9              DOTP2   .M2X    B18,A23,B8        ; |698| 
;*     ||           DOTPN2  .M1X    B21,A20,A11       ; |696| 
;*  10              SUB     .L2     B1,B8,B1          ; |695| 
;*     ||           DOTPN2  .M2X    B20,A20,B8        ; |695| 
;*     ||           DOTPN2  .M1     A18,A21,A11       ; |695| 
;*  11              SUB     .L2     B0,B8,B0          ; |696| 
;*     ||           DOTP2   .M2X    B20,A23,B8        ; |698| 
;*     ||           DOTPN2  .M1     A19,A21,A11       ; |696| 
;*     ||           ADD     .L1     A11,A17,A17       ; |699| 
;*  12              DOTP2   .M2X    B21,A23,B8        ; |699| 
;*     ||           DOTP2   .M1     A19,A22,A11       ; |699| 
;*     ||           SUB     .L2     B6,B8,B6          ; |695| 
;*     ||           SUB     .L1     A16,A11,A16       ; |696| 
;*  13              ADD     .L2     B8,B3,B3          ; |698| 
;*     ||           DOTP2   .M1X    B19,A23,A11       ; |699| 
;*     ||           SUB     .L1     A7,A11,A7         ; |696| 
;*     ||           DOTP2   .M2X    B16,A22,B8        ; |698| 
;*     ||   [ A0]   BDEC    .S1     $C$C234,A0        ; |678| 
;*  14              SUB     .L2     B2,B8,B2          ; |695| 
;*     ||           SUB     .D1     A6,A11,A6         ; |695| 
;*     ||           DOTP2   .M1     A18,A22,A11       ; |698| 
;*  15              ADD     .L2     B8,B4,B4          ; |698| 
;*     ||           SUB     .L1     A10,A11,A10       ; |696| 
;*  16              ADD     .L2     B8,B7,B7          ; |699| 
;*     ||           ADD     .L1     A11,A9,A9         ; |699| 
;*  17              ADD     .L1     A11,A3,A3         ; |699| 
;*     ||           ADD     .L2     B8,B9,B9          ; |698| 
;*  18              ADD     .D1     A11,A8,A8         ; |698| 
;*  19              ; BRANCHCC OCCURS {$C$C234}       ; |678| 
;*----------------------------------------------------------------------------*
$C$L40:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
$C$L41:    ; PIPED LOOP KERNEL
$C$DW$L$_DSP_fir_cplx_test$5$B:

   [!A1]   SUB     .L2     B0,B8,B0          ; |696| <0,11> 
||         DOTP2   .M2X    B20,A23,B8        ; |698| <0,11> 
||         DOTPN2  .M1     A19,A21,A11       ; |696| <0,11> 
|| [!A1]   ADD     .L1     A11,A17,A17       ; |699| <0,11> 

   [!A1]   SUB     .L2     B6,B8,B6          ; |695| <0,12> 
||         DOTP2   .M2X    B21,A23,B8        ; |699| <0,12> 
||         DOTP2   .M1     A19,A22,A11       ; |699| <0,12> 
|| [!A1]   SUB     .L1     A16,A11,A16       ; |696| <0,12> 
|| [!A2]   LDNDW   .D2T2   *+B5(16),B21:B20  ; |695| <1,4> 

   [!A1]   ADD     .L2     B8,B3,B3          ; |698| <0,13> 
||         DOTP2   .M2X    B16,A22,B8        ; |698| <0,13> 
|| [ A0]   BDEC    .S1     $C$L41,A0         ; |678| <0,13> 
||         DOTP2   .M1X    B19,A23,A11       ; |699| <0,13> 
|| [!A1]   SUB     .L1     A7,A11,A7         ; |696| <0,13> 
||         LDNDW   .D1T1   *A5--(8),A19:A18  ; |695| <1,5> 

   [!A1]   SUB     .L2     B2,B8,B2          ; |695| <0,14> 
||         DOTP2   .M1     A18,A22,A11       ; |698| <0,14> 
|| [!A1]   SUB     .D1     A6,A11,A6         ; |695| <0,14> 
||         DOTPN2  .M2X    B18,A20,B8        ; |695| <1,6> 
||         PACKLH2 .L1     A20,A20,A23       ; |698| <1,6> 
||         PACKLH2 .S1     A21,A21,A22       ; |698| <1,6> 

   [!A1]   ADD     .L2     B8,B4,B4          ; |698| <0,15> 
|| [!A1]   SUB     .L1     A10,A11,A10       ; |696| <0,15> 
||         DOTPN2  .M2X    B19,A20,B8        ; |696| <1,7> 
||         DOTP2   .M1X    B17,A22,A11       ; |699| <1,7> 

   [!A1]   ADD     .L2     B8,B7,B7          ; |699| <0,16> 
|| [!A1]   ADD     .L1     A11,A9,A9         ; |699| <0,16> 
||         DOTPN2  .M2X    B16,A21,B8        ; |695| <1,8> 
||         DOTPN2  .M1X    B17,A21,A11       ; |696| <1,8> 
||         LDNDW   .D1T1   *A4++(8),A21:A20  ; |695| <2,0> 

   [!A1]   ADD     .L2     B8,B9,B9          ; |698| <0,17> 
|| [!A1]   ADD     .L1     A11,A3,A3         ; |699| <0,17> 
||         DOTP2   .M2X    B18,A23,B8        ; |698| <1,9> 
||         DOTPN2  .M1X    B21,A20,A11       ; |696| <1,9> 
||         LDNDW   .D2T2   *B5--(8),B19:B18  ; |695| <2,1> 

   [ A2]   SUB     .L1     A2,1,A2           ; <0,18> 
|| [ A1]   SUB     .S1     A1,1,A1           ; <0,18> 
|| [!A1]   ADD     .D1     A11,A8,A8         ; |698| <0,18> 
|| [!A2]   SUB     .L2     B1,B8,B1          ; |695| <1,10> 
||         DOTPN2  .M2X    B20,A20,B8        ; |695| <1,10> 
||         DOTPN2  .M1     A18,A21,A11       ; |695| <1,10> 
||         LDNDW   .D2T2   *+B5(12),B17:B16  ; |695| <2,2> 

$C$DW$L$_DSP_fir_cplx_test$5$E:
;** --------------------------------------------------------------------------*
$C$L42:    ; PIPED LOOP EPILOG

           MV      .L2     B1,B5
||         SUB     .S2     B0,B8,B0          ; |696| (E) <2,11> 
||         DOTPN2  .M1     A19,A21,A4        ; |696| (E) <2,11> 
||         ADD     .L1     A11,A17,A17       ; |699| (E) <2,11> 
||         DOTP2   .M2X    B20,A23,B8        ; |698| (E) <2,11> 

           SUB     .L2     B6,B8,B6          ; |695| (E) <2,12> 
||         DOTP2   .M1     A19,A22,A4        ; |699| (E) <2,12> 
||         SUB     .S1     A16,A11,A16       ; |696| (E) <2,12> 
||         DOTP2   .M2X    B21,A23,B8        ; |699| (E) <2,12> 

           MV      .L1     A16,A5
||         ADD     .L2     B8,B3,B3          ; |698| (E) <2,13> 
||         DOTP2   .M2X    B16,A22,B8        ; |698| (E) <2,13> 
||         SUB     .S1     A7,A11,A7         ; |696| (E) <2,13> 
||         DOTP2   .M1X    B19,A23,A4        ; |699| (E) <2,13> 

           SUB     .L2     B2,B8,B18         ; |695| (E) <2,14> 
||         SUB     .L1     A6,A11,A6         ; |695| (E) <2,14> 
||         DOTP2   .M1     A18,A22,A3        ; |698| (E) <2,14> 

           SUB     .L1     A10,A4,A10        ; |696| (E) <2,15> 
||         ADD     .L2     B8,B4,B4          ; |698| (E) <2,15> 

           ADD     .L2     B8,B7,B7          ; |699| (E) <2,16> 
||         ADD     .L1     A4,A9,A9          ; |699| (E) <2,16> 

           RINT                              ; interrupts on
||         ADD     .S1     A4,A3,A4          ; |699| (E) <2,17> 
||         ADD     .L2     B8,B9,B9          ; |698| (E) <2,17> 

;** --------------------------------------------------------------------------*
$C$DW$L$_DSP_fir_cplx_test$7$B:
           ADD     .L1     A3,A8,A3          ; |698| (E) <2,18> 
	.dwpsn	file "tskLoop.c",line 707,column 9,is_stmt

           ADD     .L1     A5,A7,A7          ; |707| 
||         ADD     .S1X    A3,B3,A31         ; |707| 
||         ADD     .D1     A9,A4,A5          ; |707| 
||         ADD     .L2     B6,B18,B1         ; |707| 

           ADD     .L1     A7,A7,A3          ; |707| 
||         ADD     .S1X    A10,B0,A4         ; |707| 
||         ADD     .L2     B9,B4,B0          ; |707| 
||         ADD     .S2X    A17,B7,B4         ; |707| 
||         ADD     .D2     B1,B1,B1          ; |707| 
||         ADD     .D1     A5,A5,A5          ; |707| 

           ADD     .L1X    A6,B5,A7          ; |707| 
||         ADD     .L2     B4,B4,B0          ; |707| 
||         ADD     .S2     B0,B0,B4          ; |707| 
||         ADD     .S1     A4,A4,A6          ; |707| 
||         ADD     .D1     A31,A31,A4        ; |707| 

           PACKH2  .L2X    B0,A3,B1          ; |707| 
||         PACKH2  .S2     B4,B1,B0          ; |707| 
||         ADD     .L1     A7,A7,A3          ; |707| 
||         PACKH2  .S1     A5,A6,A7          ; |707| 

           PACKH2  .L1     A4,A3,A6          ; |707| 
||         STNDW   .D2T2   B1:B0,*+B22(8)    ; |707| 

           STNDW   .D2T1   A7:A6,*B22        ; |707| 
	.dwpsn	file "tskLoop.c",line 663,column 27,is_stmt

           ADDK    .S2     16,B22            ; |663| 
||         ADDK    .S1     16,A25            ; |663| 

	.dwpsn	file "tskLoop.c",line 663,column 17,is_stmt

           SUB     .L1     A28,1,A0          ; |663| 
||         SUB     .S1     A28,1,A28         ; |663| 

   [ A0]   BNOP    .S1     $C$L39,4          ; |663| 
|| [ A0]   MV      .L2X    A24,B8
|| [ A0]   ADD     .L1     A25,A26,A3

   [ A0]   ADD     .L2X    A25,B23,B5
           ; BRANCHCC OCCURS {$C$L39}        ; |663| 
$C$DW$L$_DSP_fir_cplx_test$7$E:
;** --------------------------------------------------------------------------*
	.dwpsn	file "tskLoop.c",line 709,column 1,is_stmt
           LDDW    .D2T1   *++SP,A11:A10
	.dwcfi	cfa_offset, 8
	.dwcfi	restore_reg, 11
	.dwcfi	restore_reg, 10
           LDW     .D2T2   *++SP(8),B3       ; |709| 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 19
	.dwcfi	cfa_offset, 0
           NOP             4
           RETNOP  .S2     B3,5
           ; BRANCH OCCURS {B3} 

$C$DW$286	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$286, DW_AT_name("/home/alfayez/oe/tmp_beagleboard/staging/beagleboard-angstrom-linux-gnueabi/ti-dsplink-module/packages/dsplink/dsp/src/samples/loopAl2/tskLoop.asm:$C$L39:1:1302661134")
	.dwattr $C$DW$286, DW_AT_TI_begin_file("tskLoop.c")
	.dwattr $C$DW$286, DW_AT_TI_begin_line(0x297)
	.dwattr $C$DW$286, DW_AT_TI_end_line(0x2c3)
$C$DW$287	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$287, DW_AT_low_pc($C$DW$L$_DSP_fir_cplx_test$3$B)
	.dwattr $C$DW$287, DW_AT_high_pc($C$DW$L$_DSP_fir_cplx_test$3$E)
$C$DW$288	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$288, DW_AT_low_pc($C$DW$L$_DSP_fir_cplx_test$7$B)
	.dwattr $C$DW$288, DW_AT_high_pc($C$DW$L$_DSP_fir_cplx_test$7$E)

$C$DW$289	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$289, DW_AT_name("/home/alfayez/oe/tmp_beagleboard/staging/beagleboard-angstrom-linux-gnueabi/ti-dsplink-module/packages/dsplink/dsp/src/samples/loopAl2/tskLoop.asm:$C$L41:2:1302661134")
	.dwattr $C$DW$289, DW_AT_TI_begin_file("tskLoop.c")
	.dwattr $C$DW$289, DW_AT_TI_begin_line(0x2a6)
	.dwattr $C$DW$289, DW_AT_TI_end_line(0x2bc)
$C$DW$290	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$290, DW_AT_low_pc($C$DW$L$_DSP_fir_cplx_test$5$B)
	.dwattr $C$DW$290, DW_AT_high_pc($C$DW$L$_DSP_fir_cplx_test$5$E)
	.dwendtag $C$DW$289

	.dwendtag $C$DW$286

	.dwattr $C$DW$276, DW_AT_TI_end_file("tskLoop.c")
	.dwattr $C$DW$276, DW_AT_TI_end_line(0x2c5)
	.dwattr $C$DW$276, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$276

;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
$C$SL1:	.string	"/dio_dsplink0",0
$C$SL2:	.string	"/dio_dsplink1",0
;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	_MEM_free
	.global	_MEM_valloc
	.global	_SIO_create
	.global	_SIO_delete
	.global	_SIO_issue
	.global	_SIO_reclaim
	.global	_SetReason
	.global	_memset
	.global	__FtoIQN
	.global	__IQNmpy
	.global	__IQNrmpy
	.global	__IQNdiv
	.global	__IQNsin
	.global	__IQNcos
	.global	__IQNatan2
	.global	__IQNint
	.global	__IQNfrac
	.global	__IQNabs
	.global	_SIO_ATTRS
	.global	_DDR2
	.global	_POOL
	.global	_xferBufSize
	.global	_numTransfers
	.global	_memcpy
	.global	__remi
	.global	__divi

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x20)
$C$DW$T$65	.dwtag  DW_TAG_typedef, DW_AT_name("Ptr")
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$T$65, DW_AT_language(DW_LANG_C)
$C$DW$T$88	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$88, DW_AT_address_class(0x20)

$C$DW$T$206	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$206, DW_AT_language(DW_LANG_C)
$C$DW$291	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$22)
$C$DW$292	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$64)
$C$DW$293	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$64)
$C$DW$294	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$84)
	.dwendtag $C$DW$T$206


$C$DW$T$209	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$T$209, DW_AT_language(DW_LANG_C)
$C$DW$295	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$3)
$C$DW$296	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$208)
$C$DW$297	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$64)
	.dwendtag $C$DW$T$209


$C$DW$T$210	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$T$210, DW_AT_language(DW_LANG_C)
$C$DW$298	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$3)
$C$DW$299	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
$C$DW$300	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$64)
	.dwendtag $C$DW$T$210


$C$DW$T$25	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
$C$DW$301	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$24)
	.dwendtag $C$DW$T$25

$C$DW$T$26	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_address_class(0x20)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_Fxn")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)

$C$DW$T$92	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$92, DW_AT_language(DW_LANG_C)
$C$DW$302	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$65)
	.dwendtag $C$DW$T$92

$C$DW$T$93	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$T$93, DW_AT_address_class(0x20)
$C$DW$T$94	.dwtag  DW_TAG_typedef, DW_AT_name("POOL_Close")
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$T$94, DW_AT_language(DW_LANG_C)
$C$DW$T$157	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_Post")
	.dwattr $C$DW$T$157, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$T$157, DW_AT_language(DW_LANG_C)

$C$DW$T$98	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$98, DW_AT_language(DW_LANG_C)
$C$DW$303	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$65)
$C$DW$304	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$65)
$C$DW$305	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$64)
	.dwendtag $C$DW$T$98

$C$DW$T$99	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$T$99, DW_AT_address_class(0x20)
$C$DW$T$100	.dwtag  DW_TAG_typedef, DW_AT_name("POOL_Free")
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$100, DW_AT_language(DW_LANG_C)

$C$DW$T$102	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$102, DW_AT_language(DW_LANG_C)
$C$DW$T$103	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$T$103, DW_AT_address_class(0x20)
$C$DW$T$104	.dwtag  DW_TAG_typedef, DW_AT_name("POOL_Init")
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$T$104, DW_AT_language(DW_LANG_C)
$C$DW$T$188	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_MqtInit")
	.dwattr $C$DW$T$188, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$T$188, DW_AT_language(DW_LANG_C)
$C$DW$T$216	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Tinit")
	.dwattr $C$DW$T$216, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$T$216, DW_AT_language(DW_LANG_C)

$C$DW$T$126	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$126, DW_AT_language(DW_LANG_C)
$C$DW$306	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$40)
$C$DW$307	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$40)
	.dwendtag $C$DW$T$126

$C$DW$T$127	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$T$127, DW_AT_address_class(0x20)
$C$DW$T$128	.dwtag  DW_TAG_typedef, DW_AT_name("SWI_Fxn")
	.dwattr $C$DW$T$128, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$T$128, DW_AT_language(DW_LANG_C)
$C$DW$T$207	.dwtag  DW_TAG_const_type
$C$DW$T$208	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$207)
	.dwattr $C$DW$T$208, DW_AT_address_class(0x20)

$C$DW$T$218	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$218, DW_AT_language(DW_LANG_C)
$C$DW$308	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$T$218


$C$DW$T$219	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$219, DW_AT_language(DW_LANG_C)
$C$DW$309	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
$C$DW$310	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
$C$DW$311	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$T$219


$C$DW$T$226	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$226, DW_AT_language(DW_LANG_C)
$C$DW$312	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$223)
$C$DW$313	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$223)
$C$DW$314	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$225)
$C$DW$315	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
$C$DW$316	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$T$226


$C$DW$T$233	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$233, DW_AT_language(DW_LANG_C)
$C$DW$317	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$230)
$C$DW$318	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$232)
$C$DW$319	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
$C$DW$320	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$T$233


$C$DW$T$235	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$235, DW_AT_language(DW_LANG_C)
$C$DW$321	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$53)
	.dwendtag $C$DW$T$235

$C$DW$T$236	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$235)
	.dwattr $C$DW$T$236, DW_AT_address_class(0x20)
$C$DW$T$237	.dwtag  DW_TAG_typedef, DW_AT_name("SEM_Fxn")
	.dwattr $C$DW$T$237, DW_AT_type(*$C$DW$T$236)
	.dwattr $C$DW$T$237, DW_AT_language(DW_LANG_C)
$C$DW$T$4	.dwtag  DW_TAG_base_type, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)
$C$DW$T$5	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)
$C$DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)
$C$DW$T$244	.dwtag  DW_TAG_typedef, DW_AT_name("Uint8")
	.dwattr $C$DW$T$244, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$244, DW_AT_language(DW_LANG_C)
$C$DW$T$245	.dwtag  DW_TAG_typedef, DW_AT_name("SmUns")
	.dwattr $C$DW$T$245, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$245, DW_AT_language(DW_LANG_C)
$C$DW$T$246	.dwtag  DW_TAG_typedef, DW_AT_name("SmBits")
	.dwattr $C$DW$T$246, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$246, DW_AT_language(DW_LANG_C)
$C$DW$T$247	.dwtag  DW_TAG_typedef, DW_AT_name("Byte")
	.dwattr $C$DW$T$247, DW_AT_type(*$C$DW$T$246)
	.dwattr $C$DW$T$247, DW_AT_language(DW_LANG_C)
$C$DW$T$248	.dwtag  DW_TAG_typedef, DW_AT_name("TRG_StackEntry")
	.dwattr $C$DW$T$248, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$248, DW_AT_language(DW_LANG_C)
$C$DW$T$249	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$248)
	.dwattr $C$DW$T$249, DW_AT_address_class(0x20)
$C$DW$T$250	.dwtag  DW_TAG_typedef, DW_AT_name("TRG_StackPtr")
	.dwattr $C$DW$T$250, DW_AT_type(*$C$DW$T$249)
	.dwattr $C$DW$T$250, DW_AT_language(DW_LANG_C)
$C$DW$T$251	.dwtag  DW_TAG_typedef, DW_AT_name("Uchar8")
	.dwattr $C$DW$T$251, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$251, DW_AT_language(DW_LANG_C)
$C$DW$T$7	.dwtag  DW_TAG_base_type, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)
$C$DW$T$8	.dwtag  DW_TAG_base_type, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)
$C$DW$T$221	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$221, DW_AT_type(*$C$DW$T$8)
$C$DW$T$222	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$221)
	.dwattr $C$DW$T$222, DW_AT_address_class(0x20)
$C$DW$T$223	.dwtag  DW_TAG_TI_restrict_type
	.dwattr $C$DW$T$223, DW_AT_type(*$C$DW$T$222)
$C$DW$T$224	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$224, DW_AT_address_class(0x20)
$C$DW$T$225	.dwtag  DW_TAG_TI_restrict_type
	.dwattr $C$DW$T$225, DW_AT_type(*$C$DW$T$224)
$C$DW$T$227	.dwtag  DW_TAG_typedef, DW_AT_name("bufferType")
	.dwattr $C$DW$T$227, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$227, DW_AT_language(DW_LANG_C)
$C$DW$T$228	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$228, DW_AT_type(*$C$DW$T$227)
$C$DW$T$229	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$228)
	.dwattr $C$DW$T$229, DW_AT_address_class(0x20)
$C$DW$T$230	.dwtag  DW_TAG_TI_restrict_type
	.dwattr $C$DW$T$230, DW_AT_type(*$C$DW$T$229)
$C$DW$T$231	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$227)
	.dwattr $C$DW$T$231, DW_AT_address_class(0x20)
$C$DW$T$232	.dwtag  DW_TAG_TI_restrict_type
	.dwattr $C$DW$T$232, DW_AT_type(*$C$DW$T$231)
$C$DW$T$257	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$257, DW_AT_type(*$C$DW$T$231)

$C$DW$T$259	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$227)
	.dwattr $C$DW$T$259, DW_AT_language(DW_LANG_C)
$C$DW$322	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$231)
$C$DW$323	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
$C$DW$324	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$231)
$C$DW$325	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
$C$DW$326	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$231)
	.dwendtag $C$DW$T$259


$C$DW$T$260	.dwtag  DW_TAG_array_type, DW_AT_type(*$C$DW$T$227)
	.dwattr $C$DW$T$260, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$260, DW_AT_byte_size(0x1000)
$C$DW$327	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$327, DW_AT_upper_bound(0x7ff)
	.dwendtag $C$DW$T$260


$C$DW$T$261	.dwtag  DW_TAG_array_type, DW_AT_type(*$C$DW$T$227)
	.dwattr $C$DW$T$261, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$261, DW_AT_byte_size(0x2000)
$C$DW$328	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$328, DW_AT_upper_bound(0x01)
$C$DW$329	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$329, DW_AT_upper_bound(0x7ff)
	.dwendtag $C$DW$T$261


$C$DW$T$262	.dwtag  DW_TAG_array_type, DW_AT_type(*$C$DW$T$227)
	.dwattr $C$DW$T$262, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$262, DW_AT_byte_size(0x14000)
$C$DW$330	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$330, DW_AT_upper_bound(0x9fff)
	.dwendtag $C$DW$T$262


$C$DW$T$263	.dwtag  DW_TAG_array_type, DW_AT_type(*$C$DW$T$227)
	.dwattr $C$DW$T$263, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$263, DW_AT_byte_size(0x04)
$C$DW$331	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$331, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$263

$C$DW$T$264	.dwtag  DW_TAG_typedef, DW_AT_name("Int16")
	.dwattr $C$DW$T$264, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$264, DW_AT_language(DW_LANG_C)
$C$DW$T$265	.dwtag  DW_TAG_typedef, DW_AT_name("MdInt")
	.dwattr $C$DW$T$265, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$265, DW_AT_language(DW_LANG_C)
$C$DW$T$266	.dwtag  DW_TAG_typedef, DW_AT_name("Short")
	.dwattr $C$DW$T$266, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$266, DW_AT_language(DW_LANG_C)
$C$DW$T$267	.dwtag  DW_TAG_typedef, DW_AT_name("I16_IQ")
	.dwattr $C$DW$T$267, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$267, DW_AT_language(DW_LANG_C)
$C$DW$T$268	.dwtag  DW_TAG_typedef, DW_AT_name("Word16")
	.dwattr $C$DW$T$268, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$268, DW_AT_language(DW_LANG_C)
$C$DW$T$9	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)
$C$DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("Bool")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)

$C$DW$T$54	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
$C$DW$332	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$35)
$C$DW$333	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$53)
	.dwendtag $C$DW$T$54

$C$DW$T$55	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$55, DW_AT_address_class(0x20)
$C$DW$T$56	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Tready")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)

$C$DW$T$154	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$154, DW_AT_language(DW_LANG_C)
$C$DW$334	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$65)
$C$DW$335	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$39)
	.dwendtag $C$DW$T$154

$C$DW$T$155	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$154)
	.dwattr $C$DW$T$155, DW_AT_address_class(0x20)
$C$DW$T$156	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_Pend")
	.dwattr $C$DW$T$156, DW_AT_type(*$C$DW$T$155)
	.dwattr $C$DW$T$156, DW_AT_language(DW_LANG_C)

$C$DW$T$275	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$275, DW_AT_language(DW_LANG_C)
$C$DW$336	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$22)
$C$DW$337	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$65)
$C$DW$338	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$64)
	.dwendtag $C$DW$T$275

$C$DW$T$82	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$82, DW_AT_language(DW_LANG_C)
$C$DW$T$167	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_MqtError")
	.dwattr $C$DW$T$167, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$167, DW_AT_language(DW_LANG_C)
$C$DW$T$276	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_Id")
	.dwattr $C$DW$T$276, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$276, DW_AT_language(DW_LANG_C)
$C$DW$T$277	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$277, DW_AT_type(*$C$DW$T$9)
$C$DW$T$278	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$277)
	.dwattr $C$DW$T$278, DW_AT_address_class(0x20)

$C$DW$T$279	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$278)
	.dwattr $C$DW$T$279, DW_AT_language(DW_LANG_C)
$C$DW$339	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$208)
	.dwendtag $C$DW$T$279

$C$DW$T$280	.dwtag  DW_TAG_typedef, DW_AT_name("MdUns")
	.dwattr $C$DW$T$280, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$280, DW_AT_language(DW_LANG_C)
$C$DW$T$281	.dwtag  DW_TAG_typedef, DW_AT_name("MdBits")
	.dwattr $C$DW$T$281, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$281, DW_AT_language(DW_LANG_C)
$C$DW$T$282	.dwtag  DW_TAG_typedef, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$282, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$282, DW_AT_language(DW_LANG_C)
$C$DW$T$283	.dwtag  DW_TAG_typedef, DW_AT_name("U16_IQ")
	.dwattr $C$DW$T$283, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$283, DW_AT_language(DW_LANG_C)
$C$DW$T$284	.dwtag  DW_TAG_typedef, DW_AT_name("Uword16")
	.dwattr $C$DW$T$284, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$284, DW_AT_language(DW_LANG_C)
$C$DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)
$C$DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("Int")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)

$C$DW$T$36	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
$C$DW$340	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$35)
	.dwendtag $C$DW$T$36

$C$DW$T$37	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$37, DW_AT_address_class(0x20)
$C$DW$T$38	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Tclose")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)
$C$DW$T$48	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Tissue")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
$C$DW$T$57	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Treclaim")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
$C$DW$T$40	.dwtag  DW_TAG_typedef, DW_AT_name("Arg")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
$C$DW$T$112	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$112, DW_AT_address_class(0x20)

$C$DW$T$41	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
$C$DW$341	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$35)
$C$DW$342	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$39)
$C$DW$343	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$40)
	.dwendtag $C$DW$T$41

$C$DW$T$42	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_address_class(0x20)
$C$DW$T$43	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Tctrl")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)

$C$DW$T$45	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)
$C$DW$344	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$35)
$C$DW$345	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$44)
	.dwendtag $C$DW$T$45

$C$DW$T$46	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$46, DW_AT_address_class(0x20)
$C$DW$T$47	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Tidle")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)

$C$DW$T$49	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
$C$DW$346	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$35)
$C$DW$347	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$32)
	.dwendtag $C$DW$T$49

$C$DW$T$50	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$50, DW_AT_address_class(0x20)
$C$DW$T$51	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Topen")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)

$C$DW$T$59	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
$C$DW$T$60	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$60, DW_AT_address_class(0x20)
$C$DW$T$61	.dwtag  DW_TAG_typedef, DW_AT_name("Fxn")
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$61, DW_AT_language(DW_LANG_C)

$C$DW$T$89	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$89, DW_AT_language(DW_LANG_C)
$C$DW$348	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$88)
$C$DW$349	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$65)
	.dwendtag $C$DW$T$89

$C$DW$T$90	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$T$90, DW_AT_address_class(0x20)
$C$DW$T$91	.dwtag  DW_TAG_typedef, DW_AT_name("POOL_Open")
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$T$91, DW_AT_language(DW_LANG_C)

$C$DW$T$95	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$95, DW_AT_language(DW_LANG_C)
$C$DW$350	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$65)
$C$DW$351	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$88)
$C$DW$352	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$64)
	.dwendtag $C$DW$T$95

$C$DW$T$96	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$T$96, DW_AT_address_class(0x20)
$C$DW$T$97	.dwtag  DW_TAG_typedef, DW_AT_name("POOL_Alloc")
	.dwattr $C$DW$T$97, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$T$97, DW_AT_language(DW_LANG_C)
$C$DW$T$139	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$139, DW_AT_type(*$C$DW$T$22)
$C$DW$T$152	.dwtag  DW_TAG_typedef, DW_AT_name("TSK_Mode")
	.dwattr $C$DW$T$152, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$152, DW_AT_language(DW_LANG_C)

$C$DW$T$171	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$171, DW_AT_language(DW_LANG_C)
$C$DW$353	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$170)
	.dwendtag $C$DW$T$171

$C$DW$T$172	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$171)
	.dwattr $C$DW$T$172, DW_AT_address_class(0x20)
$C$DW$T$173	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_MqtOpen")
	.dwattr $C$DW$T$173, DW_AT_type(*$C$DW$T$172)
	.dwattr $C$DW$T$173, DW_AT_language(DW_LANG_C)
$C$DW$T$174	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_MqtClose")
	.dwattr $C$DW$T$174, DW_AT_type(*$C$DW$T$172)
	.dwattr $C$DW$T$174, DW_AT_language(DW_LANG_C)

$C$DW$T$176	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$176, DW_AT_language(DW_LANG_C)
$C$DW$354	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$170)
$C$DW$355	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$32)
$C$DW$356	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$44)
$C$DW$357	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$175)
$C$DW$358	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$65)
	.dwendtag $C$DW$T$176

$C$DW$T$177	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$T$177, DW_AT_address_class(0x20)
$C$DW$T$178	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_MqtLocate")
	.dwattr $C$DW$T$178, DW_AT_type(*$C$DW$T$177)
	.dwattr $C$DW$T$178, DW_AT_language(DW_LANG_C)

$C$DW$T$179	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$179, DW_AT_language(DW_LANG_C)
$C$DW$359	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$170)
$C$DW$360	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$165)
	.dwendtag $C$DW$T$179

$C$DW$T$180	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$179)
	.dwattr $C$DW$T$180, DW_AT_address_class(0x20)
$C$DW$T$181	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_MqtRelease")
	.dwattr $C$DW$T$181, DW_AT_type(*$C$DW$T$180)
	.dwattr $C$DW$T$181, DW_AT_language(DW_LANG_C)

$C$DW$T$184	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$184, DW_AT_language(DW_LANG_C)
$C$DW$361	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$170)
$C$DW$362	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$183)
	.dwendtag $C$DW$T$184

$C$DW$T$185	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$184)
	.dwattr $C$DW$T$185, DW_AT_address_class(0x20)
$C$DW$T$186	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_MqtPut")
	.dwattr $C$DW$T$186, DW_AT_type(*$C$DW$T$185)
	.dwattr $C$DW$T$186, DW_AT_language(DW_LANG_C)

$C$DW$T$287	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$287, DW_AT_language(DW_LANG_C)
$C$DW$363	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$81)
	.dwendtag $C$DW$T$287


$C$DW$T$288	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$288, DW_AT_language(DW_LANG_C)
$C$DW$364	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$81)
$C$DW$365	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$65)
$C$DW$366	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$64)
$C$DW$367	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$40)
	.dwendtag $C$DW$T$288


$C$DW$T$289	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$289, DW_AT_language(DW_LANG_C)
$C$DW$368	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$81)
$C$DW$369	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$88)
$C$DW$370	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$112)
	.dwendtag $C$DW$T$289


$C$DW$T$293	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$293, DW_AT_language(DW_LANG_C)
$C$DW$371	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$292)
	.dwendtag $C$DW$T$293


$C$DW$T$294	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$294, DW_AT_language(DW_LANG_C)
$C$DW$372	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$291)
	.dwendtag $C$DW$T$294

$C$DW$T$117	.dwtag  DW_TAG_typedef, DW_AT_name("LgInt")
	.dwattr $C$DW$T$117, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$117, DW_AT_language(DW_LANG_C)
$C$DW$T$204	.dwtag  DW_TAG_typedef, DW_AT_name("I32_IQ")
	.dwattr $C$DW$T$204, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$204, DW_AT_language(DW_LANG_C)

$C$DW$T$296	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$296, DW_AT_language(DW_LANG_C)
$C$DW$373	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$16)
$C$DW$374	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$295)
	.dwendtag $C$DW$T$296


$C$DW$T$297	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$297, DW_AT_language(DW_LANG_C)
$C$DW$375	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
$C$DW$376	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
$C$DW$377	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$295)
	.dwendtag $C$DW$T$297


$C$DW$T$299	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$299, DW_AT_language(DW_LANG_C)
$C$DW$378	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
$C$DW$379	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
$C$DW$380	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$298)
	.dwendtag $C$DW$T$299


$C$DW$T$300	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$300, DW_AT_language(DW_LANG_C)
$C$DW$381	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
$C$DW$382	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$295)
	.dwendtag $C$DW$T$300


$C$DW$T$301	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$301, DW_AT_language(DW_LANG_C)
$C$DW$383	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
	.dwendtag $C$DW$T$301

$C$DW$T$302	.dwtag  DW_TAG_typedef, DW_AT_name("_iq14")
	.dwattr $C$DW$T$302, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$302, DW_AT_language(DW_LANG_C)
$C$DW$T$303	.dwtag  DW_TAG_typedef, DW_AT_name("_iq")
	.dwattr $C$DW$T$303, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$303, DW_AT_language(DW_LANG_C)
$C$DW$T$304	.dwtag  DW_TAG_typedef, DW_AT_name("_iq31")
	.dwattr $C$DW$T$304, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$304, DW_AT_language(DW_LANG_C)
$C$DW$T$305	.dwtag  DW_TAG_typedef, DW_AT_name("_iq30")
	.dwattr $C$DW$T$305, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$305, DW_AT_language(DW_LANG_C)
$C$DW$T$306	.dwtag  DW_TAG_typedef, DW_AT_name("_iq29")
	.dwattr $C$DW$T$306, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$306, DW_AT_language(DW_LANG_C)
$C$DW$T$307	.dwtag  DW_TAG_typedef, DW_AT_name("_iq28")
	.dwattr $C$DW$T$307, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$307, DW_AT_language(DW_LANG_C)
$C$DW$T$308	.dwtag  DW_TAG_typedef, DW_AT_name("_iq27")
	.dwattr $C$DW$T$308, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$308, DW_AT_language(DW_LANG_C)
$C$DW$T$309	.dwtag  DW_TAG_typedef, DW_AT_name("_iq26")
	.dwattr $C$DW$T$309, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$309, DW_AT_language(DW_LANG_C)
$C$DW$T$310	.dwtag  DW_TAG_typedef, DW_AT_name("_iq25")
	.dwattr $C$DW$T$310, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$310, DW_AT_language(DW_LANG_C)
$C$DW$T$311	.dwtag  DW_TAG_typedef, DW_AT_name("_iq24")
	.dwattr $C$DW$T$311, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$311, DW_AT_language(DW_LANG_C)
$C$DW$T$312	.dwtag  DW_TAG_typedef, DW_AT_name("_iq23")
	.dwattr $C$DW$T$312, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$312, DW_AT_language(DW_LANG_C)
$C$DW$T$313	.dwtag  DW_TAG_typedef, DW_AT_name("_iq22")
	.dwattr $C$DW$T$313, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$313, DW_AT_language(DW_LANG_C)
$C$DW$T$314	.dwtag  DW_TAG_typedef, DW_AT_name("_iq21")
	.dwattr $C$DW$T$314, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$314, DW_AT_language(DW_LANG_C)
$C$DW$T$315	.dwtag  DW_TAG_typedef, DW_AT_name("_iq20")
	.dwattr $C$DW$T$315, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$315, DW_AT_language(DW_LANG_C)
$C$DW$T$316	.dwtag  DW_TAG_typedef, DW_AT_name("_iq19")
	.dwattr $C$DW$T$316, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$316, DW_AT_language(DW_LANG_C)
$C$DW$T$317	.dwtag  DW_TAG_typedef, DW_AT_name("_iq18")
	.dwattr $C$DW$T$317, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$317, DW_AT_language(DW_LANG_C)
$C$DW$T$318	.dwtag  DW_TAG_typedef, DW_AT_name("_iq17")
	.dwattr $C$DW$T$318, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$318, DW_AT_language(DW_LANG_C)
$C$DW$T$319	.dwtag  DW_TAG_typedef, DW_AT_name("_iq16")
	.dwattr $C$DW$T$319, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$319, DW_AT_language(DW_LANG_C)
$C$DW$T$320	.dwtag  DW_TAG_typedef, DW_AT_name("_iq15")
	.dwattr $C$DW$T$320, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$320, DW_AT_language(DW_LANG_C)
$C$DW$T$321	.dwtag  DW_TAG_typedef, DW_AT_name("_iq13")
	.dwattr $C$DW$T$321, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$321, DW_AT_language(DW_LANG_C)
$C$DW$T$322	.dwtag  DW_TAG_typedef, DW_AT_name("_iq12")
	.dwattr $C$DW$T$322, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$322, DW_AT_language(DW_LANG_C)
$C$DW$T$323	.dwtag  DW_TAG_typedef, DW_AT_name("_iq11")
	.dwattr $C$DW$T$323, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$323, DW_AT_language(DW_LANG_C)
$C$DW$T$324	.dwtag  DW_TAG_typedef, DW_AT_name("_iq10")
	.dwattr $C$DW$T$324, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$324, DW_AT_language(DW_LANG_C)
$C$DW$T$325	.dwtag  DW_TAG_typedef, DW_AT_name("_iq9")
	.dwattr $C$DW$T$325, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$325, DW_AT_language(DW_LANG_C)
$C$DW$T$326	.dwtag  DW_TAG_typedef, DW_AT_name("_iq8")
	.dwattr $C$DW$T$326, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$326, DW_AT_language(DW_LANG_C)
$C$DW$T$327	.dwtag  DW_TAG_typedef, DW_AT_name("_iq7")
	.dwattr $C$DW$T$327, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$327, DW_AT_language(DW_LANG_C)
$C$DW$T$328	.dwtag  DW_TAG_typedef, DW_AT_name("_iq6")
	.dwattr $C$DW$T$328, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$328, DW_AT_language(DW_LANG_C)
$C$DW$T$329	.dwtag  DW_TAG_typedef, DW_AT_name("_iq5")
	.dwattr $C$DW$T$329, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$329, DW_AT_language(DW_LANG_C)
$C$DW$T$330	.dwtag  DW_TAG_typedef, DW_AT_name("_iq4")
	.dwattr $C$DW$T$330, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$330, DW_AT_language(DW_LANG_C)
$C$DW$T$331	.dwtag  DW_TAG_typedef, DW_AT_name("_iq3")
	.dwattr $C$DW$T$331, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$331, DW_AT_language(DW_LANG_C)
$C$DW$T$332	.dwtag  DW_TAG_typedef, DW_AT_name("_iq2")
	.dwattr $C$DW$T$332, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$332, DW_AT_language(DW_LANG_C)
$C$DW$T$333	.dwtag  DW_TAG_typedef, DW_AT_name("_iq1")
	.dwattr $C$DW$T$333, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$333, DW_AT_language(DW_LANG_C)
$C$DW$T$334	.dwtag  DW_TAG_typedef, DW_AT_name("_iq0")
	.dwattr $C$DW$T$334, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$334, DW_AT_language(DW_LANG_C)

$C$DW$T$335	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$335, DW_AT_language(DW_LANG_C)
$C$DW$384	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
$C$DW$385	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$T$335

$C$DW$T$336	.dwtag  DW_TAG_typedef, DW_AT_name("Int32")
	.dwattr $C$DW$T$336, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$336, DW_AT_language(DW_LANG_C)
$C$DW$T$337	.dwtag  DW_TAG_typedef, DW_AT_name("ptrdiff_t")
	.dwattr $C$DW$T$337, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$337, DW_AT_language(DW_LANG_C)
$C$DW$T$338	.dwtag  DW_TAG_typedef, DW_AT_name("Word32")
	.dwattr $C$DW$T$338, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$338, DW_AT_language(DW_LANG_C)
$C$DW$T$360	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$360, DW_AT_type(*$C$DW$T$10)
$C$DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)
$C$DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("Uns")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)
$C$DW$T$365	.dwtag  DW_TAG_typedef, DW_AT_name("TRG_IntState")
	.dwattr $C$DW$T$365, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$365, DW_AT_language(DW_LANG_C)
$C$DW$T$64	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)
$C$DW$T$83	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32")
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$83, DW_AT_language(DW_LANG_C)

$C$DW$T$162	.dwtag  DW_TAG_array_type, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$T$162, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$162, DW_AT_byte_size(0x08)
$C$DW$386	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$386, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$162

$C$DW$T$165	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_Queue")
	.dwattr $C$DW$T$165, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$T$165, DW_AT_language(DW_LANG_C)
$C$DW$T$175	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$165)
	.dwattr $C$DW$T$175, DW_AT_address_class(0x20)
$C$DW$T$133	.dwtag  DW_TAG_typedef, DW_AT_name("MEM_sizep")
	.dwattr $C$DW$T$133, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$133, DW_AT_language(DW_LANG_C)
$C$DW$T$197	.dwtag  DW_TAG_typedef, DW_AT_name("LgUns")
	.dwattr $C$DW$T$197, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$197, DW_AT_language(DW_LANG_C)
$C$DW$T$295	.dwtag  DW_TAG_typedef, DW_AT_name("U32_IQ")
	.dwattr $C$DW$T$295, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$295, DW_AT_language(DW_LANG_C)
$C$DW$T$298	.dwtag  DW_TAG_typedef, DW_AT_name("Uword32")
	.dwattr $C$DW$T$298, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$298, DW_AT_language(DW_LANG_C)
$C$DW$T$362	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$362, DW_AT_type(*$C$DW$T$11)
$C$DW$T$363	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$362)
	.dwattr $C$DW$T$363, DW_AT_address_class(0x20)

$C$DW$T$364	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$363)
	.dwattr $C$DW$T$364, DW_AT_language(DW_LANG_C)
$C$DW$387	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$208)
	.dwendtag $C$DW$T$364


$C$DW$T$366	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$366, DW_AT_language(DW_LANG_C)
$C$DW$388	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$17)
	.dwendtag $C$DW$T$366


$C$DW$T$367	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$367, DW_AT_language(DW_LANG_C)
$C$DW$389	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$11)
$C$DW$390	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$T$367

$C$DW$T$368	.dwtag  DW_TAG_typedef, DW_AT_name("LgBits")
	.dwattr $C$DW$T$368, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$368, DW_AT_language(DW_LANG_C)
$C$DW$T$12	.dwtag  DW_TAG_base_type, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x08)
	.dwattr $C$DW$T$12, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$12, DW_AT_bit_offset(0x18)
$C$DW$T$369	.dwtag  DW_TAG_typedef, DW_AT_name("Long")
	.dwattr $C$DW$T$369, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$369, DW_AT_language(DW_LANG_C)
$C$DW$T$370	.dwtag  DW_TAG_typedef, DW_AT_name("Word40")
	.dwattr $C$DW$T$370, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$370, DW_AT_language(DW_LANG_C)
$C$DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x08)
	.dwattr $C$DW$T$13, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$13, DW_AT_bit_offset(0x18)
$C$DW$T$371	.dwtag  DW_TAG_typedef, DW_AT_name("Uword40")
	.dwattr $C$DW$T$371, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$371, DW_AT_language(DW_LANG_C)
$C$DW$T$14	.dwtag  DW_TAG_base_type, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x08)
$C$DW$T$372	.dwtag  DW_TAG_typedef, DW_AT_name("I64_IQ")
	.dwattr $C$DW$T$372, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$372, DW_AT_language(DW_LANG_C)
$C$DW$T$373	.dwtag  DW_TAG_typedef, DW_AT_name("Word64")
	.dwattr $C$DW$T$373, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$373, DW_AT_language(DW_LANG_C)
$C$DW$T$15	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)
$C$DW$T$374	.dwtag  DW_TAG_typedef, DW_AT_name("U64_IQ")
	.dwattr $C$DW$T$374, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$374, DW_AT_language(DW_LANG_C)
$C$DW$T$375	.dwtag  DW_TAG_typedef, DW_AT_name("Uword64")
	.dwattr $C$DW$T$375, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$375, DW_AT_language(DW_LANG_C)
$C$DW$T$16	.dwtag  DW_TAG_base_type, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)
$C$DW$T$376	.dwtag  DW_TAG_typedef, DW_AT_name("Float")
	.dwattr $C$DW$T$376, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$376, DW_AT_language(DW_LANG_C)
$C$DW$T$377	.dwtag  DW_TAG_typedef, DW_AT_name("Fword32")
	.dwattr $C$DW$T$377, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$377, DW_AT_language(DW_LANG_C)
$C$DW$T$17	.dwtag  DW_TAG_base_type, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)
$C$DW$T$378	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$378, DW_AT_address_class(0x20)

$C$DW$T$379	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$378)
	.dwattr $C$DW$T$379, DW_AT_language(DW_LANG_C)
$C$DW$391	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$T$379


$C$DW$T$380	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$380, DW_AT_language(DW_LANG_C)
$C$DW$392	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$11)
$C$DW$393	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$T$380

$C$DW$T$381	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$381, DW_AT_type(*$C$DW$T$17)
$C$DW$T$382	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$381)
	.dwattr $C$DW$T$382, DW_AT_address_class(0x20)

$C$DW$T$383	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$382)
	.dwattr $C$DW$T$383, DW_AT_language(DW_LANG_C)
$C$DW$394	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$208)
	.dwendtag $C$DW$T$383

$C$DW$T$18	.dwtag  DW_TAG_base_type, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("QUE_Elem")
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x08)
$C$DW$395	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$395, DW_AT_name("next")
	.dwattr $C$DW$395, DW_AT_TI_symbol_name("_next")
	.dwattr $C$DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$396	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$396, DW_AT_name("prev")
	.dwattr $C$DW$396, DW_AT_TI_symbol_name("_prev")
	.dwattr $C$DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$20

$C$DW$T$19	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$19, DW_AT_address_class(0x20)
$C$DW$T$63	.dwtag  DW_TAG_typedef, DW_AT_name("QUE_Handle")
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C)
$C$DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("QUE_Obj")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
$C$DW$T$70	.dwtag  DW_TAG_typedef, DW_AT_name("QUE_Elem")
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$70, DW_AT_language(DW_LANG_C)

$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_name("KNL_Job")
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x10)
$C$DW$397	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$397, DW_AT_name("wListElem")
	.dwattr $C$DW$397, DW_AT_TI_symbol_name("_wListElem")
	.dwattr $C$DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$398	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$398, DW_AT_name("wCount")
	.dwattr $C$DW$398, DW_AT_TI_symbol_name("_wCount")
	.dwattr $C$DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$399	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$399, DW_AT_name("fxn")
	.dwattr $C$DW$399, DW_AT_TI_symbol_name("_fxn")
	.dwattr $C$DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$28

$C$DW$T$23	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$23, DW_AT_address_class(0x20)
$C$DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_JobHandle")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
$C$DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_Job")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)
$C$DW$T$30	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr $C$DW$T$30, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x01)
$C$DW$T$31	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_address_class(0x20)
$C$DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("String")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
$C$DW$T$384	.dwtag  DW_TAG_typedef, DW_AT_name("va_list")
	.dwattr $C$DW$T$384, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$384, DW_AT_language(DW_LANG_C)
$C$DW$T$84	.dwtag  DW_TAG_typedef, DW_AT_name("Char")
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$84, DW_AT_language(DW_LANG_C)
$C$DW$T$85	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$T$85, DW_AT_address_class(0x20)

$C$DW$T$86	.dwtag  DW_TAG_array_type, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$T$86, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$86, DW_AT_byte_size(0x190)
$C$DW$400	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$400, DW_AT_upper_bound(0x63)
	.dwendtag $C$DW$T$86

$C$DW$T$385	.dwtag  DW_TAG_typedef, DW_AT_name("Int8")
	.dwattr $C$DW$T$385, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$385, DW_AT_language(DW_LANG_C)
$C$DW$T$386	.dwtag  DW_TAG_typedef, DW_AT_name("SmInt")
	.dwattr $C$DW$T$386, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$386, DW_AT_language(DW_LANG_C)

$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_name("SEM_Obj")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x20)
$C$DW$401	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$401, DW_AT_name("job")
	.dwattr $C$DW$401, DW_AT_TI_symbol_name("_job")
	.dwattr $C$DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$402	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$402, DW_AT_name("count")
	.dwattr $C$DW$402, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$403	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$403, DW_AT_name("pendQ")
	.dwattr $C$DW$403, DW_AT_TI_symbol_name("_pendQ")
	.dwattr $C$DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$404	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$404, DW_AT_name("name")
	.dwattr $C$DW$404, DW_AT_TI_symbol_name("_name")
	.dwattr $C$DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$33

$C$DW$T$52	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$52, DW_AT_address_class(0x20)
$C$DW$T$53	.dwtag  DW_TAG_typedef, DW_AT_name("SEM_Handle")
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
$C$DW$T$387	.dwtag  DW_TAG_typedef, DW_AT_name("SEM_Obj")
	.dwattr $C$DW$T$387, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$387, DW_AT_language(DW_LANG_C)

$C$DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$58, DW_AT_name("DEV_Fxns")
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x1c)
$C$DW$405	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$405, DW_AT_name("close")
	.dwattr $C$DW$405, DW_AT_TI_symbol_name("_close")
	.dwattr $C$DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$406	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$406, DW_AT_name("ctrl")
	.dwattr $C$DW$406, DW_AT_TI_symbol_name("_ctrl")
	.dwattr $C$DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$407	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$407, DW_AT_name("idle")
	.dwattr $C$DW$407, DW_AT_TI_symbol_name("_idle")
	.dwattr $C$DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$408	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$408, DW_AT_name("issue")
	.dwattr $C$DW$408, DW_AT_TI_symbol_name("_issue")
	.dwattr $C$DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$409	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$409, DW_AT_name("open")
	.dwattr $C$DW$409, DW_AT_TI_symbol_name("_open")
	.dwattr $C$DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$410	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$410, DW_AT_name("ready")
	.dwattr $C$DW$410, DW_AT_TI_symbol_name("_ready")
	.dwattr $C$DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$411	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$411, DW_AT_name("reclaim")
	.dwattr $C$DW$411, DW_AT_TI_symbol_name("_reclaim")
	.dwattr $C$DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$58

$C$DW$T$66	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Fxns")
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$T$66, DW_AT_language(DW_LANG_C)
$C$DW$T$75	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$T$75, DW_AT_address_class(0x20)

$C$DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$62, DW_AT_name("DEV_Callback")
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x0c)
$C$DW$412	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$412, DW_AT_name("fxn")
	.dwattr $C$DW$412, DW_AT_TI_symbol_name("_fxn")
	.dwattr $C$DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$413	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$413, DW_AT_name("arg0")
	.dwattr $C$DW$413, DW_AT_TI_symbol_name("_arg0")
	.dwattr $C$DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$414	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$414, DW_AT_name("arg1")
	.dwattr $C$DW$414, DW_AT_TI_symbol_name("_arg1")
	.dwattr $C$DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$414, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$62

$C$DW$T$67	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Callback")
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$67, DW_AT_language(DW_LANG_C)
$C$DW$T$68	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$68, DW_AT_address_class(0x20)
$C$DW$T$77	.dwtag  DW_TAG_typedef, DW_AT_name("SIO_Callback")
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$77, DW_AT_language(DW_LANG_C)
$C$DW$T$78	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$T$78, DW_AT_address_class(0x20)

$C$DW$T$69	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$69, DW_AT_name("DEV_Obj")
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x4c)
$C$DW$415	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$415, DW_AT_name("todevice")
	.dwattr $C$DW$415, DW_AT_TI_symbol_name("_todevice")
	.dwattr $C$DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$415, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$416	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$416, DW_AT_name("fromdevice")
	.dwattr $C$DW$416, DW_AT_TI_symbol_name("_fromdevice")
	.dwattr $C$DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$416, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$417	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$417, DW_AT_name("bufsize")
	.dwattr $C$DW$417, DW_AT_TI_symbol_name("_bufsize")
	.dwattr $C$DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$417, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$418	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$418, DW_AT_name("nbufs")
	.dwattr $C$DW$418, DW_AT_TI_symbol_name("_nbufs")
	.dwattr $C$DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$418, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$419	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$419, DW_AT_name("segid")
	.dwattr $C$DW$419, DW_AT_TI_symbol_name("_segid")
	.dwattr $C$DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$419, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$420	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$420, DW_AT_name("mode")
	.dwattr $C$DW$420, DW_AT_TI_symbol_name("_mode")
	.dwattr $C$DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$420, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$421	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$421, DW_AT_name("devid")
	.dwattr $C$DW$421, DW_AT_TI_symbol_name("_devid")
	.dwattr $C$DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$421, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$422	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$422, DW_AT_name("params")
	.dwattr $C$DW$422, DW_AT_TI_symbol_name("_params")
	.dwattr $C$DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$422, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$423	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$423, DW_AT_name("object")
	.dwattr $C$DW$423, DW_AT_TI_symbol_name("_object")
	.dwattr $C$DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$423, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$424	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$424, DW_AT_name("fxns")
	.dwattr $C$DW$424, DW_AT_TI_symbol_name("_fxns")
	.dwattr $C$DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$424, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$425	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$425, DW_AT_name("timeout")
	.dwattr $C$DW$425, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$426	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$426, DW_AT_name("align")
	.dwattr $C$DW$426, DW_AT_TI_symbol_name("_align")
	.dwattr $C$DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$426, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$427	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$427, DW_AT_name("callback")
	.dwattr $C$DW$427, DW_AT_TI_symbol_name("_callback")
	.dwattr $C$DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$427, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$69

$C$DW$T$34	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$T$34, DW_AT_address_class(0x20)
$C$DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Handle")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
$C$DW$T$72	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Obj")
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$T$72, DW_AT_language(DW_LANG_C)

$C$DW$T$71	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$71, DW_AT_name("DEV_Frame")
	.dwattr $C$DW$T$71, DW_AT_byte_size(0x20)
$C$DW$428	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$428, DW_AT_name("link")
	.dwattr $C$DW$428, DW_AT_TI_symbol_name("_link")
	.dwattr $C$DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$428, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$429	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$429, DW_AT_name("addr")
	.dwattr $C$DW$429, DW_AT_TI_symbol_name("_addr")
	.dwattr $C$DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$430	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$430, DW_AT_name("size")
	.dwattr $C$DW$430, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$431	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$431, DW_AT_name("misc")
	.dwattr $C$DW$431, DW_AT_TI_symbol_name("_misc")
	.dwattr $C$DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$431, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$432	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$432, DW_AT_name("arg")
	.dwattr $C$DW$432, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$433	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$433, DW_AT_name("cmd")
	.dwattr $C$DW$433, DW_AT_TI_symbol_name("_cmd")
	.dwattr $C$DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$434	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$434, DW_AT_name("status")
	.dwattr $C$DW$434, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$434, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$71

$C$DW$T$73	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Frame")
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$T$73, DW_AT_language(DW_LANG_C)
$C$DW$T$74	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$T$74, DW_AT_address_class(0x20)

$C$DW$T$76	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$76, DW_AT_name("SIO_Obj")
	.dwattr $C$DW$T$76, DW_AT_byte_size(0x64)
$C$DW$435	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$435, DW_AT_name("dobj")
	.dwattr $C$DW$435, DW_AT_TI_symbol_name("_dobj")
	.dwattr $C$DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$435, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$436	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$436, DW_AT_name("flush")
	.dwattr $C$DW$436, DW_AT_TI_symbol_name("_flush")
	.dwattr $C$DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0x4c]
	.dwattr $C$DW$436, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$437	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$437, DW_AT_name("framelist")
	.dwattr $C$DW$437, DW_AT_TI_symbol_name("_framelist")
	.dwattr $C$DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr $C$DW$437, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$438	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$438, DW_AT_name("standardFrame")
	.dwattr $C$DW$438, DW_AT_TI_symbol_name("_standardFrame")
	.dwattr $C$DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x58]
	.dwattr $C$DW$438, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$439	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$439, DW_AT_name("model")
	.dwattr $C$DW$439, DW_AT_TI_symbol_name("_model")
	.dwattr $C$DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x5c]
	.dwattr $C$DW$439, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$440	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$440, DW_AT_name("pfxns")
	.dwattr $C$DW$440, DW_AT_TI_symbol_name("_pfxns")
	.dwattr $C$DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x60]
	.dwattr $C$DW$440, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$76

$C$DW$T$80	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$T$80, DW_AT_address_class(0x20)
$C$DW$T$81	.dwtag  DW_TAG_typedef, DW_AT_name("SIO_Handle")
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$81, DW_AT_language(DW_LANG_C)

$C$DW$T$390	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$390, DW_AT_language(DW_LANG_C)
$C$DW$441	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$32)
$C$DW$442	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$22)
$C$DW$443	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$64)
$C$DW$444	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$389)
	.dwendtag $C$DW$T$390

$C$DW$T$393	.dwtag  DW_TAG_typedef, DW_AT_name("SIO_Obj")
	.dwattr $C$DW$T$393, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$T$393, DW_AT_language(DW_LANG_C)

$C$DW$T$79	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$79, DW_AT_name("SIO_Attrs")
	.dwattr $C$DW$T$79, DW_AT_byte_size(0x1c)
$C$DW$445	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$445, DW_AT_name("nbufs")
	.dwattr $C$DW$445, DW_AT_TI_symbol_name("_nbufs")
	.dwattr $C$DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$445, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$446	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$446, DW_AT_name("segid")
	.dwattr $C$DW$446, DW_AT_TI_symbol_name("_segid")
	.dwattr $C$DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$446, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$447	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$447, DW_AT_name("align")
	.dwattr $C$DW$447, DW_AT_TI_symbol_name("_align")
	.dwattr $C$DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$447, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$448	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$448, DW_AT_name("flush")
	.dwattr $C$DW$448, DW_AT_TI_symbol_name("_flush")
	.dwattr $C$DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$448, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$449	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$449, DW_AT_name("model")
	.dwattr $C$DW$449, DW_AT_TI_symbol_name("_model")
	.dwattr $C$DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$449, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$450	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$450, DW_AT_name("timeout")
	.dwattr $C$DW$450, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$450, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$451	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$451, DW_AT_name("callback")
	.dwattr $C$DW$451, DW_AT_TI_symbol_name("_callback")
	.dwattr $C$DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$451, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$79

$C$DW$T$388	.dwtag  DW_TAG_typedef, DW_AT_name("SIO_Attrs")
	.dwattr $C$DW$T$388, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$T$388, DW_AT_language(DW_LANG_C)
$C$DW$T$389	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$388)
	.dwattr $C$DW$T$389, DW_AT_address_class(0x20)

$C$DW$T$87	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$87, DW_AT_name("TSKLOOP_TransferInfo_tag")
	.dwattr $C$DW$T$87, DW_AT_byte_size(0x1a4)
$C$DW$452	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$452, DW_AT_name("inputStream")
	.dwattr $C$DW$452, DW_AT_TI_symbol_name("_inputStream")
	.dwattr $C$DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$452, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$453	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$453, DW_AT_name("outputStream")
	.dwattr $C$DW$453, DW_AT_TI_symbol_name("_outputStream")
	.dwattr $C$DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$453, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$454	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$454, DW_AT_name("numTransfers")
	.dwattr $C$DW$454, DW_AT_TI_symbol_name("_numTransfers")
	.dwattr $C$DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$454, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$455	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$455, DW_AT_name("bufferSize")
	.dwattr $C$DW$455, DW_AT_TI_symbol_name("_bufferSize")
	.dwattr $C$DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$455, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$456	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$456, DW_AT_name("receivedSize")
	.dwattr $C$DW$456, DW_AT_TI_symbol_name("_receivedSize")
	.dwattr $C$DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$456, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$457	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$457, DW_AT_name("numBuffers")
	.dwattr $C$DW$457, DW_AT_TI_symbol_name("_numBuffers")
	.dwattr $C$DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$457, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$458	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$458, DW_AT_name("buffers")
	.dwattr $C$DW$458, DW_AT_TI_symbol_name("_buffers")
	.dwattr $C$DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$458, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$87

$C$DW$T$290	.dwtag  DW_TAG_typedef, DW_AT_name("TSKLOOP_TransferInfo")
	.dwattr $C$DW$T$290, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$290, DW_AT_language(DW_LANG_C)
$C$DW$T$291	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$290)
	.dwattr $C$DW$T$291, DW_AT_address_class(0x20)
$C$DW$T$292	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$291)
	.dwattr $C$DW$T$292, DW_AT_address_class(0x20)
$C$DW$T$395	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$395, DW_AT_type(*$C$DW$T$292)
$C$DW$T$396	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$396, DW_AT_type(*$C$DW$T$291)

$C$DW$T$101	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$101, DW_AT_name("POOL_Fxns")
	.dwattr $C$DW$T$101, DW_AT_byte_size(0x10)
$C$DW$459	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$459, DW_AT_name("open")
	.dwattr $C$DW$459, DW_AT_TI_symbol_name("_open")
	.dwattr $C$DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$459, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$460	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$460, DW_AT_name("close")
	.dwattr $C$DW$460, DW_AT_TI_symbol_name("_close")
	.dwattr $C$DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$460, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$461	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$461, DW_AT_name("alloc")
	.dwattr $C$DW$461, DW_AT_TI_symbol_name("_alloc")
	.dwattr $C$DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$461, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$462	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$462, DW_AT_name("free")
	.dwattr $C$DW$462, DW_AT_TI_symbol_name("_free")
	.dwattr $C$DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$462, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$101

$C$DW$T$105	.dwtag  DW_TAG_typedef, DW_AT_name("POOL_Fxns")
	.dwattr $C$DW$T$105, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$105, DW_AT_language(DW_LANG_C)
$C$DW$T$106	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$T$106, DW_AT_address_class(0x20)

$C$DW$T$107	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$107, DW_AT_name("POOL_Obj")
	.dwattr $C$DW$T$107, DW_AT_byte_size(0x10)
$C$DW$463	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$463, DW_AT_name("initFxn")
	.dwattr $C$DW$463, DW_AT_TI_symbol_name("_initFxn")
	.dwattr $C$DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$463, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$464	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$464, DW_AT_name("fxns")
	.dwattr $C$DW$464, DW_AT_TI_symbol_name("_fxns")
	.dwattr $C$DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$464, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$465	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$465, DW_AT_name("params")
	.dwattr $C$DW$465, DW_AT_TI_symbol_name("_params")
	.dwattr $C$DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$465, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$466	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$466, DW_AT_name("object")
	.dwattr $C$DW$466, DW_AT_TI_symbol_name("_object")
	.dwattr $C$DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$466, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$107

$C$DW$T$108	.dwtag  DW_TAG_typedef, DW_AT_name("POOL_Obj")
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$T$108, DW_AT_language(DW_LANG_C)
$C$DW$T$109	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$T$109, DW_AT_address_class(0x20)
$C$DW$T$402	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$T$402, DW_AT_address_class(0x20)
$C$DW$T$403	.dwtag  DW_TAG_typedef, DW_AT_name("POOL_Handle")
	.dwattr $C$DW$T$403, DW_AT_type(*$C$DW$T$402)
	.dwattr $C$DW$T$403, DW_AT_language(DW_LANG_C)

$C$DW$T$110	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$110, DW_AT_name("POOL_Config")
	.dwattr $C$DW$T$110, DW_AT_byte_size(0x08)
$C$DW$467	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$467, DW_AT_name("allocators")
	.dwattr $C$DW$467, DW_AT_TI_symbol_name("_allocators")
	.dwattr $C$DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$467, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$468	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$468, DW_AT_name("numAllocators")
	.dwattr $C$DW$468, DW_AT_TI_symbol_name("_numAllocators")
	.dwattr $C$DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$468, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$110

$C$DW$T$404	.dwtag  DW_TAG_typedef, DW_AT_name("POOL_Config")
	.dwattr $C$DW$T$404, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$T$404, DW_AT_language(DW_LANG_C)
$C$DW$T$405	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$404)
	.dwattr $C$DW$T$405, DW_AT_address_class(0x20)

$C$DW$T$111	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$111, DW_AT_name("LOG_Event")
	.dwattr $C$DW$T$111, DW_AT_byte_size(0x10)
$C$DW$469	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$469, DW_AT_name("seqnum")
	.dwattr $C$DW$469, DW_AT_TI_symbol_name("_seqnum")
	.dwattr $C$DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$469, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$470	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$470, DW_AT_name("val1")
	.dwattr $C$DW$470, DW_AT_TI_symbol_name("_val1")
	.dwattr $C$DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$470, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$471	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$471, DW_AT_name("val2")
	.dwattr $C$DW$471, DW_AT_TI_symbol_name("_val2")
	.dwattr $C$DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$471, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$472	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$472, DW_AT_name("val3")
	.dwattr $C$DW$472, DW_AT_TI_symbol_name("_val3")
	.dwattr $C$DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$472, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$111

$C$DW$T$113	.dwtag  DW_TAG_typedef, DW_AT_name("LOG_Event")
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$T$113, DW_AT_language(DW_LANG_C)
$C$DW$T$114	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$T$114, DW_AT_address_class(0x20)

$C$DW$T$115	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$115, DW_AT_name("LOG_Obj")
	.dwattr $C$DW$T$115, DW_AT_byte_size(0x18)
$C$DW$473	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$473, DW_AT_name("bufend")
	.dwattr $C$DW$473, DW_AT_TI_symbol_name("_bufend")
	.dwattr $C$DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$473, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$474	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$474, DW_AT_name("flag")
	.dwattr $C$DW$474, DW_AT_TI_symbol_name("_flag")
	.dwattr $C$DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$474, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$475	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$475, DW_AT_name("seqnum")
	.dwattr $C$DW$475, DW_AT_TI_symbol_name("_seqnum")
	.dwattr $C$DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$475, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$476	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$476, DW_AT_name("curptr")
	.dwattr $C$DW$476, DW_AT_TI_symbol_name("_curptr")
	.dwattr $C$DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$476, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$477	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$477, DW_AT_name("lenmask")
	.dwattr $C$DW$477, DW_AT_TI_symbol_name("_lenmask")
	.dwattr $C$DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$477, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$478	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$478, DW_AT_name("bufbeg")
	.dwattr $C$DW$478, DW_AT_TI_symbol_name("_bufbeg")
	.dwattr $C$DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$478, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$115

$C$DW$T$407	.dwtag  DW_TAG_typedef, DW_AT_name("LOG_Obj")
	.dwattr $C$DW$T$407, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$T$407, DW_AT_language(DW_LANG_C)
$C$DW$T$408	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$T$408, DW_AT_address_class(0x20)
$C$DW$T$409	.dwtag  DW_TAG_typedef, DW_AT_name("LOG_Handle")
	.dwattr $C$DW$T$409, DW_AT_type(*$C$DW$T$408)
	.dwattr $C$DW$T$409, DW_AT_language(DW_LANG_C)

$C$DW$T$116	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$116, DW_AT_name("FXN_Obj")
	.dwattr $C$DW$T$116, DW_AT_byte_size(0x0c)
$C$DW$479	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$479, DW_AT_name("fxn")
	.dwattr $C$DW$479, DW_AT_TI_symbol_name("_fxn")
	.dwattr $C$DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$479, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$480	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$480, DW_AT_name("arg1")
	.dwattr $C$DW$480, DW_AT_TI_symbol_name("_arg1")
	.dwattr $C$DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$480, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$481	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$481, DW_AT_name("arg0")
	.dwattr $C$DW$481, DW_AT_TI_symbol_name("_arg0")
	.dwattr $C$DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$481, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$116

$C$DW$T$122	.dwtag  DW_TAG_typedef, DW_AT_name("FXN_Obj")
	.dwattr $C$DW$T$122, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$T$122, DW_AT_language(DW_LANG_C)
$C$DW$T$410	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$T$410, DW_AT_address_class(0x20)
$C$DW$T$411	.dwtag  DW_TAG_typedef, DW_AT_name("FXN_Handle")
	.dwattr $C$DW$T$411, DW_AT_type(*$C$DW$T$410)
	.dwattr $C$DW$T$411, DW_AT_language(DW_LANG_C)

$C$DW$T$118	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$118, DW_AT_name("STS_Obj")
	.dwattr $C$DW$T$118, DW_AT_byte_size(0x0c)
$C$DW$482	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$482, DW_AT_name("num")
	.dwattr $C$DW$482, DW_AT_TI_symbol_name("_num")
	.dwattr $C$DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$483	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$483, DW_AT_name("acc")
	.dwattr $C$DW$483, DW_AT_TI_symbol_name("_acc")
	.dwattr $C$DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$483, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$484	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$484, DW_AT_name("max")
	.dwattr $C$DW$484, DW_AT_TI_symbol_name("_max")
	.dwattr $C$DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$484, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$118

$C$DW$T$123	.dwtag  DW_TAG_typedef, DW_AT_name("STS_Obj")
	.dwattr $C$DW$T$123, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$T$123, DW_AT_language(DW_LANG_C)
$C$DW$T$124	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$124, DW_AT_address_class(0x20)
$C$DW$T$412	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$T$412, DW_AT_address_class(0x20)
$C$DW$T$413	.dwtag  DW_TAG_typedef, DW_AT_name("STS_Handle")
	.dwattr $C$DW$T$413, DW_AT_type(*$C$DW$T$412)
	.dwattr $C$DW$T$413, DW_AT_language(DW_LANG_C)

$C$DW$T$119	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$119, DW_AT_name("HWI_DataObj")
	.dwattr $C$DW$T$119, DW_AT_byte_size(0x10)
$C$DW$485	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$485, DW_AT_name("spsave")
	.dwattr $C$DW$485, DW_AT_TI_symbol_name("_spsave")
	.dwattr $C$DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$485, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$486	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$486, DW_AT_name("stkBottom")
	.dwattr $C$DW$486, DW_AT_TI_symbol_name("_stkBottom")
	.dwattr $C$DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$486, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$487	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$487, DW_AT_name("stkTop")
	.dwattr $C$DW$487, DW_AT_TI_symbol_name("_stkTop")
	.dwattr $C$DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$487, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$488	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$488, DW_AT_name("inhwi")
	.dwattr $C$DW$488, DW_AT_TI_symbol_name("_inhwi")
	.dwattr $C$DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$488, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$119

$C$DW$T$414	.dwtag  DW_TAG_typedef, DW_AT_name("HWI_DataObj")
	.dwattr $C$DW$T$414, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$T$414, DW_AT_language(DW_LANG_C)

$C$DW$T$120	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$120, DW_AT_name("HWI_Attrs")
	.dwattr $C$DW$T$120, DW_AT_byte_size(0x0c)
$C$DW$489	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$489, DW_AT_name("intrMask")
	.dwattr $C$DW$489, DW_AT_TI_symbol_name("_intrMask")
	.dwattr $C$DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$489, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$490	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$490, DW_AT_name("ccMask")
	.dwattr $C$DW$490, DW_AT_TI_symbol_name("_ccMask")
	.dwattr $C$DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$490, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$491	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$491, DW_AT_name("arg")
	.dwattr $C$DW$491, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$491, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$120

$C$DW$T$415	.dwtag  DW_TAG_typedef, DW_AT_name("HWI_Attrs")
	.dwattr $C$DW$T$415, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$T$415, DW_AT_language(DW_LANG_C)

$C$DW$T$121	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$121, DW_AT_name("SWI_DataObj")
	.dwattr $C$DW$T$121, DW_AT_byte_size(0x24)
$C$DW$492	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$492, DW_AT_name("runfxn")
	.dwattr $C$DW$492, DW_AT_TI_symbol_name("_runfxn")
	.dwattr $C$DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$492, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$493	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$493, DW_AT_name("execfxn")
	.dwattr $C$DW$493, DW_AT_TI_symbol_name("_execfxn")
	.dwattr $C$DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$493, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$494	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$494, DW_AT_name("curmask")
	.dwattr $C$DW$494, DW_AT_TI_symbol_name("_curmask")
	.dwattr $C$DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$495	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$495, DW_AT_name("curset")
	.dwattr $C$DW$495, DW_AT_TI_symbol_name("_curset")
	.dwattr $C$DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$496	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$496, DW_AT_name("lock")
	.dwattr $C$DW$496, DW_AT_TI_symbol_name("_lock")
	.dwattr $C$DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$497	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$497, DW_AT_name("curmbox")
	.dwattr $C$DW$497, DW_AT_TI_symbol_name("_curmbox")
	.dwattr $C$DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$497, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$498	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$498, DW_AT_name("curfxn")
	.dwattr $C$DW$498, DW_AT_TI_symbol_name("_curfxn")
	.dwattr $C$DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$498, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$499	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$499, DW_AT_name("rdybeg")
	.dwattr $C$DW$499, DW_AT_TI_symbol_name("_rdybeg")
	.dwattr $C$DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$499, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$500	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$500, DW_AT_name("inswi")
	.dwattr $C$DW$500, DW_AT_TI_symbol_name("_inswi")
	.dwattr $C$DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$500, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$121

$C$DW$T$416	.dwtag  DW_TAG_typedef, DW_AT_name("SWI_DataObj")
	.dwattr $C$DW$T$416, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$T$416, DW_AT_language(DW_LANG_C)

$C$DW$T$125	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$125, DW_AT_name("SWI_Obj")
	.dwattr $C$DW$T$125, DW_AT_byte_size(0x2c)
$C$DW$501	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$501, DW_AT_name("lock")
	.dwattr $C$DW$501, DW_AT_TI_symbol_name("_lock")
	.dwattr $C$DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$501, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$502	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$502, DW_AT_name("ready")
	.dwattr $C$DW$502, DW_AT_TI_symbol_name("_ready")
	.dwattr $C$DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$503	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$503, DW_AT_name("mask")
	.dwattr $C$DW$503, DW_AT_TI_symbol_name("_mask")
	.dwattr $C$DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$503, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$504	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$504, DW_AT_name("link")
	.dwattr $C$DW$504, DW_AT_TI_symbol_name("_link")
	.dwattr $C$DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$504, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$505	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$505, DW_AT_name("initkey")
	.dwattr $C$DW$505, DW_AT_TI_symbol_name("_initkey")
	.dwattr $C$DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$505, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$506	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$506, DW_AT_name("mailbox")
	.dwattr $C$DW$506, DW_AT_TI_symbol_name("_mailbox")
	.dwattr $C$DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$507	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$507, DW_AT_name("fxnobj")
	.dwattr $C$DW$507, DW_AT_TI_symbol_name("_fxnobj")
	.dwattr $C$DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$508	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$508, DW_AT_name("stslock")
	.dwattr $C$DW$508, DW_AT_TI_symbol_name("_stslock")
	.dwattr $C$DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$509	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$509, DW_AT_name("sts")
	.dwattr $C$DW$509, DW_AT_TI_symbol_name("_sts")
	.dwattr $C$DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$125

$C$DW$T$417	.dwtag  DW_TAG_typedef, DW_AT_name("SWI_Obj")
	.dwattr $C$DW$T$417, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$T$417, DW_AT_language(DW_LANG_C)
$C$DW$T$418	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$T$418, DW_AT_address_class(0x20)
$C$DW$T$419	.dwtag  DW_TAG_typedef, DW_AT_name("SWI_Handle")
	.dwattr $C$DW$T$419, DW_AT_type(*$C$DW$T$418)
	.dwattr $C$DW$T$419, DW_AT_language(DW_LANG_C)

$C$DW$T$129	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$129, DW_AT_name("SWI_Attrs")
	.dwattr $C$DW$T$129, DW_AT_byte_size(0x14)
$C$DW$510	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$510, DW_AT_name("fxn")
	.dwattr $C$DW$510, DW_AT_TI_symbol_name("_fxn")
	.dwattr $C$DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$511	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$511, DW_AT_name("arg0")
	.dwattr $C$DW$511, DW_AT_TI_symbol_name("_arg0")
	.dwattr $C$DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$512	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$512, DW_AT_name("arg1")
	.dwattr $C$DW$512, DW_AT_TI_symbol_name("_arg1")
	.dwattr $C$DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$512, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$513	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$513, DW_AT_name("priority")
	.dwattr $C$DW$513, DW_AT_TI_symbol_name("_priority")
	.dwattr $C$DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$514	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$514, DW_AT_name("mailbox")
	.dwattr $C$DW$514, DW_AT_TI_symbol_name("_mailbox")
	.dwattr $C$DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$129

$C$DW$T$420	.dwtag  DW_TAG_typedef, DW_AT_name("SWI_Attrs")
	.dwattr $C$DW$T$420, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$T$420, DW_AT_language(DW_LANG_C)

$C$DW$T$130	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$130, DW_AT_name("SYS_Config")
	.dwattr $C$DW$T$130, DW_AT_byte_size(0x10)
$C$DW$515	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$515, DW_AT_name("ABORTFXN")
	.dwattr $C$DW$515, DW_AT_TI_symbol_name("_ABORTFXN")
	.dwattr $C$DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$516	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$516, DW_AT_name("ERRORFXN")
	.dwattr $C$DW$516, DW_AT_TI_symbol_name("_ERRORFXN")
	.dwattr $C$DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$516, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$517	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$517, DW_AT_name("EXITFXN")
	.dwattr $C$DW$517, DW_AT_TI_symbol_name("_EXITFXN")
	.dwattr $C$DW$517, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$517, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$518	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$518, DW_AT_name("PUTCFXN")
	.dwattr $C$DW$518, DW_AT_TI_symbol_name("_PUTCFXN")
	.dwattr $C$DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$518, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$130

$C$DW$T$421	.dwtag  DW_TAG_typedef, DW_AT_name("SYS_Config")
	.dwattr $C$DW$T$421, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$T$421, DW_AT_language(DW_LANG_C)

$C$DW$T$131	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$131, DW_AT_name("MEM_Attrs")
	.dwattr $C$DW$T$131, DW_AT_byte_size(0x04)
$C$DW$519	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$519, DW_AT_name("space")
	.dwattr $C$DW$519, DW_AT_TI_symbol_name("_space")
	.dwattr $C$DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$519, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$131

$C$DW$T$422	.dwtag  DW_TAG_typedef, DW_AT_name("MEM_Attrs")
	.dwattr $C$DW$T$422, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$T$422, DW_AT_language(DW_LANG_C)

$C$DW$T$132	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$132, DW_AT_name("MEM_Config")
	.dwattr $C$DW$T$132, DW_AT_byte_size(0x04)
$C$DW$520	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$520, DW_AT_name("MALLOCSEG")
	.dwattr $C$DW$520, DW_AT_TI_symbol_name("_MALLOCSEG")
	.dwattr $C$DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$520, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$132

$C$DW$T$423	.dwtag  DW_TAG_typedef, DW_AT_name("MEM_Config")
	.dwattr $C$DW$T$423, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$T$423, DW_AT_language(DW_LANG_C)

$C$DW$T$134	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$134, DW_AT_name("MEM_Segment")
	.dwattr $C$DW$T$134, DW_AT_byte_size(0x0c)
$C$DW$521	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$521, DW_AT_name("base")
	.dwattr $C$DW$521, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$521, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$522	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$522, DW_AT_name("length")
	.dwattr $C$DW$522, DW_AT_TI_symbol_name("_length")
	.dwattr $C$DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$522, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$523	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$523, DW_AT_name("space")
	.dwattr $C$DW$523, DW_AT_TI_symbol_name("_space")
	.dwattr $C$DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$523, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$134

$C$DW$T$424	.dwtag  DW_TAG_typedef, DW_AT_name("MEM_Segment")
	.dwattr $C$DW$T$424, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$T$424, DW_AT_language(DW_LANG_C)

$C$DW$T$135	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$135, DW_AT_name("MEM_Stat")
	.dwattr $C$DW$T$135, DW_AT_byte_size(0x10)
$C$DW$524	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$524, DW_AT_name("size")
	.dwattr $C$DW$524, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$524, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$525	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$525, DW_AT_name("used")
	.dwattr $C$DW$525, DW_AT_TI_symbol_name("_used")
	.dwattr $C$DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$525, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$526	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$526, DW_AT_name("length")
	.dwattr $C$DW$526, DW_AT_TI_symbol_name("_length")
	.dwattr $C$DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$526, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$527	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$527, DW_AT_name("space")
	.dwattr $C$DW$527, DW_AT_TI_symbol_name("_space")
	.dwattr $C$DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$527, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$135

$C$DW$T$425	.dwtag  DW_TAG_typedef, DW_AT_name("MEM_Stat")
	.dwattr $C$DW$T$425, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$T$425, DW_AT_language(DW_LANG_C)

$C$DW$T$137	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$137, DW_AT_name("MEM_Header")
	.dwattr $C$DW$T$137, DW_AT_byte_size(0x08)
$C$DW$528	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$528, DW_AT_name("next")
	.dwattr $C$DW$528, DW_AT_TI_symbol_name("_next")
	.dwattr $C$DW$528, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$528, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$529	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$529, DW_AT_name("size")
	.dwattr $C$DW$529, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$529, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$529, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$137

$C$DW$T$136	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$T$136, DW_AT_address_class(0x20)
$C$DW$T$426	.dwtag  DW_TAG_typedef, DW_AT_name("MEM_Header")
	.dwattr $C$DW$T$426, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$T$426, DW_AT_language(DW_LANG_C)

$C$DW$T$138	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$138, DW_AT_name("QUE_Attrs")
	.dwattr $C$DW$T$138, DW_AT_byte_size(0x04)
$C$DW$530	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$530, DW_AT_name("dummy")
	.dwattr $C$DW$530, DW_AT_TI_symbol_name("_dummy")
	.dwattr $C$DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$530, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$138

$C$DW$T$427	.dwtag  DW_TAG_typedef, DW_AT_name("QUE_Attrs")
	.dwattr $C$DW$T$427, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$T$427, DW_AT_language(DW_LANG_C)

$C$DW$T$140	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$140, DW_AT_name("KNL_Obj")
	.dwattr $C$DW$T$140, DW_AT_byte_size(0x38)
$C$DW$531	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$531, DW_AT_name("ready")
	.dwattr $C$DW$531, DW_AT_TI_symbol_name("_ready")
	.dwattr $C$DW$531, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$531, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$532	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$532, DW_AT_name("alarm")
	.dwattr $C$DW$532, DW_AT_TI_symbol_name("_alarm")
	.dwattr $C$DW$532, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$532, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$533	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$533, DW_AT_name("setpri")
	.dwattr $C$DW$533, DW_AT_TI_symbol_name("_setpri")
	.dwattr $C$DW$533, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$533, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$534	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$534, DW_AT_name("queue")
	.dwattr $C$DW$534, DW_AT_TI_symbol_name("_queue")
	.dwattr $C$DW$534, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$534, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$535	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$535, DW_AT_name("priority")
	.dwattr $C$DW$535, DW_AT_TI_symbol_name("_priority")
	.dwattr $C$DW$535, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$535, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$536	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$536, DW_AT_name("mask")
	.dwattr $C$DW$536, DW_AT_TI_symbol_name("_mask")
	.dwattr $C$DW$536, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$536, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$537	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$537, DW_AT_name("sp")
	.dwattr $C$DW$537, DW_AT_TI_symbol_name("_sp")
	.dwattr $C$DW$537, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$537, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$538	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$538, DW_AT_name("timeout")
	.dwattr $C$DW$538, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$538, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$538, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$539	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$539, DW_AT_name("mode")
	.dwattr $C$DW$539, DW_AT_TI_symbol_name("_mode")
	.dwattr $C$DW$539, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$539, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$540	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$540, DW_AT_name("sts")
	.dwattr $C$DW$540, DW_AT_TI_symbol_name("_sts")
	.dwattr $C$DW$540, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$540, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$541	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$541, DW_AT_name("signalled")
	.dwattr $C$DW$541, DW_AT_TI_symbol_name("_signalled")
	.dwattr $C$DW$541, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$541, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$140

$C$DW$T$149	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_Obj")
	.dwattr $C$DW$T$149, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$149, DW_AT_language(DW_LANG_C)
$C$DW$T$428	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$428, DW_AT_address_class(0x20)
$C$DW$T$429	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_Handle")
	.dwattr $C$DW$T$429, DW_AT_type(*$C$DW$T$428)
	.dwattr $C$DW$T$429, DW_AT_language(DW_LANG_C)

$C$DW$T$141	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$141, DW_AT_name("KNL_AObj")
	.dwattr $C$DW$T$141, DW_AT_byte_size(0x30)
$C$DW$542	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$542, DW_AT_name("alarm")
	.dwattr $C$DW$542, DW_AT_TI_symbol_name("_alarm")
	.dwattr $C$DW$542, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$542, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$543	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$543, DW_AT_name("setpri")
	.dwattr $C$DW$543, DW_AT_TI_symbol_name("_setpri")
	.dwattr $C$DW$543, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$543, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$544	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$544, DW_AT_name("queue")
	.dwattr $C$DW$544, DW_AT_TI_symbol_name("_queue")
	.dwattr $C$DW$544, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$544, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$545	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$545, DW_AT_name("priority")
	.dwattr $C$DW$545, DW_AT_TI_symbol_name("_priority")
	.dwattr $C$DW$545, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$545, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$546	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$546, DW_AT_name("mask")
	.dwattr $C$DW$546, DW_AT_TI_symbol_name("_mask")
	.dwattr $C$DW$546, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$546, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$547	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$547, DW_AT_name("sp")
	.dwattr $C$DW$547, DW_AT_TI_symbol_name("_sp")
	.dwattr $C$DW$547, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$547, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$548	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$548, DW_AT_name("timeout")
	.dwattr $C$DW$548, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$548, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$548, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$549	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$549, DW_AT_name("mode")
	.dwattr $C$DW$549, DW_AT_TI_symbol_name("_mode")
	.dwattr $C$DW$549, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$549, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$550	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$550, DW_AT_name("sts")
	.dwattr $C$DW$550, DW_AT_TI_symbol_name("_sts")
	.dwattr $C$DW$550, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$550, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$551	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$551, DW_AT_name("signalled")
	.dwattr $C$DW$551, DW_AT_TI_symbol_name("_signalled")
	.dwattr $C$DW$551, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$551, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$141

$C$DW$T$430	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_AObj")
	.dwattr $C$DW$T$430, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$430, DW_AT_language(DW_LANG_C)

$C$DW$T$142	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$142, DW_AT_name("OBJ_Header")
	.dwattr $C$DW$T$142, DW_AT_byte_size(0x0c)
$C$DW$552	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$552, DW_AT_name("link")
	.dwattr $C$DW$552, DW_AT_TI_symbol_name("_link")
	.dwattr $C$DW$552, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$552, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$553	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$553, DW_AT_name("type")
	.dwattr $C$DW$553, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$553, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$553, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$142

$C$DW$T$431	.dwtag  DW_TAG_typedef, DW_AT_name("OBJ_Header")
	.dwattr $C$DW$T$431, DW_AT_type(*$C$DW$T$142)
	.dwattr $C$DW$T$431, DW_AT_language(DW_LANG_C)

$C$DW$T$143	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$143, DW_AT_name("SEM_Attrs")
	.dwattr $C$DW$T$143, DW_AT_byte_size(0x08)
$C$DW$554	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$554, DW_AT_name("type")
	.dwattr $C$DW$554, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$554, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$554, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$555	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$555, DW_AT_name("name")
	.dwattr $C$DW$555, DW_AT_TI_symbol_name("_name")
	.dwattr $C$DW$555, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$555, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$143

$C$DW$T$432	.dwtag  DW_TAG_typedef, DW_AT_name("SEM_Attrs")
	.dwattr $C$DW$T$432, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$T$432, DW_AT_language(DW_LANG_C)

$C$DW$T$144	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$144, DW_AT_name("DEV_Device")
	.dwattr $C$DW$T$144, DW_AT_byte_size(0x18)
$C$DW$556	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$556, DW_AT_name("name")
	.dwattr $C$DW$556, DW_AT_TI_symbol_name("_name")
	.dwattr $C$DW$556, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$556, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$557	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$557, DW_AT_name("fxns")
	.dwattr $C$DW$557, DW_AT_TI_symbol_name("_fxns")
	.dwattr $C$DW$557, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$557, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$558	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$558, DW_AT_name("devid")
	.dwattr $C$DW$558, DW_AT_TI_symbol_name("_devid")
	.dwattr $C$DW$558, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$558, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$559	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$559, DW_AT_name("params")
	.dwattr $C$DW$559, DW_AT_TI_symbol_name("_params")
	.dwattr $C$DW$559, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$559, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$560	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$560, DW_AT_name("type")
	.dwattr $C$DW$560, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$560, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$560, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$561	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$561, DW_AT_name("devp")
	.dwattr $C$DW$561, DW_AT_TI_symbol_name("_devp")
	.dwattr $C$DW$561, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$561, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$144

$C$DW$T$433	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Device")
	.dwattr $C$DW$T$433, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$T$433, DW_AT_language(DW_LANG_C)

$C$DW$T$145	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$145, DW_AT_name("DEV_Attrs")
	.dwattr $C$DW$T$145, DW_AT_byte_size(0x10)
$C$DW$562	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$562, DW_AT_name("devid")
	.dwattr $C$DW$562, DW_AT_TI_symbol_name("_devid")
	.dwattr $C$DW$562, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$562, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$563	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$563, DW_AT_name("params")
	.dwattr $C$DW$563, DW_AT_TI_symbol_name("_params")
	.dwattr $C$DW$563, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$563, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$564	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$564, DW_AT_name("type")
	.dwattr $C$DW$564, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$564, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$564, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$565	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$565, DW_AT_name("devp")
	.dwattr $C$DW$565, DW_AT_TI_symbol_name("_devp")
	.dwattr $C$DW$565, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$565, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$145

$C$DW$T$434	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Attrs")
	.dwattr $C$DW$T$434, DW_AT_type(*$C$DW$T$145)
	.dwattr $C$DW$T$434, DW_AT_language(DW_LANG_C)

$C$DW$T$146	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$146, DW_AT_name("PRD_Obj")
	.dwattr $C$DW$T$146, DW_AT_byte_size(0x20)
$C$DW$566	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$566, DW_AT_name("status")
	.dwattr $C$DW$566, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$566, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$566, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$567	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$567, DW_AT_name("kount")
	.dwattr $C$DW$567, DW_AT_TI_symbol_name("_kount")
	.dwattr $C$DW$567, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$567, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$568	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$568, DW_AT_name("period")
	.dwattr $C$DW$568, DW_AT_TI_symbol_name("_period")
	.dwattr $C$DW$568, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$568, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$569	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$569, DW_AT_name("nticks")
	.dwattr $C$DW$569, DW_AT_TI_symbol_name("_nticks")
	.dwattr $C$DW$569, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$569, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$570	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$570, DW_AT_name("fxnobj")
	.dwattr $C$DW$570, DW_AT_TI_symbol_name("_fxnobj")
	.dwattr $C$DW$570, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$570, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$571	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$571, DW_AT_name("sts")
	.dwattr $C$DW$571, DW_AT_TI_symbol_name("_sts")
	.dwattr $C$DW$571, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$571, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$146

$C$DW$T$435	.dwtag  DW_TAG_typedef, DW_AT_name("PRD_Obj")
	.dwattr $C$DW$T$435, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$T$435, DW_AT_language(DW_LANG_C)
$C$DW$T$436	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$T$436, DW_AT_address_class(0x20)
$C$DW$T$437	.dwtag  DW_TAG_typedef, DW_AT_name("PRD_Handle")
	.dwattr $C$DW$T$437, DW_AT_type(*$C$DW$T$436)
	.dwattr $C$DW$T$437, DW_AT_language(DW_LANG_C)

$C$DW$T$147	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$147, DW_AT_name("TSK_Config")
	.dwattr $C$DW$T$147, DW_AT_byte_size(0x20)
$C$DW$572	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$572, DW_AT_name("STACKSEG")
	.dwattr $C$DW$572, DW_AT_TI_symbol_name("_STACKSEG")
	.dwattr $C$DW$572, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$572, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$573	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$573, DW_AT_name("PRIORITY")
	.dwattr $C$DW$573, DW_AT_TI_symbol_name("_PRIORITY")
	.dwattr $C$DW$573, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$573, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$574	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$574, DW_AT_name("STACKSIZE")
	.dwattr $C$DW$574, DW_AT_TI_symbol_name("_STACKSIZE")
	.dwattr $C$DW$574, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$574, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$575	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$575, DW_AT_name("CREATEFXN")
	.dwattr $C$DW$575, DW_AT_TI_symbol_name("_CREATEFXN")
	.dwattr $C$DW$575, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$575, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$576	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$576, DW_AT_name("DELETEFXN")
	.dwattr $C$DW$576, DW_AT_TI_symbol_name("_DELETEFXN")
	.dwattr $C$DW$576, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$576, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$577	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$577, DW_AT_name("EXITFXN")
	.dwattr $C$DW$577, DW_AT_TI_symbol_name("_EXITFXN")
	.dwattr $C$DW$577, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$577, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$578	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$578, DW_AT_name("SWITCHFXN")
	.dwattr $C$DW$578, DW_AT_TI_symbol_name("_SWITCHFXN")
	.dwattr $C$DW$578, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$578, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$579	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$579, DW_AT_name("READYFXN")
	.dwattr $C$DW$579, DW_AT_TI_symbol_name("_READYFXN")
	.dwattr $C$DW$579, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$579, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$147

$C$DW$T$438	.dwtag  DW_TAG_typedef, DW_AT_name("TSK_Config")
	.dwattr $C$DW$T$438, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$T$438, DW_AT_language(DW_LANG_C)

$C$DW$T$148	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$148, DW_AT_name("TSK_Attrs")
	.dwattr $C$DW$T$148, DW_AT_byte_size(0x1c)
$C$DW$580	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$580, DW_AT_name("priority")
	.dwattr $C$DW$580, DW_AT_TI_symbol_name("_priority")
	.dwattr $C$DW$580, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$580, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$581	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$581, DW_AT_name("stack")
	.dwattr $C$DW$581, DW_AT_TI_symbol_name("_stack")
	.dwattr $C$DW$581, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$581, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$582	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$582, DW_AT_name("stacksize")
	.dwattr $C$DW$582, DW_AT_TI_symbol_name("_stacksize")
	.dwattr $C$DW$582, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$582, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$583	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$583, DW_AT_name("stackseg")
	.dwattr $C$DW$583, DW_AT_TI_symbol_name("_stackseg")
	.dwattr $C$DW$583, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$583, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$584	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$584, DW_AT_name("environ")
	.dwattr $C$DW$584, DW_AT_TI_symbol_name("_environ")
	.dwattr $C$DW$584, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$584, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$585	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$585, DW_AT_name("name")
	.dwattr $C$DW$585, DW_AT_TI_symbol_name("_name")
	.dwattr $C$DW$585, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$585, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$586	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$586, DW_AT_name("exitflag")
	.dwattr $C$DW$586, DW_AT_TI_symbol_name("_exitflag")
	.dwattr $C$DW$586, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$586, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$587	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$587, DW_AT_name("initstackflag")
	.dwattr $C$DW$587, DW_AT_TI_symbol_name("_initstackflag")
	.dwattr $C$DW$587, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$587, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$148

$C$DW$T$151	.dwtag  DW_TAG_typedef, DW_AT_name("TSK_Attrs")
	.dwattr $C$DW$T$151, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$T$151, DW_AT_language(DW_LANG_C)

$C$DW$T$150	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$150, DW_AT_name("TSK_Obj")
	.dwattr $C$DW$T$150, DW_AT_byte_size(0x54)
$C$DW$588	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$149)
	.dwattr $C$DW$588, DW_AT_name("kobj")
	.dwattr $C$DW$588, DW_AT_TI_symbol_name("_kobj")
	.dwattr $C$DW$588, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$588, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$589	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$589, DW_AT_name("stack")
	.dwattr $C$DW$589, DW_AT_TI_symbol_name("_stack")
	.dwattr $C$DW$589, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$589, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$590	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$590, DW_AT_name("stacksize")
	.dwattr $C$DW$590, DW_AT_TI_symbol_name("_stacksize")
	.dwattr $C$DW$590, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr $C$DW$590, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$591	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$591, DW_AT_name("stackseg")
	.dwattr $C$DW$591, DW_AT_TI_symbol_name("_stackseg")
	.dwattr $C$DW$591, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$591, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$592	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$592, DW_AT_name("name")
	.dwattr $C$DW$592, DW_AT_TI_symbol_name("_name")
	.dwattr $C$DW$592, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$592, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$593	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$593, DW_AT_name("environ")
	.dwattr $C$DW$593, DW_AT_TI_symbol_name("_environ")
	.dwattr $C$DW$593, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$593, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$594	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$594, DW_AT_name("errno")
	.dwattr $C$DW$594, DW_AT_TI_symbol_name("_errno")
	.dwattr $C$DW$594, DW_AT_data_member_location[DW_OP_plus_uconst 0x4c]
	.dwattr $C$DW$594, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$595	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$595, DW_AT_name("exitflag")
	.dwattr $C$DW$595, DW_AT_TI_symbol_name("_exitflag")
	.dwattr $C$DW$595, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr $C$DW$595, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$150

$C$DW$T$439	.dwtag  DW_TAG_typedef, DW_AT_name("TSK_Obj")
	.dwattr $C$DW$T$439, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$T$439, DW_AT_language(DW_LANG_C)
$C$DW$T$440	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$T$440, DW_AT_address_class(0x20)
$C$DW$T$441	.dwtag  DW_TAG_typedef, DW_AT_name("TSK_Handle")
	.dwattr $C$DW$T$441, DW_AT_type(*$C$DW$T$440)
	.dwattr $C$DW$T$441, DW_AT_language(DW_LANG_C)

$C$DW$T$153	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$153, DW_AT_name("TSK_Stat")
	.dwattr $C$DW$T$153, DW_AT_byte_size(0x28)
$C$DW$596	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$596, DW_AT_name("attrs")
	.dwattr $C$DW$596, DW_AT_TI_symbol_name("_attrs")
	.dwattr $C$DW$596, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$596, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$597	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$152)
	.dwattr $C$DW$597, DW_AT_name("mode")
	.dwattr $C$DW$597, DW_AT_TI_symbol_name("_mode")
	.dwattr $C$DW$597, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$597, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$598	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$598, DW_AT_name("sp")
	.dwattr $C$DW$598, DW_AT_TI_symbol_name("_sp")
	.dwattr $C$DW$598, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$598, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$599	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$599, DW_AT_name("used")
	.dwattr $C$DW$599, DW_AT_TI_symbol_name("_used")
	.dwattr $C$DW$599, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$599, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$153

$C$DW$T$442	.dwtag  DW_TAG_typedef, DW_AT_name("TSK_Stat")
	.dwattr $C$DW$T$442, DW_AT_type(*$C$DW$T$153)
	.dwattr $C$DW$T$442, DW_AT_language(DW_LANG_C)

$C$DW$T$158	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$158, DW_AT_name("MSGQ_Obj")
	.dwattr $C$DW$T$158, DW_AT_byte_size(0x1c)
$C$DW$600	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$600, DW_AT_name("name")
	.dwattr $C$DW$600, DW_AT_TI_symbol_name("_name")
	.dwattr $C$DW$600, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$600, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$601	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$601, DW_AT_name("queue")
	.dwattr $C$DW$601, DW_AT_TI_symbol_name("_queue")
	.dwattr $C$DW$601, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$601, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$602	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$602, DW_AT_name("notifyHandle")
	.dwattr $C$DW$602, DW_AT_TI_symbol_name("_notifyHandle")
	.dwattr $C$DW$602, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$602, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$603	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$156)
	.dwattr $C$DW$603, DW_AT_name("pend")
	.dwattr $C$DW$603, DW_AT_TI_symbol_name("_pend")
	.dwattr $C$DW$603, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$603, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$604	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$157)
	.dwattr $C$DW$604, DW_AT_name("post")
	.dwattr $C$DW$604, DW_AT_TI_symbol_name("_post")
	.dwattr $C$DW$604, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$604, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$605	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$605, DW_AT_name("status")
	.dwattr $C$DW$605, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$605, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$605, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$158

$C$DW$T$192	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_Obj")
	.dwattr $C$DW$T$192, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$T$192, DW_AT_language(DW_LANG_C)
$C$DW$T$193	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$192)
	.dwattr $C$DW$T$193, DW_AT_address_class(0x20)
$C$DW$T$443	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$T$443, DW_AT_address_class(0x20)
$C$DW$T$444	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_Handle")
	.dwattr $C$DW$T$444, DW_AT_type(*$C$DW$T$443)
	.dwattr $C$DW$T$444, DW_AT_language(DW_LANG_C)

$C$DW$T$159	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$159, DW_AT_name("MSGQ_Attrs")
	.dwattr $C$DW$T$159, DW_AT_byte_size(0x0c)
$C$DW$606	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$606, DW_AT_name("notifyHandle")
	.dwattr $C$DW$606, DW_AT_TI_symbol_name("_notifyHandle")
	.dwattr $C$DW$606, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$606, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$607	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$156)
	.dwattr $C$DW$607, DW_AT_name("pend")
	.dwattr $C$DW$607, DW_AT_TI_symbol_name("_pend")
	.dwattr $C$DW$607, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$607, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$608	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$157)
	.dwattr $C$DW$608, DW_AT_name("post")
	.dwattr $C$DW$608, DW_AT_TI_symbol_name("_post")
	.dwattr $C$DW$608, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$608, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$159

$C$DW$T$445	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_Attrs")
	.dwattr $C$DW$T$445, DW_AT_type(*$C$DW$T$159)
	.dwattr $C$DW$T$445, DW_AT_language(DW_LANG_C)

$C$DW$T$160	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$160, DW_AT_name("MSGQ_LocateAttrs")
	.dwattr $C$DW$T$160, DW_AT_byte_size(0x04)
$C$DW$609	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$609, DW_AT_name("timeout")
	.dwattr $C$DW$609, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$609, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$609, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$160

$C$DW$T$446	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_LocateAttrs")
	.dwattr $C$DW$T$446, DW_AT_type(*$C$DW$T$160)
	.dwattr $C$DW$T$446, DW_AT_language(DW_LANG_C)

$C$DW$T$161	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$161, DW_AT_name("MSGQ_LocateAsyncAttrs")
	.dwattr $C$DW$T$161, DW_AT_byte_size(0x08)
$C$DW$610	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$610, DW_AT_name("poolId")
	.dwattr $C$DW$610, DW_AT_TI_symbol_name("_poolId")
	.dwattr $C$DW$610, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$610, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$611	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$611, DW_AT_name("arg")
	.dwattr $C$DW$611, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$611, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$611, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$161

$C$DW$T$447	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_LocateAsyncAttrs")
	.dwattr $C$DW$T$447, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$T$447, DW_AT_language(DW_LANG_C)

$C$DW$T$163	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$163, DW_AT_name("MSGQ_MsgHeader")
	.dwattr $C$DW$T$163, DW_AT_byte_size(0x14)
$C$DW$612	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$162)
	.dwattr $C$DW$612, DW_AT_name("reserved")
	.dwattr $C$DW$612, DW_AT_TI_symbol_name("_reserved")
	.dwattr $C$DW$612, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$612, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$613	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$613, DW_AT_name("srcProcId")
	.dwattr $C$DW$613, DW_AT_TI_symbol_name("_srcProcId")
	.dwattr $C$DW$613, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$613, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$614	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$614, DW_AT_name("poolId")
	.dwattr $C$DW$614, DW_AT_TI_symbol_name("_poolId")
	.dwattr $C$DW$614, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$614, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$615	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$615, DW_AT_name("size")
	.dwattr $C$DW$615, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$615, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$615, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$616	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$616, DW_AT_name("dstId")
	.dwattr $C$DW$616, DW_AT_TI_symbol_name("_dstId")
	.dwattr $C$DW$616, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$616, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$617	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$617, DW_AT_name("srcId")
	.dwattr $C$DW$617, DW_AT_TI_symbol_name("_srcId")
	.dwattr $C$DW$617, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$617, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$618	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$618, DW_AT_name("msgId")
	.dwattr $C$DW$618, DW_AT_TI_symbol_name("_msgId")
	.dwattr $C$DW$618, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$618, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$163

$C$DW$T$164	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_MsgHeader")
	.dwattr $C$DW$T$164, DW_AT_type(*$C$DW$T$163)
	.dwattr $C$DW$T$164, DW_AT_language(DW_LANG_C)
$C$DW$T$182	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$163)
	.dwattr $C$DW$T$182, DW_AT_address_class(0x20)
$C$DW$T$183	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_Msg")
	.dwattr $C$DW$T$183, DW_AT_type(*$C$DW$T$182)
	.dwattr $C$DW$T$183, DW_AT_language(DW_LANG_C)

$C$DW$T$166	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$166, DW_AT_name("MSGQ_AsyncLocateMsg")
	.dwattr $C$DW$T$166, DW_AT_byte_size(0x1c)
$C$DW$619	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$164)
	.dwattr $C$DW$619, DW_AT_name("header")
	.dwattr $C$DW$619, DW_AT_TI_symbol_name("_header")
	.dwattr $C$DW$619, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$619, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$620	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$165)
	.dwattr $C$DW$620, DW_AT_name("msgqQueue")
	.dwattr $C$DW$620, DW_AT_TI_symbol_name("_msgqQueue")
	.dwattr $C$DW$620, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$620, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$621	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$621, DW_AT_name("arg")
	.dwattr $C$DW$621, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$621, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$621, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$166

$C$DW$T$448	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_AsyncLocateMsg")
	.dwattr $C$DW$T$448, DW_AT_type(*$C$DW$T$166)
	.dwattr $C$DW$T$448, DW_AT_language(DW_LANG_C)

$C$DW$T$168	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$168, DW_AT_name("MSGQ_AsyncErrorMsg")
	.dwattr $C$DW$T$168, DW_AT_byte_size(0x1c)
$C$DW$622	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$164)
	.dwattr $C$DW$622, DW_AT_name("header")
	.dwattr $C$DW$622, DW_AT_TI_symbol_name("_header")
	.dwattr $C$DW$622, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$622, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$623	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$167)
	.dwattr $C$DW$623, DW_AT_name("errorType")
	.dwattr $C$DW$623, DW_AT_TI_symbol_name("_errorType")
	.dwattr $C$DW$623, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$623, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$624	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$624, DW_AT_name("mqtId")
	.dwattr $C$DW$624, DW_AT_TI_symbol_name("_mqtId")
	.dwattr $C$DW$624, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$624, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$625	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$625, DW_AT_name("parameter")
	.dwattr $C$DW$625, DW_AT_TI_symbol_name("_parameter")
	.dwattr $C$DW$625, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$625, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$168

$C$DW$T$449	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_AsyncErrorMsg")
	.dwattr $C$DW$T$449, DW_AT_type(*$C$DW$T$168)
	.dwattr $C$DW$T$449, DW_AT_language(DW_LANG_C)

$C$DW$T$187	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$187, DW_AT_name("MSGQ_TransportFxns")
	.dwattr $C$DW$T$187, DW_AT_byte_size(0x14)
$C$DW$626	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$173)
	.dwattr $C$DW$626, DW_AT_name("open")
	.dwattr $C$DW$626, DW_AT_TI_symbol_name("_open")
	.dwattr $C$DW$626, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$626, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$627	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$174)
	.dwattr $C$DW$627, DW_AT_name("close")
	.dwattr $C$DW$627, DW_AT_TI_symbol_name("_close")
	.dwattr $C$DW$627, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$627, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$628	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$628, DW_AT_name("locate")
	.dwattr $C$DW$628, DW_AT_TI_symbol_name("_locate")
	.dwattr $C$DW$628, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$628, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$629	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$181)
	.dwattr $C$DW$629, DW_AT_name("release")
	.dwattr $C$DW$629, DW_AT_TI_symbol_name("_release")
	.dwattr $C$DW$629, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$629, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$630	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$630, DW_AT_name("put")
	.dwattr $C$DW$630, DW_AT_TI_symbol_name("_put")
	.dwattr $C$DW$630, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$630, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$187

$C$DW$T$189	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_TransportFxns")
	.dwattr $C$DW$T$189, DW_AT_type(*$C$DW$T$187)
	.dwattr $C$DW$T$189, DW_AT_language(DW_LANG_C)
$C$DW$T$190	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$189)
	.dwattr $C$DW$T$190, DW_AT_address_class(0x20)

$C$DW$T$191	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$191, DW_AT_name("MSGQ_TransportObj")
	.dwattr $C$DW$T$191, DW_AT_byte_size(0x14)
$C$DW$631	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$188)
	.dwattr $C$DW$631, DW_AT_name("initFxn")
	.dwattr $C$DW$631, DW_AT_TI_symbol_name("_initFxn")
	.dwattr $C$DW$631, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$631, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$632	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$190)
	.dwattr $C$DW$632, DW_AT_name("fxns")
	.dwattr $C$DW$632, DW_AT_TI_symbol_name("_fxns")
	.dwattr $C$DW$632, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$632, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$633	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$633, DW_AT_name("params")
	.dwattr $C$DW$633, DW_AT_TI_symbol_name("_params")
	.dwattr $C$DW$633, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$633, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$634	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$634, DW_AT_name("object")
	.dwattr $C$DW$634, DW_AT_TI_symbol_name("_object")
	.dwattr $C$DW$634, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$634, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$635	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$635, DW_AT_name("procId")
	.dwattr $C$DW$635, DW_AT_TI_symbol_name("_procId")
	.dwattr $C$DW$635, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$635, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$191

$C$DW$T$169	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$191)
	.dwattr $C$DW$T$169, DW_AT_address_class(0x20)
$C$DW$T$170	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_TransportHandle")
	.dwattr $C$DW$T$170, DW_AT_type(*$C$DW$T$169)
	.dwattr $C$DW$T$170, DW_AT_language(DW_LANG_C)
$C$DW$T$194	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_TransportObj")
	.dwattr $C$DW$T$194, DW_AT_type(*$C$DW$T$191)
	.dwattr $C$DW$T$194, DW_AT_language(DW_LANG_C)
$C$DW$T$195	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$194)
	.dwattr $C$DW$T$195, DW_AT_address_class(0x20)

$C$DW$T$196	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$196, DW_AT_name("MSGQ_Config")
	.dwattr $C$DW$T$196, DW_AT_byte_size(0x18)
$C$DW$636	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$193)
	.dwattr $C$DW$636, DW_AT_name("msgqQueues")
	.dwattr $C$DW$636, DW_AT_TI_symbol_name("_msgqQueues")
	.dwattr $C$DW$636, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$636, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$637	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$195)
	.dwattr $C$DW$637, DW_AT_name("transports")
	.dwattr $C$DW$637, DW_AT_TI_symbol_name("_transports")
	.dwattr $C$DW$637, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$637, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$638	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$638, DW_AT_name("numMsgqQueues")
	.dwattr $C$DW$638, DW_AT_TI_symbol_name("_numMsgqQueues")
	.dwattr $C$DW$638, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$638, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$639	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$639, DW_AT_name("numProcessors")
	.dwattr $C$DW$639, DW_AT_TI_symbol_name("_numProcessors")
	.dwattr $C$DW$639, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$639, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$640	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$640, DW_AT_name("startUninitialized")
	.dwattr $C$DW$640, DW_AT_TI_symbol_name("_startUninitialized")
	.dwattr $C$DW$640, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$640, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$641	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$165)
	.dwattr $C$DW$641, DW_AT_name("errorQueue")
	.dwattr $C$DW$641, DW_AT_TI_symbol_name("_errorQueue")
	.dwattr $C$DW$641, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$641, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$642	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$642, DW_AT_name("errorPoolId")
	.dwattr $C$DW$642, DW_AT_TI_symbol_name("_errorPoolId")
	.dwattr $C$DW$642, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$642, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$196

$C$DW$T$450	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_Config")
	.dwattr $C$DW$T$450, DW_AT_type(*$C$DW$T$196)
	.dwattr $C$DW$T$450, DW_AT_language(DW_LANG_C)

$C$DW$T$198	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$198, DW_AT_name("CHNL_Irp_tag")
	.dwattr $C$DW$T$198, DW_AT_byte_size(0x1c)
$C$DW$643	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$643, DW_AT_name("link")
	.dwattr $C$DW$643, DW_AT_TI_symbol_name("_link")
	.dwattr $C$DW$643, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$643, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$644	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$644, DW_AT_name("buffer")
	.dwattr $C$DW$644, DW_AT_TI_symbol_name("_buffer")
	.dwattr $C$DW$644, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$644, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$645	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$645, DW_AT_name("arg")
	.dwattr $C$DW$645, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$645, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$645, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$646	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$646, DW_AT_name("size")
	.dwattr $C$DW$646, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$646, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$646, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$647	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$647, DW_AT_name("iocStatus")
	.dwattr $C$DW$647, DW_AT_TI_symbol_name("_iocStatus")
	.dwattr $C$DW$647, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$647, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$648	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$648, DW_AT_name("chnlId")
	.dwattr $C$DW$648, DW_AT_TI_symbol_name("_chnlId")
	.dwattr $C$DW$648, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$648, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$198

$C$DW$T$451	.dwtag  DW_TAG_typedef, DW_AT_name("CHNL_Irp")
	.dwattr $C$DW$T$451, DW_AT_type(*$C$DW$T$198)
	.dwattr $C$DW$T$451, DW_AT_language(DW_LANG_C)

$C$DW$T$199	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$199, DW_AT_byte_size(0x04)
$C$DW$649	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_L1_0K"), DW_AT_const_value(0x00)
$C$DW$650	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_L1_4K"), DW_AT_const_value(0x01)
$C$DW$651	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_L1_8K"), DW_AT_const_value(0x02)
$C$DW$652	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_L1_16K"), DW_AT_const_value(0x03)
$C$DW$653	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_L1_32K"), DW_AT_const_value(0x04)
	.dwendtag $C$DW$T$199

$C$DW$T$200	.dwtag  DW_TAG_typedef, DW_AT_name("BCACHE_L1_Size")
	.dwattr $C$DW$T$200, DW_AT_type(*$C$DW$T$199)
	.dwattr $C$DW$T$200, DW_AT_language(DW_LANG_C)

$C$DW$T$201	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$201, DW_AT_byte_size(0x04)
$C$DW$654	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_L2_0K"), DW_AT_const_value(0x00)
$C$DW$655	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_L2_32K"), DW_AT_const_value(0x01)
$C$DW$656	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_L2_64K"), DW_AT_const_value(0x02)
$C$DW$657	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_L2_128K"), DW_AT_const_value(0x03)
$C$DW$658	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_L2_256K"), DW_AT_const_value(0x04)
$C$DW$659	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_L2_512K"), DW_AT_const_value(0x05)
$C$DW$660	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_L2_1024K"), DW_AT_const_value(0x06)
	.dwendtag $C$DW$T$201

$C$DW$T$202	.dwtag  DW_TAG_typedef, DW_AT_name("BCACHE_L2_Size")
	.dwattr $C$DW$T$202, DW_AT_type(*$C$DW$T$201)
	.dwattr $C$DW$T$202, DW_AT_language(DW_LANG_C)

$C$DW$T$203	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$203, DW_AT_name("BCACHE_Size")
	.dwattr $C$DW$T$203, DW_AT_byte_size(0x0c)
$C$DW$661	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$200)
	.dwattr $C$DW$661, DW_AT_name("l1psize")
	.dwattr $C$DW$661, DW_AT_TI_symbol_name("_l1psize")
	.dwattr $C$DW$661, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$661, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$662	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$200)
	.dwattr $C$DW$662, DW_AT_name("l1dsize")
	.dwattr $C$DW$662, DW_AT_TI_symbol_name("_l1dsize")
	.dwattr $C$DW$662, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$662, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$663	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$202)
	.dwattr $C$DW$663, DW_AT_name("l2size")
	.dwattr $C$DW$663, DW_AT_TI_symbol_name("_l2size")
	.dwattr $C$DW$663, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$663, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$203

$C$DW$T$452	.dwtag  DW_TAG_typedef, DW_AT_name("BCACHE_Size")
	.dwattr $C$DW$T$452, DW_AT_type(*$C$DW$T$203)
	.dwattr $C$DW$T$452, DW_AT_language(DW_LANG_C)

$C$DW$T$205	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$205, DW_AT_byte_size(0x08)
$C$DW$664	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$664, DW_AT_name("acc")
	.dwattr $C$DW$664, DW_AT_TI_symbol_name("_acc")
	.dwattr $C$DW$664, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$664, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$665	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$665, DW_AT_name("p")
	.dwattr $C$DW$665, DW_AT_TI_symbol_name("_p")
	.dwattr $C$DW$665, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$665, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$205

$C$DW$T$453	.dwtag  DW_TAG_typedef, DW_AT_name("word64")
	.dwattr $C$DW$T$453, DW_AT_type(*$C$DW$T$205)
	.dwattr $C$DW$T$453, DW_AT_language(DW_LANG_C)

$C$DW$T$454	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$454, DW_AT_byte_size(0x04)
$C$DW$666	.dwtag  DW_TAG_enumerator, DW_AT_name("CCF_INIT"), DW_AT_const_value(0x00)
$C$DW$667	.dwtag  DW_TAG_enumerator, DW_AT_name("DSP_PROCESS"), DW_AT_const_value(0x01)
$C$DW$668	.dwtag  DW_TAG_enumerator, DW_AT_name("CCF_FM_DEMOD_DECIM_INIT"), DW_AT_const_value(0x02)
$C$DW$669	.dwtag  DW_TAG_enumerator, DW_AT_name("CCF_FM_DEMOD_DEEMPH_INIT"), DW_AT_const_value(0x03)
$C$DW$670	.dwtag  DW_TAG_enumerator, DW_AT_name("CCF_FM_MOD_INIT"), DW_AT_const_value(0x04)
$C$DW$671	.dwtag  DW_TAG_enumerator, DW_AT_name("FM_MOD_INIT"), DW_AT_const_value(0x05)
	.dwendtag $C$DW$T$454


$C$DW$T$455	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$455, DW_AT_byte_size(0x04)
$C$DW$672	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_NORMAL"), DW_AT_const_value(0x00)
$C$DW$673	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_FREEZE"), DW_AT_const_value(0x01)
$C$DW$674	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_BYPASS"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$455

$C$DW$T$456	.dwtag  DW_TAG_typedef, DW_AT_name("BCACHE_Mode")
	.dwattr $C$DW$T$456, DW_AT_type(*$C$DW$T$455)
	.dwattr $C$DW$T$456, DW_AT_language(DW_LANG_C)

$C$DW$T$457	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$457, DW_AT_byte_size(0x04)
$C$DW$675	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_L1D"), DW_AT_const_value(0x00)
$C$DW$676	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_L1P"), DW_AT_const_value(0x01)
$C$DW$677	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_L2"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$457

$C$DW$T$458	.dwtag  DW_TAG_typedef, DW_AT_name("BCACHE_Level")
	.dwattr $C$DW$T$458, DW_AT_type(*$C$DW$T$457)
	.dwattr $C$DW$T$458, DW_AT_language(DW_LANG_C)

$C$DW$T$459	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$459, DW_AT_byte_size(0x04)
$C$DW$678	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_MAR_DISABLE"), DW_AT_const_value(0x00)
$C$DW$679	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_MAR_ENABLE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$459

$C$DW$T$460	.dwtag  DW_TAG_typedef, DW_AT_name("BCACHE_Mar")
	.dwattr $C$DW$T$460, DW_AT_type(*$C$DW$T$459)
	.dwattr $C$DW$T$460, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 228
	.dwcfi	cfa_register, 31
	.dwcfi	cfa_offset, 0
	.dwcfi	undefined, 0
	.dwcfi	undefined, 1
	.dwcfi	undefined, 2
	.dwcfi	undefined, 3
	.dwcfi	undefined, 4
	.dwcfi	undefined, 5
	.dwcfi	undefined, 6
	.dwcfi	undefined, 7
	.dwcfi	undefined, 8
	.dwcfi	undefined, 9
	.dwcfi	same_value, 10
	.dwcfi	same_value, 11
	.dwcfi	same_value, 12
	.dwcfi	same_value, 13
	.dwcfi	same_value, 14
	.dwcfi	same_value, 15
	.dwcfi	undefined, 16
	.dwcfi	undefined, 17
	.dwcfi	undefined, 18
	.dwcfi	undefined, 19
	.dwcfi	undefined, 20
	.dwcfi	undefined, 21
	.dwcfi	undefined, 22
	.dwcfi	undefined, 23
	.dwcfi	undefined, 24
	.dwcfi	undefined, 25
	.dwcfi	same_value, 26
	.dwcfi	same_value, 27
	.dwcfi	same_value, 28
	.dwcfi	same_value, 29
	.dwcfi	same_value, 30
	.dwcfi	same_value, 31
	.dwcfi	same_value, 32
	.dwcfi	undefined, 33
	.dwcfi	undefined, 34
	.dwcfi	undefined, 35
	.dwcfi	undefined, 36
	.dwcfi	undefined, 37
	.dwcfi	undefined, 38
	.dwcfi	undefined, 39
	.dwcfi	undefined, 40
	.dwcfi	undefined, 41
	.dwcfi	undefined, 42
	.dwcfi	undefined, 43
	.dwcfi	undefined, 44
	.dwcfi	undefined, 45
	.dwcfi	undefined, 46
	.dwcfi	undefined, 47
	.dwcfi	undefined, 48
	.dwcfi	undefined, 49
	.dwcfi	undefined, 50
	.dwcfi	undefined, 51
	.dwcfi	undefined, 52
	.dwcfi	undefined, 53
	.dwcfi	undefined, 54
	.dwcfi	undefined, 55
	.dwcfi	undefined, 56
	.dwcfi	undefined, 57
	.dwcfi	undefined, 58
	.dwcfi	undefined, 59
	.dwcfi	undefined, 60
	.dwcfi	undefined, 61
	.dwcfi	undefined, 62
	.dwcfi	undefined, 63
	.dwcfi	undefined, 64
	.dwcfi	undefined, 65
	.dwcfi	undefined, 66
	.dwcfi	undefined, 67
	.dwcfi	undefined, 68
	.dwcfi	undefined, 69
	.dwcfi	undefined, 70
	.dwcfi	undefined, 71
	.dwcfi	undefined, 72
	.dwcfi	undefined, 73
	.dwcfi	undefined, 74
	.dwcfi	undefined, 75
	.dwcfi	undefined, 76
	.dwcfi	undefined, 77
	.dwcfi	undefined, 78
	.dwcfi	undefined, 79
	.dwcfi	undefined, 80
	.dwcfi	undefined, 81
	.dwcfi	undefined, 82
	.dwcfi	undefined, 83
	.dwcfi	undefined, 84
	.dwcfi	undefined, 85
	.dwcfi	undefined, 86
	.dwcfi	undefined, 87
	.dwcfi	undefined, 88
	.dwcfi	undefined, 89
	.dwcfi	undefined, 90
	.dwcfi	undefined, 91
	.dwcfi	undefined, 92
	.dwcfi	undefined, 93
	.dwcfi	undefined, 94
	.dwcfi	undefined, 95
	.dwcfi	undefined, 96
	.dwcfi	undefined, 97
	.dwcfi	undefined, 98
	.dwcfi	undefined, 99
	.dwcfi	undefined, 100
	.dwcfi	undefined, 101
	.dwcfi	undefined, 102
	.dwcfi	undefined, 103
	.dwcfi	undefined, 104
	.dwcfi	undefined, 105
	.dwcfi	undefined, 106
	.dwcfi	undefined, 107
	.dwcfi	undefined, 108
	.dwcfi	undefined, 109
	.dwcfi	undefined, 110
	.dwcfi	undefined, 111
	.dwcfi	undefined, 112
	.dwcfi	undefined, 113
	.dwcfi	undefined, 114
	.dwcfi	undefined, 115
	.dwcfi	undefined, 116
	.dwcfi	undefined, 117
	.dwcfi	undefined, 118
	.dwcfi	undefined, 119
	.dwcfi	undefined, 120
	.dwcfi	undefined, 121
	.dwcfi	undefined, 122
	.dwcfi	undefined, 123
	.dwcfi	undefined, 124
	.dwcfi	undefined, 125
	.dwcfi	undefined, 126
	.dwcfi	undefined, 127
	.dwcfi	undefined, 128
	.dwcfi	undefined, 129
	.dwcfi	undefined, 130
	.dwcfi	undefined, 131
	.dwcfi	undefined, 132
	.dwcfi	undefined, 133
	.dwcfi	undefined, 134
	.dwcfi	undefined, 135
	.dwcfi	undefined, 136
	.dwcfi	undefined, 137
	.dwcfi	undefined, 138
	.dwcfi	undefined, 139
	.dwcfi	undefined, 140
	.dwcfi	undefined, 141
	.dwcfi	undefined, 142
	.dwcfi	undefined, 143
	.dwcfi	undefined, 144
	.dwcfi	undefined, 145
	.dwcfi	undefined, 146
	.dwcfi	undefined, 147
	.dwcfi	undefined, 148
	.dwcfi	undefined, 149
	.dwcfi	undefined, 150
	.dwcfi	undefined, 151
	.dwcfi	undefined, 152
	.dwcfi	undefined, 153
	.dwcfi	undefined, 154
	.dwcfi	undefined, 155
	.dwcfi	undefined, 156
	.dwcfi	undefined, 157
	.dwcfi	undefined, 158
	.dwcfi	undefined, 159
	.dwcfi	undefined, 160
	.dwcfi	undefined, 161
	.dwcfi	undefined, 162
	.dwcfi	undefined, 163
	.dwcfi	undefined, 164
	.dwcfi	undefined, 165
	.dwcfi	undefined, 166
	.dwcfi	undefined, 167
	.dwcfi	undefined, 168
	.dwcfi	undefined, 169
	.dwcfi	undefined, 170
	.dwcfi	undefined, 171
	.dwcfi	undefined, 172
	.dwcfi	undefined, 173
	.dwcfi	undefined, 174
	.dwcfi	undefined, 175
	.dwcfi	undefined, 176
	.dwcfi	undefined, 177
	.dwcfi	undefined, 178
	.dwcfi	undefined, 179
	.dwcfi	undefined, 180
	.dwcfi	undefined, 181
	.dwcfi	undefined, 182
	.dwcfi	undefined, 183
	.dwcfi	undefined, 184
	.dwcfi	undefined, 185
	.dwcfi	undefined, 186
	.dwcfi	undefined, 187
	.dwcfi	undefined, 188
	.dwcfi	undefined, 189
	.dwcfi	undefined, 190
	.dwcfi	undefined, 191
	.dwcfi	undefined, 192
	.dwcfi	undefined, 193
	.dwcfi	undefined, 194
	.dwcfi	undefined, 195
	.dwcfi	undefined, 196
	.dwcfi	undefined, 197
	.dwcfi	undefined, 198
	.dwcfi	undefined, 199
	.dwcfi	undefined, 200
	.dwcfi	undefined, 201
	.dwcfi	undefined, 202
	.dwcfi	undefined, 203
	.dwcfi	undefined, 204
	.dwcfi	undefined, 205
	.dwcfi	undefined, 206
	.dwcfi	undefined, 207
	.dwcfi	undefined, 208
	.dwcfi	undefined, 209
	.dwcfi	undefined, 210
	.dwcfi	undefined, 211
	.dwcfi	undefined, 212
	.dwcfi	undefined, 213
	.dwcfi	undefined, 214
	.dwcfi	undefined, 215
	.dwcfi	undefined, 216
	.dwcfi	undefined, 217
	.dwcfi	undefined, 218
	.dwcfi	undefined, 219
	.dwcfi	undefined, 220
	.dwcfi	undefined, 221
	.dwcfi	undefined, 222
	.dwcfi	undefined, 223
	.dwcfi	undefined, 224
	.dwcfi	undefined, 225
	.dwcfi	undefined, 226
	.dwcfi	undefined, 227
	.dwcfi	undefined, 228
	.dwendentry

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$680	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A0")
	.dwattr $C$DW$680, DW_AT_location[DW_OP_reg0]
$C$DW$681	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A1")
	.dwattr $C$DW$681, DW_AT_location[DW_OP_reg1]
$C$DW$682	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A2")
	.dwattr $C$DW$682, DW_AT_location[DW_OP_reg2]
$C$DW$683	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A3")
	.dwattr $C$DW$683, DW_AT_location[DW_OP_reg3]
$C$DW$684	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A4")
	.dwattr $C$DW$684, DW_AT_location[DW_OP_reg4]
$C$DW$685	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A5")
	.dwattr $C$DW$685, DW_AT_location[DW_OP_reg5]
$C$DW$686	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A6")
	.dwattr $C$DW$686, DW_AT_location[DW_OP_reg6]
$C$DW$687	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A7")
	.dwattr $C$DW$687, DW_AT_location[DW_OP_reg7]
$C$DW$688	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A8")
	.dwattr $C$DW$688, DW_AT_location[DW_OP_reg8]
$C$DW$689	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A9")
	.dwattr $C$DW$689, DW_AT_location[DW_OP_reg9]
$C$DW$690	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A10")
	.dwattr $C$DW$690, DW_AT_location[DW_OP_reg10]
$C$DW$691	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A11")
	.dwattr $C$DW$691, DW_AT_location[DW_OP_reg11]
$C$DW$692	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A12")
	.dwattr $C$DW$692, DW_AT_location[DW_OP_reg12]
$C$DW$693	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A13")
	.dwattr $C$DW$693, DW_AT_location[DW_OP_reg13]
$C$DW$694	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A14")
	.dwattr $C$DW$694, DW_AT_location[DW_OP_reg14]
$C$DW$695	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A15")
	.dwattr $C$DW$695, DW_AT_location[DW_OP_reg15]
$C$DW$696	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B0")
	.dwattr $C$DW$696, DW_AT_location[DW_OP_reg16]
$C$DW$697	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B1")
	.dwattr $C$DW$697, DW_AT_location[DW_OP_reg17]
$C$DW$698	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B2")
	.dwattr $C$DW$698, DW_AT_location[DW_OP_reg18]
$C$DW$699	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B3")
	.dwattr $C$DW$699, DW_AT_location[DW_OP_reg19]
$C$DW$700	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B4")
	.dwattr $C$DW$700, DW_AT_location[DW_OP_reg20]
$C$DW$701	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B5")
	.dwattr $C$DW$701, DW_AT_location[DW_OP_reg21]
$C$DW$702	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B6")
	.dwattr $C$DW$702, DW_AT_location[DW_OP_reg22]
$C$DW$703	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B7")
	.dwattr $C$DW$703, DW_AT_location[DW_OP_reg23]
$C$DW$704	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B8")
	.dwattr $C$DW$704, DW_AT_location[DW_OP_reg24]
$C$DW$705	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B9")
	.dwattr $C$DW$705, DW_AT_location[DW_OP_reg25]
$C$DW$706	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B10")
	.dwattr $C$DW$706, DW_AT_location[DW_OP_reg26]
$C$DW$707	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B11")
	.dwattr $C$DW$707, DW_AT_location[DW_OP_reg27]
$C$DW$708	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B12")
	.dwattr $C$DW$708, DW_AT_location[DW_OP_reg28]
$C$DW$709	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B13")
	.dwattr $C$DW$709, DW_AT_location[DW_OP_reg29]
$C$DW$710	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DP")
	.dwattr $C$DW$710, DW_AT_location[DW_OP_reg30]
$C$DW$711	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$711, DW_AT_location[DW_OP_reg31]
$C$DW$712	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$712, DW_AT_location[DW_OP_regx 0x20]
$C$DW$713	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$713, DW_AT_location[DW_OP_regx 0x21]
$C$DW$714	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IRP")
	.dwattr $C$DW$714, DW_AT_location[DW_OP_regx 0x22]
$C$DW$715	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IFR")
	.dwattr $C$DW$715, DW_AT_location[DW_OP_regx 0x23]
$C$DW$716	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("NRP")
	.dwattr $C$DW$716, DW_AT_location[DW_OP_regx 0x24]
$C$DW$717	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A16")
	.dwattr $C$DW$717, DW_AT_location[DW_OP_regx 0x25]
$C$DW$718	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A17")
	.dwattr $C$DW$718, DW_AT_location[DW_OP_regx 0x26]
$C$DW$719	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A18")
	.dwattr $C$DW$719, DW_AT_location[DW_OP_regx 0x27]
$C$DW$720	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A19")
	.dwattr $C$DW$720, DW_AT_location[DW_OP_regx 0x28]
$C$DW$721	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A20")
	.dwattr $C$DW$721, DW_AT_location[DW_OP_regx 0x29]
$C$DW$722	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A21")
	.dwattr $C$DW$722, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$723	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A22")
	.dwattr $C$DW$723, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$724	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A23")
	.dwattr $C$DW$724, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$725	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A24")
	.dwattr $C$DW$725, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$726	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A25")
	.dwattr $C$DW$726, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$727	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A26")
	.dwattr $C$DW$727, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$728	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A27")
	.dwattr $C$DW$728, DW_AT_location[DW_OP_regx 0x30]
$C$DW$729	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A28")
	.dwattr $C$DW$729, DW_AT_location[DW_OP_regx 0x31]
$C$DW$730	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A29")
	.dwattr $C$DW$730, DW_AT_location[DW_OP_regx 0x32]
$C$DW$731	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A30")
	.dwattr $C$DW$731, DW_AT_location[DW_OP_regx 0x33]
$C$DW$732	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A31")
	.dwattr $C$DW$732, DW_AT_location[DW_OP_regx 0x34]
$C$DW$733	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B16")
	.dwattr $C$DW$733, DW_AT_location[DW_OP_regx 0x35]
$C$DW$734	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B17")
	.dwattr $C$DW$734, DW_AT_location[DW_OP_regx 0x36]
$C$DW$735	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B18")
	.dwattr $C$DW$735, DW_AT_location[DW_OP_regx 0x37]
$C$DW$736	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B19")
	.dwattr $C$DW$736, DW_AT_location[DW_OP_regx 0x38]
$C$DW$737	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B20")
	.dwattr $C$DW$737, DW_AT_location[DW_OP_regx 0x39]
$C$DW$738	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B21")
	.dwattr $C$DW$738, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$739	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B22")
	.dwattr $C$DW$739, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$740	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B23")
	.dwattr $C$DW$740, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$741	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B24")
	.dwattr $C$DW$741, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$742	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B25")
	.dwattr $C$DW$742, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$743	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B26")
	.dwattr $C$DW$743, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$744	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B27")
	.dwattr $C$DW$744, DW_AT_location[DW_OP_regx 0x40]
$C$DW$745	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B28")
	.dwattr $C$DW$745, DW_AT_location[DW_OP_regx 0x41]
$C$DW$746	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B29")
	.dwattr $C$DW$746, DW_AT_location[DW_OP_regx 0x42]
$C$DW$747	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B30")
	.dwattr $C$DW$747, DW_AT_location[DW_OP_regx 0x43]
$C$DW$748	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B31")
	.dwattr $C$DW$748, DW_AT_location[DW_OP_regx 0x44]
$C$DW$749	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AMR")
	.dwattr $C$DW$749, DW_AT_location[DW_OP_regx 0x45]
$C$DW$750	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$750, DW_AT_location[DW_OP_regx 0x46]
$C$DW$751	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ISR")
	.dwattr $C$DW$751, DW_AT_location[DW_OP_regx 0x47]
$C$DW$752	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ICR")
	.dwattr $C$DW$752, DW_AT_location[DW_OP_regx 0x48]
$C$DW$753	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IER")
	.dwattr $C$DW$753, DW_AT_location[DW_OP_regx 0x49]
$C$DW$754	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ISTP")
	.dwattr $C$DW$754, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$755	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IN")
	.dwattr $C$DW$755, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$756	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("OUT")
	.dwattr $C$DW$756, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$757	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ACR")
	.dwattr $C$DW$757, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$758	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ADR")
	.dwattr $C$DW$758, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$759	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FADCR")
	.dwattr $C$DW$759, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$760	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FAUCR")
	.dwattr $C$DW$760, DW_AT_location[DW_OP_regx 0x50]
$C$DW$761	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FMCR")
	.dwattr $C$DW$761, DW_AT_location[DW_OP_regx 0x51]
$C$DW$762	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GFPGFR")
	.dwattr $C$DW$762, DW_AT_location[DW_OP_regx 0x52]
$C$DW$763	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DIER")
	.dwattr $C$DW$763, DW_AT_location[DW_OP_regx 0x53]
$C$DW$764	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REP")
	.dwattr $C$DW$764, DW_AT_location[DW_OP_regx 0x54]
$C$DW$765	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSCL")
	.dwattr $C$DW$765, DW_AT_location[DW_OP_regx 0x55]
$C$DW$766	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSCH")
	.dwattr $C$DW$766, DW_AT_location[DW_OP_regx 0x56]
$C$DW$767	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARP")
	.dwattr $C$DW$767, DW_AT_location[DW_OP_regx 0x57]
$C$DW$768	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ILC")
	.dwattr $C$DW$768, DW_AT_location[DW_OP_regx 0x58]
$C$DW$769	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RILC")
	.dwattr $C$DW$769, DW_AT_location[DW_OP_regx 0x59]
$C$DW$770	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DNUM")
	.dwattr $C$DW$770, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$771	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SSR")
	.dwattr $C$DW$771, DW_AT_location[DW_OP_regx 0x5b]
$C$DW$772	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GPLYA")
	.dwattr $C$DW$772, DW_AT_location[DW_OP_regx 0x5c]
$C$DW$773	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GPLYB")
	.dwattr $C$DW$773, DW_AT_location[DW_OP_regx 0x5d]
$C$DW$774	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSR")
	.dwattr $C$DW$774, DW_AT_location[DW_OP_regx 0x5e]
$C$DW$775	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ITSR")
	.dwattr $C$DW$775, DW_AT_location[DW_OP_regx 0x5f]
$C$DW$776	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("NTSR")
	.dwattr $C$DW$776, DW_AT_location[DW_OP_regx 0x60]
$C$DW$777	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("EFR")
	.dwattr $C$DW$777, DW_AT_location[DW_OP_regx 0x61]
$C$DW$778	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ECR")
	.dwattr $C$DW$778, DW_AT_location[DW_OP_regx 0x62]
$C$DW$779	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IERR")
	.dwattr $C$DW$779, DW_AT_location[DW_OP_regx 0x63]
$C$DW$780	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DMSG")
	.dwattr $C$DW$780, DW_AT_location[DW_OP_regx 0x64]
$C$DW$781	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CMSG")
	.dwattr $C$DW$781, DW_AT_location[DW_OP_regx 0x65]
$C$DW$782	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr $C$DW$782, DW_AT_location[DW_OP_regx 0x66]
$C$DW$783	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr $C$DW$783, DW_AT_location[DW_OP_regx 0x67]
$C$DW$784	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr $C$DW$784, DW_AT_location[DW_OP_regx 0x68]
$C$DW$785	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr $C$DW$785, DW_AT_location[DW_OP_regx 0x69]
$C$DW$786	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr $C$DW$786, DW_AT_location[DW_OP_regx 0x6a]
$C$DW$787	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr $C$DW$787, DW_AT_location[DW_OP_regx 0x6b]
$C$DW$788	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr $C$DW$788, DW_AT_location[DW_OP_regx 0x6c]
$C$DW$789	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr $C$DW$789, DW_AT_location[DW_OP_regx 0x6d]
$C$DW$790	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr $C$DW$790, DW_AT_location[DW_OP_regx 0x6e]
$C$DW$791	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr $C$DW$791, DW_AT_location[DW_OP_regx 0x6f]
$C$DW$792	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr $C$DW$792, DW_AT_location[DW_OP_regx 0x70]
$C$DW$793	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MFREG0")
	.dwattr $C$DW$793, DW_AT_location[DW_OP_regx 0x71]
$C$DW$794	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DBG_STAT")
	.dwattr $C$DW$794, DW_AT_location[DW_OP_regx 0x72]
$C$DW$795	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRK_EN")
	.dwattr $C$DW$795, DW_AT_location[DW_OP_regx 0x73]
$C$DW$796	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr $C$DW$796, DW_AT_location[DW_OP_regx 0x74]
$C$DW$797	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP0")
	.dwattr $C$DW$797, DW_AT_location[DW_OP_regx 0x75]
$C$DW$798	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP1")
	.dwattr $C$DW$798, DW_AT_location[DW_OP_regx 0x76]
$C$DW$799	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP2")
	.dwattr $C$DW$799, DW_AT_location[DW_OP_regx 0x77]
$C$DW$800	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP3")
	.dwattr $C$DW$800, DW_AT_location[DW_OP_regx 0x78]
$C$DW$801	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("OVERLAY")
	.dwattr $C$DW$801, DW_AT_location[DW_OP_regx 0x79]
$C$DW$802	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC_PROF")
	.dwattr $C$DW$802, DW_AT_location[DW_OP_regx 0x7a]
$C$DW$803	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ATSR")
	.dwattr $C$DW$803, DW_AT_location[DW_OP_regx 0x7b]
$C$DW$804	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRR")
	.dwattr $C$DW$804, DW_AT_location[DW_OP_regx 0x7c]
$C$DW$805	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TCRR")
	.dwattr $C$DW$805, DW_AT_location[DW_OP_regx 0x7d]
$C$DW$806	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DESR")
	.dwattr $C$DW$806, DW_AT_location[DW_OP_regx 0x7e]
$C$DW$807	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DETR")
	.dwattr $C$DW$807, DW_AT_location[DW_OP_regx 0x7f]
$C$DW$808	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$808, DW_AT_location[DW_OP_regx 0xe4]
	.dwendtag $C$DW$CU

