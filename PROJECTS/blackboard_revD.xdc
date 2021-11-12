# Switch
set_property -dict { PACKAGE_PIN R17 IOSTANDARD LVCMOS33 } [get_ports { sw }];

#Individual LED
set_property -dict { PACKAGE_PIN N20   IOSTANDARD LVCMOS33 } [get_ports { led }]; #IO_L14P_T2_SRCC_34 Schematic=LD0