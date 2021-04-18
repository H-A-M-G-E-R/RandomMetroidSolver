#!/usr/bin/python3

# apply a diff generated by smile to a rom.

# diff format:
# first line is the header: "Offset : #1 #2"
# each remaining line is: $xxxxxx: yy zz
# $xxxxxx: address in rom
# yy: vanilla value
# zz: new value
# example: $078A1A: 5A 3B

import sys, os
# now that we're in directory 'tools/' we have to update sys.path
sys.path.append(os.path.dirname(sys.path[0]))
from rom.rom import RealROM

romFileName = sys.argv[1]
romFile = RealROM(romFileName)

smilePatchFileName = sys.argv[2]
with open(smilePatchFileName, 'r') as smilePatchFile:
    content = smilePatchFile.readlines()

# ignore first line
for line in content[1:]:
    (addr, old, new) = line.split(' ')
    addr = int(addr[1:-1], 16)
    new = int(new, 16)
    romFile.writeByte(new, addr)

print("done. applied {} bytes to {}".format(len(content)-1, romFileName))
