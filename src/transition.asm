.org 0x8009A2B0
.area (0x8009A340 - 0x8009A2B0), 0
    //a0 = Global Context
    //a1 = screen transition effect
    addiu   sp, sp, 0xFFE0
    sw      ra, 0x0014(sp)
    sw      a0, 0x0020(sp)
    andi    t0, a1, -2 //drop least significant bit so that we can test for 0x0E and 0x0F
    li      at, 0x000E //sandstorm effect
    bne     t0, at, @skip_check
    sw      a1, 0x0024(sp)

    b       @check_if_object_loaded
    nop
@return_check_if_object_loaded:

    bgez    v0, @skip_check
    li      at, 0x04            //replacement transition effect
    sw      at, 0x0024(sp)

@skip_check:
    lw      a2, 0x0020(sp)
    li      at, 0x121C8
    addu    a0, a2, at
    sw      a0, 0x0018(sp)
    jal     0x80002E80
    addiu   a1, r0, 0x0250

    //replacement
    lw      v0, 0x0024(sp)
    lw      a0, 0x0018(sp)
    lw      a2, 0x0020(sp)
    addiu   at, r0, 0x0001
    sra     t6, v0, 5
    bne     t6, at, @b_0x8009A368
    sw      v0, 0x0228(a0)

    lui     at, 0x800A
    addiu   t7, at, 0x8DEC
    addiu   t8, at, 0x8E18
    addiu   t9, at, 0x8C00
    addiu   t0, at, 0x9244
    addiu   t1, at, 0x8FA8
    addiu   t2, at, 0x8E24
    addiu   t3, at, 0x9250
    addiu   t4, at, 0x92A8
    addiu   t5, at, 0x92B4
.endarea

.org 0x8009A368
@b_0x8009A368:

.org 0x8009A390
.area (0x8009A3D0 - 0x8009A390), 0

@check_if_object_loaded:
    
    li      at, 0x117A4 //object table
    addu    a0, a0, at
    jal     0x80081628          //check if object file is loaded
    addiu   a1, r0, 0x02        //gameplay_field_keep
    b       @return_check_if_object_loaded
    nop

@transition_0_jump:
    lui     at, 0x800A
    addiu   t7, at, 0x8218
    addiu   t8, at, 0x82B8
    addiu   t9, at, 0x81E0
    addiu   t0, at, 0x8700
    addiu   t1, at, 0x83FC
    addiu   t2, at, 0x82C4
    addiu   t3, at, 0x83E4
    addiu   t4, at, 0x83D8
.endarea

.org 0x80108CEC
.word @transition_0_jump