/* This linker script generated from xt-genldscripts.tpp for LSP /home/rajivr/wsp/rajiv1/OpenCL/LSP_build/sys-x86_64-linux/subsys.xtsys/package/cores/shared/xtensa-elf/lib/shared */
/* Linker Script for default link */
MEMORY
{
  sysrom0_seg :                       	org = 0xD0D4CCD0, len = 0x333330
  sysram0_seg :                       	org = 0xE0000000, len = 0x300
  sysram1_seg :                       	org = 0xF9999A34, len = 0x66665CC
}

PHDRS
{
  sysrom0_phdr PT_LOAD;
  sysram0_phdr PT_LOAD;
  sysram1_phdr PT_LOAD;
  sysram1_bss_phdr PT_LOAD;
}



/*  Memory boundary addresses:  */
_shared_memmap_mem_sysrom_start = 0xd0d4ccd0;
_shared_memmap_mem_sysrom_end   = 0xd1080000;
_shared_memmap_mem_sysram_start = 0xe0000000;
_shared_memmap_mem_sysram_end   = 0xffffffff;

/*  Memory segment boundary addresses:  */
_shared_memmap_seg_sysrom0_start = 0xd0d4ccd0;
_shared_memmap_seg_sysrom0_max   = 0xd1080000;
_shared_memmap_seg_sysram0_start = 0xe0000000;
_shared_memmap_seg_sysram0_max   = 0xe0000300;
_shared_memmap_seg_sysram1_start = 0xf9999a34;
_shared_memmap_seg_sysram1_max   = 0xffffffff;

_shared_rom_store_table = 0;

SECTIONS
{

  .sysrom.rodata : ALIGN(4)
  {
    _shared_sysrom_rodata_start = ABSOLUTE(.);
    *(.sysrom.rodata)
    . = ALIGN (4);
    _shared_sysrom_rodata_end = ABSOLUTE(.);
  } >sysrom0_seg :sysrom0_phdr

  .sysrom.text : ALIGN(4)
  {
    _shared_sysrom_text_start = ABSOLUTE(.);
    *(.sysrom.literal .sysrom.text)
    . = ALIGN (4);
    _shared_sysrom_text_end = ABSOLUTE(.);
    _shared_memmap_seg_sysrom0_end = ALIGN(0x8);
  } >sysrom0_seg :sysrom0_phdr


  .SharedResetVector.text : ALIGN(4)
  {
    _shared_SharedResetVector_text_start = ABSOLUTE(.);
    KEEP (*(.SharedResetVector.text))
    . = ALIGN (4);
    _shared_SharedResetVector_text_end = ABSOLUTE(.);
    _shared_memmap_seg_sysram0_end = ALIGN(0x8);
  } >sysram0_seg :sysram0_phdr


  .sysram.rodata : ALIGN(4)
  {
    _shared_sysram_rodata_start = ABSOLUTE(.);
    *(.sysram.rodata)
    . = ALIGN (4);
    _shared_sysram_rodata_end = ABSOLUTE(.);
  } >sysram1_seg :sysram1_phdr

  .clib.rodata : ALIGN(4)
  {
    _shared_clib_rodata_start = ABSOLUTE(.);
    *(.clib.rodata)
    . = ALIGN (4);
    _shared_clib_rodata_end = ABSOLUTE(.);
  } >sysram1_seg :sysram1_phdr

  .rtos.rodata : ALIGN(4)
  {
    _shared_rtos_rodata_start = ABSOLUTE(.);
    *(.rtos.rodata)
    . = ALIGN (4);
    _shared_rtos_rodata_end = ABSOLUTE(.);
  } >sysram1_seg :sysram1_phdr

  .rodata : ALIGN(4)
  {
    _shared_rodata_start = ABSOLUTE(.);
    *(.rodata)
    *(SORT(.rodata.sort.*))
    KEEP (*(SORT(.rodata.keepsort.*) .rodata.keep.*))
    *(.rodata.*)
    *(.gnu.linkonce.r.*)
    *(.rodata1)
    . = ALIGN(4);		/* this table MUST be 4-byte aligned */
    _shared_bss_table_start = ABSOLUTE(.);
    LONG(_shared_bss_start)
    LONG(_shared_bss_end)
    _shared_bss_table_end = ABSOLUTE(.);
    . = ALIGN (4);
    _shared_rodata_end = ABSOLUTE(.);
  } >sysram1_seg :sysram1_phdr

  .sysram.text : ALIGN(4)
  {
    _shared_sysram_text_start = ABSOLUTE(.);
    *(.sysram.literal .sysram.text)
    . = ALIGN (4);
    _shared_sysram_text_end = ABSOLUTE(.);
  } >sysram1_seg :sysram1_phdr

  .text : ALIGN(4)
  {
    _shared_stext = .;
    _shared_text_start = ABSOLUTE(.);
    *(.entry.text)
    *(.init.literal)
    KEEP(*(.init))
    *(.literal.sort.* SORT(.text.sort.*))
    KEEP (*(.literal.keepsort.* SORT(.text.keepsort.*) .literal.keep.* .text.keep.* .literal.*personality* .text.*personality*))
    *(.literal .text .literal.* .text.* .stub .gnu.warning .gnu.linkonce.literal.* .gnu.linkonce.t.*.literal .gnu.linkonce.t.*)
    *(.fini.literal)
    KEEP(*(.fini))
    *(.gnu.version)
    BYTE(0);
    . = ALIGN (4);
    _shared_text_end = ABSOLUTE(.);
    _shared_etext = .;
  } >sysram1_seg :sysram1_phdr

  .clib.text : ALIGN(4)
  {
    _shared_clib_text_start = ABSOLUTE(.);
    *(.clib.literal .clib.text)
    . = ALIGN (4);
    _shared_clib_text_end = ABSOLUTE(.);
  } >sysram1_seg :sysram1_phdr

  .rtos.text : ALIGN(4)
  {
    _shared_rtos_text_start = ABSOLUTE(.);
    *(.rtos.literal .rtos.text)
    . = ALIGN (4);
    _shared_rtos_text_end = ABSOLUTE(.);
  } >sysram1_seg :sysram1_phdr

  .clib.data : ALIGN(4)
  {
    _shared_clib_data_start = ABSOLUTE(.);
    *(.clib.data)
    . = ALIGN (4);
    _shared_clib_data_end = ABSOLUTE(.);
  } >sysram1_seg :sysram1_phdr

  .clib.percpu.data : ALIGN(4)
  {
    _shared_clib_percpu_data_start = ABSOLUTE(.);
    *(.clib.percpu.data)
    . = ALIGN (4);
    _shared_clib_percpu_data_end = ABSOLUTE(.);
  } >sysram1_seg :sysram1_phdr

  .rtos.percpu.data : ALIGN(4)
  {
    _shared_rtos_percpu_data_start = ABSOLUTE(.);
    *(.rtos.percpu.data)
    . = ALIGN (4);
    _shared_rtos_percpu_data_end = ABSOLUTE(.);
  } >sysram1_seg :sysram1_phdr

  .rtos.data : ALIGN(4)
  {
    _shared_rtos_data_start = ABSOLUTE(.);
    *(.rtos.data)
    . = ALIGN (4);
    _shared_rtos_data_end = ABSOLUTE(.);
  } >sysram1_seg :sysram1_phdr

  .sysram.data : ALIGN(4)
  {
    _shared_sysram_data_start = ABSOLUTE(.);
    *(.sysram.data)
    . = ALIGN (4);
    _shared_sysram_data_end = ABSOLUTE(.);
  } >sysram1_seg :sysram1_phdr

  .data : ALIGN(4)
  {
    _shared_data_start = ABSOLUTE(.);
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
    _shared_data_end = ABSOLUTE(.);
  } >sysram1_seg :sysram1_phdr

  .bss (NOLOAD) : ALIGN(8)
  {
    . = ALIGN (8);
    _shared_bss_start = ABSOLUTE(.);
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
    _shared_bss_end = ABSOLUTE(.);
    _shared_end = ALIGN(0x8);
    PROVIDE(_sharedend = ALIGN(0x8));
    _shared_stack_sentry = ALIGN(0x8);
    _shared_memmap_seg_sysram1_end = ALIGN(0x8);
  } >sysram1_seg :sysram1_bss_phdr
    _ResetSync = .;
    . += 4;

  PROVIDE(_shared__stack = 0xfffffff0);
  _shared_heap_sentry = 0xfffffff0;
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

