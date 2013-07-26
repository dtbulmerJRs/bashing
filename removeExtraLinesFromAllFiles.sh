import fnmatch
import os
import sys

def listFiles(dir):
    rootdir = dir
    for root, subFolders, files in os.walk(rootdir):
        for file in files:
            yield os.path.join(root,file)
    return

keep = []
files = [f for f in os.path.dirname(sys.argv[0]) if os.path.isfile(f)]
for f in files:  
	fh = open(f, "r")
	lines = fh.readlines()
	fh.close()
	keep = []
	for line in lines:
		if not line.isspace():
			keep.append(line)
	fh = open("output", "w")
	fh.write("".join(keep))
	fh.close()
