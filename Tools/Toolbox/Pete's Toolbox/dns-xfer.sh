#!/bin/bash

## This is a simplified DNS zone transfer script
# I could add all the "how-to-use" stuff, but that would take too long :D

# Grab the list of nameservers
for server in $(host -t ns $1 | cut -d" " -f4); do

# Now lets attempt the zone transfers
host -l $1 $server | grep "has address"

done





