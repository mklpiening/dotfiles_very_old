import os
import sys

def get_directory(filename):
    return filename[:-len(filename.split('/')[-1])]

def mkdir(filename):
    os.makedirs(get_directory(filename), exist_ok=True)   

mkdir(sys.argv[2])
os.system('sudo cp -r ' + sys.argv[1] + ' ' + sys.argv[2])

