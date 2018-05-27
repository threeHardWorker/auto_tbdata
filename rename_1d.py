import os
import sys

if len(sys.argv) != 3:
    print('Usage: reanme.py <start date> <end date>\n')
    exit(0)

path = 'c:\\tmp\\csv'
s = '10秒'
d = '10s_' + sys.argv[1] + '_' + sys.argv[2]

fs = os.listdir(path)
for f in fs:
	os.rename(path + '\\' + f,
              path + '\\' + f.replace(s, d))