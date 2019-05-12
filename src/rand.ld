OUTPUT_FORMAT("binary")
/* OUTPUT_FORMAT("elf32-bigmips", "elf32-bigmips", "elf32-littlemips") */
OUTPUT_ARCH (mips)


rand_hack_addr = 0x801DAFA0;  /* 0x801DAFA0; */

MEMORY
{
	ROMSTART (RWXAI) : ORIGIN = (0x801DAFA0), LENGTH = 4M
}


SECTIONS
{
	. = rand_hack_addr;
	.text ALIGN(0x10): 
	{
		*(.text*)
	} 
	.data ALIGN(0x10) :
    {
        *(.data*)
	} 
	.rodata ALIGN(0x10) : 
	{
		*(.rodata*)
	} 
	.rel ALIGN(0x10) : 
	{
		*(.rel*)
	} 
	.bss ALIGN(0x10) (NOLOAD): 
	{
		*(.bss*)
		*(.MIPS*)
	} 
}
