.orga 0xD1C9C8
addiu   a1, r0, 0 //Rock Check, possibly triggers "rumble"

.orga 0xD1CC90
addiu   a1, r0, 0 //Rock Spawner, Spawns rocks

.orga 0xD7FE5C
addiu   a1, r0, 0 //Ganon's Check

.orga 0xD836FC
addiu   a1, r0, 0 //Ganon's Write

.orga 0xD82AC0
addiu   t2, r0, 0x0200 //Ganon spawns a special zelda, set switch flag to 2


//Stalfos Encounter
.orga 0x00E7EB6C
addiu   at, r0, 0x0008

//Stalfos Encounter
.orga 0x00E7EBD0
addiu   at, r0, 0x0008


;==============================================================================
; Zelda
;==============================================================================


.orga 0x00E7EE4C
addiu   at, r0, 0x0006

.orga 0x00E7EE54
addiu   at, r0, 0x0007

.orga 0x00E7EE5C
addiu   at, r0, 0x0007

.orga 0x00E7EE68
addiu   at, r0, 0x0007

.orga 0x00E7EE78
addiu   at, r0, 0x0008

.orga 0x00E7EE84
addiu   at, r0, 0x0008

.orga 0x00E7EE94
addiu   at, r0, 0x0009

.orga 0x00E7EEA0
addiu   at, r0, 0x0009

.orga 0x00E7EEB0
addiu   at, r0, 0x000A

.orga 0x00E7EEBC
addiu   at, r0, 0x000A

.orga 0x00E7EEE0
addiu   at, r0, 0x0002

.orga 0x00E7EEE8
addiu   at, r0, 0x0003

.orga 0x00E7EEF4
addiu   a1, r0, 0x0000 //zelda

.orga 0x00E7EF3C
addiu   at, r0, 0x0003

.orga 0x00E7EF48
addiu   at, r0, 0x0003

.orga 0x00E7EF58
addiu   at, r0, 0x0004

.orga 0x00E7EF64
addiu   at, r0, 0x0004

.orga 0x00E7EF74
addiu   at, r0, 0x0005

.orga 0x00E7EF80
addiu   at, r0, 0x0005

.orga 0x00E7EFA4
addiu   at, r0, 0x000B

.orga 0x00E7EFAC
addiu   at, r0, 0x000C

.orga 0x00E7EFB4
addiu   at, r0, 0x000C

.orga 0x00E7EFC0
addiu   at, r0, 0x000C

.orga 0x00E80CA4
addiu   a1, r0, 0x0000

.orga 0x00E80D74
addiu   a1, r0, 0x0000

.orga 0x00E81010
addiu   a1, r0, 0x0000

.orga 0x00E810F0
addiu   a1, r0, 0x0001 //zelda sets perm 1 when setting timer
    
;==============================================================================
; Tower Collapse Gates
;==============================================================================

//Converts all gates to permanent flags

//Tower Collapse Exterior
.orga 0x2FFA06E
.halfword 0x0203

.orga 0x2FFA07E
.halfword 0x0313

.orga 0x2FFA08E
.halfword 0x0423

.orga 0x2FFA09E
.halfword 0x0533

.orga 0x2FFA0AE
.halfword 0x0200

.orga 0x2FFA0BE
.halfword 0x0302

.orga 0x2FFA0CE
.halfword 0x0404

.orga 0x2FFA0DE
.halfword 0x0506

//Tower Collapse Interior
.orga 0x33D214A
.halfword 0x0933

.orga 0x33D215A
.halfword 0x0907

.orga 0x33DA0BA
.halfword 0x0823

.orga 0x33DA0CA
.halfword 0x0805

.orga 0x33E216A
.halfword 0x0713

.orga 0x33E217A
.halfword 0x0703

.orga 0x33EB10A
.halfword 0x0A43

.orga 0x33EB11A
.halfword 0x0A08

.orga 0x33F113A
.halfword 0x0603

.orga 0x33F114A
.halfword 0x0601

//Inside Ganon's Castle
.orga 0x344F06E
.halfword 0x0B03

.orga 0x344F08E
.halfword 0x0B08

.orga 0x346706A
.halfword 0x0C13

.orga 0x346708A
.halfword 0x0C09
