#!/bin/bash

stats="total_power_cycle_cc1	sim_IPC	sim_cycle	sim_elapsed_time"



echo -e "ras\t$stats"


for c in 0 1 2 4 8 16 32 ; do 
	
			
			export SSFLAGS="-ruu:size 16 -bpred comb -bpred:comb 256 -bpred:btb 32 1 -bpred:ras $c"
			
			config=$c
			path=$c
			
			./run-wattch  &>  /tmp/stats_$path
			
			echo -n -e "$config\t"
			
			
				
			
			echo -n -e $( cat /tmp/stats_$path | grep "total power per cycle_cc1" | grep -o -E " [0-9]+(\.[0-9]+)?" )'\t'
			echo -n -e $( cat /tmp/stats_$path | grep "instructions per cycle" | grep -o -E " [0-9]+(\.[0-9]+)?" )'\t'
			echo -n -e $( cat /tmp/stats_$path | grep "total simulation time in cycles" | grep -o -E " [0-9]+(\.[0-9]+)?" )'\t'
			echo -n -e $( cat /tmp/stats_$path | grep "total simulation time in seconds" | grep -o -E " [0-9]+(\.[0-9]+)?" )'\t'
			
			echo ""
done
