# create pipe line pblock xdc

# list_inst: list the instance matching pattern
# list_pb_x: define the clockregion X of pblock
# list_pb_y: define the clockregion Y of pblock
# stageN   : the total stage of pipeline
# Fxdc     : pblock xdc file name
# SOFT_PBLOCK: property IS_SOFT of pblock, default is 1 if not claimed
#
set list_inst [list "_0_support"]
set stageN 6
set list_pb_x [list 0 1 3 5 7 9]
set list_pb_y [list 3]
set Fxdc "PBLOCK.xdc"
set SOFT_PBLOCK 0

set fh [open $Fxdc w]
for {set i_inst 0} {$i_inst < [llength $list_inst]} {incr i_inst} {
  
   set inst_pattern [lindex $list_inst $i_inst]
   set pb_y [lindex $list_pb_y $i_inst]
   for {set i_stage 1} {$i_stage <=$stageN} {incr i_stage} {
      set pb_x [lindex $list_pb_x [expr $i_stage -1]]
      set rx_stage [expr $stageN -$i_stage +1]
      puts $fh "#pblock for stage ${i_stage} clock region Y${pb_y}"
   
      set str_pb "
  set pblock_name pblock_phy_pipeline_X${pb_x}Y${pb_y}
  create_pblock \$pblock_name
  resize_pblock \$pblock_name -add {CLOCKREGION_X${pb_x}Y${pb_y}}
  #set cell_to_add {}
  add_cells_to_pblock \[get_pblocks \$pblock_name\] \[get_cells -hier -regexp {.*/gt_top_i/phy_pipeline/.*} \\
       -filter {is_sequential && NAME=~\".*ltssm_state_chain.*ff_chain_reg\\\[$i_stage\\\].*\" }\]
  add_cells_to_pblock \[get_pblocks \$pblock_name\] \[get_cells -hier -regexp {.*$inst_pattern.*/gt_top_i/phy_pipeline/.*} \\
      -filter {is_sequential && NAME=~\".*rx.*ff_chain_reg\\\[$rx_stage\\\].*\" && NAME!~\".*txdetectrx.*\" \\
              &&NAME!~\".*rx_term.*\" \\
              &&( NAME!~\".*rx_margin.*_o_chain.*\"  || \\
                   NAME=~\".*rx_margin.*payload_o_chain.*\" \\
                   || NAME=~\".*req_cmd_o.*\" ) \\
              &&NAME!~\".*rx_margin_req_payload_i.*\" \\
              &&NAME!~\".*rx_margin_req_cmd_i.*\" \\
              &&NAME!~\".*rx_margin_req_lane_num_.*\" \\
              &&NAME!~\".*rx_margin_req_req_i.*\" \\
              &&NAME!~\".*rx_margin_res_ack_i.*\" \\
              &&NAME!~ \".*rxpol.*\"}\]
  
  add_cells_to_pblock \[get_pblocks \$pblock_name\] \\
      \[get_cells -hier -regexp {.*$inst_pattern.*/gt_top_i/phy_pipeline/.*} \\
      -filter {is_sequential && NAME=~\".*rx_margin_req_lane_num_i.*ff_chain_reg\\\[$i_stage\\\].*\" }\]  
  
  add_cells_to_pblock \[get_pblocks \$pblock_name\] \\
      \[get_cells -hier -regexp {.*$inst_pattern.*/gt_top_i/phy_pipeline/.*} \\
      -filter {is_sequential && NAME=~\".*rx_margin_req_req_i.*ff_chain_reg\\\[$i_stage\\\].*\" }\]  
  
  add_cells_to_pblock \[get_pblocks \$pblock_name\] \\
      \[get_cells -hier -regexp {.*$inst_pattern.*/gt_top_i/phy_pipeline/.*} \\
      -filter {is_sequential && NAME=~\".*rx_margin_res_ack_i.*ff_chain_reg\\\[$i_stage\\\].*\" }\]  
  
  add_cells_to_pblock \[get_pblocks \$pblock_name\] \\
      \[get_cells -hier -regexp {.*$inst_pattern.*/gt_top_i/phy_pipeline/.*} \\
      -filter {is_sequential && NAME=~\".*rx_margin_req_cmd_i.*ff_chain_reg\\\[$i_stage\\\].*\" }\]  
  
  add_cells_to_pblock \[get_pblocks \$pblock_name\] \\
      \[get_cells -hier -regexp {.*$inst_pattern.*/gt_top_i/phy_pipeline/.*} \\
      -filter {is_sequential && NAME=~\".*rx_margin_req_payload_i.*ff_chain_reg\\\[$i_stage\\\].*\" }\]  
  
  add_cells_to_pblock \[get_pblocks \$pblock_name\] \\
      \[get_cells -hier -regexp {.*$inst_pattern.*/gt_top_i/phy_pipeline/.*} \\
      -filter {is_sequential && NAME=~\".*rx_margin_ack_o.*ff_chain_reg\\\[$i_stage\\\].*\" }\]  
  
  add_cells_to_pblock \[get_pblocks \$pblock_name\] \\
      \[get_cells -hier -regexp {.*$inst_pattern.*/gt_top_i/phy_pipeline/.*} \\
      -filter {is_sequential && NAME=~\".*rx_term.*ff_chain_reg\\\[$i_stage\\\].*\" }\]  

  add_cells_to_pblock \[get_pblocks \$pblock_name\] \\
      \[get_cells -hier -regexp {.*$inst_pattern.*/gt_top_i/phy_pipeline/.*} \\
      -filter {is_sequential &&NAME!\".*rx_margin.*payload_o_chain.*\" \\
           && NAME!~\".*rx_margin_req_cmd_o.*\"
           && NAME=~\".*rx_margin.*_o_chain.*ff_chain_reg\\\[$i_stage\\\].*\" }\]  
  
   add_cells_to_pblock \[get_pblocks \$pblock_name\] \[get_cells -hier -regexp {.*$inst_pattern.*/gt_top_i/phy_pipeline/.*} \\
      -filter {is_sequential && NAME=~\".*rxpol.*ff_chain_reg\\\[$i_stage\\\].*\" }\]
 
  add_cells_to_pblock \[get_pblocks \$pblock_name\] \[get_cells -hier -regexp {.*$inst_pattern.*/gt_top_i/phy_pipeline/.*} \\
      -filter {is_sequential && NAME=~\".*tx.*ff_chain_reg\\\[$i_stage\\\].*\" }\]  
  #remove_cells_from_pbock \$pblock_name \[get_cells -hier -regexp {.*rxelecidle.*}\]
  #remove_cells_from_pbock \$pblock_name \[get_cells -hier -regexp {.*RXTERM.*}\]
   "
      puts $fh $str_pb
    
   }
}
puts $fh "set_property IS_SOFT $SOFT_PBLOCK \[get_pblocks\] "   

close  $fh

# debug
  #add_cells_to_pblock \[get_pblocks \$pblock_name\] \\
  #    \[get_cells -hier -regexp {.*$inst_pattern.*/gt_top_i/phy_pipeline/.*} \\
  #    -filter {is_sequential && NAME=~\".*rx_margin_ack_i.*ff_chain_reg\\\[$rx_stage\\\].*\" }\]  
  
