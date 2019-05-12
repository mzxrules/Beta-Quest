import io

rom = None
with open('../roms/V1a.z64', 'rb') as file:
    rom = bytearray(file.read())

def rip(name, start, size):
    dump = rom[start:start + size]
    with open('dump/'+name, 'wb') as file:
        file.write(dump)

def rip_e(name, start, end):
    rip(name, start, end - start)

        
rip("save_0_4.bin", 0x8409C0, 0xA00)
rip("save_1_4.bin", 0x8413C0, 0xA00)
rip("save_2_4.bin", 0x841DC0, 0xA00)
rip("spirit_medallion_scrap.bin", 0xD39CA8 + 0x938, 0xBA8-0x938)
rip("forest_medallion_scrap.bin", 0xd4f2dc, 0x10)
rip("kokiriemerald.z64", 0x20783A0, 0xAD8)
rip("kokiri_emerald_scrap.bin", 0x20783A0 + 0xAD8, 0x131C - 0xAD8)
rip("zorasapphire.z64", 0x2112D10, 0xDF4)
rip("goronruby.z64", 0x22210B0, 0x1230)
rip("goron_ruby_scrap.bin", 0x22210B0 + 0x1230, 0x230C-0x1230)
rip("light_medallion_matching.z64", 0x2511120, 0x938)
rip("lightarrow.z64", 0x25314E0, 0x1D7C)
rip("light_arrow_scrap.bin", 0x25314E0 + 0x1D7C, 0x39B0 - 0x1D7C)
rip("ganonlol.z64", 0x2AA1A60, 0x498)
rip("version_ia8.bin", 0x1795000, 0x300)
rip("copyright_ia8.bin", 0x17AE300, 0x800)
rip("beta_quest_i8.bin", 0x17B3C40, 0x800)
rip_e("spot02_scene.bin", 0x2020000, 0x202BC80)
rip_e("spot02_room_0.bin", 0x0202C000, 0x0202E6E0)
rip_e("spot02_room_1.bin", 0x0202F000, 0x0204CF90)
rip_e("save_scrap.bin", 0xAC1FD0, 0xAC1FE4)
rip("kenjyanoma_room_0_setup_0_actors.bin", 0x2515070, 0x70)
rip("kenjyanoma_room_0_setup_0_actors_scrap.bin", 0x25150E0, 0x10)
rip("tokinoma_scene_setup_E_lighting.bin", 0x2529000 + 0xCD10, 0x16 * 9)
rip("tokinoma_room_1_setup_E_actors.bin", 0x2554000 + 0x890, 0x70)
rip("ganon_tou_scene_spawns.bin", 0x292B070, 0x30)