#!/usr/bin/python

import sys

host = open(sys.argv[1],'r')
for host_line in host.readlines():
    print host_line.strip('\n')
host.close()

user = open(sys.argv[2],'r')
for user_line in user.readlines():
    print user_line.strip('\n')
user.close()

