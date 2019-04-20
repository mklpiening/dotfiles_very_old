import sys

lines = []
with open(sys.argv[1], 'r') as f:
    for line in f:
        lines.append(line)

with open(sys.argv[1], 'w') as f:
    for line in lines:
        f.write(line.replace(sys.argv[2], sys.argv[3].replace('%20', ' ')))