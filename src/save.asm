.org 0x8004C020
save_game: 
addiu	sp, sp, 0xFFE0
sw		s1, 0x0018(sp)
sw		s0, 0x0014(sp)
sw		ra, 0x001C(sp)
lhu		at, 0x0014(a0)
li		s0, 0x8011A5D0
andi	at, at, 0x10
beq		at, r0, @l_8004C050
lh		s1, 0x0066(s0)
addiu	at, r0, 0x0034
sh		at, 0x0066(s0)

@l_8004C050:
jal		0x800905D4
addiu	a0, a0, 0x1F74
lw		ra, 0x001C(sp)
sh		s1, 0x0066(s0)
lw		s1, 0x0018(sp)
lw		s0, 0x0014(sp)
jr		ra
addiu	sp,sp,0x0020