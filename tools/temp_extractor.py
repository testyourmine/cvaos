from io import BufferedReader
from pathlib import Path

GAME = "cvaos"
REGION = "us"

rom: BufferedReader = open(f"{GAME}_{REGION}_baserom.gba", "rb")

addr: int = 0xE0368

rom.seek(addr)

counter = 0
while addr < 0xE0368 + 0x800:
    halfword = int.from_bytes(rom.read(2), byteorder='little')
    halfword = float(halfword)
    halfword = halfword / 0x10000
    print(f"Q_16_16({halfword:.16f}f),", end="")
    counter += 1
    if counter == 16:
        print("")
        counter = 0
    else:
        print(" ", end="")
    addr += 2