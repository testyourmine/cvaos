#!/usr/bin/env python3

value = 0x1C40

# === BGCNT bit definitions ===
BGCNT_MOSAIC = 1 << 6
BGCNT_256_COLOR = 1 << 7
BGCNT_SCREEN_OVERFLOW = 1 << 13

BGCNT_CHAR_BASE_BLOCK_SHIFT = 2
BGCNT_SCREEN_BASE_BLOCK_SHIFT = 8
BGCNT_SCREEN_SIZE_SHIFT = 14

# === Extract fields ===
char_base = (value >> BGCNT_CHAR_BASE_BLOCK_SHIFT) & 0x3
screen_base = (value >> BGCNT_SCREEN_BASE_BLOCK_SHIFT) & 0x1F
priority = value & 0x3
size = (value >> BGCNT_SCREEN_SIZE_SHIFT) & 0x3

extras = []
if value & BGCNT_MOSAIC:
    extras.append("BGCNT_MOSAIC")
if value & BGCNT_256_COLOR:
    extras.append("BGCNT_256_COLOR")
if value & BGCNT_SCREEN_OVERFLOW:
    extras.append("BGCNT_SCREEN_OVERFLOW")

# === Priority name map ===
prio_names = {
    0: "BGCNT_HIGH_PRIORITY",
    1: "BGCNT_HIGH_MID_PRIORITY",
    2: "BGCNT_LOW_MID_PRIORITY",
    3: "BGCNT_LOW_PRIORITY",
}

# === Size name map ===
size_names = {
    0: "BGCNT_SIZE_256x256",
    1: "BGCNT_SIZE_512x256",
    2: "BGCNT_SIZE_256x512",
    3: "BGCNT_SIZE_512x512",
}

# === Build output ===
macro = f"CREATE_BGCNT({char_base}, {screen_base}, {prio_names[priority]}, {size_names[size]})"
if extras:
    macro += " | " + " | ".join(extras)
# macro += ";"

# === Print result ===
print(f"{macro}")
