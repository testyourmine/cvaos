#!/usr/bin/env python3
import struct

ROM_PATH = "cvaos_us_baserom.gba"
ROM_OFFSET = 0x004F0ED8  # start address of the function pointer array
ENTRY_COUNT = 0x38       # 56 entries
ENTRY_SIZE = 4           # each entry is a 32-bit function pointer

def read_entries():
    with open(ROM_PATH, "rb") as f:
        f.seek(ROM_OFFSET)
        entries = []
        for i in range(ENTRY_COUNT):
            data = f.read(ENTRY_SIZE)
            if len(data) < ENTRY_SIZE:
                break
            (addr,) = struct.unpack("<I", data)
            entries.append(addr)
        return entries

def main():
    entries = read_entries()
    print(f"void (*sUnk_084F0ED8[{ENTRY_COUNT}])(struct EwramData_unk4E4 *) = {{")
    for i, addr in enumerate(entries):
        # You can uncomment the cast version if you prefer:
        # print(f"    [{i}] = (void (*)(struct EwramData_unk4E4 *))0x{addr:08X},")
        print(f"    [{i}] = sub_{(addr - 1):08X},")
        # print(f"extern void sub_{(addr - 1):08X}(struct EwramData_unk4E4 *param_0);")
    print("};")

if __name__ == "__main__":
    main()
