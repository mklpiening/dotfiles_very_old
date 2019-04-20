import os
import sys

def mkdir(filename):
    os.makedirs(filename[:-len(filename.split('/')[-1])], exist_ok=True)   

with open(sys.argv[1], 'r') as f_from:
    mkdir(sys.argv[2])
    with open(sys.argv[2], 'a') as f_to:
        f_to.write('\n')
        for line in f_from:
            f_to.write(line)