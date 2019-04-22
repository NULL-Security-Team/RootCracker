#!/bin/bash

DEBUG_FILE=~/.debug_log
rm $DEBUG_FILE

#runs the vulnerable program in a tight loop with a high nice value to increase chances of exploitation
while true
do
  nice -n 20 ./vuln_fast "localhost student"
done
