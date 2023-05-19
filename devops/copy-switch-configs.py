#!/usr/bin/python
import shutil

hclfiles          = ["vlan.tf", "radius.tf", "variables.tf"]
destinationfolder = "labdevices"
destinations      = ["switch1", "switch2", "switch3"]

for myfile in hclfiles:
    for mydest in destinations:
        print("Copy " + myfile + " to " + "../" + destinationfolder + "/" + mydest)
        shutil.copy(myfile,"../" + destinationfolder + "/" + mydest)

