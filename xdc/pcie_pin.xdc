
create_clock -period 10.000 [get_ports pcie_refclk_clk_p]

set_property IOSTANDARD LVCMOS12 [get_ports sys_reset]
set_property PACKAGE_PIN T5 [get_ports {pcie_mgt_gtx_p[0]}]
set_property PACKAGE_PIN V9 [get_ports {pcie_refclk_clk_p[0]}]
