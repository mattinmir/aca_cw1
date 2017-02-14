#!/bin/bash

stats="sim_num_insn	sim_num_refs	sim_num_loads	sim_num_stores	sim_num_branches	sim_elapsed_time	sim_inst_rate	sim_total_insn	sim_total_refs	sim_total_loads	sim_total_stores	sim_total_branches	sim_cycle	sim_IPC	sim_CPI	sim_exec_BW	sim_IPB	IFQ_count	IFQ_fcount	ifq_occupancy	ifq_rate	ifq_latency	ifq_full	RUU_count	RUU_fcount	ruu_occupancy	ruu_rate	ruu_latency	ruu_full	LSQ_count	LSQ_fcount	lsq_occupancy	lsq_rate	lsq_latency	lsq_full	sim_slip	avg_sim_slip	bpred_nottaken.lookups	bpred_nottaken.updates	bpred_nottaken.addr_hits	bpred_nottaken.dir_hits	bpred_nottaken.misses	bpred_nottaken.jr_hits	bpred_nottaken.jr_seen	bpred_nottaken.jr_non_ras_hits.PP	bpred_nottaken.jr_non_ras_seen.PP	bpred_nottaken.bpred_addr_rate	bpred_nottaken.bpred_dir_rate	bpred_nottaken.bpred_jr_rate	bpred_nottaken.bpred_jr_non_ras_rate.PP	bpred_nottaken.retstack_pushes	bpred_nottaken.retstack_pops	bpred_nottaken.used_ras.PP	bpred_nottaken.ras_hits.PP	bpred_nottaken.ras_rate.PP	il1.accesses	il1.hits	il1.misses	il1.replacements	il1.writebacks	il1.invalidations	il1.miss_rate	il1.repl_rate	il1.wb_rate	il1.inv_rate	dl1.accesses	dl1.hits	dl1.misses	dl1.replacements	dl1.writebacks	dl1.invalidations	dl1.miss_rate	dl1.repl_rate	dl1.wb_rate	dl1.inv_rate	ul2.accesses	ul2.hits	ul2.misses	ul2.replacements	ul2.writebacks	ul2.invalidations	ul2.miss_rate	ul2.repl_rate	ul2.wb_rate	ul2.inv_rate	itlb.accesses	itlb.hits	itlb.misses	itlb.replacements	itlb.writebacks	itlb.invalidations	itlb.miss_rate	itlb.repl_rate	itlb.wb_rate	itlb.inv_rate	dtlb.accesses	dtlb.hits	dtlb.misses	dtlb.replacements	dtlb.writebacks	dtlb.invalidations	dtlb.miss_rate	dtlb.repl_rate	dtlb.wb_rate	dtlb.inv_rate	rename_power	bpred_power	window_power	lsq_power	regfile_power	icache_power	dcache_power	dcache2_power	alu_power	falu_power	resultbus_power	clock_power	avg_rename_power	avg_bpred_power	avg_window_power	avg_lsq_power	avg_regfile_power	avg_icache_power	avg_dcache_power	avg_dcache2_power	avg_alu_power	avg_falu_power	avg_resultbus_power	avg_clock_power	fetch_stage_power	dispatch_stage_power	issue_stage_power	avg_fetch_power	avg_dispatch_power	avg_issue_power	total_power	avg_total_power_cycle	avg_total_power_cycle_nofp_nod2	avg_total_power_insn	avg_total_power_insn_nofp_nod2	rename_power_cc1	bpred_power_cc1	window_power_cc1	lsq_power_cc1	regfile_power_cc1	icache_power_cc1	dcache_power_cc1	dcache2_power_cc1	alu_power_cc1	resultbus_power_cc1	clock_power_cc1	avg_rename_power_cc1	avg_bpred_power_cc1	avg_window_power_cc1	avg_lsq_power_cc1	avg_regfile_power_cc1	avg_icache_power_cc1	avg_dcache_power_cc1	avg_dcache2_power_cc1	avg_alu_power_cc1	avg_resultbus_power_cc1	avg_clock_power_cc1	fetch_stage_power_cc1	dispatch_stage_power_cc1	issue_stage_power_cc1	avg_fetch_power_cc1	avg_dispatch_power_cc1	avg_issue_power_cc1	total_power_cycle_cc1	avg_total_power_cycle_cc1	avg_total_power_insn_cc1	rename_power_cc2	bpred_power_cc2	window_power_cc2	lsq_power_cc2	regfile_power_cc2	icache_power_cc2	dcache_power_cc2	dcache2_power_cc2	alu_power_cc2	resultbus_power_cc2	clock_power_cc2	avg_rename_power_cc2	avg_bpred_power_cc2	avg_window_power_cc2	avg_lsq_power_cc2	avg_regfile_power_cc2	avg_icache_power_cc2	avg_dcache_power_cc2	avg_dcache2_power_cc2	avg_alu_power_cc2	avg_resultbus_power_cc2	avg_clock_power_cc2	fetch_stage_power_cc2	dispatch_stage_power_cc2	issue_stage_power_cc2	avg_fetch_power_cc2	avg_dispatch_power_cc2	avg_issue_power_cc2	total_power_cycle_cc2	avg_total_power_cycle_cc2	avg_total_power_insn_cc2	rename_power_cc3	bpred_power_cc3	window_power_cc3	lsq_power_cc3	regfile_power_cc3	icache_power_cc3	dcache_power_cc3	dcache2_power_cc3	alu_power_cc3	resultbus_power_cc3	clock_power_cc3	avg_rename_power_cc3	avg_bpred_power_cc3	avg_window_power_cc3	avg_lsq_power_cc3	avg_regfile_power_cc3	avg_icache_power_cc3	avg_dcache_power_cc3	avg_dcache2_power_cc3	avg_alu_power_cc3	avg_resultbus_power_cc3	avg_clock_power_cc3	fetch_stage_power_cc3	dispatch_stage_power_cc3	issue_stage_power_cc3	avg_fetch_power_cc3	avg_dispatch_power_cc3	avg_issue_power_cc3	total_power_cycle_cc3	avg_total_power_cycle_cc3	avg_total_power_insn_cc3	total_rename_access	total_bpred_access	total_window_access	total_lsq_access	total_regfile_access	total_icache_access	total_dcache_access	total_dcache2_access	total_alu_access	total_resultbus_access	avg_rename_access	avg_bpred_access	avg_window_access	avg_lsq_access	avg_regfile_access	avg_icache_access	avg_dcache_access	avg_dcache2_access	avg_alu_access	avg_resultbus_access	max_rename_access	max_bpred_access	max_window_access	max_lsq_access	max_regfile_access	max_icache_access	max_dcache_access	max_dcache2_access	max_alu_access	max_resultbus_access	max_cycle_power_cc1	max_cycle_power_cc2	max_cycle_power_cc3	sim_invalid_addrs	ld_text_base	ld_text_size	ld_data_base	ld_data_size	ld_stack_base	ld_stack_size	ld_prog_entry	ld_environ_base	ld_target_big_endian	mem.page_count	mem.page_mem	mem.ptab_misses	mem.ptab_accesses	mem.ptab_miss_rate"


echo -e "bpred\t$stats"
valstring=''

for bpred in nottaken taken perfect bimod 2lev comb; do 
			
			export SSFLAGS="-ruu:size 16 -bpred $bpred"
			
			config=$bpred
			path=$bpred'_'
			
			./run-wattch  &>  /tmp/stats_$path
			
			echo -n -e "$config\t"
			
			for stat in $stats ; do
				
				val=$( cat /tmp/stats_$path | grep $stat | grep -o -E "[0-9]+(\.[0-9]+)?" )
				valstring+=$val'\t'
				
			done
			
			echo -e $valstring
		
done

