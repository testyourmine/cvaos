#!/usr/bin/env python3
import struct

ROM_PATH = "cvaos_us_baserom.gba"
ROM_OFFSET = 0x004F1020
ENTRY_COUNT = 13
ENTRY_SIZE = 4  # includes 2 bytes padding

def read_structs():
    with open(ROM_PATH, "rb") as f:
        f.seek(ROM_OFFSET)
        entries = []
        for i in range(ENTRY_COUNT):
            data = f.read(ENTRY_SIZE)
            if len(data) < ENTRY_SIZE:
                break
            # read only first 4 bytes (the actual struct content)
            unk_0, = struct.unpack("<I", data[:4])
            entries.append((unk_0, ))
        return entries

def main():
    structs = read_structs()
    print(f"u8 *sUnk_084F1020[{ENTRY_COUNT}] = {{")
    for i, (unk_0, ) in enumerate(structs):
        # print(f"    [{i}] = {{")
        # print(f"        .unk_0 = {unk_0},")
        # print(f"        .unk_4 = {unk_4}")
        # print(f"    }},")
        print(f"    0x{unk_0:08X},")
    print("};")

if __name__ == "__main__":
    main()
