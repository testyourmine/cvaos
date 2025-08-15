# Installing Instructions

## Dependencies

- [agbcc](https://github.com/jiangzhengwenjz/agbcc)
- `binutils-arm-none-eabi`
- A baserom for each ROM desired to be built (i.e. `cvaos_us_baserom.gba` if you wish to build `cvaos_us.gba`).
- `python3`
- `g++`

## Setup

- **WINDOWS ONLY** : Install and setup [WSL](https://docs.microsoft.com/en-us/windows/wsl/install)
- Run `sudo apt update` just in case
- Install `binutils-arm-none-eabi` by running this command : `sudo apt-get install binutils-arm-none-eabi`
- Install `git` by running this command : `sudo apt-get install git`
- Install `make` by running this command : `sudo apt-get install make`

- Clone [agbcc](https://github.com/jiangzhengwenjz/agbcc) by running this command : `git clone https://github.com/jiangzhengwenjz/agbcc`
- Enter the agbcc folder (run `cd agbcc`)
  - Build it (run `./build.sh`)
  - Install it to this repo (`./install.sh path/to/cvaos`)
- Locate yourself in the decompilation root, and then build preproc (run `cd tools/preproc && make`)

## Build

- Run `make clean` if necessary
  - Use `make clean DATA=1` to remove data as well
- Run the data extractor if necessary (necessary to do so at least once) : `make extract`
- Run `make` (using the `-j` option is recommended to speed up the process)
- Optionally, you can combine the commands to make it easier : `make extract && make -j`