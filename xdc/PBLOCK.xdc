#pblock for stage 1 clock region Y3

  set pblock_name pblock_phy_pipeline_X0Y3
  create_pblock $pblock_name
  resize_pblock $pblock_name -add {CLOCKREGION_X0Y3}
  #set cell_to_add {}
  add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*/gt_top_i/phy_pipeline/.*} \
       -filter {is_sequential && NAME=~".*ltssm_state_chain.*ff_chain_reg\[1\].*" }]
  add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx.*ff_chain_reg\[6\].*" && NAME!~".*txdetectrx.*" \
              &&NAME!~".*rx_term.*" \
              &&( NAME!~".*rx_margin.*_o_chain.*"  || \
                   NAME=~".*rx_margin.*payload_o_chain.*" \
                   || NAME=~".*req_cmd_o.*" ) \
              &&NAME!~".*rx_margin_req_payload_i.*" \
              &&NAME!~".*rx_margin_req_cmd_i.*" \
              &&NAME!~".*rx_margin_req_lane_num_.*" \
              &&NAME!~".*rx_margin_req_req_i.*" \
              &&NAME!~".*rx_margin_res_ack_i.*" \
              &&NAME!~ ".*rxpol.*"}]
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_margin_req_lane_num_i.*ff_chain_reg\[1\].*" }]  
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_margin_req_req_i.*ff_chain_reg\[1\].*" }]  
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_margin_res_ack_i.*ff_chain_reg\[1\].*" }]  
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_margin_req_cmd_i.*ff_chain_reg\[1\].*" }]  
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_margin_req_payload_i.*ff_chain_reg\[1\].*" }]  
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_margin_ack_o.*ff_chain_reg\[1\].*" }]  
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_term.*ff_chain_reg\[1\].*" }]  

  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential &&NAME!~".*rx_margin.*payload_o_chain.*" \
           && NAME!~".*rx_margin_req_cmd_o.*"
           && NAME=~".*rx_margin.*_o_chain.*ff_chain_reg\[1\].*" }]  
  
   add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rxpol.*ff_chain_reg\[1\].*" }]
 
  add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*tx.*ff_chain_reg\[1\].*" }]  
  #remove_cells_from_pbock $pblock_name [get_cells -hier -regexp {.*rxelecidle.*}]
  #remove_cells_from_pbock $pblock_name [get_cells -hier -regexp {.*RXTERM.*}]
   
#pblock for stage 2 clock region Y3

  set pblock_name pblock_phy_pipeline_X1Y3
  create_pblock $pblock_name
  resize_pblock $pblock_name -add {CLOCKREGION_X1Y3}
  #set cell_to_add {}
  add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*/gt_top_i/phy_pipeline/.*} \
       -filter {is_sequential && NAME=~".*ltssm_state_chain.*ff_chain_reg\[2\].*" }]
  add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx.*ff_chain_reg\[5\].*" && NAME!~".*txdetectrx.*" \
              &&NAME!~".*rx_term.*" \
              &&( NAME!~".*rx_margin.*_o_chain.*"  || \
                   NAME=~".*rx_margin.*payload_o_chain.*" \
                   || NAME=~".*req_cmd_o.*" ) \
              &&NAME!~".*rx_margin_req_payload_i.*" \
              &&NAME!~".*rx_margin_req_cmd_i.*" \
              &&NAME!~".*rx_margin_req_lane_num_.*" \
              &&NAME!~".*rx_margin_req_req_i.*" \
              &&NAME!~".*rx_margin_res_ack_i.*" \
              &&NAME!~ ".*rxpol.*"}]
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_margin_req_lane_num_i.*ff_chain_reg\[2\].*" }]  
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_margin_req_req_i.*ff_chain_reg\[2\].*" }]  
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_margin_res_ack_i.*ff_chain_reg\[2\].*" }]  
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_margin_req_cmd_i.*ff_chain_reg\[2\].*" }]  
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_margin_req_payload_i.*ff_chain_reg\[2\].*" }]  
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_margin_ack_o.*ff_chain_reg\[2\].*" }]  
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_term.*ff_chain_reg\[2\].*" }]  

  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential &&NAME!~".*rx_margin.*payload_o_chain.*" \
           && NAME!~".*rx_margin_req_cmd_o.*"
           && NAME=~".*rx_margin.*_o_chain.*ff_chain_reg\[2\].*" }]  
  
   add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rxpol.*ff_chain_reg\[2\].*" }]
 
  add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*tx.*ff_chain_reg\[2\].*" }]  
  #remove_cells_from_pbock $pblock_name [get_cells -hier -regexp {.*rxelecidle.*}]
  #remove_cells_from_pbock $pblock_name [get_cells -hier -regexp {.*RXTERM.*}]
   
#pblock for stage 3 clock region Y3

  set pblock_name pblock_phy_pipeline_X3Y3
  create_pblock $pblock_name
  resize_pblock $pblock_name -add {CLOCKREGION_X3Y3}
  #set cell_to_add {}
  add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*/gt_top_i/phy_pipeline/.*} \
       -filter {is_sequential && NAME=~".*ltssm_state_chain.*ff_chain_reg\[3\].*" }]
  add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx.*ff_chain_reg\[4\].*" && NAME!~".*txdetectrx.*" \
              &&NAME!~".*rx_term.*" \
              &&( NAME!~".*rx_margin.*_o_chain.*"  || \
                   NAME=~".*rx_margin.*payload_o_chain.*" \
                   || NAME=~".*req_cmd_o.*" ) \
              &&NAME!~".*rx_margin_req_payload_i.*" \
              &&NAME!~".*rx_margin_req_cmd_i.*" \
              &&NAME!~".*rx_margin_req_lane_num_.*" \
              &&NAME!~".*rx_margin_req_req_i.*" \
              &&NAME!~".*rx_margin_res_ack_i.*" \
              &&NAME!~ ".*rxpol.*"}]
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_margin_req_lane_num_i.*ff_chain_reg\[3\].*" }]  
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_margin_req_req_i.*ff_chain_reg\[3\].*" }]  
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_margin_res_ack_i.*ff_chain_reg\[3\].*" }]  
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_margin_req_cmd_i.*ff_chain_reg\[3\].*" }]  
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_margin_req_payload_i.*ff_chain_reg\[3\].*" }]  
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_margin_ack_o.*ff_chain_reg\[3\].*" }]  
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_term.*ff_chain_reg\[3\].*" }]  

  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential &&NAME!~".*rx_margin.*payload_o_chain.*" \
           && NAME!~".*rx_margin_req_cmd_o.*"
           && NAME=~".*rx_margin.*_o_chain.*ff_chain_reg\[3\].*" }]  
  
   add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rxpol.*ff_chain_reg\[3\].*" }]
 
  add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*tx.*ff_chain_reg\[3\].*" }]  
  #remove_cells_from_pbock $pblock_name [get_cells -hier -regexp {.*rxelecidle.*}]
  #remove_cells_from_pbock $pblock_name [get_cells -hier -regexp {.*RXTERM.*}]
   
#pblock for stage 4 clock region Y3

  set pblock_name pblock_phy_pipeline_X5Y3
  create_pblock $pblock_name
  resize_pblock $pblock_name -add {CLOCKREGION_X5Y3}
  #set cell_to_add {}
  add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*/gt_top_i/phy_pipeline/.*} \
       -filter {is_sequential && NAME=~".*ltssm_state_chain.*ff_chain_reg\[4\].*" }]
  add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx.*ff_chain_reg\[3\].*" && NAME!~".*txdetectrx.*" \
              &&NAME!~".*rx_term.*" \
              &&( NAME!~".*rx_margin.*_o_chain.*"  || \
                   NAME=~".*rx_margin.*payload_o_chain.*" \
                   || NAME=~".*req_cmd_o.*" ) \
              &&NAME!~".*rx_margin_req_payload_i.*" \
              &&NAME!~".*rx_margin_req_cmd_i.*" \
              &&NAME!~".*rx_margin_req_lane_num_.*" \
              &&NAME!~".*rx_margin_req_req_i.*" \
              &&NAME!~".*rx_margin_res_ack_i.*" \
              &&NAME!~ ".*rxpol.*"}]
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_margin_req_lane_num_i.*ff_chain_reg\[4\].*" }]  
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_margin_req_req_i.*ff_chain_reg\[4\].*" }]  
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_margin_res_ack_i.*ff_chain_reg\[4\].*" }]  
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_margin_req_cmd_i.*ff_chain_reg\[4\].*" }]  
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_margin_req_payload_i.*ff_chain_reg\[4\].*" }]  
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_margin_ack_o.*ff_chain_reg\[4\].*" }]  
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_term.*ff_chain_reg\[4\].*" }]  

  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential &&NAME!~".*rx_margin.*payload_o_chain.*" \
           && NAME!~".*rx_margin_req_cmd_o.*"
           && NAME=~".*rx_margin.*_o_chain.*ff_chain_reg\[4\].*" }]  
  
   add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rxpol.*ff_chain_reg\[4\].*" }]
 
  add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*tx.*ff_chain_reg\[4\].*" }]  
  #remove_cells_from_pbock $pblock_name [get_cells -hier -regexp {.*rxelecidle.*}]
  #remove_cells_from_pbock $pblock_name [get_cells -hier -regexp {.*RXTERM.*}]
   
#pblock for stage 5 clock region Y3

  set pblock_name pblock_phy_pipeline_X7Y3
  create_pblock $pblock_name
  resize_pblock $pblock_name -add {CLOCKREGION_X7Y3}
  #set cell_to_add {}
  add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*/gt_top_i/phy_pipeline/.*} \
       -filter {is_sequential && NAME=~".*ltssm_state_chain.*ff_chain_reg\[5\].*" }]
  add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx.*ff_chain_reg\[2\].*" && NAME!~".*txdetectrx.*" \
              &&NAME!~".*rx_term.*" \
              &&( NAME!~".*rx_margin.*_o_chain.*"  || \
                   NAME=~".*rx_margin.*payload_o_chain.*" \
                   || NAME=~".*req_cmd_o.*" ) \
              &&NAME!~".*rx_margin_req_payload_i.*" \
              &&NAME!~".*rx_margin_req_cmd_i.*" \
              &&NAME!~".*rx_margin_req_lane_num_.*" \
              &&NAME!~".*rx_margin_req_req_i.*" \
              &&NAME!~".*rx_margin_res_ack_i.*" \
              &&NAME!~ ".*rxpol.*"}]
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_margin_req_lane_num_i.*ff_chain_reg\[5\].*" }]  
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_margin_req_req_i.*ff_chain_reg\[5\].*" }]  
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_margin_res_ack_i.*ff_chain_reg\[5\].*" }]  
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_margin_req_cmd_i.*ff_chain_reg\[5\].*" }]  
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_margin_req_payload_i.*ff_chain_reg\[5\].*" }]  
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_margin_ack_o.*ff_chain_reg\[5\].*" }]  
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_term.*ff_chain_reg\[5\].*" }]  

  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential &&NAME!~".*rx_margin.*payload_o_chain.*" \
           && NAME!~".*rx_margin_req_cmd_o.*"
           && NAME=~".*rx_margin.*_o_chain.*ff_chain_reg\[5\].*" }]  
  
   add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rxpol.*ff_chain_reg\[5\].*" }]
 
  add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*tx.*ff_chain_reg\[5\].*" }]  
  #remove_cells_from_pbock $pblock_name [get_cells -hier -regexp {.*rxelecidle.*}]
  #remove_cells_from_pbock $pblock_name [get_cells -hier -regexp {.*RXTERM.*}]
   
#pblock for stage 6 clock region Y3

  set pblock_name pblock_phy_pipeline_X9Y3
  create_pblock $pblock_name
  resize_pblock $pblock_name -add {CLOCKREGION_X9Y3}
  #set cell_to_add {}
  add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*/gt_top_i/phy_pipeline/.*} \
       -filter {is_sequential && NAME=~".*ltssm_state_chain.*ff_chain_reg\[6\].*" }]
  add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx.*ff_chain_reg\[1\].*" && NAME!~".*txdetectrx.*" \
              &&NAME!~".*rx_term.*" \
              &&( NAME!~".*rx_margin.*_o_chain.*"  || \
                   NAME=~".*rx_margin.*payload_o_chain.*" \
                   || NAME=~".*req_cmd_o.*" ) \
              &&NAME!~".*rx_margin_req_payload_i.*" \
              &&NAME!~".*rx_margin_req_cmd_i.*" \
              &&NAME!~".*rx_margin_req_lane_num_.*" \
              &&NAME!~".*rx_margin_req_req_i.*" \
              &&NAME!~".*rx_margin_res_ack_i.*" \
              &&NAME!~ ".*rxpol.*"}]
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_margin_req_lane_num_i.*ff_chain_reg\[6\].*" }]  
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_margin_req_req_i.*ff_chain_reg\[6\].*" }]  
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_margin_res_ack_i.*ff_chain_reg\[6\].*" }]  
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_margin_req_cmd_i.*ff_chain_reg\[6\].*" }]  
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_margin_req_payload_i.*ff_chain_reg\[6\].*" }]  
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_margin_ack_o.*ff_chain_reg\[6\].*" }]  
  
  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx_term.*ff_chain_reg\[6\].*" }]  

  add_cells_to_pblock [get_pblocks $pblock_name] \
      [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential &&NAME!~".*rx_margin.*payload_o_chain.*" \
           && NAME!~".*rx_margin_req_cmd_o.*"
           && NAME=~".*rx_margin.*_o_chain.*ff_chain_reg\[6\].*" }]  
  
   add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rxpol.*ff_chain_reg\[6\].*" }]
 
  add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*tx.*ff_chain_reg\[6\].*" }]  
  #remove_cells_from_pbock $pblock_name [get_cells -hier -regexp {.*rxelecidle.*}]
  #remove_cells_from_pbock $pblock_name [get_cells -hier -regexp {.*RXTERM.*}]
   
set_property IS_SOFT 1 [get_pblocks] 
