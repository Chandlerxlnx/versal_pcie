#pblock for stage 1 clock region Y3
  set pblock_name pblock_phy_pipeline_X0Y3
  create_pblock $pblock_name
  resize_pblock $pblock_name -add {CLOCKREGION_X0Y3}
  #set cell_to_add {}
  add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*/gt_top_i/phy_pipeline/.*} \
       -filter {is_sequential && NAME=~".*ltssm_state_chain.*ff_chain_reg\[1\].*" }]
  add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx.*ff_chain_reg\[6\].*" && NAME!~".*txdetectrx.*" }]
  add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*tx.*ff_chain_reg\[1\].*" }]  

#pblock for stage 2 clock region Y3
  set pblock_name pblock_phy_pipeline_X1Y3
  create_pblock $pblock_name
  resize_pblock $pblock_name -add {CLOCKREGION_X1Y3}
  #set cell_to_add {}
  add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*/gt_top_i/phy_pipeline/.*} \
       -filter {is_sequential && NAME=~".*ltssm_state_chain.*ff_chain_reg\[2\].*" }]
  add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx.*ff_chain_reg\[5\].*" && NAME!~".*txdetectrx.*" }]
  add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*tx.*ff_chain_reg\[2\].*" }]  

#pblock for stage 3 clock region Y3
  set pblock_name pblock_phy_pipeline_X3Y3
  create_pblock $pblock_name
  resize_pblock $pblock_name -add {CLOCKREGION_X3Y3}
  #set cell_to_add {}
  add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*/gt_top_i/phy_pipeline/.*} \
       -filter {is_sequential && NAME=~".*ltssm_state_chain.*ff_chain_reg\[3\].*" }]
  add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx.*ff_chain_reg\[4\].*" && NAME!~".*txdetectrx.*" }]
  add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*tx.*ff_chain_reg\[3\].*" }]  

#pblock for stage 4 clock region Y3
  set pblock_name pblock_phy_pipeline_X5Y3
  create_pblock $pblock_name
  resize_pblock $pblock_name -add {CLOCKREGION_X5Y3}
  #set cell_to_add {}
  add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*/gt_top_i/phy_pipeline/.*} \
       -filter {is_sequential && NAME=~".*ltssm_state_chain.*ff_chain_reg\[4\].*" }]
  add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx.*ff_chain_reg\[3\].*" && NAME!~".*txdetectrx.*" }]
  add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*tx.*ff_chain_reg\[4\].*" }]  

#pblock for stage 5 clock region Y3
  set pblock_name pblock_phy_pipeline_X7Y3
  create_pblock $pblock_name
  resize_pblock $pblock_name -add {CLOCKREGION_X7Y3}
  #set cell_to_add {}
  add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*/gt_top_i/phy_pipeline/.*} \
       -filter {is_sequential && NAME=~".*ltssm_state_chain.*ff_chain_reg\[5\].*" }]
  add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx.*ff_chain_reg\[2\].*" && NAME!~".*txdetectrx.*" }]
  add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*tx.*ff_chain_reg\[5\].*" }]  

#pblock for stage 6 clock region Y3
  set pblock_name pblock_phy_pipeline_X9Y3
  create_pblock $pblock_name
  resize_pblock $pblock_name -add {CLOCKREGION_X9Y3}
  #set cell_to_add {}
  add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*/gt_top_i/phy_pipeline/.*} \
       -filter {is_sequential && NAME=~".*ltssm_state_chain.*ff_chain_reg\[6\].*" }]
  add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*rx.*ff_chain_reg\[1\].*" && NAME!~".*txdetectrx.*" }]
  add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
      -filter {is_sequential && NAME=~".*tx.*ff_chain_reg\[6\].*" }]  

