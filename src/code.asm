//static context
.org 0x80051B5C
addiu	a0, r0, 0x1B74
.org 0x80051B74
addiu	v0, r0, 0x15D0

//fix save warp
.org 0x800526B0
lb		t6, 0x0067(a0)
addiu	at, r0, 0x0043

//Tree Dying Sfx frame check
.org 0x800527EC
addiu	at, r0, 0x021E

//Don't reset Farore's Wind
.org 0x80053254
nop

//Sheik talks triforce
.org 0x8005397C
addiu	t0, r0, 0xFFFF //no entrance index?

.org 0x80053984
addiu	a2, r0, 0x0002
nop

.org 0x80053994
ori		t2, r0, 0

.org 0x80053A00
lb		t7, 0x0EE0(v1)
ori		t7, t7, 0x0002

.org 0x80053A10
nop
addiu	v0, r0, 0x0002
sb		t7, 0x0EE0(v1)

//light arrow cs related?
.org 0x80053B80
nop


//Make Light Arrow CS take place in cutscene 10
.org 0x80056F2C
ori		t9, r0, 0xFFFA

.org 0x80056F44
b	@light_arrow_thing

.org 0x80056F88
@light_arrow_thing:

//Set save file's initial cutscene
.org 0x80090C58
ori		t9, r0, 0

//Set Nabooru fight cs to trigger regardless of age
.org 0x800EFDF6
.byte 2

//entrance table record modifications

.orga 0xb70df0
.word 0x64024102, 0x64024102
.orga 0xb71180
.word 0x61044102, 0x61044102
.orga 0xb711f0
.word 0x53004183, 0x53004183
.orga 0xb71390
.word 0x55004202, 0x55004202
.orga 0xb713d0
.word 0x5d114102, 0x5d114102
.orga 0xb71410
.word 0x56024183, 0x56024183
.orga 0xb71420
.word 0x57084183, 0x57084183
.orga 0xb71430
.word 0x5c054183, 0x5c054183

