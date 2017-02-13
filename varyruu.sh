#!/bin/bash

echo  "Config order: -bpred -ruu:size -fetch:ifqsize "

for bpred in nottaken taken perfect bimod 2lev comb; do 
	for ruu in 2 4 8 16 32 64 128 256; do
		for fetch in 1 2 4 8 16; do
			
		
								export SSFLAGS="-ruu:size $ruu -fetch:ifqsize $fetch -bpred $bpred"
								
								config=$bpred' '$ruu' '$fetch' '
								path=$bpred'_'$ruu'_'$fetch'_'
								
								./run-wattch  &>  /tmp/stats_$path
								echo -n -e "\n$config\t\tIPC\t"
								cat /tmp/stats_$path | grep sim_IPC | grep -o -E "[0-9]+\.[0-9]+"
								echo -n -e "$config\t\tEnergy\t"
								cat /tmp/stats_$path | grep "# total power per cycle_cc1" | grep -o -E "[0-9]+\.[0-9]+"
								
								
			
			
			
		done
	done
done
