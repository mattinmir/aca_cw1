#!/bin/bash

stats="sim_IPC	total_power_cycle_cc1	sim_cycle	sim_elapsed_time"



echo -e "set\tassoc\t$stats"


for set in 1 2 4 8 16 32 64; do 

			
			export SSFLAGS="-ruu:size 16 -bpred comb -bpred:btb $set 1"
			
			config=$set
			path=$set



			./run-wattch  &>  /tmp/stats_$path
			
			echo -n -e "$config\t"
			
			
				
			echo -n -e $( cat /tmp/stats_$path | grep "instructions per cycle" | grep -o -E " [0-9]+(\.[0-9]+)?" )'\t'
			echo -n -e $( cat /tmp/stats_$path | grep "total power per cycle_cc1" | grep -o -E " [0-9]+(\.[0-9]+)?" )'\t'
			echo -n -e $( cat /tmp/stats_$path | grep "total simulation time in cycles" | grep -o -E " [0-9]+(\.[0-9]+)?" )'\t'
			echo -n -e $( cat /tmp/stats_$path | grep "total simulation time in seconds" | grep -o -E " [0-9]+(\.[0-9]+)?" )'\t'
			
			echo ""

done


