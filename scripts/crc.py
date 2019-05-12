from ntype import uint32

def calculate_crc(buffer):
    t1 = t2 = t3 = t4 = t5 = t6 = 0xDF26F436
    u32 = 0xFFFFFFFF

    words = [t[0] for t in uint32._struct.iter_unpack(buffer[0x1000:0x101000])]
    words2 = [t[0] for t in uint32._struct.iter_unpack(buffer[0x750:0x850])]

    for cur in range(len(words)):
        d = words[cur]

        if ((t6 + d) & u32) < t6:
            t4 += 1

        t6 = (t6+d) & u32
        t3 ^= d
        shift = d & 0x1F
        r = ((d << shift) | (d >> (32 - shift))) & u32
        t5 = (t5 + r) & u32

        if t2 > d:
            t2 ^= r
        else:
            t2 ^= t6 ^ d

        data2 = words2[cur & 0x3F]
        t1 += data2 ^ d
        t1 &= u32

    crc0 = t6 ^ t4 ^ t3
    crc1 = t5 ^ t2 ^ t1

    return uint32.bytes(crc0) + uint32.bytes(crc1)