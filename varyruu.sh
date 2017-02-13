#!/bin/bash

for x in 2 4 8 16 32 64 128 256
do
	export SSFLAGS="-ruu:size $x"
	./run-wattch  &> /tmp/stats_$x
  	echo -n $x " "
  	cat /tmp/stats_$x | grep sim_IPC
 	echo -n $x " "
	cat /tmp/stats_$x | grep "# total power per cycle_cc1"
	echo ""

done
