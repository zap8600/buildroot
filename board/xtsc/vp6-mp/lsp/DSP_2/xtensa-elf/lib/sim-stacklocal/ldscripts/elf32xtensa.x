/* This linker script generated from xt-genldscripts.tpp for LSP /home/rajivr/wsp/rajiv1/OpenCL/LSP_build/sys-x86_64-linux/subsys.xtsys/package/cores/DSP_2/xtensa-elf/lib/sim-stacklocal */
/* Linker Script for default link */
MEMORY
{
  dram1_0_seg :                       	org = 0xCFF80000, len = 0x40000
  dram0_0_seg :                       	org = 0xCFFC0000, len = 0x40000
  iram0_0_seg :                       	org = 0xD0000000, len = 0x8000
  sysrom0_seg :                       	org = 0xD06E6668, len = 0x333334
  sysram0_seg :                       	org = 0xE0000000, len = 0x300
  sysram1_seg :                       	org = 0xE66668C4, len = 0x4
  sysram3_seg :                       	org = 0xECCCD000, len = 0x180
  sysram4_seg :                       	org = 0xECCCD180, len = 0x40
  sysram5_seg :                       	org = 0xECCCD1C0, len = 0x40
  sysram6_seg :                       	org = 0xECCCD200, len = 0x40
  sysram7_seg :                       	org = 0xECCCD240, len = 0x40
  sysram8_seg :                       	org = 0xECCCD280, len = 0x80
  sysram9_seg :                       	org = 0xECCCD300, len = 0x6666168
}

PHDRS
{
  dram1_0_phdr PT_LOAD;
  dram1_0_bss_phdr PT_LOAD;
  dram0_0_phdr PT_LOAD;
  dram0_0_bss_phdr PT_LOAD;
  iram0_0_phdr PT_LOAD;
  sysrom0_phdr PT_LOAD;
  sysram0_phdr PT_LOAD;
  sysram1_phdr PT_LOAD;
  sysram2_phdr PT_LOAD;
  sysram3_phdr PT_LOAD;
  sysram4_phdr PT_LOAD;
  sysram5_phdr PT_LOAD;
  sysram6_phdr PT_LOAD;
  sysram7_phdr PT_LOAD;
  sysram8_phdr PT_LOAD;
  sysram9_phdr PT_LOAD;
  sysram9_bss_phdr PT_LOAD;
}


/*  Default entry point:  */
ENTRY(_ResetVector)


/*  Memory boundary addresses:  */
_memmap_mem_dram1_start = 0xcff80000;
_memmap_mem_dram1_end   = 0xcffc0000;
_memmap_mem_dram0_start = 0xcffc0000;
_memmap_mem_dram0_end   = 0xd0000000;
_memmap_mem_iram0_start = 0xd0000000;
_memmap_mem_iram0_end   = 0xd0008000;
_memmap_mem_sysrom_start = 0xd06e6668;
_memmap_mem_sysrom_end   = 0xd0a1999c;
_memmap_mem_sysram_start = 0xe0000000;
_memmap_mem_sysram_end   = 0xf3333468;

/*  Memory segment boundary addresses:  */
_memmap_seg_dram1_0_start = 0xcff80000;
_memmap_seg_dram1_0_max   = 0xcffc0000;
_memmap_seg_dram0_0_start = 0xcffc0000;
_memmap_seg_dram0_0_max   = 0xd0000000;
_memmap_seg_iram0_0_start = 0xd0000000;
_memmap_seg_iram0_0_max   = 0xd0008000;
_memmap_seg_sysrom0_start = 0xd06e6668;
_memmap_seg_sysrom0_max   = 0xd0a1999c;
_memmap_seg_sysram0_start = 0xe0000000;
_memmap_seg_sysram0_max   = 0xe0000300;
_memmap_seg_sysram1_start = 0xe66668c4;
_memmap_seg_sysram1_max   = 0xe66668c8;
_memmap_seg_sysram3_start = 0xecccd000;
_memmap_seg_sysram3_max   = 0xecccd180;
_memmap_seg_sysram4_start = 0xecccd180;
_memmap_seg_sysram4_max   = 0xecccd1c0;
_memmap_seg_sysram5_start = 0xecccd1c0;
_memmap_seg_sysram5_max   = 0xecccd200;
_memmap_seg_sysram6_start = 0xecccd200;
_memmap_seg_sysram6_max   = 0xecccd240;
_memmap_seg_sysram7_start = 0xecccd240;
_memmap_seg_sysram7_max   = 0xecccd280;
_memmap_seg_sysram8_start = 0xecccd280;
_memmap_seg_sysram8_max   = 0xecccd300;
_memmap_seg_sysram9_start = 0xecccd300;
_memmap_seg_sysram9_max   = 0xf3333468;

_rom_store_table = 0;
_ResetTable_base = 0xe66668bc;
PROVIDE(_ResetTable_base = 0xe66668bc);
PROVIDE(_memmap_reset_vector = 0xe0000000);
PROVIDE(_memmap_vecbase_reset = 0xecccd000);
/* Various memory-map dependent cache attribute settings: */
_memmap_cacheattr_wb_base = 0x11000000;
_memmap_cacheattr_wt_base = 0x33000000;
_memmap_cacheattr_bp_base = 0x44000000;
_memmap_cacheattr_unused_mask = 0x00FFFFFF;
_memmap_cacheattr_wb_trapnull = 0x11444440;
_memmap_cacheattr_wba_trapnull = 0x11444440;
_memmap_cacheattr_wbna_trapnull = 0x22444440;
_memmap_cacheattr_wt_trapnull = 0x33444440;
_memmap_cacheattr_bp_trapnull = 0x44444440;
_memmap_cacheattr_wb_strict = 0x11000000;
_memmap_cacheattr_wt_strict = 0x33000000;
_memmap_cacheattr_bp_strict = 0x44000000;
_memmap_cacheattr_wb_allvalid = 0x11444444;
_memmap_cacheattr_wt_allvalid = 0x33444444;
_memmap_cacheattr_bp_allvalid = 0x44444444;
_memmap_region_map = 0x000000C0;
PROVIDE(_memmap_cacheattr_reset = _memmap_cacheattr_wb_trapnull);

SECTIONS
{

  .dram1.rodata : ALIGN(4)
  {
    _dram1_rodata_start = ABSOLUTE(.);
    *(.dram1.rodata)
    . = ALIGN (4);
    _dram1_rodata_end = ABSOLUTE(.);
  } >dram1_0_seg :dram1_0_phdr

  .dram1.data : ALIGN(4)
  {
    _dram1_data_start = ABSOLUTE(.);
    *(.dram1.data)
    . = ALIGN (4);
    _dram1_data_end = ABSOLUTE(.);
  } >dram1_0_seg :dram1_0_phdr

  .dram1.bss (NOLOAD) : ALIGN(8)
  {
    . = ALIGN (8);
    _dram1_bss_start = ABSOLUTE(.);
    *(.dram1.bss)
    . = ALIGN (8);
    _dram1_bss_end = ABSOLUTE(.);
    _memmap_seg_dram1_0_end = ALIGN(0x8);
  } >dram1_0_seg :dram1_0_bss_phdr


  .dram0.rodata : ALIGN(4)
  {
    _dram0_rodata_start = ABSOLUTE(.);
    *(.dram0.rodata)
    . = ALIGN (4);
    _dram0_rodata_end = ABSOLUTE(.);
  } >dram0_0_seg :dram0_0_phdr

  .dram0.data : ALIGN(4)
  {
    _dram0_data_start = ABSOLUTE(.);
    *(.dram0.data)
    . = ALIGN (4);
    _dram0_data_end = ABSOLUTE(.);
  } >dram0_0_seg :dram0_0_phdr

  .dram0.bss (NOLOAD) : ALIGN(8)
  {
    . = ALIGN (8);
    _dram0_bss_start = ABSOLUTE(.);
    *(.dram0.bss)
    . = ALIGN (8);
    _dram0_bss_end = ABSOLUTE(.);
    _stack_sentry = ALIGN(0x8);
    _memmap_seg_dram0_0_end = ALIGN(0x8);
  } >dram0_0_seg :dram0_0_bss_phdr

  PROVIDE(__stack = 0xd0000000);

  .iram0.text : ALIGN(4)
  {
    _iram0_text_start = ABSOLUTE(.);
    *(.iram0.literal .iram.literal .iram.text.literal .iram0.text .iram.text)
    . = ALIGN (4);
    _iram0_text_end = ABSOLUTE(.);
    _memmap_seg_iram0_0_end = ALIGN(0x8);
  } >iram0_0_seg :iram0_0_phdr


  .sysrom.rodata : ALIGN(4)
  {
    _sysrom_rodata_start = ABSOLUTE(.);
    *(.sysrom.rodata)
    . = ALIGN (4);
    _sysrom_rodata_end = ABSOLUTE(.);
  } >sysrom0_seg :sysrom0_phdr

  .sysrom.text : ALIGN(4)
  {
    _sysrom_text_start = ABSOLUTE(.);
    *(.sysrom.literal .sysrom.text)
    . = ALIGN (4);
    _sysrom_text_end = ABSOLUTE(.);
    _memmap_seg_sysrom0_end = ALIGN(0x8);
  } >sysrom0_seg :sysrom0_phdr


  .SharedResetVector.text : ALIGN(4)
  {
    _SharedResetVector_text_start = ABSOLUTE(.);
    KEEP (*(.SharedResetVector.text))
    . = ALIGN (4);
    _SharedResetVector_text_end = ABSOLUTE(.);
    _memmap_seg_sysram0_end = ALIGN(0x8);
  } >sysram0_seg :sysram0_phdr


  .ResetTable.rodata : ALIGN(4)
  {
    _ResetTable_rodata_start = ABSOLUTE(.);
    *(.ResetTable.rodata)
    . = ALIGN (4);
    _ResetTable_rodata_end = ABSOLUTE(.);
    _memmap_seg_sysram1_end = ALIGN(0x8);
  } >sysram1_seg :sysram1_phdr



  .WindowVectors.text : ALIGN(4)
  {
    _WindowVectors_text_start = ABSOLUTE(.);
    KEEP (*(.WindowVectors.text))
    . = ALIGN (4);
    _WindowVectors_text_end = ABSOLUTE(.);
  } >sysram3_seg :sysram3_phdr

  .Level2InterruptVector.literal : ALIGN(4)
  {
    _Level2InterruptVector_literal_start = ABSOLUTE(.);
    *(.Level2InterruptVector.literal)
    . = ALIGN (4);
    _Level2InterruptVector_literal_end = ABSOLUTE(.);
    _memmap_seg_sysram3_end = ALIGN(0x8);
  } >sysram3_seg :sysram3_phdr


  .Level2InterruptVector.text : ALIGN(4)
  {
    _Level2InterruptVector_text_start = ABSOLUTE(.);
    KEEP (*(.Level2InterruptVector.text))
    . = ALIGN (4);
    _Level2InterruptVector_text_end = ABSOLUTE(.);
  } >sysram4_seg :sysram4_phdr

  .DebugExceptionVector.literal : ALIGN(4)
  {
    _DebugExceptionVector_literal_start = ABSOLUTE(.);
    *(.DebugExceptionVector.literal)
    . = ALIGN (4);
    _DebugExceptionVector_literal_end = ABSOLUTE(.);
    _memmap_seg_sysram4_end = ALIGN(0x8);
  } >sysram4_seg :sysram4_phdr


  .DebugExceptionVector.text : ALIGN(4)
  {
    _DebugExceptionVector_text_start = ABSOLUTE(.);
    KEEP (*(.DebugExceptionVector.text))
    . = ALIGN (4);
    _DebugExceptionVector_text_end = ABSOLUTE(.);
  } >sysram5_seg :sysram5_phdr

  .NMIExceptionVector.literal : ALIGN(4)
  {
    _NMIExceptionVector_literal_start = ABSOLUTE(.);
    *(.NMIExceptionVector.literal)
    . = ALIGN (4);
    _NMIExceptionVector_literal_end = ABSOLUTE(.);
    _memmap_seg_sysram5_end = ALIGN(0x8);
  } >sysram5_seg :sysram5_phdr


  .NMIExceptionVector.text : ALIGN(4)
  {
    _NMIExceptionVector_text_start = ABSOLUTE(.);
    KEEP (*(.NMIExceptionVector.text))
    . = ALIGN (4);
    _NMIExceptionVector_text_end = ABSOLUTE(.);
  } >sysram6_seg :sysram6_phdr

  .KernelExceptionVector.literal : ALIGN(4)
  {
    _KernelExceptionVector_literal_start = ABSOLUTE(.);
    *(.KernelExceptionVector.literal)
    . = ALIGN (4);
    _KernelExceptionVector_literal_end = ABSOLUTE(.);
    _memmap_seg_sysram6_end = ALIGN(0x8);
  } >sysram6_seg :sysram6_phdr


  .KernelExceptionVector.text : ALIGN(4)
  {
    _KernelExceptionVector_text_start = ABSOLUTE(.);
    KEEP (*(.KernelExceptionVector.text))
    . = ALIGN (4);
    _KernelExceptionVector_text_end = ABSOLUTE(.);
  } >sysram7_seg :sysram7_phdr

  .UserExceptionVector.literal : ALIGN(4)
  {
    _UserExceptionVector_literal_start = ABSOLUTE(.);
    *(.UserExceptionVector.literal)
    . = ALIGN (4);
    _UserExceptionVector_literal_end = ABSOLUTE(.);
    _memmap_seg_sysram7_end = ALIGN(0x8);
  } >sysram7_seg :sysram7_phdr


  .UserExceptionVector.text : ALIGN(4)
  {
    _UserExceptionVector_text_start = ABSOLUTE(.);
    KEEP (*(.UserExceptionVector.text))
    . = ALIGN (4);
    _UserExceptionVector_text_end = ABSOLUTE(.);
  } >sysram8_seg :sysram8_phdr

  .DoubleExceptionVector.literal : ALIGN(4)
  {
    _DoubleExceptionVector_literal_start = ABSOLUTE(.);
    *(.DoubleExceptionVector.literal)
    . = ALIGN (4);
    _DoubleExceptionVector_literal_end = ABSOLUTE(.);
    _memmap_seg_sysram8_end = ALIGN(0x8);
  } >sysram8_seg :sysram8_phdr


  .DoubleExceptionVector.text : ALIGN(4)
  {
    _DoubleExceptionVector_text_start = ABSOLUTE(.);
    KEEP (*(.DoubleExceptionVector.text))
    . = ALIGN (4);
    _DoubleExceptionVector_text_end = ABSOLUTE(.);
  } >sysram9_seg :sysram9_phdr

  .sysram.rodata : ALIGN(4)
  {
    _sysram_rodata_start = ABSOLUTE(.);
    *(.sysram.rodata)
    . = ALIGN (4);
    _sysram_rodata_end = ABSOLUTE(.);
  } >sysram9_seg :sysram9_phdr

  .clib.rodata : ALIGN(4)
  {
    _clib_rodata_start = ABSOLUTE(.);
    *(.clib.rodata)
    . = ALIGN (4);
    _clib_rodata_end = ABSOLUTE(.);
  } >sysram9_seg :sysram9_phdr

  .rtos.rodata : ALIGN(4)
  {
    _rtos_rodata_start = ABSOLUTE(.);
    *(.rtos.rodata)
    . = ALIGN (4);
    _rtos_rodata_end = ABSOLUTE(.);
  } >sysram9_seg :sysram9_phdr

  .rodata : ALIGN(4)
  {
    _rodata_start = ABSOLUTE(.);
    *(.rodata)
    *(SORT(.rodata.sort.*))
    KEEP (*(SORT(.rodata.keepsort.*) .rodata.keep.*))
    *(.rodata.*)
    *(.gnu.linkonce.r.*)
    *(.rodata1)
    __XT_EXCEPTION_TABLE__ = ABSOLUTE(.);
    KEEP (*(.xt_except_table))
    KEEP (*(.gcc_except_table))
    *(.gnu.linkonce.e.*)
    *(.gnu.version_r)
    KEEP (*(.eh_frame))
    /*  C++ constructor and destructor tables, properly ordered:  */
    KEEP (*crtbegin.o(.ctors))
    KEEP (*(EXCLUDE_FILE (*crtend.o) .ctors))
    KEEP (*(SORT(.ctors.*)))
    KEEP (*(.ctors))
    KEEP (*crtbegin.o(.dtors))
    KEEP (*(EXCLUDE_FILE (*crtend.o) .dtors))
    KEEP (*(SORT(.dtors.*)))
    KEEP (*(.dtors))
    /*  C++ exception handlers table:  */
    __XT_EXCEPTION_DESCS__ = ABSOLUTE(.);
    *(.xt_except_desc)
    *(.gnu.linkonce.h.*)
    __XT_EXCEPTION_DESCS_END__ = ABSOLUTE(.);
    *(.xt_except_desc_end)
    *(.dynamic)
    *(.gnu.version_d)
    . = ALIGN(4);		/* this table MUST be 4-byte aligned */
    _bss_table_start = ABSOLUTE(.);
    LONG(_dram1_bss_start)
    LONG(_dram1_bss_end)
    LONG(_dram0_bss_start)
    LONG(_dram0_bss_end)
    LONG(_bss_start)
    LONG(_bss_end)
    _bss_table_end = ABSOLUTE(.);
    . = ALIGN (4);
    _rodata_end = ABSOLUTE(.);
  } >sysram9_seg :sysram9_phdr

  .sysram.text : ALIGN(4)
  {
    _sysram_text_start = ABSOLUTE(.);
    *(.sysram.literal .sysram.text)
    . = ALIGN (4);
    _sysram_text_end = ABSOLUTE(.);
  } >sysram9_seg :sysram9_phdr

  .text : ALIGN(4)
  {
    _stext = .;
    _text_start = ABSOLUTE(.);
    *(.entry.text)
    *(.init.literal)
    KEEP(*(.init))
    *(.literal.sort.* SORT(.text.sort.*))
    KEEP (*(.literal.keepsort.* SORT(.text.keepsort.*) .literal.keep.* .text.keep.* .literal.*personality* .text.*personality*))
    *(.literal .text .literal.* .text.* .stub .gnu.warning .gnu.linkonce.literal.* .gnu.linkonce.t.*.literal .gnu.linkonce.t.*)
    *(.fini.literal)
    KEEP(*(.fini))
    *(.gnu.version)
    . = ALIGN (4);
    _text_end = ABSOLUTE(.);
    _etext = .;
  } >sysram9_seg :sysram9_phdr

  .ResetVector.text : ALIGN(4)
  {
    _ResetVector_text_start = ABSOLUTE(.);
    *(.ResetVector.text)
    . = ALIGN (4);
    _ResetVector_text_end = ABSOLUTE(.);
  } >sysram9_seg :sysram9_phdr

  .ResetHandler.text : ALIGN(4)
  {
    _ResetHandler_text_start = ABSOLUTE(.);
    *(.ResetHandler.literal .ResetHandler.text)
    . = ALIGN (4);
    _ResetHandler_text_end = ABSOLUTE(.);
  } >sysram9_seg :sysram9_phdr

  .clib.text : ALIGN(4)
  {
    _clib_text_start = ABSOLUTE(.);
    *(.clib.literal .clib.text)
    . = ALIGN (4);
    _clib_text_end = ABSOLUTE(.);
  } >sysram9_seg :sysram9_phdr

  .rtos.text : ALIGN(4)
  {
    _rtos_text_start = ABSOLUTE(.);
    *(.rtos.literal .rtos.text)
    . = ALIGN (4);
    _rtos_text_end = ABSOLUTE(.);
  } >sysram9_seg :sysram9_phdr

  .clib.data : ALIGN(4)
  {
    _clib_data_start = ABSOLUTE(.);
    *(.clib.data)
    . = ALIGN (4);
    _clib_data_end = ABSOLUTE(.);
  } >sysram9_seg :sysram9_phdr

  .clib.percpu.data : ALIGN(4)
  {
    _clib_percpu_data_start = ABSOLUTE(.);
    *(.clib.percpu.data)
    . = ALIGN (4);
    _clib_percpu_data_end = ABSOLUTE(.);
  } >sysram9_seg :sysram9_phdr

  .rtos.percpu.data : ALIGN(4)
  {
    _rtos_percpu_data_start = ABSOLUTE(.);
    *(.rtos.percpu.data)
    . = ALIGN (4);
    _rtos_percpu_data_end = ABSOLUTE(.);
  } >sysram9_seg :sysram9_phdr

  .rtos.data : ALIGN(4)
  {
    _rtos_data_start = ABSOLUTE(.);
    *(.rtos.data)
    . = ALIGN (4);
    _rtos_data_end = ABSOLUTE(.);
  } >sysram9_seg :sysram9_phdr

  .sysram.data : ALIGN(4)
  {
    _sysram_data_start = ABSOLUTE(.);
    *(.sysram.data)
    . = ALIGN (4);
    _sysram_data_end = ABSOLUTE(.);
  } >sysram9_seg :sysram9_phdr

  .data : ALIGN(4)
  {
    _data_start = ABSOLUTE(.);
    *(.data)
    *(SORT(.data.sort.*))
    KEEP (*(SORT(.data.keepsort.*) .data.keep.*))
    *(.data.*)
    *(.gnu.linkonce.d.*)
    KEEP(*(.gnu.linkonce.d.*personality*))
    *(.data1)
    *(.sdata)
    *(.sdata.*)
    *(.gnu.linkonce.s.*)
    *(.sdata2)
    *(.sdata2.*)
    *(.gnu.linkonce.s2.*)
    KEEP(*(.jcr))
    . = ALIGN (4);
    _data_end = ABSOLUTE(.);
  } >sysram9_seg :sysram9_phdr

  .bss (NOLOAD) : ALIGN(8)
  {
    . = ALIGN (8);
    _bss_start = ABSOLUTE(.);
    *(.dynsbss)
    *(.sbss)
    *(.sbss.*)
    *(.gnu.linkonce.sb.*)
    *(.scommon)
    *(.sbss2)
    *(.sbss2.*)
    *(.gnu.linkonce.sb2.*)
    *(.dynbss)
    *(.bss)
    *(SORT(.bss.sort.*))
    KEEP (*(SORT(.bss.keepsort.*) .bss.keep.*))
    *(.bss.*)
    *(.gnu.linkonce.b.*)
    *(COMMON)
    *(.clib.bss)
    *(.clib.percpu.bss)
    *(.rtos.percpu.bss)
    *(.rtos.bss)
    *(.sysram.bss)
    . = ALIGN (8);
    _bss_end = ABSOLUTE(.);
    _end = ALIGN(0x8);
    PROVIDE(end = ALIGN(0x8));
    _memmap_seg_sysram9_end = ALIGN(0x8);
  } >sysram9_seg :sysram9_bss_phdr

  _heap_sentry = 0xf3333460;
  .debug  0 :  { *(.debug) }
  .line  0 :  { *(.line) }
  .debug_srcinfo  0 :  { *(.debug_srcinfo) }
  .debug_sfnames  0 :  { *(.debug_sfnames) }
  .debug_aranges  0 :  { *(.debug_aranges) }
  .debug_pubnames  0 :  { *(.debug_pubnames) }
  .debug_info  0 :  { *(.debug_info) }
  .debug_abbrev  0 :  { *(.debug_abbrev) }
  .debug_line  0 :  { *(.debug_line) }
  .debug_frame  0 :  { *(.debug_frame) }
  .debug_str  0 :  { *(.debug_str) }
  .debug_loc  0 :  { *(.debug_loc) }
  .debug_macinfo  0 :  { *(.debug_macinfo) }
  .debug_weaknames  0 :  { *(.debug_weaknames) }
  .debug_funcnames  0 :  { *(.debug_funcnames) }
  .debug_typenames  0 :  { *(.debug_typenames) }
  .debug_varnames  0 :  { *(.debug_varnames) }
  .xt.insn 0 :
  {
    KEEP (*(.xt.insn))
    KEEP (*(.gnu.linkonce.x.*))
  }
  .xt.prop 0 :
  {
    KEEP (*(.xt.prop))
    KEEP (*(.xt.prop.*))
    KEEP (*(.gnu.linkonce.prop.*))
  }
  .xt.lit 0 :
  {
    KEEP (*(.xt.lit))
    KEEP (*(.xt.lit.*))
    KEEP (*(.gnu.linkonce.p.*))
  }
  .debug.xt.callgraph 0 :
  {
    KEEP (*(.debug.xt.callgraph .debug.xt.callgraph.* .gnu.linkonce.xt.callgraph.*))
  }
}

