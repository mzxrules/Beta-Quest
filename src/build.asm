.n64
.relativeinclude on

.create "../roms/port.z64", 0
.incbin "../roms/base.z64"

//set language
.orga 0x3E
.byte 0x4A

;==============================================================================
; dmadata
;==============================================================================

.orga 0xB494
.word 0x0202E6E0

.orga 0xB4A4
.word 0x0204CF90

.orga 0xC424
.word 0x02AA46E0

.orga 0xD290
.word 0x03480000, 0x03480B00, 0x03480000 //payload

;==============================================================================
; Code file scripts
;==============================================================================

.headersize(0x800110A0 - 0xA87000)
.include "code.asm"
.include "loader.asm"
.org 0x8004BE30
.incbin("../build/loader.z64")
.include "save.asm"
.incbin("../resources/d/save_scrap.bin")

.include "kaleido_scope.asm"
.include "tower.asm"


;==============================================================================
; Cutscenes
;==============================================================================

.orga 0xD0FD04
.incbin("../resources/cs/firemedallion.z64")

.orga 0xD13A38
.incbin("../resources/cs/shadowmedallion.z64")

.orga 0xD39CA8
.incbin("../resources/cs/spiritmedallion.z64")
.incbin("../resources/d/spirit_medallion_scrap.bin")

.orga 0xD4EA58
.incbin("../resources/cs/forestmedallion.z64")
.incbin("../resources/d/forest_medallion_scrap.bin")
.orga 0xD4EA58
.word 0x17 //for matching purposes only

.orga 0xD59538
.incbin("../resources/cs/watermedallion.z64")

.orga 0x20783A0
//non-matching in c generation
.incbin("../resources/cs/kokiriemerald.z64")
.incbin("../resources/d/kokiri_emerald_scrap.bin")

.orga 0x2112D10
//non-matching in c generation
.incbin("../resources/cs/zorasapphire.z64")

.orga 0x22210B0
//non-matching in c generation
.incbin("../resources/cs/goronruby.z64")
.incbin("../resources/d/goron_ruby_scrap.bin")

.orga 0x251107E
.halfword 0x0FFF //change Link's spawn to the default in Chamber of Sages

.orga 0x2511120
//.incbin("../resources/cs/lightmedallion.z64")
.incbin("../resources/d/light_medallion_matching.z64")

.orga 0x25314E0
.incbin("../resources/cs/lightarrow.z64")
.incbin("../resources/d/light_arrow_scrap.bin")

.orga 0x2AA1A60
.incbin("../resources/cs/ganonlol.z64")

//Goddess Cutscene, which starts at 2AA2890
.orga 0x2AA2BDA 
.halfword 1, 2, 2 //set exit command start/end to 1 and 2

.orga 0x2E8DC04
.incbin("../resources/cs/theend.z64")

//Learning Zelda's Lullaby (02E8E524)
.orga 0x2E8E914
.halfword 0x0073 //change exit asm from 33 to 73



;==============================================================================
; Scenes
;==============================================================================

//Kakariko Graveyard
.orga 0x2020000
.incbin("../resources/s/spot02_scene.bin")
.orga 0x202C000
.incbin("../resources/s/spot02_room_0.bin")
.orga 0x202F000
.incbin("../resources/s/spot02_room_1.bin")


//Chamber of Sages
.orga 0x2515039
.byte 7 //set number of actors in chamber of sages to 7

.orga 0x2515070
//deletes actor 0x5D (Warp Portals) from the list of actors to spawn, for cutscene purposes
.incbin("../resources/s/kenjyanoma_room_0_setup_0_actors.bin")
.incbin("../resources/d/kenjyanoma_room_0_setup_0_actors_scrap.bin")


//Temple of Time
//scene
.orga 0x2529094
.word 0, 0, 0x0200CC40 //delete cutscene setups 8 an 9, and make cutscene setup A point to 8

.orga 0x2535C91
.byte 9 //set cutscene A to have 9 environment settings
.skip 2
.word 0x0200CD10 //new environement settings ptr

.orga 0x2535D10
.incbin("../resources/s/tokinoma_scene_setup_E_lighting.bin")
.fill 0x2A, 0 //for matching

//Room 1
.orga 0x2554074
.word 0, 0, 0x030007F0 //delete cutscene setups 8 an 9, and make cutscene setup A point to 8

//Cutscene Setup A
.orga 0x2554819
.byte 10 //number of objects
.skip 2
.word 0x030002F0 //object list offset
.skip 1
.byte 7 //number of actors
.skip 2
.word 0x03000890
.orga 0x2554890
.incbin("../resources/s/tokinoma_room_1_setup_E_actors.bin")


//Ganon's Castle (Exterior)
.orga 0x292B070
.incbin("../resources/s/ganon_tou_scene_spawns.bin")


//Cutscene Map
.orga 0x2AA000F
.byte 0x56 //playback song

//set link's spawn
.orga 0x2AA0080
.halfword 0x0000, 0, 0, 0, 0x0000, 0x8000, 0x0000, 0x03FF

//set room location across setups
.orga 0x2AA0090
.word 0x2AA4000, 0x2AA46E0

.orga 0x2AA3820
.word 0x2AA4000, 0x2AA46E0

.orga 0x2AA38F8
.word 0x2AA4000, 0x2AA46E0

.orga 0x2AA3980
.word 0x2AA4000, 0x2AA46E0

.orga 0x2AA3A10
.word 0x2AA4000, 0x2AA46E0

.orga 0x2AA3AC0
.word 0x2AA4000, 0x2AA46E0

.orga 0x2AA3B58
.word 0x2AA4000, 0x2AA46E0

.orga 0x2AA3BE8
.word 0x2AA4000, 0x2AA46E0

.orga 0x2AA3C70
.word 0x2AA4000, 0x2AA46E0

.orga 0x2AA3D00
.word 0x2AA4000, 0x2AA46E0

//the following are unused
.orga 0x2AA35D0
.word 0x2AA4000, 0x2AA46E0

.orga 0x2AA3690
.word 0x2AA4000, 0x2AA46E0

.orga 0x2AA3750
.word 0x2AA4000, 0x2AA46E0

//cutscene map room 0
.orga 0x2AA4024
.halfword 0x0477 //set current time for the skybox

.orga 0x2AA4031
.byte 3 //num object files
.skip 7
.byte 10 //num actors
.skip 2
.word 0x03000640

//set room 0's object files
.orga 0x2AA4078
.halfword 0x0092, 0x0106, 0x000E

//set room 0's actor spawns
.orga 0x2AA4640
.halfword 0x008C,  158, 149,  315, 0x0000, 0x0000, 0x0000, 0x0000 //Temple of Time Objects, Unknown
.halfword 0x0113, -173,   0,  100, 0x0000, 0x5555, 0x0000, 0xFF03 //Iron Knuckle, Switch Flag: FF, White, standing
.halfword 0x0113,  173,   0,  100, 0x0000, 0xAAAA, 0x0000, 0xFF03 //Iron Knuckle, Switch Flag: FF, White, standing
.halfword 0x0113,    0,   0, -200, 0x0000, 0x0000, 0x0000, 0xFF02 //Iron Knuckle, Switch Flag: FF, Black, standing
.halfword 0x0010, -216,   0,  125, 0x0000, 0x5555, 0x0000, 0x0000 //Bomb
.halfword 0x0010,  216,   0,  125, 0x0000, 0xAAAA, 0x0000, 0x0000 //Bomb
.halfword 0x0010,    0,   0, -250, 0x0000, 0x0000, 0x0000, 0x0000 //Bomb
.halfword 0x000A, -173,   0,  100, 0x0000, 0xD555, 0x0000, 0x1060 //Chest, Large, Appears, Clear Flag, Contents: Bombchu (10), Chest Flag: 0000
.halfword 0x000A,  173,   0,  100, 0x0000, 0x2AAA, 0x0000, 0x1520 //Chest, Large, Appears, Clear Flag, Contents: Deku Shield or blue (5) rupee, Chest Flag: 0000
.halfword 0x000A,    0,   0, -200, 0x0000, 0x8000, 0x0000, 0x1540 //Chest, Large, Appears, Clear Flag, Contents: Hylian Shield or blue (5) rupee, Chest Flag: 0000

//Bongo Bongo's Boss Room
.orga 0x2EC4094
.halfword 0x2B2 //change boss room exit to be a valid exit

;==============================================================================
; Title Screen
;==============================================================================

.orga 0x1795000
.incbin("../resources/version_ia8.bin")
.orga 0x17AE300
.incbin("../resources/copyright_ia8.bin")
.orga 0x17B3C40
.incbin("../resources/beta_quest_i8.bin")

.headersize(0x80AECDF0 - 0xE6C0D0)
.org 0x80AEE558
beql    t6, r0, title_screen_draw_dd

.org 0x80AEE56C
title_screen_draw_dd:

.org 0x80AEE6D4
addiu a3, a3, 0x60

.org 0x80AEE6E4
addiu t0, t0, 0x72


;==============================================================================
; Save Game Message textures
;==============================================================================


.orga 0x8409C0
.area 0xA00 + 0xA00 + 0xA00
.incbin("../resources/save_0_4.bin")
.incbin("../resources/save_1_4.bin")
.incbin("../resources/save_2_4.bin")
.endarea

;==============================================================================
; Code Binaries
;==============================================================================

.orga 0x3480000
.incbin("../build/rand.z64")


;==============================================================================
; Ganon
;==============================================================================

.orga 0xE879CC
addiu   t8, r0, 0x400

.orga 0xE879DC
ori     t0, r0, 0xFFF0


;==============================================================================
; Grottos
;==============================================================================

.orga 0x020C120E
.halfword 0x10FE

.orga 0x020C1512
.halfword 0x10FE

.orga 0x02103156
.halfword 0x11EA

.orga 0x021034BE
.halfword 0x11EA

.orga 0x021BD49A
.halfword 0x11F1

.orga 0x021BD6DA
.halfword 0x11F1

;==============================================================================
; Unsorted
;==============================================================================

//dialog, probably changed by mistake
.orga 0x8EB00C
.halfword 0x6142

.orga 0xca3174
ori     t6, r0, 0xFFF2

.orga 0xcca12c
addiu   at, r0, 0x0010

.orga 0xECF8A4 //Inside Ganon's Tower, set flags for completing trials
.word 0xFFFF8960, 0xFFFF8960, 0xFFFF8960, 0xFFFF8960, 0xFFFF8960, 0xFFFF8960

.close