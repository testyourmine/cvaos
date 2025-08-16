MEMORY {
    ewram (rwx): ORIGIN = 0x02000000 LENGTH = 256K
    iwram (rwx): ORIGIN = 0x03000000 LENGTH = 32K
    rom    (rx): ORIGIN = 0x08000000 LENGTH = 32M
}


SECTIONS {
    ewram (NOLOAD) : ALIGN(4) {
        . = 0x00000000; gUnk_02000000 = .;
    } >ewram

    iwram (NOLOAD) : ALIGN(4) {
        . = 0x00002800; *libgcc.a:dp-bit.o(.bss);
        . = 0x00002818; *libgcc.a:fp-bit.o(.bss);

        . = 0x00002C60; gUnk_03002C60 = .;
        . = 0x00002CB0; gUnk_03002CB0 = .;

        . = 0x00003CD0; gUnk_03003CD0 = .;

        . = 0x000052D4; gUnk_030052D4 = .;
    } >iwram

    .text : ALIGN(2) {
        asm/rom_header.o(.text);
        asm/crt0.o(.text);
        asm/main.o(.text);
        asm/code_080009A0.o(.text);
        asm/code_080109B8.o(.text);
        asm/code_080211F0.o(.text);
        asm/code_08030A24.o(.text);
        asm/code_08040A38.o(.text);
        asm/code_08050A3C.o(.text);
        asm/code_08060B98.o(.text);
        asm/code_080709D8.o(.text);
        asm/code_080809C0.o(.text);
        asm/code_08090914.o(.text);
        asm/code_080A0A8C.o(.text);
        asm/code_080B0AD4.o(.text);
        asm/code_080C0A1C.o(.text);
        asm/code_080D0998.o(.text);
        asm/libagbsyscall.o(.text);
        asm/agb_sram.o(.text);
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
        asm/lib0.o(.text);
    } >rom

    .rodata : ALIGN(2) {
        asm/data_0E0334.o(.rodata);
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
