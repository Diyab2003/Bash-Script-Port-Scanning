#!/bin/bash

# Simple Port Scanner
# Usage: ./port_scanner.sh <target_ip>
echo "Usage: ./port-scanner.sh [IP]"
echo
echo
if ["$1" = "" ];
then
  echo "Usage: ./port-scanner.sh [IP]"
else
  echo "Scanning ports for $target_ip..."
  nc -nvz $1 1-65535 > $1.txt 2>&1
fi
tac $1.txt
rm -rf $1.txt
