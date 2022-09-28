#!/usr/bin/python3

# takes in all snap packages from a raw file(snap_raw.txt).
# parses them so we only have the package name
# outputs them to another file(snap.txt)

import sys

parsed =[]

with open(sys.argv[1], "r") as f:
    pkgs = f.readlines() # reads all lines
    for pkg in pkgs:
        parsed.append(pkg[:pkg.find(" ")]+"\n")

with open(sys.argv[2], "w") as f:
    f.truncate(0)# clears the file?
    f.writelines(parsed) # writes the data
