#!/usr/bin/python
import socket
import sys

if len(sys.argv) != 3:
        print "Usage: vrfy.py <hosts.txt> <username>"
        sys.exit(0)

# Create a Socket
s=socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# Connect to the Server
host = open(sys.argv[1],'r')
for host_line in host.readlines():
#    host_clean=host_line.strip('\n')
    connect=s.connect((host_line.strip('\n'), 25))
#host.close()
# Receive the banner
banner=s.recv(1024)
print banner

# VRFY a user
user = open(sys.argv[2],'r')
for user_line in user.readlines():
    s.send('VRFY ' + user_line + '\r\n')
    result=s.recv(1024)
print result
#user.close()
# Close the socket
s.close()

## Maybe we close the files at the end?
host.close()
user.close()


## This simplified version works

#host = open(sys.argv[1],'r')
#for host_line in host.readlines():
#    print host_line
#host.close()

#user = open(sys.argv[2],'r')
#for user_line in user.readlines():
#    print user_line
#user.close()

## Outputs
# 
#192.168.19.250
#192.168.19.223
#192.168.19.220
#192.168.19.219

#admin
#administrator
#root

