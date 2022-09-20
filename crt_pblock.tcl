# create pipe line pblock xdc

set inst_pattern "_0_support"
set stageN 6
set list_pb_x [list 0 1 3 5 7 9]
set pb_y 3
set Fxdc "PBLOCK.xdc"

set fh [open $Fxdc w]

for {set i_stage 1} {$i_stage <=$stageN} {incr i_stage} {
   set pb_x [lindex $list_pb_x [expr $i_stage -1]]
   set rx_stage [expr $stageN -$i_stage +1]
   puts $fh "#pblock for stage ${i_stage} clock region Y${pb_y}"

   set str_pb "  set pblock_name pblock_phy_pipeline_X${pb_x}Y${pb_y}
  create_pblock \$pblock_name
  resize_pblock \$pblock_name -add {CLOCKREGION_X${pb_x}Y${pb_y}}
  #set cell_to_add {}
  add_cells_to_pblock \[get_pblocks \$pblock_name\] \[get_cells -hier -regexp {.*/gt_top_i/phy_pipeline/.*} \\
       -filter {is_sequential && NAME=~\".*ltssm_state_chain.*ff_chain_reg\\\[$i_stage\\\].*\" }\]
  add_cells_to_pblock \[get_pblocks \$pblock_name\] \[get_cells -hier -regexp {.*$inst_pattern.*/gt_top_i/phy_pipeline/.*} \\
      -filter {is_sequential && NAME=~\".*rx.*ff_chain_reg\\\[$rx_stage\\\].*\" && NAME!~\".*txdetectrx.*\" }\]
  add_cells_to_pblock \[get_pblocks \$pblock_name\] \[get_cells -hier -regexp {.*$inst_pattern.*/gt_top_i/phy_pipeline/.*} \\
      -filter {is_sequential && NAME=~\".*tx.*ff_chain_reg\\\[$i_stage\\\].*\" }\]  
"
puts $fh $str_pb
 
}

close  $fh
