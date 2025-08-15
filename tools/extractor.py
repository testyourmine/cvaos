# Credits to biosp4rk for this extractor

import argparse
from io import BufferedReader
import json
from pathlib import Path


GAME = "cvaos"
DATA_PATH = "data/"
DATABASE_PATH = "database.json"


def extract_data(region: str, quiet: bool = False) -> None:
    game = GAME
    rom: BufferedReader = open(f"{game}_{region}_baserom.gba", "rb")
    db_path = DATABASE_PATH
    with open(db_path, "r") as f:
        db = json.load(f)

    for entry in db:
        path: str = entry["path"]
        if not quiet:
            print(f"Extracting {path}")

        # Create directories if they don't exist
        path_obj = Path(DATA_PATH + path)
        path_obj.parent.mkdir(parents=True, exist_ok=True)

        addr = entry["addr"].get(region)
        if addr is not None:
            count = entry["count"]
            if isinstance(count, dict):
                count = count[region]
            size: int = count * entry["size"]
            rom.seek(entry["addr"][region])
            with open(path_obj, "wb") as f:
                f.write(rom.read(size))

    rom.close()


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    group = parser.add_mutually_exclusive_group()

    group.add_argument("-r", "--region", type=str, choices=["us"],
        default="us", help="The region of the rom to extract from")
    parser.add_argument("-q", "--quiet", action="store_true", help="Suppress output")
    
    args = parser.parse_args()
    if not args.region:
        args.region = "us"

    extract_data(args.region, args.quiet)
