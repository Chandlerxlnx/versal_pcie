#set_property KEEP 1 [get_cells -hier -regexp {pcie_versal_0_support/pcie_phy/inst/diablo_gt_phy_wrapper/gt_top_i/phy_pipeline/.*} -filter {is_sequential}]
#set_property SHREG_EXTRACT FALSE [get_cells -hier -regexp {pcie_versal_0_support/pcie_phy/inst/diablo_gt_phy_wrapper/gt_top_i/phy_pipeline/.*} -filter {is_sequential}]
set_property SHREG_EXTRACT NO [get_cells -hier -regexp {pcie_versal_0_support/pcie_phy/inst/diablo_gt_phy_wrapper/gt_top_i/phy_pipeline/.*} -filter {is_sequential}]
#set_property SRL_STYLE register [get_cells -hier -regexp {pcie_versal_0_support/pcie_phy/inst/diablo_gt_phy_wrapper/gt_top_i/phy_pipeline/.*} -filter {is_sequential}]

