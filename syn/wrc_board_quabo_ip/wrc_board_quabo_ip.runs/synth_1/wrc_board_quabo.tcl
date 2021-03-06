# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7z030ffg676-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/syn/wrc_board_quabo_ip/wrc_board_quabo_ip.cache/wt [current_project]
set_property parent.project_path /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/syn/wrc_board_quabo_ip/wrc_board_quabo_ip.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_repo_paths {
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo
  /home/wei/Software/Vivado/install/Vivado/ip_repo
} [current_project]
update_ip_catalog
set_property ip_output_repo /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-v4.2-vivado/syn/wrc_board_quabo_ip/wrc_board_quabo_ip.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/wishbone/wb_lm32/src/jtag_cores.v
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/wishbone/wb_lm32/platform/generic/jtag_tap.v
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/wishbone/wb_lm32/src/lm32_adder.v
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/wishbone/wb_lm32/src/lm32_addsub.v
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/wishbone/wb_lm32/generated/lm32_allprofiles.v
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/wishbone/wb_lm32/src/lm32_logic_op.v
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/wishbone/wb_lm32/platform/generic/lm32_multiplier.v
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/wishbone/wb_lm32/src/lm32_shifter.v
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/wishbone/wb_onewire_master/sockit_owm.v
}
read_vhdl -library xil_defaultlib {
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/genrams/genram_pkg.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/wishbone/wishbone_pkg.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_tbi_phy/disparity_gen_pkg.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/common/gencores_pkg.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/timing/dmtd_phase_meas.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/timing/dmtd_with_deglitcher.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_streamers/dropping_buffer.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/fabric/wr_fabric_pkg.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/etherbone-core/hdl/eb_slave_core/eb_hdr_pkg.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/etherbone-core/hdl/eb_slave_core/eb_internals_pkg.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/etherbone-core/hdl/eb_slave_core/eb_cfg_fifo.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/etherbone-core/hdl/eb_slave_core/eb_checksum.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/etherbone-core/hdl/eb_slave_core/eb_commit_fifo.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/etherbone-core/hdl/eb_slave_core/eb_eth_rx.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/etherbone-core/hdl/eb_slave_core/eb_eth_tx.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/etherbone-core/hdl/eb_slave_core/etherbone_pkg.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/etherbone-core/hdl/eb_slave_core/eb_ethernet_slave.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/etherbone-core/hdl/eb_slave_core/eb_fifo.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/etherbone-core/hdl/eb_slave_core/eb_pass_fifo.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/etherbone-core/hdl/eb_slave_core/eb_slave_fsm.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/etherbone-core/hdl/eb_slave_core/eb_slave_top.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/etherbone-core/hdl/eb_slave_core/eb_stream_narrow.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/etherbone-core/hdl/eb_slave_core/eb_stream_widen.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/etherbone-core/hdl/eb_slave_core/eb_tag_fifo.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/etherbone-core/hdl/eb_slave_core/eb_tx_mux.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/etherbone-core/hdl/eb_slave_core/eb_wbm_fifo.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_endpoint/endpoint_pkg.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_endpoint/ep_registers_pkg.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_endpoint/endpoint_private_pkg.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_endpoint/ep_1000basex_pcs.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_endpoint/ep_autonegotiation.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_endpoint/ep_clock_alignment_fifo.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_endpoint/ep_crc32_pkg.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_endpoint/ep_leds_controller.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_endpoint/ep_packet_filter.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_endpoint/ep_pcs_tbi_mdio_wb.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_endpoint/ep_rtu_header_extract.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_endpoint/ep_rx_buffer.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_endpoint/ep_rx_crc_size_check.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_endpoint/ep_rx_early_address_match.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_endpoint/ep_rx_oob_insert.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_endpoint/ep_rx_path.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_endpoint/ep_rx_pcs_16bit.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_endpoint/ep_rx_pcs_8bit.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_endpoint/ep_rx_status_reg_insert.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_endpoint/ep_rx_vlan_unit.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_endpoint/ep_rx_wb_master.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_endpoint/ep_sync_detect.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_endpoint/ep_sync_detect_16bit.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_endpoint/ep_timestamping_unit.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_endpoint/ep_ts_counter.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_endpoint/ep_tx_crc_inserter.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_endpoint/ep_tx_header_processor.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_endpoint/ep_tx_inject_ctrl.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_endpoint/ep_tx_packet_injection.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_endpoint/ep_tx_path.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_endpoint/ep_tx_pcs_16bit.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_endpoint/ep_tx_pcs_8bit.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_endpoint/ep_tx_vlan_unit.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_endpoint/ep_wishbone_controller.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_streamers/escape_detector.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_streamers/escape_inserter.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/common/gc_crc_gen.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/common/gc_extend_pulse.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/common/gc_frequency_meter.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/common/gc_pulse_synchronizer.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/common/gc_pulse_synchronizer2.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/common/gc_reset.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/genrams/xilinx/gc_shiftreg.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/common/gc_sync_ffs.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/common/gc_sync_register.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/genrams/generic/generic_async_fifo.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/genrams/memory_loader_pkg.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/genrams/xilinx/generic_dpram.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/genrams/xilinx/generic_dpram_dualclock.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/genrams/xilinx/generic_dpram_sameclock.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/genrams/xilinx/generic_dpram_split.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/genrams/common/generic_shiftreg_fifo.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/genrams/xilinx/generic_simple_dpram.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/genrams/generic/generic_sync_fifo.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/platform/xilinx/wr_gtp_phy/gtp_bitslide.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/platform/xilinx/wr_gtp_phy/spartan6/gtp_phase_align.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/genrams/common/inferred_async_fifo.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/genrams/common/inferred_sync_fifo.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/wishbone/wb_lm32/src/lm32_dp_ram.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/wishbone/wb_lm32/src/lm32_ram.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/wishbone/wbgen2/wbgen2_pkg.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_mini_nic/minic_wbgen2_pkg.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_mini_nic/minic_wb_slave.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_pps_gen/pps_gen_wb.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/timing/pulse_stamper.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wrc_core/wrc_syscon_pkg.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wrc_core/wrc_diags_pkg.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_softpll_ng/softpll_pkg.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wrc_core/wrcore_pkg.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_streamers/streamers_pkg.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/wishbone/wb_crossbar/sdb_rom.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/wishbone/wb_uart/simple_uart_pkg.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/wishbone/wb_uart/simple_uart_wb.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_dacs/spec_serial_dac.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_dacs/spec_serial_dac_arb.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_softpll_ng/spll_aligner.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_softpll_ng/spll_wbgen2_pkg.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_softpll_ng/spll_wb_slave.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_streamers/wr_streamers_wbgen2_pkg.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_streamers/streamers_priv_pkg.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/wishbone/wb_uart/uart_async_rx.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/wishbone/wb_uart/uart_async_tx.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/wishbone/wb_uart/uart_baud_gen.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/wishbone/wb_onewire_master/wb_onewire_master.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/wishbone/wb_uart/wb_simple_uart.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/wishbone/wb_slave_adapter/wb_slave_adapter.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/wishbone/wbgen2/wbgen2_eic.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/wishbone/wbgen2/wbgen2_fifo_sync.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/platform/xilinx/wr_gtp_phy/family7-gtp/whiterabbit_gtpe2_channel_wrapper.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/platform/xilinx/wr_gtp_phy/family7-gtp/whiterabbit_gtpe2_channel_wrapper_gt.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/platform/xilinx/wr_gtp_phy/family7-gtp/whiterabbit_gtpe2_channel_wrapper_gtrxreset_seq.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/platform/xilinx/wr_gtp_phy/family7-gtx/whiterabbit_gtxe2_channel_wrapper_gt.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/platform/xilinx/wr_gtp_phy/spartan6/whiterabbitgtp_wrapper_tile_spartan6.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/board/common/wr_board_pkg.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wrc_core/wr_core.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_endpoint/wr_endpoint.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/platform/xilinx/wr_gtp_phy/family7-gtp/wr_gtp_phy_family7.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/platform/xilinx/wr_gtp_phy/spartan6/wr_gtp_phy_spartan6.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/platform/xilinx/wr_gtp_phy/family7-gtx/wr_gtx_phy_family7.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_mini_nic/wr_mini_nic.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_pps_gen/wr_pps_gen.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/board/quabo/wr_quabo_pkg.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_softpll_ng/wr_softpll_ng.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_streamers/wr_streamers_wb.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/platform/xilinx/wr_xilinx_pkg.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wrc_core/wrc_diags_wb.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wrc_core/wrc_syscon_wb.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wrc_core/wrc_periph.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_streamers/xrtx_streamers_stats.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_streamers/xrx_streamer.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_streamers/xrx_streamers_stats.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_streamers/xtx_streamer.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_streamers/xtx_streamers_stats.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/wishbone/wb_crossbar/xwb_crossbar.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/wishbone/wb_dpram/xwb_dpram.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/fabric/xwb_fabric_sink.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/fabric/xwb_fabric_source.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/wishbone/wb_lm32/generated/xwb_lm32.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/wishbone/wb_onewire_master/xwb_onewire_master.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/wishbone/wb_crossbar/xwb_sdb_crossbar.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/ip_cores/general-cores/modules/wishbone/wb_uart/xwb_simple_uart.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wrc_core/xwr_core.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_endpoint/xwr_endpoint.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_mini_nic/xwr_mini_nic.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_pps_gen/xwr_pps_gen.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_softpll_ng/xwr_softpll_ng.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wr_streamers/xwr_streamers.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/board/common/xwrc_board_common.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/board/quabo/xwrc_board_quabo.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/wrc_core/xwrc_diags_wb.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/platform/xilinx/xwrc_platform_xilinx.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/modules/fabric/xwrf_mux.vhd
  /media/wei/DATA/LW/Project/WR_Project/WR_Reference_Design/wr-cores-acme1-vivado-Streamers-light/wr-cores-Quabo/board/quabo/wrc_board_quabo.vhd
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top wrc_board_quabo -part xc7z030ffg676-2


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef wrc_board_quabo.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file wrc_board_quabo_utilization_synth.rpt -pb wrc_board_quabo_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
