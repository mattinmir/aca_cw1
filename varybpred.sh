#!/bin/bash

stats="sim_IPC	total_power_cycle_cc1	sim_cycle	sim_elapsed_time"



echo -e "bpred\t$stats"


for bpred in nottaken taken perfect bimod 2lev comb; do 
			
			export SSFLAGS="-ruu:size 16 -bpred $bpred"
			
			config=$bpred
			path=$bpred'_'
			
			./run-wattch  &>  /tmp/stats_$path
			
			echo -n -e "$config\t"
			
			
				
			echo -n -e $( cat /tmp/stats_$path | grep "instructions per cycle" | grep -o -E " [0-9]+(\.[0-9]+)?" )'\t'
			echo -n -e $( cat /tmp/stats_$path | grep "total power per cycle_cc1" | grep -o -E " [0-9]+(\.[0-9]+)?" )'\t'
			echo -n -e $( cat /tmp/stats_$path | grep "total simulation time in cycles" | grep -o -E " [0-9]+(\.[0-9]+)?" )'\t'
			echo -n -e $( cat /tmp/stats_$path | grep "total simulation time in seconds" | grep -o -E " [0-9]+(\.[0-9]+)?" )'\t'
			
			echo ""
		
done

