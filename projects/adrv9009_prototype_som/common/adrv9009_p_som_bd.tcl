
source $ad_hdl_dir/library/jesd204/scripts/jesd204.tcl

# adrv9009

create_bd_port -dir I dac_fifo_bypass

# dac peripherals

ad_ip_instance axi_clkgen axi_adrv9009_tx_clkgen
ad_ip_parameter axi_adrv9009_tx_clkgen CONFIG.DEVICE_TYPE 2
ad_ip_parameter axi_adrv9009_tx_clkgen CONFIG.ID 2
ad_ip_parameter axi_adrv9009_tx_clkgen CONFIG.CLKIN_PERIOD 4
ad_ip_parameter axi_adrv9009_tx_clkgen CONFIG.VCO_DIV 1
ad_ip_parameter axi_adrv9009_tx_clkgen CONFIG.VCO_MUL 4
ad_ip_parameter axi_adrv9009_tx_clkgen CONFIG.CLK0_DIV 4

ad_ip_instance axi_adxcvr axi_adrv9009_tx_xcvr
ad_ip_parameter axi_adrv9009_tx_xcvr CONFIG.XCVR_TYPE 2
ad_ip_parameter axi_adrv9009_tx_xcvr CONFIG.NUM_OF_LANES 8
ad_ip_parameter axi_adrv9009_tx_xcvr CONFIG.QPLL_ENABLE 1
ad_ip_parameter axi_adrv9009_tx_xcvr CONFIG.TX_OR_RX_N 1
ad_ip_parameter axi_adrv9009_tx_xcvr CONFIG.SYS_CLK_SEL 3
ad_ip_parameter axi_adrv9009_tx_xcvr CONFIG.OUT_CLK_SEL 3

adi_axi_jesd204_tx_create axi_adrv9009_tx_jesd 8

ad_ip_instance util_upack util_adrv9009_tx_upack
ad_ip_parameter util_adrv9009_tx_upack CONFIG.CHANNEL_DATA_WIDTH 32
ad_ip_parameter util_adrv9009_tx_upack CONFIG.NUM_OF_CHANNELS 8

ad_ip_instance axi_dmac axi_adrv9009_tx_dma
ad_ip_parameter axi_adrv9009_tx_dma CONFIG.DMA_TYPE_SRC 0
ad_ip_parameter axi_adrv9009_tx_dma CONFIG.DMA_TYPE_DEST 1
ad_ip_parameter axi_adrv9009_tx_dma CONFIG.CYCLIC 1
ad_ip_parameter axi_adrv9009_tx_dma CONFIG.ASYNC_CLK_DEST_REQ 1
ad_ip_parameter axi_adrv9009_tx_dma CONFIG.ASYNC_CLK_SRC_DEST 1
ad_ip_parameter axi_adrv9009_tx_dma CONFIG.ASYNC_CLK_REQ_SRC 1
ad_ip_parameter axi_adrv9009_tx_dma CONFIG.DMA_2D_TRANSFER 0
ad_ip_parameter axi_adrv9009_tx_dma CONFIG.DMA_DATA_WIDTH_DEST 256
ad_ip_parameter axi_adrv9009_tx_dma CONFIG.MAX_BYTES_PER_BURST 256
ad_ip_parameter axi_adrv9009_tx_dma CONFIG.AXI_SLICE_SRC true
ad_ip_parameter axi_adrv9009_tx_dma CONFIG.AXI_SLICE_DEST true

# adc peripherals

ad_ip_instance axi_clkgen axi_adrv9009_rx_clkgen
ad_ip_parameter axi_adrv9009_rx_clkgen CONFIG.DEVICE_TYPE 2
ad_ip_parameter axi_adrv9009_rx_clkgen CONFIG.ID 2
ad_ip_parameter axi_adrv9009_rx_clkgen CONFIG.CLKIN_PERIOD 4
ad_ip_parameter axi_adrv9009_rx_clkgen CONFIG.VCO_DIV 1
ad_ip_parameter axi_adrv9009_rx_clkgen CONFIG.VCO_MUL 4
ad_ip_parameter axi_adrv9009_rx_clkgen CONFIG.CLK0_DIV 4

ad_ip_instance axi_adxcvr axi_adrv9009_rx_xcvr
ad_ip_parameter axi_adrv9009_rx_xcvr CONFIG.XCVR_TYPE 2
ad_ip_parameter axi_adrv9009_rx_xcvr CONFIG.NUM_OF_LANES 4
ad_ip_parameter axi_adrv9009_rx_xcvr CONFIG.QPLL_ENABLE 0
ad_ip_parameter axi_adrv9009_rx_xcvr CONFIG.TX_OR_RX_N 0
ad_ip_parameter axi_adrv9009_rx_xcvr CONFIG.SYS_CLK_SEL 0
ad_ip_parameter axi_adrv9009_rx_xcvr CONFIG.OUT_CLK_SEL 3

adi_axi_jesd204_rx_create axi_adrv9009_rx_jesd 4

ad_ip_instance util_cpack util_adrv9009_rx_cpack
ad_ip_parameter util_adrv9009_rx_cpack CONFIG.CHANNEL_DATA_WIDTH 16
ad_ip_parameter util_adrv9009_rx_cpack CONFIG.NUM_OF_CHANNELS 8

ad_ip_instance axi_dmac axi_adrv9009_rx_dma
ad_ip_parameter axi_adrv9009_rx_dma CONFIG.DMA_TYPE_SRC 2
ad_ip_parameter axi_adrv9009_rx_dma CONFIG.DMA_TYPE_DEST 0
ad_ip_parameter axi_adrv9009_rx_dma CONFIG.CYCLIC 0
ad_ip_parameter axi_adrv9009_rx_dma CONFIG.SYNC_TRANSFER_START 1
ad_ip_parameter axi_adrv9009_rx_dma CONFIG.ASYNC_CLK_DEST_REQ 1
ad_ip_parameter axi_adrv9009_rx_dma CONFIG.ASYNC_CLK_SRC_DEST 1
ad_ip_parameter axi_adrv9009_rx_dma CONFIG.ASYNC_CLK_REQ_SRC 1
ad_ip_parameter axi_adrv9009_rx_dma CONFIG.DMA_2D_TRANSFER 0
ad_ip_parameter axi_adrv9009_rx_dma CONFIG.DMA_DATA_WIDTH_SRC 128
ad_ip_parameter axi_adrv9009_rx_dma CONFIG.MAX_BYTES_PER_BURST 256
ad_ip_parameter axi_adrv9009_rx_dma CONFIG.AXI_SLICE_SRC true
ad_ip_parameter axi_adrv9009_rx_dma CONFIG.AXI_SLICE_DEST true

# adc-os peripherals

ad_ip_instance axi_clkgen axi_adrv9009_rx_os_clkgen
ad_ip_parameter axi_adrv9009_rx_os_clkgen CONFIG.DEVICE_TYPE 2
ad_ip_parameter axi_adrv9009_rx_os_clkgen CONFIG.ID 2
ad_ip_parameter axi_adrv9009_rx_os_clkgen CONFIG.CLKIN_PERIOD 4
ad_ip_parameter axi_adrv9009_rx_os_clkgen CONFIG.VCO_DIV 1
ad_ip_parameter axi_adrv9009_rx_os_clkgen CONFIG.VCO_MUL 4
ad_ip_parameter axi_adrv9009_rx_os_clkgen CONFIG.CLK0_DIV 4

ad_ip_instance axi_adxcvr axi_adrv9009_rx_os_xcvr
ad_ip_parameter axi_adrv9009_rx_os_xcvr CONFIG.XCVR_TYPE 2
ad_ip_parameter axi_adrv9009_rx_os_xcvr CONFIG.NUM_OF_LANES 4
ad_ip_parameter axi_adrv9009_rx_os_xcvr CONFIG.QPLL_ENABLE 0
ad_ip_parameter axi_adrv9009_rx_os_xcvr CONFIG.TX_OR_RX_N 0
ad_ip_parameter axi_adrv9009_rx_os_xcvr CONFIG.SYS_CLK_SEL 0
ad_ip_parameter axi_adrv9009_rx_os_xcvr CONFIG.OUT_CLK_SEL 3

adi_axi_jesd204_rx_create axi_adrv9009_rx_os_jesd 4

ad_ip_instance util_cpack util_adrv9009_rx_os_cpack
ad_ip_parameter util_adrv9009_rx_os_cpack CONFIG.CHANNEL_DATA_WIDTH 32
ad_ip_parameter util_adrv9009_rx_os_cpack CONFIG.NUM_OF_CHANNELS 8

ad_ip_instance axi_dmac axi_adrv9009_rx_os_dma
ad_ip_parameter axi_adrv9009_rx_os_dma CONFIG.DMA_TYPE_SRC 2
ad_ip_parameter axi_adrv9009_rx_os_dma CONFIG.DMA_TYPE_DEST 0
ad_ip_parameter axi_adrv9009_rx_os_dma CONFIG.CYCLIC 0
ad_ip_parameter axi_adrv9009_rx_os_dma CONFIG.SYNC_TRANSFER_START 1
ad_ip_parameter axi_adrv9009_rx_os_dma CONFIG.ASYNC_CLK_DEST_REQ 1
ad_ip_parameter axi_adrv9009_rx_os_dma CONFIG.ASYNC_CLK_SRC_DEST 1
ad_ip_parameter axi_adrv9009_rx_os_dma CONFIG.ASYNC_CLK_REQ_SRC 1
ad_ip_parameter axi_adrv9009_rx_os_dma CONFIG.DMA_2D_TRANSFER 0
ad_ip_parameter axi_adrv9009_rx_os_dma CONFIG.DMA_DATA_WIDTH_SRC 256
ad_ip_parameter axi_adrv9009_rx_os_dma CONFIG.MAX_BYTES_PER_BURST 256
ad_ip_parameter axi_adrv9009_rx_os_dma CONFIG.AXI_SLICE_DEST true
ad_ip_parameter axi_adrv9009_rx_os_dma CONFIG.AXI_SLICE_SRC true

# common cores

ad_ip_instance axi_adrv9009 axi_adrv9009_core
ad_ip_parameter axi_adrv9009_core CONFIG.SINGLE_DUAL 2

ad_ip_instance util_adxcvr util_adrv9009_p_som_xcvr
ad_ip_parameter util_adrv9009_p_som_xcvr CONFIG.XCVR_TYPE 2
ad_ip_parameter util_adrv9009_p_som_xcvr CONFIG.RX_NUM_OF_LANES 8
ad_ip_parameter util_adrv9009_p_som_xcvr CONFIG.TX_NUM_OF_LANES 8
ad_ip_parameter util_adrv9009_p_som_xcvr CONFIG.TX_OUT_DIV 1
ad_ip_parameter util_adrv9009_p_som_xcvr CONFIG.CPLL_FBDIV 4
ad_ip_parameter util_adrv9009_p_som_xcvr CONFIG.RX_CLK25_DIV 10
ad_ip_parameter util_adrv9009_p_som_xcvr CONFIG.TX_CLK25_DIV 10
ad_ip_parameter util_adrv9009_p_som_xcvr CONFIG.RX_PMA_CFG 0x001E7080
ad_ip_parameter util_adrv9009_p_som_xcvr CONFIG.RX_CDR_CFG 0x0b000023ff10400020
ad_ip_parameter util_adrv9009_p_som_xcvr CONFIG.QPLL_REFCLK_DIV 1
ad_ip_parameter util_adrv9009_p_som_xcvr CONFIG.QPLL_FBDIV 40

# xcvr interfaces

create_bd_port -dir I tx_ref_clk_0
create_bd_port -dir I rx_ref_clk_0
create_bd_port -dir I rx_ref_clk_2

ad_xcvrpll  tx_ref_clk_0 util_adrv9009_p_som_xcvr/qpll_ref_clk_0
ad_xcvrpll  tx_ref_clk_0 util_adrv9009_p_som_xcvr/qpll_ref_clk_4
ad_xcvrpll  rx_ref_clk_0 util_adrv9009_p_som_xcvr/cpll_ref_clk_0
ad_xcvrpll  rx_ref_clk_0 util_adrv9009_p_som_xcvr/cpll_ref_clk_1
ad_xcvrpll  rx_ref_clk_2 util_adrv9009_p_som_xcvr/cpll_ref_clk_2
ad_xcvrpll  rx_ref_clk_2 util_adrv9009_p_som_xcvr/cpll_ref_clk_3
ad_xcvrpll  rx_ref_clk_0 util_adrv9009_p_som_xcvr/cpll_ref_clk_4
ad_xcvrpll  rx_ref_clk_0 util_adrv9009_p_som_xcvr/cpll_ref_clk_5
ad_xcvrpll  rx_ref_clk_2 util_adrv9009_p_som_xcvr/cpll_ref_clk_6
ad_xcvrpll  rx_ref_clk_2 util_adrv9009_p_som_xcvr/cpll_ref_clk_7
ad_xcvrpll  axi_adrv9009_tx_xcvr/up_pll_rst util_adrv9009_p_som_xcvr/up_qpll_rst_0
ad_xcvrpll  axi_adrv9009_rx_xcvr/up_pll_rst util_adrv9009_p_som_xcvr/up_cpll_rst_0
ad_xcvrpll  axi_adrv9009_rx_xcvr/up_pll_rst util_adrv9009_p_som_xcvr/up_cpll_rst_1
ad_xcvrpll  axi_adrv9009_rx_os_xcvr/up_pll_rst util_adrv9009_p_som_xcvr/up_cpll_rst_2
ad_xcvrpll  axi_adrv9009_rx_os_xcvr/up_pll_rst util_adrv9009_p_som_xcvr/up_cpll_rst_3
ad_xcvrpll  axi_adrv9009_tx_xcvr/up_pll_rst util_adrv9009_p_som_xcvr/up_qpll_rst_4
ad_xcvrpll  axi_adrv9009_rx_xcvr/up_pll_rst util_adrv9009_p_som_xcvr/up_cpll_rst_4
ad_xcvrpll  axi_adrv9009_rx_xcvr/up_pll_rst util_adrv9009_p_som_xcvr/up_cpll_rst_5
ad_xcvrpll  axi_adrv9009_rx_os_xcvr/up_pll_rst util_adrv9009_p_som_xcvr/up_cpll_rst_6
ad_xcvrpll  axi_adrv9009_rx_os_xcvr/up_pll_rst util_adrv9009_p_som_xcvr/up_cpll_rst_7
ad_connect  sys_cpu_resetn util_adrv9009_p_som_xcvr/up_rstn
ad_connect  sys_cpu_clk util_adrv9009_p_som_xcvr/up_clk

ad_xcvrcon  util_adrv9009_p_som_xcvr axi_adrv9009_tx_xcvr axi_adrv9009_tx_jesd {0 2 3 1 4 7 6 5}
ad_reconct  util_adrv9009_p_som_xcvr/tx_out_clk_0 axi_adrv9009_tx_clkgen/clk
ad_connect  axi_adrv9009_tx_clkgen/clk_0 util_adrv9009_p_som_xcvr/tx_clk_0
ad_connect  axi_adrv9009_tx_clkgen/clk_0 util_adrv9009_p_som_xcvr/tx_clk_1
ad_connect  axi_adrv9009_tx_clkgen/clk_0 util_adrv9009_p_som_xcvr/tx_clk_2
ad_connect  axi_adrv9009_tx_clkgen/clk_0 util_adrv9009_p_som_xcvr/tx_clk_3
ad_connect  axi_adrv9009_tx_clkgen/clk_0 util_adrv9009_p_som_xcvr/tx_clk_4
ad_connect  axi_adrv9009_tx_clkgen/clk_0 util_adrv9009_p_som_xcvr/tx_clk_5
ad_connect  axi_adrv9009_tx_clkgen/clk_0 util_adrv9009_p_som_xcvr/tx_clk_6
ad_connect  axi_adrv9009_tx_clkgen/clk_0 util_adrv9009_p_som_xcvr/tx_clk_7
ad_connect  axi_adrv9009_tx_clkgen/clk_0 axi_adrv9009_tx_jesd/device_clk
ad_connect  axi_adrv9009_tx_clkgen/clk_0 axi_adrv9009_tx_jesd_rstgen/slowest_sync_clk

ad_xcvrcon  util_adrv9009_p_som_xcvr axi_adrv9009_rx_xcvr axi_adrv9009_rx_jesd
ad_reconct  util_adrv9009_p_som_xcvr/rx_out_clk_0 axi_adrv9009_rx_clkgen/clk
ad_connect  axi_adrv9009_rx_clkgen/clk_0 axi_adrv9009_rx_jesd/device_clk
ad_connect  axi_adrv9009_rx_clkgen/clk_0 axi_adrv9009_rx_jesd_rstgen/slowest_sync_clk

ad_xcvrcon  util_adrv9009_p_som_xcvr axi_adrv9009_rx_os_xcvr axi_adrv9009_rx_os_jesd
ad_reconct  util_adrv9009_p_som_xcvr/rx_out_clk_2 axi_adrv9009_rx_os_clkgen/clk
ad_reconct  axi_adrv9009_rx_os_clkgen/clk_0 util_adrv9009_p_som_xcvr/rx_clk_4
ad_connect  axi_adrv9009_rx_os_clkgen/clk_0 axi_adrv9009_rx_os_jesd/device_clk
ad_connect  axi_adrv9009_rx_os_clkgen/clk_0 axi_adrv9009_rx_os_jesd_rstgen/slowest_sync_clk

ad_connect  axi_adrv9009_rx_clkgen/clk_0 util_adrv9009_p_som_xcvr/rx_clk_0
ad_connect  axi_adrv9009_rx_clkgen/clk_0 util_adrv9009_p_som_xcvr/rx_clk_1
ad_connect  axi_adrv9009_rx_clkgen/clk_0 util_adrv9009_p_som_xcvr/rx_clk_5
ad_connect  axi_adrv9009_rx_os_clkgen/clk_0 util_adrv9009_p_som_xcvr/rx_clk_2
ad_connect  axi_adrv9009_rx_os_clkgen/clk_0 util_adrv9009_p_som_xcvr/rx_clk_3
ad_connect  axi_adrv9009_rx_os_clkgen/clk_0 util_adrv9009_p_som_xcvr/rx_clk_6
ad_connect  axi_adrv9009_rx_os_clkgen/clk_0 util_adrv9009_p_som_xcvr/rx_clk_7

ad_reconct  util_adrv9009_p_som_xcvr/up_es_4 axi_adrv9009_rx_xcvr/up_es_2
ad_reconct  util_adrv9009_p_som_xcvr/up_rx_4 axi_adrv9009_rx_xcvr/up_ch_2
ad_reconct  util_adrv9009_p_som_xcvr/up_es_5 axi_adrv9009_rx_xcvr/up_es_3
ad_reconct  util_adrv9009_p_som_xcvr/up_rx_5 axi_adrv9009_rx_xcvr/up_ch_3

ad_reconct  util_adrv9009_p_som_xcvr/up_es_2 axi_adrv9009_rx_os_xcvr/up_es_0
ad_reconct  util_adrv9009_p_som_xcvr/up_rx_2 axi_adrv9009_rx_os_xcvr/up_ch_0
ad_reconct  util_adrv9009_p_som_xcvr/up_es_3 axi_adrv9009_rx_os_xcvr/up_es_1
ad_reconct  util_adrv9009_p_som_xcvr/up_rx_3 axi_adrv9009_rx_os_xcvr/up_ch_1

ad_reconct util_adrv9009_p_som_xcvr/rx_4 axi_adrv9009_rx_jesd/rx_phy2
ad_reconct util_adrv9009_p_som_xcvr/rx_5 axi_adrv9009_rx_jesd/rx_phy3
ad_reconct util_adrv9009_p_som_xcvr/rx_2 axi_adrv9009_rx_os_jesd/rx_phy0
ad_reconct util_adrv9009_p_som_xcvr/rx_3 axi_adrv9009_rx_os_jesd/rx_phy1

# dma clock & reset

ad_ip_instance proc_sys_reset sys_dma_rstgen
ad_ip_parameter sys_dma_rstgen CONFIG.C_EXT_RST_WIDTH 1

ad_connect  sys_dma_clk sys_dma_rstgen/slowest_sync_clk
ad_connect  sys_dma_resetn sys_dma_rstgen/peripheral_aresetn
ad_connect  sys_dma_reset sys_dma_rstgen/peripheral_reset
ad_connect  sys_dma_reset axi_adrv9009_dacfifo/dma_rst

# connections (dac)

ad_connect  axi_adrv9009_tx_clkgen/clk_0 axi_adrv9009_core/dac_clk
ad_connect  axi_adrv9009_core/dac_tx_data axi_adrv9009_tx_jesd/tx_data_tdata
ad_connect  axi_adrv9009_tx_clkgen/clk_0 util_adrv9009_tx_upack/dac_clk
ad_connect  axi_adrv9009_core/dac_valid_i0 util_adrv9009_tx_upack/dac_valid_0
ad_connect  axi_adrv9009_core/dac_enable_i0 util_adrv9009_tx_upack/dac_enable_0
ad_connect  axi_adrv9009_core/dac_data_i0 util_adrv9009_tx_upack/dac_data_0
ad_connect  axi_adrv9009_core/dac_valid_q0 util_adrv9009_tx_upack/dac_valid_1
ad_connect  axi_adrv9009_core/dac_enable_q0 util_adrv9009_tx_upack/dac_enable_1
ad_connect  axi_adrv9009_core/dac_data_q0 util_adrv9009_tx_upack/dac_data_1
ad_connect  axi_adrv9009_core/dac_valid_i1 util_adrv9009_tx_upack/dac_valid_2
ad_connect  axi_adrv9009_core/dac_enable_i1 util_adrv9009_tx_upack/dac_enable_2
ad_connect  axi_adrv9009_core/dac_data_i1 util_adrv9009_tx_upack/dac_data_2
ad_connect  axi_adrv9009_core/dac_valid_q1 util_adrv9009_tx_upack/dac_valid_3
ad_connect  axi_adrv9009_core/dac_enable_q1 util_adrv9009_tx_upack/dac_enable_3
ad_connect  axi_adrv9009_core/dac_data_q1 util_adrv9009_tx_upack/dac_data_3
ad_connect  axi_adrv9009_core/dac_b_valid_i0 util_adrv9009_tx_upack/dac_valid_4
ad_connect  axi_adrv9009_core/dac_b_enable_i0 util_adrv9009_tx_upack/dac_enable_4
ad_connect  axi_adrv9009_core/dac_b_data_i0 util_adrv9009_tx_upack/dac_data_4
ad_connect  axi_adrv9009_core/dac_b_valid_q0 util_adrv9009_tx_upack/dac_valid_5
ad_connect  axi_adrv9009_core/dac_b_enable_q0 util_adrv9009_tx_upack/dac_enable_5
ad_connect  axi_adrv9009_core/dac_b_data_q0 util_adrv9009_tx_upack/dac_data_5
ad_connect  axi_adrv9009_core/dac_b_valid_i1 util_adrv9009_tx_upack/dac_valid_6
ad_connect  axi_adrv9009_core/dac_b_enable_i1 util_adrv9009_tx_upack/dac_enable_6
ad_connect  axi_adrv9009_core/dac_b_data_i1 util_adrv9009_tx_upack/dac_data_6
ad_connect  axi_adrv9009_core/dac_b_valid_q1 util_adrv9009_tx_upack/dac_valid_7
ad_connect  axi_adrv9009_core/dac_b_enable_q1 util_adrv9009_tx_upack/dac_enable_7
ad_connect  axi_adrv9009_core/dac_b_data_q1 util_adrv9009_tx_upack/dac_data_7
ad_connect  axi_adrv9009_tx_clkgen/clk_0 axi_adrv9009_dacfifo/dac_clk
ad_connect  axi_adrv9009_tx_jesd_rstgen/peripheral_reset axi_adrv9009_dacfifo/dac_rst
ad_connect  util_adrv9009_tx_upack/dac_valid axi_adrv9009_dacfifo/dac_valid
ad_connect  util_adrv9009_tx_upack/dac_data axi_adrv9009_dacfifo/dac_data
ad_connect  sys_dma_clk axi_adrv9009_dacfifo/dma_clk
ad_connect  sys_dma_clk axi_adrv9009_tx_dma/m_axis_aclk
ad_connect  axi_adrv9009_dacfifo/dma_valid axi_adrv9009_tx_dma/m_axis_valid
ad_connect  axi_adrv9009_dacfifo/dma_data axi_adrv9009_tx_dma/m_axis_data
ad_connect  axi_adrv9009_dacfifo/dma_ready axi_adrv9009_tx_dma/m_axis_ready
ad_connect  axi_adrv9009_dacfifo/dma_xfer_req axi_adrv9009_tx_dma/m_axis_xfer_req
ad_connect  axi_adrv9009_dacfifo/dma_xfer_last axi_adrv9009_tx_dma/m_axis_last
ad_connect  axi_adrv9009_dacfifo/dac_dunf axi_adrv9009_core/dac_dunf
ad_connect  axi_adrv9009_dacfifo/bypass dac_fifo_bypass
ad_connect  sys_dma_resetn axi_adrv9009_tx_dma/m_src_axi_aresetn

# connections (adc)

ad_connect  axi_adrv9009_rx_clkgen/clk_0 axi_adrv9009_core/adc_clk
ad_connect  axi_adrv9009_rx_jesd/rx_sof axi_adrv9009_core/adc_rx_sof

ad_connect  axi_adrv9009_rx_jesd/rx_data_tdata axi_adrv9009_core/adc_rx_data
ad_connect  axi_adrv9009_rx_clkgen/clk_0 util_adrv9009_rx_cpack/adc_clk
ad_connect  axi_adrv9009_rx_jesd_rstgen/peripheral_reset util_adrv9009_rx_cpack/adc_rst
ad_connect  axi_adrv9009_core/adc_enable_i0 util_adrv9009_rx_cpack/adc_enable_0
ad_connect  axi_adrv9009_core/adc_valid_i0 util_adrv9009_rx_cpack/adc_valid_0
ad_connect  axi_adrv9009_core/adc_data_i0 util_adrv9009_rx_cpack/adc_data_0
ad_connect  axi_adrv9009_core/adc_enable_q0 util_adrv9009_rx_cpack/adc_enable_1
ad_connect  axi_adrv9009_core/adc_valid_q0 util_adrv9009_rx_cpack/adc_valid_1
ad_connect  axi_adrv9009_core/adc_data_q0 util_adrv9009_rx_cpack/adc_data_1
ad_connect  axi_adrv9009_core/adc_enable_i1 util_adrv9009_rx_cpack/adc_enable_2
ad_connect  axi_adrv9009_core/adc_valid_i1 util_adrv9009_rx_cpack/adc_valid_2
ad_connect  axi_adrv9009_core/adc_data_i1 util_adrv9009_rx_cpack/adc_data_2
ad_connect  axi_adrv9009_core/adc_enable_q1 util_adrv9009_rx_cpack/adc_enable_3
ad_connect  axi_adrv9009_core/adc_valid_q1 util_adrv9009_rx_cpack/adc_valid_3
ad_connect  axi_adrv9009_core/adc_data_q1 util_adrv9009_rx_cpack/adc_data_3
ad_connect  axi_adrv9009_core/adc_b_enable_i0 util_adrv9009_rx_cpack/adc_enable_4
ad_connect  axi_adrv9009_core/adc_b_valid_i0 util_adrv9009_rx_cpack/adc_valid_4
ad_connect  axi_adrv9009_core/adc_b_data_i0 util_adrv9009_rx_cpack/adc_data_4
ad_connect  axi_adrv9009_core/adc_b_enable_q0 util_adrv9009_rx_cpack/adc_enable_5
ad_connect  axi_adrv9009_core/adc_b_valid_q0 util_adrv9009_rx_cpack/adc_valid_5
ad_connect  axi_adrv9009_core/adc_b_data_q0 util_adrv9009_rx_cpack/adc_data_5
ad_connect  axi_adrv9009_core/adc_b_enable_i1 util_adrv9009_rx_cpack/adc_enable_6
ad_connect  axi_adrv9009_core/adc_b_valid_i1 util_adrv9009_rx_cpack/adc_valid_6
ad_connect  axi_adrv9009_core/adc_b_data_i1 util_adrv9009_rx_cpack/adc_data_6
ad_connect  axi_adrv9009_core/adc_b_enable_q1 util_adrv9009_rx_cpack/adc_enable_7
ad_connect  axi_adrv9009_core/adc_b_valid_q1 util_adrv9009_rx_cpack/adc_valid_7
ad_connect  axi_adrv9009_core/adc_b_data_q1 util_adrv9009_rx_cpack/adc_data_7
ad_connect  axi_adrv9009_rx_clkgen/clk_0 axi_adrv9009_rx_dma/fifo_wr_clk
ad_connect  util_adrv9009_rx_cpack/adc_valid axi_adrv9009_rx_dma/fifo_wr_en
ad_connect  util_adrv9009_rx_cpack/adc_sync axi_adrv9009_rx_dma/fifo_wr_sync
ad_connect  util_adrv9009_rx_cpack/adc_data axi_adrv9009_rx_dma/fifo_wr_din
ad_connect  axi_adrv9009_rx_dma/fifo_wr_overflow axi_adrv9009_core/adc_dovf
ad_connect  sys_dma_resetn axi_adrv9009_rx_dma/m_dest_axi_aresetn

# connections (adc-os)

ad_connect  axi_adrv9009_rx_os_clkgen/clk_0 axi_adrv9009_core/adc_os_clk
ad_connect  axi_adrv9009_rx_os_jesd/rx_sof axi_adrv9009_core/adc_rx_os_sof
ad_connect  axi_adrv9009_rx_os_jesd/rx_data_tdata axi_adrv9009_core/adc_rx_os_data
ad_connect  axi_adrv9009_rx_os_clkgen/clk_0 util_adrv9009_rx_os_cpack/adc_clk
ad_connect  axi_adrv9009_rx_os_jesd_rstgen/peripheral_reset util_adrv9009_rx_os_cpack/adc_rst
ad_connect  axi_adrv9009_core/adc_os_enable_i0 util_adrv9009_rx_os_cpack/adc_enable_0
ad_connect  axi_adrv9009_core/adc_os_valid_i0 util_adrv9009_rx_os_cpack/adc_valid_0
ad_connect  axi_adrv9009_core/adc_os_data_i0 util_adrv9009_rx_os_cpack/adc_data_0
ad_connect  axi_adrv9009_core/adc_os_enable_q0 util_adrv9009_rx_os_cpack/adc_enable_1
ad_connect  axi_adrv9009_core/adc_os_valid_q0 util_adrv9009_rx_os_cpack/adc_valid_1
ad_connect  axi_adrv9009_core/adc_os_data_q0 util_adrv9009_rx_os_cpack/adc_data_1
ad_connect  axi_adrv9009_core/adc_os_enable_i1 util_adrv9009_rx_os_cpack/adc_enable_2
ad_connect  axi_adrv9009_core/adc_os_valid_i1 util_adrv9009_rx_os_cpack/adc_valid_2
ad_connect  axi_adrv9009_core/adc_os_data_i1 util_adrv9009_rx_os_cpack/adc_data_2
ad_connect  axi_adrv9009_core/adc_os_enable_q1 util_adrv9009_rx_os_cpack/adc_enable_3
ad_connect  axi_adrv9009_core/adc_os_valid_q1 util_adrv9009_rx_os_cpack/adc_valid_3
ad_connect  axi_adrv9009_core/adc_os_data_q1 util_adrv9009_rx_os_cpack/adc_data_3
ad_connect  axi_adrv9009_core/adc_os_b_enable_i0 util_adrv9009_rx_os_cpack/adc_enable_4
ad_connect  axi_adrv9009_core/adc_os_b_valid_i0 util_adrv9009_rx_os_cpack/adc_valid_4
ad_connect  axi_adrv9009_core/adc_os_b_data_i0 util_adrv9009_rx_os_cpack/adc_data_4
ad_connect  axi_adrv9009_core/adc_os_b_enable_q0 util_adrv9009_rx_os_cpack/adc_enable_5
ad_connect  axi_adrv9009_core/adc_os_b_valid_q0 util_adrv9009_rx_os_cpack/adc_valid_5
ad_connect  axi_adrv9009_core/adc_os_b_data_q0 util_adrv9009_rx_os_cpack/adc_data_5
ad_connect  axi_adrv9009_core/adc_os_b_enable_i1 util_adrv9009_rx_os_cpack/adc_enable_6
ad_connect  axi_adrv9009_core/adc_os_b_valid_i1 util_adrv9009_rx_os_cpack/adc_valid_6
ad_connect  axi_adrv9009_core/adc_os_b_data_i1 util_adrv9009_rx_os_cpack/adc_data_6
ad_connect  axi_adrv9009_core/adc_os_b_enable_q1 util_adrv9009_rx_os_cpack/adc_enable_7
ad_connect  axi_adrv9009_core/adc_os_b_valid_q1 util_adrv9009_rx_os_cpack/adc_valid_7
ad_connect  axi_adrv9009_core/adc_os_b_data_q1 util_adrv9009_rx_os_cpack/adc_data_7
ad_connect  axi_adrv9009_rx_os_clkgen/clk_0 axi_adrv9009_rx_os_dma/fifo_wr_clk
ad_connect  util_adrv9009_rx_os_cpack/adc_valid axi_adrv9009_rx_os_dma/fifo_wr_en
ad_connect  util_adrv9009_rx_os_cpack/adc_sync axi_adrv9009_rx_os_dma/fifo_wr_sync
ad_connect  util_adrv9009_rx_os_cpack/adc_data axi_adrv9009_rx_os_dma/fifo_wr_din
ad_connect  axi_adrv9009_rx_os_dma/fifo_wr_overflow axi_adrv9009_core/adc_os_dovf
ad_connect  sys_dma_resetn axi_adrv9009_rx_os_dma/m_dest_axi_aresetn

# interconnect (cpu)

ad_cpu_interconnect 0x44A00000 axi_adrv9009_core
ad_cpu_interconnect 0x44A80000 axi_adrv9009_tx_xcvr
ad_cpu_interconnect 0x43C00000 axi_adrv9009_tx_clkgen
ad_cpu_interconnect 0x44A90000 axi_adrv9009_tx_jesd
ad_cpu_interconnect 0x7c420000 axi_adrv9009_tx_dma
ad_cpu_interconnect 0x44A60000 axi_adrv9009_rx_xcvr
ad_cpu_interconnect 0x43C10000 axi_adrv9009_rx_clkgen
ad_cpu_interconnect 0x44AA0000 axi_adrv9009_rx_jesd
ad_cpu_interconnect 0x7c400000 axi_adrv9009_rx_dma
ad_cpu_interconnect 0x44A50000 axi_adrv9009_rx_os_xcvr
ad_cpu_interconnect 0x43C20000 axi_adrv9009_rx_os_clkgen
ad_cpu_interconnect 0x44AB0000 axi_adrv9009_rx_os_jesd
ad_cpu_interconnect 0x7c440000 axi_adrv9009_rx_os_dma

# gt uses hp0, and 100MHz clock for both DRP and AXI4

ad_mem_hp0_interconnect sys_cpu_clk sys_ps7/S_AXI_HP0
ad_mem_hp0_interconnect sys_cpu_clk axi_adrv9009_rx_xcvr/m_axi
ad_mem_hp0_interconnect sys_cpu_clk axi_adrv9009_rx_os_xcvr/m_axi

# interconnect (mem/dac)

ad_mem_hp1_interconnect sys_dma_clk sys_ps7/S_AXI_HP1
ad_mem_hp1_interconnect sys_dma_clk axi_adrv9009_tx_dma/m_src_axi
ad_mem_hp2_interconnect sys_dma_clk sys_ps7/S_AXI_HP2
ad_mem_hp2_interconnect sys_dma_clk axi_adrv9009_rx_os_dma/m_dest_axi
ad_mem_hp3_interconnect sys_dma_clk sys_ps7/S_AXI_HP3
ad_mem_hp3_interconnect sys_dma_clk axi_adrv9009_rx_dma/m_dest_axi

# interrupts

ad_cpu_interrupt ps-8 mb-8 axi_adrv9009_rx_os_jesd/irq
ad_cpu_interrupt ps-9 mb-7 axi_adrv9009_tx_jesd/irq
ad_cpu_interrupt ps-10 mb-15 axi_adrv9009_rx_jesd/irq
ad_cpu_interrupt ps-11 mb-14 axi_adrv9009_rx_os_dma/irq
ad_cpu_interrupt ps-12 mb-13- axi_adrv9009_tx_dma/irq
ad_cpu_interrupt ps-13 mb-12 axi_adrv9009_rx_dma/irq