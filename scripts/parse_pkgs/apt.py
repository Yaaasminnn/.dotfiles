#!/usr/bin/python3

# takes in all apt packages from a raw file(apt_raw.txt).
# parses them so we only have the package name
# outputs them to another file(apt.txt)

import sys

parsed =[]

with open(sys.argv[1], "r") as f:
    pkgs = f.readlines() # reads all lines
    for pkg in pkgs:

        parsed.append(pkg[:pkg.find("/")] if pkg!='\n' else pkg)

with open(sys.argv[2], "w") as f:
    f.truncate(0)# clears the file?
    f.writelines(parsed) # writes the data
