set pblock_name pblock_phy_pipeline_X9Y3
create_pblock pblock_phy_pipeline_X9Y3
resize_pblock pblock_phy_pipeline_X9Y3 -add {CLOCKREGION_X9Y3}

#set cell_to_add {}
add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*/gt_top_i/phy_pipeline/.*} \
     -filter {is_sequential && NAME=~".*ltssm_state_chain.*ff_chain_reg\[6\].*" }]
add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
    -filter {is_sequential && NAME=~".*rx.*ff_chain_reg\[1\].*" && NAME!~".*txdetectrx.*" }]
add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
    -filter {is_sequential && NAME=~".*tx.*ff_chain_reg\[6\].*" }]  
    
#add_cells_to_pblock [get_pblocks pblock_phy_pipeline_X9Y3]  $cell_to_add

## pblock x6y3
set pblock_name pblock_phy_pipeline_X6Y3

create_pblock pblock_phy_pipeline_X6Y3
resize_pblock pblock_phy_pipeline_X6Y3 -add {CLOCKREGION_X6Y3}

#set cell_to_add {}
add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*/gt_top_i/phy_pipeline/.*} \
     -filter {is_sequential && NAME=~".*ltssm_state_chain.*ff_chain_reg\[3\].*" }]
add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
    -filter {is_sequential && NAME=~".*rx.*ff_chain_reg\[2\].*" && NAME!~".*txdetectrx.*"}]
add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
    -filter {is_sequential && NAME=~".*tx.*ff_chain_reg\[3\].*" }]  
add_cells_to_pblock [get_pblocks $pblock_name] [get_pblocks pblock_phy_pipeline_X6Y3]  $cell_to_add

## pblock_x4y3
set pblock_name pblock_phy_pipeline_X4Y3

create_pblock pblock_phy_pipeline_X4Y3
resize_pblock pblock_phy_pipeline_X4Y3 -add {CLOCKREGION_X4Y3}

#set cell_to_add {}
add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*/gt_top_i/phy_pipeline/.*} \
     -filter {is_sequential && NAME=~".*ltssm_state_chain.*ff_chain_reg\[2\].*" }]
add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
    -filter {is_sequential && NAME=~".*rx.*ff_chain_reg\[3\].*" && NAME!~".*txdetectrx.*"}]
add_cells_to_pblock [get_pblocks $pblock_name] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
    -filter {is_sequential && NAME=~".*tx.*ff_chain_reg\[2\].*" }]  
    
#add_cells_to_pblock [get_pblocks pblock_phy_pipeline_X4Y3]  $cell_to_add

#pblock_x1y3
set pblock_name pblock_phy_pipeline_X1Y3
create_pblock pblock_phy_pipeline_X1Y3
resize_pblock pblock_phy_pipeline_X1Y3 -add {CLOCKREGION_X1Y3}

#set cell_to_add {}
add_cells_to_pblock [get_pblocks $pblock_name ] [get_cells -hier -regexp {.*/gt_top_i/phy_pipeline/.*} \
     -filter {is_sequential && NAME=~".*ltssm_state_chain.*ff_chain_reg\[1\].*" }]
add_cells_to_pblock [get_pblocks $pblock_name ] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
    -filter {is_sequential && NAME=~".*rx.*ff_chain_reg\[4\].*" && NAME!~".*txdetectrx.*"}]
add_cells_to_pblock [get_pblocks $pblock_name ] [get_cells -hier -regexp {.*_0_support.*/gt_top_i/phy_pipeline/.*} \
    -filter {is_sequential && NAME=~".*tx.*ff_chain_reg\[1\].*" }]  


#DEBUG: Chandler, change to hard pblock
#
set_property IS_SOFT 0 [get_pblocks]    
