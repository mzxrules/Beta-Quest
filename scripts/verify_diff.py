from rom_diff import create_diff

create_diff('../roms/base.z64', '../roms/V1a.z64', '../roms/base_to_v1a.txt')
create_diff('../roms/port.z64', '../roms/fuck', '../roms/v1a_to_port.txt')