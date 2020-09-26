# LVCMOS33 because we are using 3.3V
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_0_tri_i[*]}]

# PULLDOWN low makes sure all unwired inputs are 0 or false
set_property PULLDOWN TRUE [get_ports {GPIO_0_tri_i[*]}]

set_property PACKAGE_PIN H14 [get_ports {GPIO_0_tri_i[7]}]
set_property PACKAGE_PIN J13 [get_ports {GPIO_0_tri_i[6]}]
set_property PACKAGE_PIN J15 [get_ports {GPIO_0_tri_i[5]}]
set_property PACKAGE_PIN N14 [get_ports {GPIO_0_tri_i[4]}]
set_property PACKAGE_PIN R15 [get_ports {GPIO_0_tri_i[3]}]
set_property PACKAGE_PIN R13 [get_ports {GPIO_0_tri_i[2]}]
set_property PACKAGE_PIN R12 [get_ports {GPIO_0_tri_i[1]}]
set_property PACKAGE_PIN L12 [get_ports {GPIO_0_tri_i[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_1_tri_o[*]}]
set_property PACKAGE_PIN K11 [get_ports {GPIO_1_tri_o[7]}]
set_property PACKAGE_PIN K13 [get_ports {GPIO_1_tri_o[6]}]
set_property PACKAGE_PIN L15 [get_ports {GPIO_1_tri_o[5]}]
set_property PACKAGE_PIN L14 [get_ports {GPIO_1_tri_o[4]}]
set_property PACKAGE_PIN M15 [get_ports {GPIO_1_tri_o[3]}]
set_property PACKAGE_PIN L13 [get_ports {GPIO_1_tri_o[2]}]
set_property PACKAGE_PIN M14 [get_ports {GPIO_1_tri_o[1]}]
set_property PACKAGE_PIN P15 [get_ports {GPIO_1_tri_o[0]}]