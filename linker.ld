MEMORY {
    ewram (rwx): ORIGIN = 0x02000000 LENGTH = 256K
    iwram (rwx): ORIGIN = 0x03000000 LENGTH = 32K
    rom    (rx): ORIGIN = 0x08000000 LENGTH = 32M
}

end = 0x3006004;

SECTIONS {
    ewram (NOLOAD) : ALIGN(4) {
    } >ewram

    iwram (NOLOAD) : ALIGN(4) {
        . = 0x00002140; src/agb_sram.o(.bss);
        . = 0x00002800; *libgcc.a:*.o(.bss);
        *libc.a:*.o(.bss);

        . = 0x00002C60; gUnk_03002C60 = .;
        . = 0x00002CB0; gUnk_03002CB0 = .;

        . = 0x00003CD0; gUnk_03003CD0 = .;

        . = 0x000052D4; gReadSramFast = .;
        . = 0x000052D8; gVerifySramFast = .;

        . = 0x00006000; *libc.a:*.o(COMMON);
    } >iwram

    .text : ALIGN(2) {
        asm/rom_header.o(.text);
        asm/crt0.o(.text);
        src/main.o(.text);
        src/code_080009A0.o(.text);
        src/code_08001004.o(.text);
        src/code_08001194.o(.text);
        src/code_08002454.o(.text);
        src/code_08005894.o(.text);
        src/code_08008750.o(.text);
        src/code_080096AC.o(.text);
        src/code_0800B700.o(.text);
        src/code_0800CB00.o(.text);
        src/code_0800F1FC.o(.text);
        asm/code/code_080109F4.o(.text);
        asm/code/code_080211F0.o(.text);
        asm/code/code_08030A24.o(.text);
        asm/code/code_08040A38.o(.text);
        asm/code/code_08050A3C.o(.text);
        asm/code/code_08060B98.o(.text);
        asm/code/code_080709D8.o(.text);
        asm/code/code_080809C0.o(.text);
        asm/code/code_08090914.o(.text);
        asm/code/code_080A0A8C.o(.text);
        asm/code/code_080B0AD4.o(.text);
        asm/code/code_080C0A1C.o(.text);
        asm/code/code_080D0998.o(.text);
        asm/libagbsyscall.o(.text);
        src/agb_sram.o(.text);
        asm/agb_print.o(.text);
        asm/m4a0.o(.text);
        asm/m4a.o(.text);
        *libgcc.a:_call_via_rX.o(.text);
        *libgcc.a:_divsi3.o(.text);
        *libgcc.a:_dvmd_tls.o(.text);
        *libgcc.a:_fixunsdfsi.o(.text);
        *libgcc.a:_modsi3.o(.text);
        *libgcc.a:_udivsi3.o(.text);
        *libgcc.a:_umodsi3.o(.text);
        *libgcc.a:dp-bit.o(.text);
        *libgcc.a:fp-bit.o(.text);
        *libgcc.a:_lshrdi3.o(.text);
        *libgcc.a:_muldi3.o(.text);
        *libgcc.a:_negdi2.o(.text);

        *libc.a:memcpy.o(.text);
        *libc.a:memset.o(.text);
        *libc.a:sprintf.o(.text);
        *libc.a:vfprintf.o(.text);
        *libc.a:vsprintf.o(.text);
        *libc.a:wsetup.o(.text);
        *libc.a:dtoa.o(.text);
        *libc.a:fflush.o(.text);
        *libc.a:findfp.o(.text);
        *libc.a:freer.o(.text);
        *libc.a:fvwrite.o(.text);
        *libc.a:fwalk.o(.text);
        *libc.a:locale.o(.text);
        *libc.a:makebuf.o(.text);
        *libc.a:mallocr.o(.text);
        *libc.a:mbtowc_r.o(.text);
        *libc.a:memchr.o(.text);
        *libc.a:memmove.o(.text);
        *libc.a:mlock.o(.text);
        *libc.a:mprec.o(.text);
        *libc.a:s_isinf.o(.text);
        *libc.a:s_isnan.o(.text);
        *libc.a:sbrkr.o(.text);
        *libc.a:stdio.o(.text);
        *libc.a:strcmp.o(.text);
        *libc.a:strlen.o(.text);
        *libc.a:syscalls.o(.text);
        *libc.a:writer.o(.text);
        *libc.a:callocr.o(.text);
        *libc.a:closer.o(.text);
        *libc.a:errno.o(.text);
        *libc.a:fstatr.o(.text);
        *libc.a:libcfunc.o(.text);
        *libc.a:lseekr.o(.text);
        *libc.a:readr.o(.text);
        asm/code/code_080E032C.o(.text);
    } >rom

    .rodata : ALIGN(4) {
        src/data/data_0E0334.o(.rodata);
        src/code_080009A0.o(.rodata);
        src/code_08001004.o(.rodata);
        src/code_08001194.o(.rodata);
        src/code_08002454.o(.rodata);
        src/code_08005894.o(.rodata);
        src/code_08008750.o(.rodata);
        src/code_080096AC.o(.rodata);
        src/code_0800B700.o(.rodata);
        src/code_0800CB00.o(.rodata);
        src/code_0800F1FC.o(.rodata);
        asm/data/data_0E0B68.o(.rodata);
        src/data/data_0E3464.o(.rodata);
        asm/data/data_0E5364.o(.rodata);
        *libc.a:memcpy.o(.rodata);
        *libc.a:memset.o(.rodata);
        *libc.a:sprintf.o(.rodata);
        *libc.a:vfprintf.o(.rodata);
        *libc.a:vsprintf.o(.rodata);
        *libc.a:wsetup.o(.rodata);
        *libc.a:dtoa.o(.rodata);
        *libc.a:fflush.o(.rodata);
        *libc.a:findfp.o(.rodata);
        *libc.a:freer.o(.rodata);
        *libc.a:fvwrite.o(.rodata);
        *libc.a:fwalk.o(.rodata);
        *libc.a:impure.o(.rodata);
        *libc.a:locale.o(.rodata);
        *libc.a:makebuf.o(.rodata);
        *libc.a:mallocr.o(.rodata);
        *libc.a:mbtowc_r.o(.rodata);
        *libc.a:memchr.o(.rodata);
        *libc.a:memmove.o(.rodata);
        *libc.a:mlock.o(.rodata);
        *libc.a:mprec.o(.rodata);
        *libc.a:s_isinf.o(.rodata);
        *libc.a:s_isnan.o(.rodata);
        *libc.a:sbrkr.o(.rodata);
        *libc.a:stdio.o(.rodata);
        *libc.a:strcmp.o(.rodata);
        *libc.a:strlen.o(.rodata);
        *libc.a:syscalls.o(.rodata);
        *libc.a:writer.o(.rodata);
        *libc.a:callocr.o(.rodata);
        *libc.a:closer.o(.rodata);
        *libc.a:errno.o(.rodata);
        *libc.a:fstatr.o(.rodata);
        *libc.a:libcfunc.o(.rodata);
        *libc.a:lseekr.o(.rodata);
        *libc.a:readr.o(.rodata);
    } >rom

    .data : ALIGN(4) {
        src/ewram.o(.data);
        src/code_080009A0.o(.data);
        src/code_08001004.o(.data);
        src/code_08001194.o(.data);
        src/code_08002454.o(.data);
        src/code_08005894.o(.data);
        src/code_08008750.o(.data);
        src/code_080096AC.o(.data);
        src/code_0800B700.o(.data);
        src/code_0800CB00.o(.data);
        src/code_0800F1FC.o(.data);
        asm/data/data_4F0B18.o(.data);
        *libc.a:memcpy.o(.data);
        *libc.a:memset.o(.data);
        *libc.a:sprintf.o(.data);
        *libc.a:vfprintf.o(.data);
        *libc.a:vsprintf.o(.data);
        *libc.a:wsetup.o(.data);
        *libc.a:dtoa.o(.data);
        *libc.a:fflush.o(.data);
        *libc.a:findfp.o(.data);
        *libc.a:freer.o(.data);
        *libc.a:fvwrite.o(.data);
        *libc.a:fwalk.o(.data);
        *libc.a:impure.o(.data);
        *libc.a:locale.o(.data);
        *libc.a:makebuf.o(.data);
        *libc.a:mallocr.o(.data);
        *libc.a:mbtowc_r.o(.data);
        *libc.a:memchr.o(.data);
        *libc.a:memmove.o(.data);
        *libc.a:mlock.o(.data);
        *libc.a:mprec.o(.data);
        *libc.a:s_isinf.o(.data);
        *libc.a:s_isnan.o(.data);
        *libc.a:sbrkr.o(.data);
        *libc.a:stdio.o(.data);
        *libc.a:strcmp.o(.data);
        *libc.a:strlen.o(.data);
        *libc.a:syscalls.o(.data);
        *libc.a:writer.o(.data);
        *libc.a:callocr.o(.data);
        *libc.a:closer.o(.data);
        *libc.a:errno.o(.data);
        *libc.a:fstatr.o(.data);
        *libc.a:libcfunc.o(.data);
        *libc.a:lseekr.o(.data);
        *libc.a:readr.o(.data);
    } >rom

    /* DWARF debug sections.
       Symbols in the DWARF debugging sections are relative to the beginning
       of the section so we begin them at 0.  */

    /* DWARF 1 */
    .debug          0 : { *(.debug) }
    .line           0 : { *(.line) }

    /* GNU DWARF 1 extensions */
    .debug_srcinfo  0 : { *(.debug_srcinfo) }
    .debug_sfnames  0 : { *(.debug_sfnames) }

    /* DWARF 1.1 and DWARF 2 */
    .debug_aranges  0 : { *(.debug_aranges) }
    .debug_pubnames 0 : { *(.debug_pubnames) }

    /* DWARF 2 */
    .debug_info     0 : { *(.debug_info .gnu.linkonce.wi.*) }
    .debug_abbrev   0 : { *(.debug_abbrev) }
    .debug_line     0 : { *(.debug_line) }
    .debug_frame    0 : { *(.debug_frame) }
    .debug_str      0 : { *(.debug_str) }
    .debug_loc      0 : { *(.debug_loc) }
    .debug_macinfo  0 : { *(.debug_macinfo) }

    /* Discard everything not specifically mentioned above. */
    /DISCARD/ :
    {
        *(*);
    }
}
