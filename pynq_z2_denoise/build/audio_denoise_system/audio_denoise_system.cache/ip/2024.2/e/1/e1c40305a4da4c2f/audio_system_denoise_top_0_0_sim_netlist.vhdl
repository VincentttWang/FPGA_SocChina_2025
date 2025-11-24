-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Sun Nov 23 20:47:35 2025
-- Host        : Vincent_TB14 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ audio_system_denoise_top_0_0_sim_netlist.vhdl
-- Design      : audio_system_denoise_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_control_s_axi is
  port (
    interrupt : out STD_LOGIC;
    auto_restart_status_reg_0 : out STD_LOGIC;
    reset_noise : out STD_LOGIC;
    \FSM_onehot_rstate_reg[1]_0\ : out STD_LOGIC;
    \FSM_onehot_wstate_reg[2]_0\ : out STD_LOGIC;
    ap_start : out STD_LOGIC;
    ap_sync_reg_entry_proc_U0_ap_ready_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    \FSM_onehot_wstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_control_RVALID : out STD_LOGIC;
    ap_rst_n_0 : out STD_LOGIC;
    ap_rst_n_1 : out STD_LOGIC;
    ap_rst_n_2 : out STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    int_ap_idle_reg_0 : in STD_LOGIC;
    ap_sync_reg_Block_entry_proc_U0_ap_ready : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    internal_to_axi_U0_ap_start : in STD_LOGIC;
    cmp_i97_loc_full_n : in STD_LOGIC;
    start_once_reg_0 : in STD_LOGIC;
    start_for_internal_to_axi_U0_full_n : in STD_LOGIC;
    reconstruct_signal_U0_ap_start : in STD_LOGIC;
    int_ap_idle_reg_1 : in STD_LOGIC;
    \mOutPtr_reg[0]\ : in STD_LOGIC;
    start_once_reg : in STD_LOGIC;
    start_for_Block_entry_frame_counter_wr_proc_U0_full_n : in STD_LOGIC;
    ap_sync_reg_axi_to_internal_U0_ap_ready : in STD_LOGIC;
    start_once_reg_1 : in STD_LOGIC;
    start_for_compute_magnitude_square_U0_full_n : in STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    int_task_ap_done_reg_0 : in STD_LOGIC;
    int_ap_start_reg_0 : in STD_LOGIC;
    axi_to_internal_U0_ap_ready : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_sync_entry_proc_U0_ap_ready : in STD_LOGIC;
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ap_block_pp0_stage0_11001 : in STD_LOGIC;
    ap_loop_exit_ready_pp0_iter1_reg : in STD_LOGIC;
    ap_sync_axi_to_internal_U0_ap_ready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_control_s_axi;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_control_s_axi is
  signal \FSM_onehot_rstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_rstate_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[3]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[2]_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal alpha : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal ap_idle : STD_LOGIC;
  signal \^ap_start\ : STD_LOGIC;
  signal ap_sync_Block_entry_proc_U0_ap_ready : STD_LOGIC;
  signal \^ap_sync_reg_entry_proc_u0_ap_ready_reg\ : STD_LOGIC;
  signal ar_hs : STD_LOGIC;
  signal auto_restart_status_i_1_n_0 : STD_LOGIC;
  signal \^auto_restart_status_reg_0\ : STD_LOGIC;
  signal beta : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal enable : STD_LOGIC;
  signal int_alpha0 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \int_alpha[23]_i_1_n_0\ : STD_LOGIC;
  signal int_ap_idle_i_2_n_0 : STD_LOGIC;
  signal int_ap_idle_i_4_n_0 : STD_LOGIC;
  signal \int_ap_ready__0\ : STD_LOGIC;
  signal int_ap_ready_i_1_n_0 : STD_LOGIC;
  signal int_ap_start5_out : STD_LOGIC;
  signal int_ap_start_i_1_n_0 : STD_LOGIC;
  signal int_auto_restart_i_1_n_0 : STD_LOGIC;
  signal int_beta0 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \int_beta[23]_i_1_n_0\ : STD_LOGIC;
  signal \int_enable[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_enable[0]_i_2_n_0\ : STD_LOGIC;
  signal int_gie_i_1_n_0 : STD_LOGIC;
  signal int_gie_i_3_n_0 : STD_LOGIC;
  signal int_gie_reg_n_0 : STD_LOGIC;
  signal \int_ier[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_ier[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_ier[1]_i_2_n_0\ : STD_LOGIC;
  signal \int_ier_reg_n_0_[0]\ : STD_LOGIC;
  signal int_interrupt0 : STD_LOGIC;
  signal int_isr7_out : STD_LOGIC;
  signal \int_isr[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr_reg_n_0_[0]\ : STD_LOGIC;
  signal \int_isr_reg_n_0_[1]\ : STD_LOGIC;
  signal \int_noise_frame_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_noise_frame_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_noise_frame_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \int_noise_frame_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \int_noise_frame_count[3]_i_2_n_0\ : STD_LOGIC;
  signal \int_reset_noise[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_task_ap_done0__3\ : STD_LOGIC;
  signal \int_task_ap_done__0\ : STD_LOGIC;
  signal int_task_ap_done_i_1_n_0 : STD_LOGIC;
  signal \^interrupt\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \p_0_out__0\ : STD_LOGIC_VECTOR ( 6 to 6 );
  signal p_5_in : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal rdata : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_5_n_0\ : STD_LOGIC;
  signal \rdata[23]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[23]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal \^reset_noise\ : STD_LOGIC;
  signal \^s_axi_control_bvalid\ : STD_LOGIC;
  signal \^s_axi_control_rvalid\ : STD_LOGIC;
  signal waddr : STD_LOGIC;
  signal \waddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[5]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[1]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[2]_i_1\ : label is "soft_lutpair57";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[1]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[2]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute SOFT_HLUTNM of \FSM_onehot_wstate[3]_i_1\ : label is "soft_lutpair56";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[1]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[2]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[3]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute SOFT_HLUTNM of \int_alpha[0]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \int_alpha[10]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \int_alpha[11]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \int_alpha[12]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \int_alpha[13]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \int_alpha[14]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \int_alpha[15]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \int_alpha[16]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \int_alpha[17]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \int_alpha[18]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \int_alpha[19]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \int_alpha[1]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \int_alpha[20]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \int_alpha[21]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \int_alpha[22]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \int_alpha[23]_i_2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \int_alpha[2]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \int_alpha[3]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \int_alpha[4]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \int_alpha[5]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \int_alpha[6]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \int_alpha[7]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \int_alpha[8]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \int_alpha[9]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \int_beta[0]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \int_beta[10]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \int_beta[11]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \int_beta[12]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \int_beta[13]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \int_beta[14]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \int_beta[15]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \int_beta[16]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \int_beta[17]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \int_beta[18]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \int_beta[19]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \int_beta[1]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \int_beta[20]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \int_beta[21]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \int_beta[22]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \int_beta[23]_i_2\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \int_beta[2]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \int_beta[3]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \int_beta[4]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \int_beta[5]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \int_beta[6]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \int_beta[7]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \int_beta[8]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \int_beta[9]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \int_enable[0]_i_2\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of int_gie_i_2 : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \int_ier[1]_i_2\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \int_noise_frame_count[0]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \int_noise_frame_count[1]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \int_noise_frame_count[2]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \int_noise_frame_count[3]_i_2\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \rdata[0]_i_2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \rdata[1]_i_2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \rdata[3]_i_3\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \rdata[9]_i_2\ : label is "soft_lutpair58";
begin
  \FSM_onehot_rstate_reg[1]_0\ <= \^fsm_onehot_rstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[1]_0\ <= \^fsm_onehot_wstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[2]_0\ <= \^fsm_onehot_wstate_reg[2]_0\;
  Q(3 downto 0) <= \^q\(3 downto 0);
  ap_start <= \^ap_start\;
  ap_sync_reg_entry_proc_U0_ap_ready_reg <= \^ap_sync_reg_entry_proc_u0_ap_ready_reg\;
  auto_restart_status_reg_0 <= \^auto_restart_status_reg_0\;
  interrupt <= \^interrupt\;
  reset_noise <= \^reset_noise\;
  s_axi_control_BVALID <= \^s_axi_control_bvalid\;
  s_axi_control_RVALID <= \^s_axi_control_rvalid\;
\FSM_onehot_rstate[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F277"
    )
        port map (
      I0 => \^fsm_onehot_rstate_reg[1]_0\,
      I1 => s_axi_control_ARVALID,
      I2 => s_axi_control_RREADY,
      I3 => \^s_axi_control_rvalid\,
      O => \FSM_onehot_rstate[1]_i_1_n_0\
    );
\FSM_onehot_rstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_control_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      I2 => s_axi_control_RREADY,
      I3 => \^s_axi_control_rvalid\,
      O => \FSM_onehot_rstate[2]_i_1_n_0\
    );
\FSM_onehot_rstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[1]_i_1_n_0\,
      Q => \^fsm_onehot_rstate_reg[1]_0\,
      R => ap_rst_n_inv
    );
\FSM_onehot_rstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[2]_i_1_n_0\,
      Q => \^s_axi_control_rvalid\,
      R => ap_rst_n_inv
    );
\FSM_onehot_wstate[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0FFD1D1"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[2]_0\,
      I1 => \^s_axi_control_bvalid\,
      I2 => s_axi_control_BREADY,
      I3 => s_axi_control_AWVALID,
      I4 => \^fsm_onehot_wstate_reg[1]_0\,
      O => \FSM_onehot_wstate[1]_i_2_n_0\
    );
\FSM_onehot_wstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => s_axi_control_WVALID,
      I1 => \^fsm_onehot_wstate_reg[2]_0\,
      I2 => s_axi_control_AWVALID,
      I3 => \^fsm_onehot_wstate_reg[1]_0\,
      O => \FSM_onehot_wstate[2]_i_1_n_0\
    );
\FSM_onehot_wstate[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_control_WVALID,
      I1 => \^fsm_onehot_wstate_reg[2]_0\,
      I2 => s_axi_control_BREADY,
      I3 => \^s_axi_control_bvalid\,
      O => \FSM_onehot_wstate[3]_i_1_n_0\
    );
\FSM_onehot_wstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[1]_i_2_n_0\,
      Q => \^fsm_onehot_wstate_reg[1]_0\,
      R => ap_rst_n_inv
    );
\FSM_onehot_wstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[2]_i_1_n_0\,
      Q => \^fsm_onehot_wstate_reg[2]_0\,
      R => ap_rst_n_inv
    );
\FSM_onehot_wstate_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[3]_i_1_n_0\,
      Q => \^s_axi_control_bvalid\,
      R => ap_rst_n_inv
    );
ap_sync_reg_Block_entry_proc_U0_ap_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02AA0000AAAA0000"
    )
        port map (
      I0 => ap_rst_n,
      I1 => axi_to_internal_U0_ap_ready,
      I2 => ap_sync_reg_axi_to_internal_U0_ap_ready,
      I3 => ap_sync_entry_proc_U0_ap_ready,
      I4 => ap_sync_Block_entry_proc_U0_ap_ready,
      I5 => \^ap_start\,
      O => ap_rst_n_0
    );
ap_sync_reg_axi_to_internal_U0_ap_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A8A8A8A8A8A8A8"
    )
        port map (
      I0 => ap_rst_n,
      I1 => axi_to_internal_U0_ap_ready,
      I2 => ap_sync_reg_axi_to_internal_U0_ap_ready,
      I3 => ap_sync_entry_proc_U0_ap_ready,
      I4 => ap_sync_Block_entry_proc_U0_ap_ready,
      I5 => \^ap_start\,
      O => ap_rst_n_2
    );
ap_sync_reg_axi_to_internal_U0_ap_ready_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^ap_start\,
      I1 => cmp_i97_loc_full_n,
      I2 => ap_sync_reg_Block_entry_proc_U0_ap_ready,
      O => ap_sync_Block_entry_proc_U0_ap_ready
    );
ap_sync_reg_entry_proc_U0_ap_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200AA00AA00AA00"
    )
        port map (
      I0 => ap_rst_n,
      I1 => axi_to_internal_U0_ap_ready,
      I2 => ap_sync_reg_axi_to_internal_U0_ap_ready,
      I3 => ap_sync_entry_proc_U0_ap_ready,
      I4 => ap_sync_Block_entry_proc_U0_ap_ready,
      I5 => \^ap_start\,
      O => ap_rst_n_1
    );
auto_restart_status_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => p_5_in(7),
      I1 => ap_idle,
      I2 => \^auto_restart_status_reg_0\,
      O => auto_restart_status_i_1_n_0
    );
auto_restart_status_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => auto_restart_status_i_1_n_0,
      Q => \^auto_restart_status_reg_0\,
      R => ap_rst_n_inv
    );
\int_alpha[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => alpha(0),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(0),
      O => int_alpha0(0)
    );
\int_alpha[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(10),
      I1 => s_axi_control_WSTRB(1),
      I2 => alpha(10),
      O => int_alpha0(10)
    );
\int_alpha[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(11),
      I1 => s_axi_control_WSTRB(1),
      I2 => alpha(11),
      O => int_alpha0(11)
    );
\int_alpha[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(12),
      I1 => s_axi_control_WSTRB(1),
      I2 => alpha(12),
      O => int_alpha0(12)
    );
\int_alpha[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(13),
      I1 => s_axi_control_WSTRB(1),
      I2 => alpha(13),
      O => int_alpha0(13)
    );
\int_alpha[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(14),
      I1 => s_axi_control_WSTRB(1),
      I2 => alpha(14),
      O => int_alpha0(14)
    );
\int_alpha[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(15),
      I1 => s_axi_control_WSTRB(1),
      I2 => alpha(15),
      O => int_alpha0(15)
    );
\int_alpha[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(16),
      I1 => s_axi_control_WSTRB(2),
      I2 => alpha(16),
      O => int_alpha0(16)
    );
\int_alpha[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(17),
      I1 => s_axi_control_WSTRB(2),
      I2 => alpha(17),
      O => int_alpha0(17)
    );
\int_alpha[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(18),
      I1 => s_axi_control_WSTRB(2),
      I2 => alpha(18),
      O => int_alpha0(18)
    );
\int_alpha[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(19),
      I1 => s_axi_control_WSTRB(2),
      I2 => alpha(19),
      O => int_alpha0(19)
    );
\int_alpha[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => alpha(1),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(1),
      O => int_alpha0(1)
    );
\int_alpha[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(20),
      I1 => s_axi_control_WSTRB(2),
      I2 => alpha(20),
      O => int_alpha0(20)
    );
\int_alpha[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(21),
      I1 => s_axi_control_WSTRB(2),
      I2 => alpha(21),
      O => int_alpha0(21)
    );
\int_alpha[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(22),
      I1 => s_axi_control_WSTRB(2),
      I2 => alpha(22),
      O => int_alpha0(22)
    );
\int_alpha[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \waddr_reg_n_0_[3]\,
      I1 => \waddr_reg_n_0_[4]\,
      I2 => s_axi_control_WVALID,
      I3 => \^fsm_onehot_wstate_reg[2]_0\,
      I4 => \waddr_reg_n_0_[5]\,
      I5 => \waddr_reg_n_0_[2]\,
      O => \int_alpha[23]_i_1_n_0\
    );
\int_alpha[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(23),
      I1 => s_axi_control_WSTRB(2),
      I2 => alpha(23),
      O => int_alpha0(23)
    );
\int_alpha[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => alpha(2),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(2),
      O => int_alpha0(2)
    );
\int_alpha[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => alpha(3),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(3),
      O => int_alpha0(3)
    );
\int_alpha[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(4),
      I1 => s_axi_control_WSTRB(0),
      I2 => alpha(4),
      O => int_alpha0(4)
    );
\int_alpha[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(5),
      I1 => s_axi_control_WSTRB(0),
      I2 => alpha(5),
      O => int_alpha0(5)
    );
\int_alpha[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(6),
      I1 => s_axi_control_WSTRB(0),
      I2 => alpha(6),
      O => int_alpha0(6)
    );
\int_alpha[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(7),
      I1 => s_axi_control_WSTRB(0),
      I2 => alpha(7),
      O => int_alpha0(7)
    );
\int_alpha[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(8),
      I1 => s_axi_control_WSTRB(1),
      I2 => alpha(8),
      O => int_alpha0(8)
    );
\int_alpha[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(9),
      I1 => s_axi_control_WSTRB(1),
      I2 => alpha(9),
      O => int_alpha0(9)
    );
\int_alpha_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_alpha[23]_i_1_n_0\,
      D => int_alpha0(0),
      Q => alpha(0),
      R => ap_rst_n_inv
    );
\int_alpha_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_alpha[23]_i_1_n_0\,
      D => int_alpha0(10),
      Q => alpha(10),
      R => ap_rst_n_inv
    );
\int_alpha_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_alpha[23]_i_1_n_0\,
      D => int_alpha0(11),
      Q => alpha(11),
      R => ap_rst_n_inv
    );
\int_alpha_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_alpha[23]_i_1_n_0\,
      D => int_alpha0(12),
      Q => alpha(12),
      R => ap_rst_n_inv
    );
\int_alpha_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_alpha[23]_i_1_n_0\,
      D => int_alpha0(13),
      Q => alpha(13),
      R => ap_rst_n_inv
    );
\int_alpha_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_alpha[23]_i_1_n_0\,
      D => int_alpha0(14),
      Q => alpha(14),
      R => ap_rst_n_inv
    );
\int_alpha_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_alpha[23]_i_1_n_0\,
      D => int_alpha0(15),
      Q => alpha(15),
      R => ap_rst_n_inv
    );
\int_alpha_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_alpha[23]_i_1_n_0\,
      D => int_alpha0(16),
      Q => alpha(16),
      R => ap_rst_n_inv
    );
\int_alpha_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_alpha[23]_i_1_n_0\,
      D => int_alpha0(17),
      Q => alpha(17),
      R => ap_rst_n_inv
    );
\int_alpha_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_alpha[23]_i_1_n_0\,
      D => int_alpha0(18),
      Q => alpha(18),
      R => ap_rst_n_inv
    );
\int_alpha_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_alpha[23]_i_1_n_0\,
      D => int_alpha0(19),
      Q => alpha(19),
      R => ap_rst_n_inv
    );
\int_alpha_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_alpha[23]_i_1_n_0\,
      D => int_alpha0(1),
      Q => alpha(1),
      R => ap_rst_n_inv
    );
\int_alpha_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_alpha[23]_i_1_n_0\,
      D => int_alpha0(20),
      Q => alpha(20),
      R => ap_rst_n_inv
    );
\int_alpha_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_alpha[23]_i_1_n_0\,
      D => int_alpha0(21),
      Q => alpha(21),
      R => ap_rst_n_inv
    );
\int_alpha_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_alpha[23]_i_1_n_0\,
      D => int_alpha0(22),
      Q => alpha(22),
      R => ap_rst_n_inv
    );
\int_alpha_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_alpha[23]_i_1_n_0\,
      D => int_alpha0(23),
      Q => alpha(23),
      R => ap_rst_n_inv
    );
\int_alpha_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_alpha[23]_i_1_n_0\,
      D => int_alpha0(2),
      Q => alpha(2),
      R => ap_rst_n_inv
    );
\int_alpha_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_alpha[23]_i_1_n_0\,
      D => int_alpha0(3),
      Q => alpha(3),
      R => ap_rst_n_inv
    );
\int_alpha_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_alpha[23]_i_1_n_0\,
      D => int_alpha0(4),
      Q => alpha(4),
      R => ap_rst_n_inv
    );
\int_alpha_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_alpha[23]_i_1_n_0\,
      D => int_alpha0(5),
      Q => alpha(5),
      R => ap_rst_n_inv
    );
\int_alpha_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_alpha[23]_i_1_n_0\,
      D => int_alpha0(6),
      Q => alpha(6),
      R => ap_rst_n_inv
    );
\int_alpha_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_alpha[23]_i_1_n_0\,
      D => int_alpha0(7),
      Q => alpha(7),
      R => ap_rst_n_inv
    );
\int_alpha_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_alpha[23]_i_1_n_0\,
      D => int_alpha0(8),
      Q => alpha(8),
      R => ap_rst_n_inv
    );
\int_alpha_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_alpha[23]_i_1_n_0\,
      D => int_alpha0(9),
      Q => alpha(9),
      R => ap_rst_n_inv
    );
int_ap_idle_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008808"
    )
        port map (
      I0 => int_ap_idle_i_2_n_0,
      I1 => int_ap_idle_reg_0,
      I2 => \^ap_start\,
      I3 => ap_sync_reg_Block_entry_proc_U0_ap_ready,
      I4 => ap_enable_reg_pp0_iter1,
      I5 => internal_to_axi_U0_ap_start,
      O => ap_idle
    );
int_ap_idle_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000001F"
    )
        port map (
      I0 => start_once_reg_0,
      I1 => start_for_internal_to_axi_U0_full_n,
      I2 => reconstruct_signal_U0_ap_start,
      I3 => int_ap_idle_i_4_n_0,
      I4 => int_ap_idle_reg_1,
      I5 => \^ap_sync_reg_entry_proc_u0_ap_ready_reg\,
      O => int_ap_idle_i_2_n_0
    );
int_ap_idle_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4440"
    )
        port map (
      I0 => ap_sync_reg_axi_to_internal_U0_ap_ready,
      I1 => \^ap_start\,
      I2 => start_once_reg_1,
      I3 => start_for_compute_magnitude_square_U0_full_n,
      O => int_ap_idle_i_4_n_0
    );
int_ap_idle_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_idle,
      Q => p_5_in(2),
      R => ap_rst_n_inv
    );
int_ap_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4440FFFF44404440"
    )
        port map (
      I0 => p_5_in(7),
      I1 => int_ap_start_reg_0,
      I2 => ap_sync_reg_axi_to_internal_U0_ap_ready,
      I3 => axi_to_internal_U0_ap_ready,
      I4 => \int_task_ap_done0__3\,
      I5 => \int_ap_ready__0\,
      O => int_ap_ready_i_1_n_0
    );
int_ap_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_ready_i_1_n_0,
      Q => \int_ap_ready__0\,
      R => ap_rst_n_inv
    );
int_ap_start_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFABFFFFFFA800"
    )
        port map (
      I0 => p_5_in(7),
      I1 => axi_to_internal_U0_ap_ready,
      I2 => ap_sync_reg_axi_to_internal_U0_ap_ready,
      I3 => int_ap_start_reg_0,
      I4 => int_ap_start5_out,
      I5 => \^ap_start\,
      O => int_ap_start_i_1_n_0
    );
int_ap_start_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => \int_ier[1]_i_2_n_0\,
      I2 => \waddr_reg_n_0_[4]\,
      I3 => \waddr_reg_n_0_[3]\,
      I4 => s_axi_control_WSTRB(0),
      O => int_ap_start5_out
    );
int_ap_start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_start_i_1_n_0,
      Q => \^ap_start\,
      R => ap_rst_n_inv
    );
int_auto_restart_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => s_axi_control_WDATA(7),
      I1 => s_axi_control_WSTRB(0),
      I2 => \waddr_reg_n_0_[3]\,
      I3 => \waddr_reg_n_0_[4]\,
      I4 => \int_ier[1]_i_2_n_0\,
      I5 => p_5_in(7),
      O => int_auto_restart_i_1_n_0
    );
int_auto_restart_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_auto_restart_i_1_n_0,
      Q => p_5_in(7),
      R => ap_rst_n_inv
    );
\int_beta[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => beta(0),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(0),
      O => int_beta0(0)
    );
\int_beta[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(10),
      I1 => s_axi_control_WSTRB(1),
      I2 => beta(10),
      O => int_beta0(10)
    );
\int_beta[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(11),
      I1 => s_axi_control_WSTRB(1),
      I2 => beta(11),
      O => int_beta0(11)
    );
\int_beta[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(12),
      I1 => s_axi_control_WSTRB(1),
      I2 => beta(12),
      O => int_beta0(12)
    );
\int_beta[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(13),
      I1 => s_axi_control_WSTRB(1),
      I2 => beta(13),
      O => int_beta0(13)
    );
\int_beta[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(14),
      I1 => s_axi_control_WSTRB(1),
      I2 => beta(14),
      O => int_beta0(14)
    );
\int_beta[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(15),
      I1 => s_axi_control_WSTRB(1),
      I2 => beta(15),
      O => int_beta0(15)
    );
\int_beta[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(16),
      I1 => s_axi_control_WSTRB(2),
      I2 => beta(16),
      O => int_beta0(16)
    );
\int_beta[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(17),
      I1 => s_axi_control_WSTRB(2),
      I2 => beta(17),
      O => int_beta0(17)
    );
\int_beta[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(18),
      I1 => s_axi_control_WSTRB(2),
      I2 => beta(18),
      O => int_beta0(18)
    );
\int_beta[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(19),
      I1 => s_axi_control_WSTRB(2),
      I2 => beta(19),
      O => int_beta0(19)
    );
\int_beta[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => beta(1),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(1),
      O => int_beta0(1)
    );
\int_beta[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(20),
      I1 => s_axi_control_WSTRB(2),
      I2 => beta(20),
      O => int_beta0(20)
    );
\int_beta[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(21),
      I1 => s_axi_control_WSTRB(2),
      I2 => beta(21),
      O => int_beta0(21)
    );
\int_beta[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(22),
      I1 => s_axi_control_WSTRB(2),
      I2 => beta(22),
      O => int_beta0(22)
    );
\int_beta[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \waddr_reg_n_0_[4]\,
      I1 => \waddr_reg_n_0_[3]\,
      I2 => s_axi_control_WVALID,
      I3 => \^fsm_onehot_wstate_reg[2]_0\,
      I4 => \waddr_reg_n_0_[5]\,
      I5 => \waddr_reg_n_0_[2]\,
      O => \int_beta[23]_i_1_n_0\
    );
\int_beta[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(23),
      I1 => s_axi_control_WSTRB(2),
      I2 => beta(23),
      O => int_beta0(23)
    );
\int_beta[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => beta(2),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(2),
      O => int_beta0(2)
    );
\int_beta[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => beta(3),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(3),
      O => int_beta0(3)
    );
\int_beta[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(4),
      I1 => s_axi_control_WSTRB(0),
      I2 => beta(4),
      O => int_beta0(4)
    );
\int_beta[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(5),
      I1 => s_axi_control_WSTRB(0),
      I2 => beta(5),
      O => int_beta0(5)
    );
\int_beta[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(6),
      I1 => s_axi_control_WSTRB(0),
      I2 => beta(6),
      O => int_beta0(6)
    );
\int_beta[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(7),
      I1 => s_axi_control_WSTRB(0),
      I2 => beta(7),
      O => int_beta0(7)
    );
\int_beta[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(8),
      I1 => s_axi_control_WSTRB(1),
      I2 => beta(8),
      O => int_beta0(8)
    );
\int_beta[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(9),
      I1 => s_axi_control_WSTRB(1),
      I2 => beta(9),
      O => int_beta0(9)
    );
\int_beta_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_beta[23]_i_1_n_0\,
      D => int_beta0(0),
      Q => beta(0),
      R => ap_rst_n_inv
    );
\int_beta_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_beta[23]_i_1_n_0\,
      D => int_beta0(10),
      Q => beta(10),
      R => ap_rst_n_inv
    );
\int_beta_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_beta[23]_i_1_n_0\,
      D => int_beta0(11),
      Q => beta(11),
      R => ap_rst_n_inv
    );
\int_beta_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_beta[23]_i_1_n_0\,
      D => int_beta0(12),
      Q => beta(12),
      R => ap_rst_n_inv
    );
\int_beta_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_beta[23]_i_1_n_0\,
      D => int_beta0(13),
      Q => beta(13),
      R => ap_rst_n_inv
    );
\int_beta_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_beta[23]_i_1_n_0\,
      D => int_beta0(14),
      Q => beta(14),
      R => ap_rst_n_inv
    );
\int_beta_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_beta[23]_i_1_n_0\,
      D => int_beta0(15),
      Q => beta(15),
      R => ap_rst_n_inv
    );
\int_beta_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_beta[23]_i_1_n_0\,
      D => int_beta0(16),
      Q => beta(16),
      R => ap_rst_n_inv
    );
\int_beta_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_beta[23]_i_1_n_0\,
      D => int_beta0(17),
      Q => beta(17),
      R => ap_rst_n_inv
    );
\int_beta_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_beta[23]_i_1_n_0\,
      D => int_beta0(18),
      Q => beta(18),
      R => ap_rst_n_inv
    );
\int_beta_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_beta[23]_i_1_n_0\,
      D => int_beta0(19),
      Q => beta(19),
      R => ap_rst_n_inv
    );
\int_beta_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_beta[23]_i_1_n_0\,
      D => int_beta0(1),
      Q => beta(1),
      R => ap_rst_n_inv
    );
\int_beta_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_beta[23]_i_1_n_0\,
      D => int_beta0(20),
      Q => beta(20),
      R => ap_rst_n_inv
    );
\int_beta_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_beta[23]_i_1_n_0\,
      D => int_beta0(21),
      Q => beta(21),
      R => ap_rst_n_inv
    );
\int_beta_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_beta[23]_i_1_n_0\,
      D => int_beta0(22),
      Q => beta(22),
      R => ap_rst_n_inv
    );
\int_beta_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_beta[23]_i_1_n_0\,
      D => int_beta0(23),
      Q => beta(23),
      R => ap_rst_n_inv
    );
\int_beta_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_beta[23]_i_1_n_0\,
      D => int_beta0(2),
      Q => beta(2),
      R => ap_rst_n_inv
    );
\int_beta_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_beta[23]_i_1_n_0\,
      D => int_beta0(3),
      Q => beta(3),
      R => ap_rst_n_inv
    );
\int_beta_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_beta[23]_i_1_n_0\,
      D => int_beta0(4),
      Q => beta(4),
      R => ap_rst_n_inv
    );
\int_beta_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_beta[23]_i_1_n_0\,
      D => int_beta0(5),
      Q => beta(5),
      R => ap_rst_n_inv
    );
\int_beta_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_beta[23]_i_1_n_0\,
      D => int_beta0(6),
      Q => beta(6),
      R => ap_rst_n_inv
    );
\int_beta_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_beta[23]_i_1_n_0\,
      D => int_beta0(7),
      Q => beta(7),
      R => ap_rst_n_inv
    );
\int_beta_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_beta[23]_i_1_n_0\,
      D => int_beta0(8),
      Q => beta(8),
      R => ap_rst_n_inv
    );
\int_beta_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_beta[23]_i_1_n_0\,
      D => int_beta0(9),
      Q => beta(9),
      R => ap_rst_n_inv
    );
\int_enable[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => s_axi_control_WSTRB(0),
      I2 => \waddr_reg_n_0_[4]\,
      I3 => \waddr_reg_n_0_[3]\,
      I4 => \int_enable[0]_i_2_n_0\,
      I5 => enable,
      O => \int_enable[0]_i_1_n_0\
    );
\int_enable[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \waddr_reg_n_0_[2]\,
      I1 => \waddr_reg_n_0_[5]\,
      I2 => \^fsm_onehot_wstate_reg[2]_0\,
      I3 => s_axi_control_WVALID,
      O => \int_enable[0]_i_2_n_0\
    );
\int_enable_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_enable[0]_i_1_n_0\,
      Q => enable,
      R => ap_rst_n_inv
    );
int_gie_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => \p_0_out__0\(6),
      I2 => s_axi_control_WSTRB(0),
      I3 => \waddr_reg_n_0_[3]\,
      I4 => int_gie_i_3_n_0,
      I5 => int_gie_reg_n_0,
      O => int_gie_i_1_n_0
    );
int_gie_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_control_WVALID,
      I1 => \^fsm_onehot_wstate_reg[2]_0\,
      O => \p_0_out__0\(6)
    );
int_gie_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \waddr_reg_n_0_[5]\,
      I1 => \waddr_reg_n_0_[4]\,
      I2 => \waddr_reg_n_0_[2]\,
      O => int_gie_i_3_n_0
    );
int_gie_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_gie_i_1_n_0,
      Q => int_gie_reg_n_0,
      R => ap_rst_n_inv
    );
\int_ier[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => s_axi_control_WSTRB(0),
      I2 => \waddr_reg_n_0_[3]\,
      I3 => \waddr_reg_n_0_[4]\,
      I4 => \int_ier[1]_i_2_n_0\,
      I5 => \int_ier_reg_n_0_[0]\,
      O => \int_ier[0]_i_1_n_0\
    );
\int_ier[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s_axi_control_WDATA(1),
      I1 => s_axi_control_WSTRB(0),
      I2 => \waddr_reg_n_0_[3]\,
      I3 => \waddr_reg_n_0_[4]\,
      I4 => \int_ier[1]_i_2_n_0\,
      I5 => p_0_in,
      O => \int_ier[1]_i_1_n_0\
    );
\int_ier[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \waddr_reg_n_0_[2]\,
      I1 => \waddr_reg_n_0_[5]\,
      I2 => \^fsm_onehot_wstate_reg[2]_0\,
      I3 => s_axi_control_WVALID,
      O => \int_ier[1]_i_2_n_0\
    );
\int_ier_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_ier[0]_i_1_n_0\,
      Q => \int_ier_reg_n_0_[0]\,
      R => ap_rst_n_inv
    );
\int_ier_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_ier[1]_i_1_n_0\,
      Q => p_0_in,
      R => ap_rst_n_inv
    );
int_interrupt_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \int_isr_reg_n_0_[1]\,
      I1 => \int_isr_reg_n_0_[0]\,
      I2 => int_gie_reg_n_0,
      O => int_interrupt0
    );
int_interrupt_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_interrupt0,
      Q => \^interrupt\,
      R => ap_rst_n_inv
    );
\int_isr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7777778F888888"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => int_isr7_out,
      I2 => ap_block_pp0_stage0_11001,
      I3 => \int_ier_reg_n_0_[0]\,
      I4 => ap_loop_exit_ready_pp0_iter1_reg,
      I5 => \int_isr_reg_n_0_[0]\,
      O => \int_isr[0]_i_1_n_0\
    );
\int_isr[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \p_0_out__0\(6),
      I1 => s_axi_control_WSTRB(0),
      I2 => \waddr_reg_n_0_[3]\,
      I3 => \waddr_reg_n_0_[2]\,
      I4 => \waddr_reg_n_0_[4]\,
      I5 => \waddr_reg_n_0_[5]\,
      O => int_isr7_out
    );
\int_isr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7777777F8888888"
    )
        port map (
      I0 => s_axi_control_WDATA(1),
      I1 => int_isr7_out,
      I2 => p_0_in,
      I3 => int_ap_start_reg_0,
      I4 => ap_sync_axi_to_internal_U0_ap_ready,
      I5 => \int_isr_reg_n_0_[1]\,
      O => \int_isr[1]_i_1_n_0\
    );
\int_isr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[0]_i_1_n_0\,
      Q => \int_isr_reg_n_0_[0]\,
      R => ap_rst_n_inv
    );
\int_isr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[1]_i_1_n_0\,
      Q => \int_isr_reg_n_0_[1]\,
      R => ap_rst_n_inv
    );
\int_noise_frame_count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^q\(0),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(0),
      O => \int_noise_frame_count[0]_i_1_n_0\
    );
\int_noise_frame_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^q\(1),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(1),
      O => \int_noise_frame_count[1]_i_1_n_0\
    );
\int_noise_frame_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^q\(2),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(2),
      O => \int_noise_frame_count[2]_i_1_n_0\
    );
\int_noise_frame_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \waddr_reg_n_0_[3]\,
      I1 => \waddr_reg_n_0_[4]\,
      I2 => s_axi_control_WVALID,
      I3 => \^fsm_onehot_wstate_reg[2]_0\,
      I4 => \waddr_reg_n_0_[5]\,
      I5 => \waddr_reg_n_0_[2]\,
      O => \int_noise_frame_count[3]_i_1_n_0\
    );
\int_noise_frame_count[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^q\(3),
      I1 => s_axi_control_WSTRB(0),
      I2 => s_axi_control_WDATA(3),
      O => \int_noise_frame_count[3]_i_2_n_0\
    );
\int_noise_frame_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_noise_frame_count[3]_i_1_n_0\,
      D => \int_noise_frame_count[0]_i_1_n_0\,
      Q => \^q\(0),
      R => ap_rst_n_inv
    );
\int_noise_frame_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_noise_frame_count[3]_i_1_n_0\,
      D => \int_noise_frame_count[1]_i_1_n_0\,
      Q => \^q\(1),
      R => ap_rst_n_inv
    );
\int_noise_frame_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_noise_frame_count[3]_i_1_n_0\,
      D => \int_noise_frame_count[2]_i_1_n_0\,
      Q => \^q\(2),
      R => ap_rst_n_inv
    );
\int_noise_frame_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_noise_frame_count[3]_i_1_n_0\,
      D => \int_noise_frame_count[3]_i_2_n_0\,
      Q => \^q\(3),
      R => ap_rst_n_inv
    );
\int_reset_noise[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => s_axi_control_WSTRB(0),
      I2 => \waddr_reg_n_0_[4]\,
      I3 => \waddr_reg_n_0_[3]\,
      I4 => \int_enable[0]_i_2_n_0\,
      I5 => \^reset_noise\,
      O => \int_reset_noise[0]_i_1_n_0\
    );
\int_reset_noise_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_reset_noise[0]_i_1_n_0\,
      Q => \^reset_noise\,
      R => ap_rst_n_inv
    );
int_task_ap_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAAFFFFBAAABAAA"
    )
        port map (
      I0 => int_task_ap_done_reg_0,
      I1 => p_5_in(2),
      I2 => \^auto_restart_status_reg_0\,
      I3 => ap_idle,
      I4 => \int_task_ap_done0__3\,
      I5 => \int_task_ap_done__0\,
      O => int_task_ap_done_i_1_n_0
    );
int_task_ap_done_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \rdata[1]_i_2_n_0\,
      I1 => ar_hs,
      I2 => s_axi_control_ARADDR(3),
      I3 => s_axi_control_ARADDR(2),
      I4 => s_axi_control_ARADDR(1),
      I5 => s_axi_control_ARADDR(0),
      O => \int_task_ap_done0__3\
    );
int_task_ap_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_task_ap_done_i_1_n_0,
      Q => \int_task_ap_done__0\,
      R => ap_rst_n_inv
    );
\mOutPtr[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4440"
    )
        port map (
      I0 => \mOutPtr_reg[0]\,
      I1 => \^ap_start\,
      I2 => start_once_reg,
      I3 => start_for_Block_entry_frame_counter_wr_proc_U0_full_n,
      O => \^ap_sync_reg_entry_proc_u0_ap_ready_reg\
    );
\rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FF40"
    )
        port map (
      I0 => s_axi_control_ARADDR(2),
      I1 => s_axi_control_ARADDR(3),
      I2 => \rdata[0]_i_2_n_0\,
      I3 => \rdata[0]_i_3_n_0\,
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(1),
      O => rdata(0)
    );
\rdata[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAF0CC"
    )
        port map (
      I0 => beta(0),
      I1 => \int_ier_reg_n_0_[0]\,
      I2 => \^reset_noise\,
      I3 => s_axi_control_ARADDR(5),
      I4 => s_axi_control_ARADDR(4),
      O => \rdata[0]_i_2_n_0\
    );
\rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A00000C0C0FF00"
    )
        port map (
      I0 => \int_isr_reg_n_0_[0]\,
      I1 => int_gie_reg_n_0,
      I2 => \rdata[1]_i_2_n_0\,
      I3 => \rdata[0]_i_4_n_0\,
      I4 => s_axi_control_ARADDR(2),
      I5 => s_axi_control_ARADDR(3),
      O => \rdata[0]_i_3_n_0\
    );
\rdata[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCA0FCAF0CA00CA"
    )
        port map (
      I0 => \^ap_start\,
      I1 => enable,
      I2 => s_axi_control_ARADDR(5),
      I3 => s_axi_control_ARADDR(4),
      I4 => \^q\(0),
      I5 => alpha(0),
      O => \rdata[0]_i_4_n_0\
    );
\rdata[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => alpha(10),
      I1 => \rdata[23]_i_3_n_0\,
      I2 => beta(10),
      I3 => \rdata[23]_i_4_n_0\,
      O => rdata(10)
    );
\rdata[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => alpha(11),
      I1 => \rdata[23]_i_3_n_0\,
      I2 => beta(11),
      I3 => \rdata[23]_i_4_n_0\,
      O => rdata(11)
    );
\rdata[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => alpha(12),
      I1 => \rdata[23]_i_3_n_0\,
      I2 => beta(12),
      I3 => \rdata[23]_i_4_n_0\,
      O => rdata(12)
    );
\rdata[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => alpha(13),
      I1 => \rdata[23]_i_3_n_0\,
      I2 => beta(13),
      I3 => \rdata[23]_i_4_n_0\,
      O => rdata(13)
    );
\rdata[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => alpha(14),
      I1 => \rdata[23]_i_3_n_0\,
      I2 => beta(14),
      I3 => \rdata[23]_i_4_n_0\,
      O => rdata(14)
    );
\rdata[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => alpha(15),
      I1 => \rdata[23]_i_3_n_0\,
      I2 => beta(15),
      I3 => \rdata[23]_i_4_n_0\,
      O => rdata(15)
    );
\rdata[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => alpha(16),
      I1 => \rdata[23]_i_3_n_0\,
      I2 => beta(16),
      I3 => \rdata[23]_i_4_n_0\,
      O => rdata(16)
    );
\rdata[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => alpha(17),
      I1 => \rdata[23]_i_3_n_0\,
      I2 => beta(17),
      I3 => \rdata[23]_i_4_n_0\,
      O => rdata(17)
    );
\rdata[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => alpha(18),
      I1 => \rdata[23]_i_3_n_0\,
      I2 => beta(18),
      I3 => \rdata[23]_i_4_n_0\,
      O => rdata(18)
    );
\rdata[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => alpha(19),
      I1 => \rdata[23]_i_3_n_0\,
      I2 => beta(19),
      I3 => \rdata[23]_i_4_n_0\,
      O => rdata(19)
    );
\rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000080800000FF00"
    )
        port map (
      I0 => s_axi_control_ARADDR(3),
      I1 => \int_isr_reg_n_0_[1]\,
      I2 => \rdata[1]_i_2_n_0\,
      I3 => \rdata[1]_i_3_n_0\,
      I4 => \rdata[1]_i_4_n_0\,
      I5 => s_axi_control_ARADDR(2),
      O => rdata(1)
    );
\rdata[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_control_ARADDR(4),
      I1 => s_axi_control_ARADDR(5),
      O => \rdata[1]_i_2_n_0\
    );
\rdata[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFEAAAAAAAEAAAA"
    )
        port map (
      I0 => \rdata[1]_i_5_n_0\,
      I1 => p_0_in,
      I2 => s_axi_control_ARADDR(4),
      I3 => s_axi_control_ARADDR(5),
      I4 => s_axi_control_ARADDR(3),
      I5 => beta(1),
      O => \rdata[1]_i_3_n_0\
    );
\rdata[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_control_ARADDR(1),
      I1 => s_axi_control_ARADDR(0),
      O => \rdata[1]_i_4_n_0\
    );
\rdata[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000D5C49180"
    )
        port map (
      I0 => s_axi_control_ARADDR(5),
      I1 => s_axi_control_ARADDR(4),
      I2 => \^q\(1),
      I3 => \int_task_ap_done__0\,
      I4 => alpha(1),
      I5 => s_axi_control_ARADDR(3),
      O => \rdata[1]_i_5_n_0\
    );
\rdata[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => alpha(20),
      I1 => \rdata[23]_i_3_n_0\,
      I2 => beta(20),
      I3 => \rdata[23]_i_4_n_0\,
      O => rdata(20)
    );
\rdata[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => alpha(21),
      I1 => \rdata[23]_i_3_n_0\,
      I2 => beta(21),
      I3 => \rdata[23]_i_4_n_0\,
      O => rdata(21)
    );
\rdata[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => alpha(22),
      I1 => \rdata[23]_i_3_n_0\,
      I2 => beta(22),
      I3 => \rdata[23]_i_4_n_0\,
      O => rdata(22)
    );
\rdata[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_control_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      O => ar_hs
    );
\rdata[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => alpha(23),
      I1 => \rdata[23]_i_3_n_0\,
      I2 => beta(23),
      I3 => \rdata[23]_i_4_n_0\,
      O => rdata(23)
    );
\rdata[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => s_axi_control_ARADDR(4),
      I1 => s_axi_control_ARADDR(5),
      I2 => s_axi_control_ARADDR(2),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(3),
      O => \rdata[23]_i_3_n_0\
    );
\rdata[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => s_axi_control_ARADDR(4),
      I1 => s_axi_control_ARADDR(5),
      I2 => s_axi_control_ARADDR(2),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(3),
      O => \rdata[23]_i_4_n_0\
    );
\rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20200000FF000000"
    )
        port map (
      I0 => beta(2),
      I1 => s_axi_control_ARADDR(5),
      I2 => s_axi_control_ARADDR(4),
      I3 => \rdata[2]_i_2_n_0\,
      I4 => \rdata[3]_i_3_n_0\,
      I5 => s_axi_control_ARADDR(3),
      O => rdata(2)
    );
\rdata[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000AACC"
    )
        port map (
      I0 => alpha(2),
      I1 => p_5_in(2),
      I2 => \^q\(2),
      I3 => s_axi_control_ARADDR(4),
      I4 => s_axi_control_ARADDR(5),
      O => \rdata[2]_i_2_n_0\
    );
\rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20200000FF000000"
    )
        port map (
      I0 => beta(3),
      I1 => s_axi_control_ARADDR(5),
      I2 => s_axi_control_ARADDR(4),
      I3 => \rdata[3]_i_2_n_0\,
      I4 => \rdata[3]_i_3_n_0\,
      I5 => s_axi_control_ARADDR(3),
      O => rdata(3)
    );
\rdata[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000AACC"
    )
        port map (
      I0 => alpha(3),
      I1 => \int_ap_ready__0\,
      I2 => \^q\(3),
      I3 => s_axi_control_ARADDR(4),
      I4 => s_axi_control_ARADDR(5),
      O => \rdata[3]_i_2_n_0\
    );
\rdata[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => s_axi_control_ARADDR(0),
      I1 => s_axi_control_ARADDR(1),
      I2 => s_axi_control_ARADDR(2),
      O => \rdata[3]_i_3_n_0\
    );
\rdata[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => alpha(4),
      I1 => \rdata[23]_i_3_n_0\,
      I2 => beta(4),
      I3 => \rdata[23]_i_4_n_0\,
      O => rdata(4)
    );
\rdata[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => alpha(5),
      I1 => \rdata[23]_i_3_n_0\,
      I2 => beta(5),
      I3 => \rdata[23]_i_4_n_0\,
      O => rdata(5)
    );
\rdata[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => alpha(6),
      I1 => \rdata[23]_i_3_n_0\,
      I2 => beta(6),
      I3 => \rdata[23]_i_4_n_0\,
      O => rdata(6)
    );
\rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80AA800A80A08000"
    )
        port map (
      I0 => \rdata[9]_i_2_n_0\,
      I1 => beta(7),
      I2 => s_axi_control_ARADDR(4),
      I3 => s_axi_control_ARADDR(3),
      I4 => alpha(7),
      I5 => p_5_in(7),
      O => rdata(7)
    );
\rdata[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => alpha(8),
      I1 => \rdata[23]_i_3_n_0\,
      I2 => beta(8),
      I3 => \rdata[23]_i_4_n_0\,
      O => rdata(8)
    );
\rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80AA800A80A08000"
    )
        port map (
      I0 => \rdata[9]_i_2_n_0\,
      I1 => beta(9),
      I2 => s_axi_control_ARADDR(4),
      I3 => s_axi_control_ARADDR(3),
      I4 => alpha(9),
      I5 => \^interrupt\,
      O => rdata(9)
    );
\rdata[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axi_control_ARADDR(2),
      I1 => s_axi_control_ARADDR(1),
      I2 => s_axi_control_ARADDR(0),
      I3 => s_axi_control_ARADDR(5),
      O => \rdata[9]_i_2_n_0\
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(0),
      Q => s_axi_control_RDATA(0),
      R => '0'
    );
\rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(10),
      Q => s_axi_control_RDATA(10),
      R => '0'
    );
\rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(11),
      Q => s_axi_control_RDATA(11),
      R => '0'
    );
\rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(12),
      Q => s_axi_control_RDATA(12),
      R => '0'
    );
\rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(13),
      Q => s_axi_control_RDATA(13),
      R => '0'
    );
\rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(14),
      Q => s_axi_control_RDATA(14),
      R => '0'
    );
\rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(15),
      Q => s_axi_control_RDATA(15),
      R => '0'
    );
\rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(16),
      Q => s_axi_control_RDATA(16),
      R => '0'
    );
\rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(17),
      Q => s_axi_control_RDATA(17),
      R => '0'
    );
\rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(18),
      Q => s_axi_control_RDATA(18),
      R => '0'
    );
\rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(19),
      Q => s_axi_control_RDATA(19),
      R => '0'
    );
\rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(1),
      Q => s_axi_control_RDATA(1),
      R => '0'
    );
\rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(20),
      Q => s_axi_control_RDATA(20),
      R => '0'
    );
\rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(21),
      Q => s_axi_control_RDATA(21),
      R => '0'
    );
\rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(22),
      Q => s_axi_control_RDATA(22),
      R => '0'
    );
\rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(23),
      Q => s_axi_control_RDATA(23),
      R => '0'
    );
\rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(2),
      Q => s_axi_control_RDATA(2),
      R => '0'
    );
\rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(3),
      Q => s_axi_control_RDATA(3),
      R => '0'
    );
\rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(4),
      Q => s_axi_control_RDATA(4),
      R => '0'
    );
\rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(5),
      Q => s_axi_control_RDATA(5),
      R => '0'
    );
\rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(6),
      Q => s_axi_control_RDATA(6),
      R => '0'
    );
\rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(7),
      Q => s_axi_control_RDATA(7),
      R => '0'
    );
\rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(8),
      Q => s_axi_control_RDATA(8),
      R => '0'
    );
\rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(9),
      Q => s_axi_control_RDATA(9),
      R => '0'
    );
\waddr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[1]_0\,
      I1 => s_axi_control_AWVALID,
      O => waddr
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_control_AWADDR(0),
      Q => \waddr_reg_n_0_[2]\,
      R => '0'
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_control_AWADDR(1),
      Q => \waddr_reg_n_0_[3]\,
      R => '0'
    );
\waddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_control_AWADDR(2),
      Q => \waddr_reg_n_0_[4]\,
      R => '0'
    );
\waddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_control_AWADDR(3),
      Q => \waddr_reg_n_0_[5]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_entry_proc is
  port (
    start_once_reg : out STD_LOGIC;
    start_once_reg_reg_0 : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_entry_proc;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_entry_proc is
begin
start_once_reg_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => ap_rst_n_inv,
      D => start_once_reg_reg_0,
      Q => start_once_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w1_d8_S is
  port (
    cmp_i97_loc_empty_n : out STD_LOGIC;
    cmp_i97_loc_full_n : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_sync_reg_Block_entry_proc_U0_ap_ready : in STD_LOGIC;
    full_n_reg_0 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w1_d8_S;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w1_d8_S is
  signal \^cmp_i97_loc_empty_n\ : STD_LOGIC;
  signal \^cmp_i97_loc_full_n\ : STD_LOGIC;
  signal cmp_i97_loc_num_data_valid : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \empty_n_i_1__3_n_0\ : STD_LOGIC;
  signal \empty_n_i_2__6_n_0\ : STD_LOGIC;
  signal \full_n_i_1__3_n_0\ : STD_LOGIC;
  signal \full_n_i_2__7_n_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__9_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \mOutPtr[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \mOutPtr[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \mOutPtr[3]_i_2_n_0\ : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \empty_n_i_2__6\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \full_n_i_2__7\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \mOutPtr[0]_i_1__9\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_1__1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \mOutPtr[2]_i_1__2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \mOutPtr[3]_i_2\ : label is "soft_lutpair45";
begin
  cmp_i97_loc_empty_n <= \^cmp_i97_loc_empty_n\;
  cmp_i97_loc_full_n <= \^cmp_i97_loc_full_n\;
\empty_n_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4C4C4C4CFF4C4C4C"
    )
        port map (
      I0 => \empty_n_i_2__6_n_0\,
      I1 => \^cmp_i97_loc_empty_n\,
      I2 => full_n_reg_0,
      I3 => \^cmp_i97_loc_full_n\,
      I4 => ap_start,
      I5 => ap_sync_reg_Block_entry_proc_U0_ap_ready,
      O => \empty_n_i_1__3_n_0\
    );
\empty_n_i_2__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => cmp_i97_loc_num_data_valid(1),
      I1 => cmp_i97_loc_num_data_valid(0),
      I2 => cmp_i97_loc_num_data_valid(3),
      I3 => cmp_i97_loc_num_data_valid(2),
      O => \empty_n_i_2__6_n_0\
    );
empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \empty_n_i_1__3_n_0\,
      Q => \^cmp_i97_loc_empty_n\,
      R => ap_rst_n_inv
    );
\full_n_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCC4CCC4CCC4C"
    )
        port map (
      I0 => \full_n_i_2__7_n_0\,
      I1 => \^cmp_i97_loc_full_n\,
      I2 => ap_start,
      I3 => ap_sync_reg_Block_entry_proc_U0_ap_ready,
      I4 => \^cmp_i97_loc_empty_n\,
      I5 => full_n_reg_0,
      O => \full_n_i_1__3_n_0\
    );
\full_n_i_2__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => cmp_i97_loc_num_data_valid(1),
      I1 => cmp_i97_loc_num_data_valid(0),
      I2 => cmp_i97_loc_num_data_valid(3),
      I3 => cmp_i97_loc_num_data_valid(2),
      O => \full_n_i_2__7_n_0\
    );
full_n_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \full_n_i_1__3_n_0\,
      Q => \^cmp_i97_loc_full_n\,
      S => ap_rst_n_inv
    );
\mOutPtr[0]_i_1__9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cmp_i97_loc_num_data_valid(0),
      O => \mOutPtr[0]_i_1__9_n_0\
    );
\mOutPtr[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => cmp_i97_loc_num_data_valid(0),
      I1 => p_9_in,
      I2 => cmp_i97_loc_num_data_valid(1),
      O => \mOutPtr[1]_i_1__1_n_0\
    );
\mOutPtr[2]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => p_9_in,
      I1 => cmp_i97_loc_num_data_valid(0),
      I2 => cmp_i97_loc_num_data_valid(2),
      I3 => cmp_i97_loc_num_data_valid(1),
      O => \mOutPtr[2]_i_1__2_n_0\
    );
\mOutPtr[3]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7080808"
    )
        port map (
      I0 => \^cmp_i97_loc_full_n\,
      I1 => ap_start,
      I2 => ap_sync_reg_Block_entry_proc_U0_ap_ready,
      I3 => \^cmp_i97_loc_empty_n\,
      I4 => full_n_reg_0,
      O => \mOutPtr[3]_i_1__2_n_0\
    );
\mOutPtr[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => p_9_in,
      I1 => cmp_i97_loc_num_data_valid(0),
      I2 => cmp_i97_loc_num_data_valid(1),
      I3 => cmp_i97_loc_num_data_valid(3),
      I4 => cmp_i97_loc_num_data_valid(2),
      O => \mOutPtr[3]_i_2_n_0\
    );
\mOutPtr[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00404040"
    )
        port map (
      I0 => ap_sync_reg_Block_entry_proc_U0_ap_ready,
      I1 => ap_start,
      I2 => \^cmp_i97_loc_full_n\,
      I3 => full_n_reg_0,
      I4 => \^cmp_i97_loc_empty_n\,
      O => p_9_in
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr[3]_i_1__2_n_0\,
      D => \mOutPtr[0]_i_1__9_n_0\,
      Q => cmp_i97_loc_num_data_valid(0),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr[3]_i_1__2_n_0\,
      D => \mOutPtr[1]_i_1__1_n_0\,
      Q => cmp_i97_loc_num_data_valid(1),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr[3]_i_1__2_n_0\,
      D => \mOutPtr[2]_i_1__2_n_0\,
      Q => cmp_i97_loc_num_data_valid(2),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr[3]_i_1__2_n_0\,
      D => \mOutPtr[3]_i_2_n_0\,
      Q => cmp_i97_loc_num_data_valid(3),
      R => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w1_d8_S_ShiftReg is
  port (
    reset_noise_c_dout : out STD_LOGIC;
    reset_noise : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_clk : in STD_LOGIC;
    \reset_noise_read_reg_380_reg[0]\ : in STD_LOGIC;
    entry_proc_U0_noise_frame_count_c_write : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w1_d8_S_ShiftReg;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w1_d8_S_ShiftReg is
  signal push : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \SRL_SIG_reg[7][0]_srl8\ : label is "inst/\reset_noise_c_U/U_denoise_top_fifo_w1_d8_S_ShiftReg/SRL_SIG_reg[7] ";
  attribute srl_name : string;
  attribute srl_name of \SRL_SIG_reg[7][0]_srl8\ : label is "inst/\reset_noise_c_U/U_denoise_top_fifo_w1_d8_S_ShiftReg/SRL_SIG_reg[7][0]_srl8 ";
begin
\SRL_SIG_reg[7][0]_srl8\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr(0),
      A1 => addr(1),
      A2 => addr(2),
      A3 => '0',
      CE => push,
      CLK => ap_clk,
      D => reset_noise,
      Q => reset_noise_c_dout
    );
\SRL_SIG_reg[7][0]_srl8_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reset_noise_read_reg_380_reg[0]\,
      I1 => entry_proc_U0_noise_frame_count_c_write,
      O => push
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w24_d16_S is
  port (
    stream4_i_empty_n : out STD_LOGIC;
    full_n_reg_0 : out STD_LOGIC;
    ap_block_pp0_stage0_11001 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream3_empty_n : in STD_LOGIC;
    \ap_CS_fsm_reg[4]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    pop : in STD_LOGIC;
    p_6_in : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w24_d16_S;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w24_d16_S is
  signal empty_n1 : STD_LOGIC;
  signal empty_n_i_1_n_0 : STD_LOGIC;
  signal full_n1 : STD_LOGIC;
  signal full_n_i_1_n_0 : STD_LOGIC;
  signal \^full_n_reg_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1__8_n_0\ : STD_LOGIC;
  signal \mOutPtr[2]_i_1_n_0\ : STD_LOGIC;
  signal \mOutPtr[3]_i_1_n_0\ : STD_LOGIC;
  signal \mOutPtr[4]_i_2_n_0\ : STD_LOGIC;
  signal mOutPtr_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_9_in : STD_LOGIC;
  signal \^stream4_i_empty_n\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ap_loop_init_int_i_2 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of empty_n_i_2 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \mOutPtr[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \mOutPtr[2]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \mOutPtr[3]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \mOutPtr[4]_i_4\ : label is "soft_lutpair26";
begin
  full_n_reg_0 <= \^full_n_reg_0\;
  stream4_i_empty_n <= \^stream4_i_empty_n\;
ap_loop_init_int_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => stream3_empty_n,
      I1 => \^full_n_reg_0\,
      I2 => \ap_CS_fsm_reg[4]\,
      O => ap_block_pp0_stage0_11001
    );
empty_n_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFAA"
    )
        port map (
      I0 => p_9_in,
      I1 => empty_n1,
      I2 => p_6_in,
      I3 => \^stream4_i_empty_n\,
      O => empty_n_i_1_n_0
    );
empty_n_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => mOutPtr_reg(0),
      I1 => mOutPtr_reg(2),
      I2 => mOutPtr_reg(1),
      I3 => mOutPtr_reg(3),
      I4 => mOutPtr_reg(4),
      O => empty_n1
    );
empty_n_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => AR(0),
      D => empty_n_i_1_n_0,
      Q => \^stream4_i_empty_n\
    );
full_n_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => full_n1,
      I1 => p_6_in,
      I2 => \^full_n_reg_0\,
      O => full_n_i_1_n_0
    );
full_n_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => p_9_in,
      I1 => mOutPtr_reg(2),
      I2 => mOutPtr_reg(3),
      I3 => mOutPtr_reg(0),
      I4 => mOutPtr_reg(1),
      I5 => mOutPtr_reg(4),
      O => full_n1
    );
full_n_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => full_n_i_1_n_0,
      PRE => AR(0),
      Q => \^full_n_reg_0\
    );
\mOutPtr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mOutPtr_reg(0),
      O => \mOutPtr[0]_i_1_n_0\
    );
\mOutPtr[1]_i_1__8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => mOutPtr_reg(0),
      I1 => p_9_in,
      I2 => mOutPtr_reg(1),
      O => \mOutPtr[1]_i_1__8_n_0\
    );
\mOutPtr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => mOutPtr_reg(0),
      I1 => p_9_in,
      I2 => mOutPtr_reg(2),
      I3 => mOutPtr_reg(1),
      O => \mOutPtr[2]_i_1_n_0\
    );
\mOutPtr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => p_9_in,
      I1 => mOutPtr_reg(0),
      I2 => mOutPtr_reg(1),
      I3 => mOutPtr_reg(3),
      I4 => mOutPtr_reg(2),
      O => \mOutPtr[3]_i_1_n_0\
    );
\mOutPtr[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF8000FFFE0001"
    )
        port map (
      I0 => mOutPtr_reg(1),
      I1 => mOutPtr_reg(0),
      I2 => p_9_in,
      I3 => mOutPtr_reg(2),
      I4 => mOutPtr_reg(4),
      I5 => mOutPtr_reg(3),
      O => \mOutPtr[4]_i_2_n_0\
    );
\mOutPtr[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => Q(0),
      I1 => stream3_empty_n,
      I2 => \^full_n_reg_0\,
      I3 => \ap_CS_fsm_reg[4]\,
      I4 => pop,
      O => p_9_in
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => ap_clk,
      CE => E(0),
      CLR => AR(0),
      D => \mOutPtr[0]_i_1_n_0\,
      Q => mOutPtr_reg(0)
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => ap_clk,
      CE => E(0),
      CLR => AR(0),
      D => \mOutPtr[1]_i_1__8_n_0\,
      Q => mOutPtr_reg(1)
    );
\mOutPtr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => ap_clk,
      CE => E(0),
      CLR => AR(0),
      D => \mOutPtr[2]_i_1_n_0\,
      Q => mOutPtr_reg(2)
    );
\mOutPtr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => ap_clk,
      CE => E(0),
      CLR => AR(0),
      D => \mOutPtr[3]_i_1_n_0\,
      Q => mOutPtr_reg(3)
    );
\mOutPtr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => ap_clk,
      CE => E(0),
      CLR => AR(0),
      D => \mOutPtr[4]_i_2_n_0\,
      Q => mOutPtr_reg(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w24_d16_S_x is
  port (
    stream3_empty_n : out STD_LOGIC;
    stream3_full_n : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    compute_magnitude_square_U0_stream2_write : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mOutPtr_reg[4]_0\ : in STD_LOGIC;
    stream4_i_full_n : in STD_LOGIC;
    p_6_in : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w24_d16_S_x;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w24_d16_S_x is
  signal \empty_n_i_1__0_n_0\ : STD_LOGIC;
  signal \empty_n_i_3__1_n_0\ : STD_LOGIC;
  signal \full_n_i_1__0_n_0\ : STD_LOGIC;
  signal \full_n_i_2__6_n_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1_n_0\ : STD_LOGIC;
  signal \mOutPtr[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \mOutPtr[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \mOutPtr[4]_i_2__0_n_0\ : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal \^stream3_empty_n\ : STD_LOGIC;
  signal \^stream3_full_n\ : STD_LOGIC;
  signal stream3_num_data_valid : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \empty_n_i_3__1\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \full_n_i_2__6\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \mOutPtr[0]_i_1__2\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_1\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \mOutPtr[2]_i_1__0\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \mOutPtr[3]_i_1__0\ : label is "soft_lutpair131";
begin
  stream3_empty_n <= \^stream3_empty_n\;
  stream3_full_n <= \^stream3_full_n\;
\empty_n_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7F0"
    )
        port map (
      I0 => p_6_in,
      I1 => \empty_n_i_3__1_n_0\,
      I2 => p_9_in,
      I3 => \^stream3_empty_n\,
      O => \empty_n_i_1__0_n_0\
    );
\empty_n_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => stream3_num_data_valid(0),
      I1 => stream3_num_data_valid(1),
      I2 => stream3_num_data_valid(2),
      I3 => stream3_num_data_valid(4),
      I4 => stream3_num_data_valid(3),
      O => \empty_n_i_3__1_n_0\
    );
empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \empty_n_i_1__0_n_0\,
      Q => \^stream3_empty_n\,
      R => ap_rst_n_inv
    );
\full_n_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7770"
    )
        port map (
      I0 => p_9_in,
      I1 => \full_n_i_2__6_n_0\,
      I2 => p_6_in,
      I3 => \^stream3_full_n\,
      O => \full_n_i_1__0_n_0\
    );
\full_n_i_2__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => stream3_num_data_valid(0),
      I1 => stream3_num_data_valid(1),
      I2 => stream3_num_data_valid(2),
      I3 => stream3_num_data_valid(4),
      I4 => stream3_num_data_valid(3),
      O => \full_n_i_2__6_n_0\
    );
full_n_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \full_n_i_1__0_n_0\,
      Q => \^stream3_full_n\,
      S => ap_rst_n_inv
    );
\mOutPtr[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => stream3_num_data_valid(0),
      O => \mOutPtr[0]_i_1__2_n_0\
    );
\mOutPtr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => stream3_num_data_valid(0),
      I1 => p_9_in,
      I2 => stream3_num_data_valid(1),
      O => \mOutPtr[1]_i_1_n_0\
    );
\mOutPtr[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => p_9_in,
      I1 => stream3_num_data_valid(0),
      I2 => stream3_num_data_valid(2),
      I3 => stream3_num_data_valid(1),
      O => \mOutPtr[2]_i_1__0_n_0\
    );
\mOutPtr[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => p_9_in,
      I1 => stream3_num_data_valid(0),
      I2 => stream3_num_data_valid(1),
      I3 => stream3_num_data_valid(3),
      I4 => stream3_num_data_valid(2),
      O => \mOutPtr[3]_i_1__0_n_0\
    );
\mOutPtr[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF8000FFFE0001"
    )
        port map (
      I0 => p_9_in,
      I1 => stream3_num_data_valid(0),
      I2 => stream3_num_data_valid(1),
      I3 => stream3_num_data_valid(2),
      I4 => stream3_num_data_valid(4),
      I5 => stream3_num_data_valid(3),
      O => \mOutPtr[4]_i_2__0_n_0\
    );
\mOutPtr[4]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A8A8A8A8A8A8A8"
    )
        port map (
      I0 => \^stream3_full_n\,
      I1 => compute_magnitude_square_U0_stream2_write,
      I2 => Q(0),
      I3 => \mOutPtr_reg[4]_0\,
      I4 => stream4_i_full_n,
      I5 => \^stream3_empty_n\,
      O => p_9_in
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[0]_i_1__2_n_0\,
      Q => stream3_num_data_valid(0),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[1]_i_1_n_0\,
      Q => stream3_num_data_valid(1),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[2]_i_1__0_n_0\,
      Q => stream3_num_data_valid(2),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[3]_i_1__0_n_0\,
      Q => stream3_num_data_valid(3),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[4]_i_2__0_n_0\,
      Q => stream3_num_data_valid(4),
      R => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w24_d16_S_x_2 is
  port (
    stream5_empty_n : out STD_LOGIC;
    stream5_full_n : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_block_pp0_stage0_11001 : in STD_LOGIC;
    ap_enable_reg_pp0_iter4 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    reconstruct_signal_U0_stream6_write : in STD_LOGIC;
    p_9_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w24_d16_S_x_2 : entity is "denoise_top_fifo_w24_d16_S_x";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w24_d16_S_x_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w24_d16_S_x_2 is
  signal Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \empty_n_i_1__1_n_0\ : STD_LOGIC;
  signal \empty_n_i_3__2_n_0\ : STD_LOGIC;
  signal \full_n_i_1__1_n_0\ : STD_LOGIC;
  signal \full_n_i_2__8_n_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \mOutPtr[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \mOutPtr[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \mOutPtr[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \mOutPtr[4]_i_2__1_n_0\ : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal \^stream5_empty_n\ : STD_LOGIC;
  signal \^stream5_full_n\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \empty_n_i_3__2\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \full_n_i_2__8\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \mOutPtr[0]_i_1__3\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_1__0\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \mOutPtr[2]_i_1__1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \mOutPtr[3]_i_1__1\ : label is "soft_lutpair134";
begin
  stream5_empty_n <= \^stream5_empty_n\;
  stream5_full_n <= \^stream5_full_n\;
\empty_n_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7F0"
    )
        port map (
      I0 => p_6_in,
      I1 => \empty_n_i_3__2_n_0\,
      I2 => p_9_in,
      I3 => \^stream5_empty_n\,
      O => \empty_n_i_1__1_n_0\
    );
\empty_n_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A800A8A8A8A8A8"
    )
        port map (
      I0 => \^stream5_empty_n\,
      I1 => reconstruct_signal_U0_stream6_write,
      I2 => Q(0),
      I3 => ap_enable_reg_pp0_iter4,
      I4 => ap_block_pp0_stage0_11001,
      I5 => \^stream5_full_n\,
      O => p_6_in
    );
\empty_n_i_3__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid(0),
      I1 => Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid(1),
      I2 => Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid(2),
      I3 => Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid(4),
      I4 => Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid(3),
      O => \empty_n_i_3__2_n_0\
    );
empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \empty_n_i_1__1_n_0\,
      Q => \^stream5_empty_n\,
      R => ap_rst_n_inv
    );
\full_n_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7770"
    )
        port map (
      I0 => p_9_in,
      I1 => \full_n_i_2__8_n_0\,
      I2 => p_6_in,
      I3 => \^stream5_full_n\,
      O => \full_n_i_1__1_n_0\
    );
\full_n_i_2__8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid(0),
      I1 => Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid(1),
      I2 => Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid(2),
      I3 => Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid(4),
      I4 => Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid(3),
      O => \full_n_i_2__8_n_0\
    );
full_n_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \full_n_i_1__1_n_0\,
      Q => \^stream5_full_n\,
      S => ap_rst_n_inv
    );
\mOutPtr[0]_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid(0),
      O => \mOutPtr[0]_i_1__3_n_0\
    );
\mOutPtr[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid(0),
      I1 => p_9_in,
      I2 => Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid(1),
      O => \mOutPtr[1]_i_1__0_n_0\
    );
\mOutPtr[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => p_9_in,
      I1 => Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid(0),
      I2 => Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid(2),
      I3 => Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid(1),
      O => \mOutPtr[2]_i_1__1_n_0\
    );
\mOutPtr[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => p_9_in,
      I1 => Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid(0),
      I2 => Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid(1),
      I3 => Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid(3),
      I4 => Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid(2),
      O => \mOutPtr[3]_i_1__1_n_0\
    );
\mOutPtr[4]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFDF2020202020"
    )
        port map (
      I0 => \^stream5_full_n\,
      I1 => ap_block_pp0_stage0_11001,
      I2 => ap_enable_reg_pp0_iter4,
      I3 => Q(0),
      I4 => reconstruct_signal_U0_stream6_write,
      I5 => \^stream5_empty_n\,
      O => \mOutPtr[4]_i_1__1_n_0\
    );
\mOutPtr[4]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF8000FFFE0001"
    )
        port map (
      I0 => p_9_in,
      I1 => Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid(0),
      I2 => Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid(1),
      I3 => Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid(2),
      I4 => Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid(4),
      I5 => Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid(3),
      O => \mOutPtr[4]_i_2__1_n_0\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr[4]_i_1__1_n_0\,
      D => \mOutPtr[0]_i_1__3_n_0\,
      Q => Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid(0),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr[4]_i_1__1_n_0\,
      D => \mOutPtr[1]_i_1__0_n_0\,
      Q => Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid(1),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr[4]_i_1__1_n_0\,
      D => \mOutPtr[2]_i_1__1_n_0\,
      Q => Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid(2),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr[4]_i_1__1_n_0\,
      D => \mOutPtr[3]_i_1__1_n_0\,
      Q => Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid(3),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr[4]_i_1__1_n_0\,
      D => \mOutPtr[4]_i_2__1_n_0\,
      Q => Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid(4),
      R => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w24_d8_S is
  port (
    alpha_c_empty_n : out STD_LOGIC;
    alpha_c_full_n : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    entry_proc_U0_noise_frame_count_c_write : in STD_LOGIC;
    full_n_reg_0 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w24_d8_S;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w24_d8_S is
  signal \^alpha_c_empty_n\ : STD_LOGIC;
  signal \^alpha_c_full_n\ : STD_LOGIC;
  signal alpha_c_num_data_valid : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \empty_n_i_1__7_n_0\ : STD_LOGIC;
  signal \empty_n_i_2__2_n_0\ : STD_LOGIC;
  signal \full_n_i_1__7_n_0\ : STD_LOGIC;
  signal \full_n_i_2__1_n_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__5_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1__5_n_0\ : STD_LOGIC;
  signal \mOutPtr[2]_i_1__6_n_0\ : STD_LOGIC;
  signal \mOutPtr[3]_i_1__6_n_0\ : STD_LOGIC;
  signal \mOutPtr[3]_i_2__3_n_0\ : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \empty_n_i_2__2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \full_n_i_1__7\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \full_n_i_2__1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \mOutPtr[0]_i_1__5\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_1__5\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \mOutPtr[2]_i_1__6\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \mOutPtr[3]_i_2__3\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \mOutPtr[3]_i_3__2\ : label is "soft_lutpair31";
begin
  alpha_c_empty_n <= \^alpha_c_empty_n\;
  alpha_c_full_n <= \^alpha_c_full_n\;
\empty_n_i_1__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4C4C4C"
    )
        port map (
      I0 => \empty_n_i_2__2_n_0\,
      I1 => \^alpha_c_empty_n\,
      I2 => full_n_reg_0,
      I3 => \^alpha_c_full_n\,
      I4 => entry_proc_U0_noise_frame_count_c_write,
      O => \empty_n_i_1__7_n_0\
    );
\empty_n_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => alpha_c_num_data_valid(1),
      I1 => alpha_c_num_data_valid(0),
      I2 => alpha_c_num_data_valid(3),
      I3 => alpha_c_num_data_valid(2),
      O => \empty_n_i_2__2_n_0\
    );
empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \empty_n_i_1__7_n_0\,
      Q => \^alpha_c_empty_n\,
      R => SR(0)
    );
\full_n_i_1__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4C4C4C"
    )
        port map (
      I0 => \full_n_i_2__1_n_0\,
      I1 => \^alpha_c_full_n\,
      I2 => entry_proc_U0_noise_frame_count_c_write,
      I3 => \^alpha_c_empty_n\,
      I4 => full_n_reg_0,
      O => \full_n_i_1__7_n_0\
    );
\full_n_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => alpha_c_num_data_valid(1),
      I1 => alpha_c_num_data_valid(0),
      I2 => alpha_c_num_data_valid(3),
      I3 => alpha_c_num_data_valid(2),
      O => \full_n_i_2__1_n_0\
    );
full_n_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \full_n_i_1__7_n_0\,
      Q => \^alpha_c_full_n\,
      S => SR(0)
    );
\mOutPtr[0]_i_1__5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => alpha_c_num_data_valid(0),
      O => \mOutPtr[0]_i_1__5_n_0\
    );
\mOutPtr[1]_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => alpha_c_num_data_valid(0),
      I1 => p_9_in,
      I2 => alpha_c_num_data_valid(1),
      O => \mOutPtr[1]_i_1__5_n_0\
    );
\mOutPtr[2]_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => p_9_in,
      I1 => alpha_c_num_data_valid(0),
      I2 => alpha_c_num_data_valid(2),
      I3 => alpha_c_num_data_valid(1),
      O => \mOutPtr[2]_i_1__6_n_0\
    );
\mOutPtr[3]_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \^alpha_c_full_n\,
      I1 => entry_proc_U0_noise_frame_count_c_write,
      I2 => \^alpha_c_empty_n\,
      I3 => full_n_reg_0,
      O => \mOutPtr[3]_i_1__6_n_0\
    );
\mOutPtr[3]_i_2__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => p_9_in,
      I1 => alpha_c_num_data_valid(0),
      I2 => alpha_c_num_data_valid(1),
      I3 => alpha_c_num_data_valid(3),
      I4 => alpha_c_num_data_valid(2),
      O => \mOutPtr[3]_i_2__3_n_0\
    );
\mOutPtr[3]_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => entry_proc_U0_noise_frame_count_c_write,
      I1 => \^alpha_c_full_n\,
      I2 => full_n_reg_0,
      I3 => \^alpha_c_empty_n\,
      O => p_9_in
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr[3]_i_1__6_n_0\,
      D => \mOutPtr[0]_i_1__5_n_0\,
      Q => alpha_c_num_data_valid(0),
      R => SR(0)
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr[3]_i_1__6_n_0\,
      D => \mOutPtr[1]_i_1__5_n_0\,
      Q => alpha_c_num_data_valid(1),
      R => SR(0)
    );
\mOutPtr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr[3]_i_1__6_n_0\,
      D => \mOutPtr[2]_i_1__6_n_0\,
      Q => alpha_c_num_data_valid(2),
      R => SR(0)
    );
\mOutPtr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr[3]_i_1__6_n_0\,
      D => \mOutPtr[3]_i_2__3_n_0\,
      Q => alpha_c_num_data_valid(3),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w24_d8_S_0 is
  port (
    beta_c_empty_n : out STD_LOGIC;
    entry_proc_U0_noise_frame_count_c_write : out STD_LOGIC;
    ap_sync_reg_entry_proc_U0_ap_ready_reg : out STD_LOGIC;
    ap_sync_entry_proc_U0_ap_ready : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    full_n_reg_0 : in STD_LOGIC;
    int_ap_start_reg : in STD_LOGIC;
    ap_sync_reg_Block_entry_proc_U0_ap_ready : in STD_LOGIC;
    cmp_i97_loc_full_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    alpha_c_full_n : in STD_LOGIC;
    noise_frame_count_c_full_n : in STD_LOGIC;
    reset_noise_c_full_n : in STD_LOGIC;
    full_n_reg_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w24_d8_S_0 : entity is "denoise_top_fifo_w24_d8_S";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w24_d8_S_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w24_d8_S_0 is
  signal \^beta_c_empty_n\ : STD_LOGIC;
  signal beta_c_full_n : STD_LOGIC;
  signal beta_c_num_data_valid : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \empty_n_i_1__6_n_0\ : STD_LOGIC;
  signal \empty_n_i_2__3_n_0\ : STD_LOGIC;
  signal \^entry_proc_u0_noise_frame_count_c_write\ : STD_LOGIC;
  signal \full_n_i_1__6_n_0\ : STD_LOGIC;
  signal \full_n_i_2__2_n_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__6_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1__4_n_0\ : STD_LOGIC;
  signal \mOutPtr[2]_i_1__5_n_0\ : STD_LOGIC;
  signal \mOutPtr[3]_i_1__5_n_0\ : STD_LOGIC;
  signal \mOutPtr[3]_i_2__2_n_0\ : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ap_sync_reg_axi_to_internal_U0_ap_ready_i_2 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \empty_n_i_2__3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \full_n_i_1__6\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \full_n_i_2__2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of int_ap_start_i_3 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \mOutPtr[0]_i_1__6\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_1__4\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \mOutPtr[2]_i_1__5\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \mOutPtr[3]_i_2__2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \mOutPtr[3]_i_3__1\ : label is "soft_lutpair42";
begin
  beta_c_empty_n <= \^beta_c_empty_n\;
  entry_proc_U0_noise_frame_count_c_write <= \^entry_proc_u0_noise_frame_count_c_write\;
\SRL_SIG_reg[7][0]_srl8_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => beta_c_full_n,
      I1 => alpha_c_full_n,
      I2 => noise_frame_count_c_full_n,
      I3 => reset_noise_c_full_n,
      I4 => full_n_reg_1,
      O => \^entry_proc_u0_noise_frame_count_c_write\
    );
ap_sync_reg_axi_to_internal_U0_ap_ready_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^entry_proc_u0_noise_frame_count_c_write\,
      I1 => int_ap_start_reg,
      O => ap_sync_entry_proc_U0_ap_ready
    );
\empty_n_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4C4C4C"
    )
        port map (
      I0 => \empty_n_i_2__3_n_0\,
      I1 => \^beta_c_empty_n\,
      I2 => full_n_reg_0,
      I3 => beta_c_full_n,
      I4 => \^entry_proc_u0_noise_frame_count_c_write\,
      O => \empty_n_i_1__6_n_0\
    );
\empty_n_i_2__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => beta_c_num_data_valid(1),
      I1 => beta_c_num_data_valid(0),
      I2 => beta_c_num_data_valid(3),
      I3 => beta_c_num_data_valid(2),
      O => \empty_n_i_2__3_n_0\
    );
empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \empty_n_i_1__6_n_0\,
      Q => \^beta_c_empty_n\,
      R => SR(0)
    );
\full_n_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4C4C4C"
    )
        port map (
      I0 => \full_n_i_2__2_n_0\,
      I1 => beta_c_full_n,
      I2 => \^entry_proc_u0_noise_frame_count_c_write\,
      I3 => \^beta_c_empty_n\,
      I4 => full_n_reg_0,
      O => \full_n_i_1__6_n_0\
    );
\full_n_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => beta_c_num_data_valid(1),
      I1 => beta_c_num_data_valid(0),
      I2 => beta_c_num_data_valid(3),
      I3 => beta_c_num_data_valid(2),
      O => \full_n_i_2__2_n_0\
    );
full_n_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \full_n_i_1__6_n_0\,
      Q => beta_c_full_n,
      S => SR(0)
    );
int_ap_start_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE0E0E0"
    )
        port map (
      I0 => int_ap_start_reg,
      I1 => \^entry_proc_u0_noise_frame_count_c_write\,
      I2 => ap_sync_reg_Block_entry_proc_U0_ap_ready,
      I3 => cmp_i97_loc_full_n,
      I4 => ap_start,
      O => ap_sync_reg_entry_proc_U0_ap_ready_reg
    );
\mOutPtr[0]_i_1__6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => beta_c_num_data_valid(0),
      O => \mOutPtr[0]_i_1__6_n_0\
    );
\mOutPtr[1]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => beta_c_num_data_valid(0),
      I1 => p_9_in,
      I2 => beta_c_num_data_valid(1),
      O => \mOutPtr[1]_i_1__4_n_0\
    );
\mOutPtr[2]_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => p_9_in,
      I1 => beta_c_num_data_valid(0),
      I2 => beta_c_num_data_valid(2),
      I3 => beta_c_num_data_valid(1),
      O => \mOutPtr[2]_i_1__5_n_0\
    );
\mOutPtr[3]_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => beta_c_full_n,
      I1 => \^entry_proc_u0_noise_frame_count_c_write\,
      I2 => \^beta_c_empty_n\,
      I3 => full_n_reg_0,
      O => \mOutPtr[3]_i_1__5_n_0\
    );
\mOutPtr[3]_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => p_9_in,
      I1 => beta_c_num_data_valid(0),
      I2 => beta_c_num_data_valid(1),
      I3 => beta_c_num_data_valid(3),
      I4 => beta_c_num_data_valid(2),
      O => \mOutPtr[3]_i_2__2_n_0\
    );
\mOutPtr[3]_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => \^entry_proc_u0_noise_frame_count_c_write\,
      I1 => beta_c_full_n,
      I2 => full_n_reg_0,
      I3 => \^beta_c_empty_n\,
      O => p_9_in
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr[3]_i_1__5_n_0\,
      D => \mOutPtr[0]_i_1__6_n_0\,
      Q => beta_c_num_data_valid(0),
      R => SR(0)
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr[3]_i_1__5_n_0\,
      D => \mOutPtr[1]_i_1__4_n_0\,
      Q => beta_c_num_data_valid(1),
      R => SR(0)
    );
\mOutPtr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr[3]_i_1__5_n_0\,
      D => \mOutPtr[2]_i_1__5_n_0\,
      Q => beta_c_num_data_valid(2),
      R => SR(0)
    );
\mOutPtr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr[3]_i_1__5_n_0\,
      D => \mOutPtr[3]_i_2__2_n_0\,
      Q => beta_c_num_data_valid(3),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w4_d8_S_ShiftReg is
  port (
    push : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \noise_frame_count_read_reg_372_reg[3]\ : in STD_LOGIC;
    entry_proc_U0_noise_frame_count_c_write : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w4_d8_S_ShiftReg;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w4_d8_S_ShiftReg is
  signal \^push\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \SRL_SIG_reg[7][0]_srl8\ : label is "inst/\noise_frame_count_c_U/U_denoise_top_fifo_w4_d8_S_ShiftReg/SRL_SIG_reg[7] ";
  attribute srl_name : string;
  attribute srl_name of \SRL_SIG_reg[7][0]_srl8\ : label is "inst/\noise_frame_count_c_U/U_denoise_top_fifo_w4_d8_S_ShiftReg/SRL_SIG_reg[7][0]_srl8 ";
  attribute srl_bus_name of \SRL_SIG_reg[7][1]_srl8\ : label is "inst/\noise_frame_count_c_U/U_denoise_top_fifo_w4_d8_S_ShiftReg/SRL_SIG_reg[7] ";
  attribute srl_name of \SRL_SIG_reg[7][1]_srl8\ : label is "inst/\noise_frame_count_c_U/U_denoise_top_fifo_w4_d8_S_ShiftReg/SRL_SIG_reg[7][1]_srl8 ";
  attribute srl_bus_name of \SRL_SIG_reg[7][2]_srl8\ : label is "inst/\noise_frame_count_c_U/U_denoise_top_fifo_w4_d8_S_ShiftReg/SRL_SIG_reg[7] ";
  attribute srl_name of \SRL_SIG_reg[7][2]_srl8\ : label is "inst/\noise_frame_count_c_U/U_denoise_top_fifo_w4_d8_S_ShiftReg/SRL_SIG_reg[7][2]_srl8 ";
  attribute srl_bus_name of \SRL_SIG_reg[7][3]_srl8\ : label is "inst/\noise_frame_count_c_U/U_denoise_top_fifo_w4_d8_S_ShiftReg/SRL_SIG_reg[7] ";
  attribute srl_name of \SRL_SIG_reg[7][3]_srl8\ : label is "inst/\noise_frame_count_c_U/U_denoise_top_fifo_w4_d8_S_ShiftReg/SRL_SIG_reg[7][3]_srl8 ";
begin
  push <= \^push\;
\SRL_SIG_reg[7][0]_srl8\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr(0),
      A1 => addr(1),
      A2 => addr(2),
      A3 => '0',
      CE => \^push\,
      CLK => ap_clk,
      D => \in\(0),
      Q => \out\(0)
    );
\SRL_SIG_reg[7][0]_srl8_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \noise_frame_count_read_reg_372_reg[3]\,
      I1 => entry_proc_U0_noise_frame_count_c_write,
      O => \^push\
    );
\SRL_SIG_reg[7][1]_srl8\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr(0),
      A1 => addr(1),
      A2 => addr(2),
      A3 => '0',
      CE => \^push\,
      CLK => ap_clk,
      D => \in\(1),
      Q => \out\(1)
    );
\SRL_SIG_reg[7][2]_srl8\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr(0),
      A1 => addr(1),
      A2 => addr(2),
      A3 => '0',
      CE => \^push\,
      CLK => ap_clk,
      D => \in\(2),
      Q => \out\(2)
    );
\SRL_SIG_reg[7][3]_srl8\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => addr(0),
      A1 => addr(1),
      A2 => addr(2),
      A3 => '0',
      CE => \^push\,
      CLK => ap_clk,
      D => \in\(3),
      Q => \out\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d16_A_ram is
  port (
    D : out STD_LOGIC_VECTOR ( 63 downto 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DOBDO : in STD_LOGIC_VECTOR ( 0 to 0 );
    push : in STD_LOGIC;
    empty_n : in STD_LOGIC;
    ap_ready_int : in STD_LOGIC;
    mem_reg_1 : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d16_A_ram;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d16_A_ram is
  signal mem_reg_i_1_n_0 : STD_LOGIC;
  signal mem_reg_n_71 : STD_LOGIC;
  signal NLW_mem_reg_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_mem_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg : label is "p1_d64";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg : label is "p1_d64";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg : label is 975;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg : label is "denoise_top/stream6_U/U_denoise_top_fifo_w65_d16_A_ram/mem_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of mem_reg : label is "auto";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg : label is 511;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg : label is 496;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg : label is 64;
begin
mem_reg: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 72,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 72
    )
        port map (
      ADDRARDADDR(15 downto 10) => B"111111",
      ADDRARDADDR(9 downto 6) => Q(3 downto 0),
      ADDRARDADDR(5 downto 0) => B"111111",
      ADDRBWRADDR(15 downto 10) => B"111111",
      ADDRBWRADDR(9 downto 6) => mem_reg_0(3 downto 0),
      ADDRBWRADDR(5 downto 0) => B"111111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => NLW_mem_reg_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => ap_clk,
      CLKBWRCLK => ap_clk,
      DBITERR => NLW_mem_reg_DBITERR_UNCONNECTED,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 1) => B"111",
      DIPADIP(0) => DOBDO(0),
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 0) => D(31 downto 0),
      DOBDO(31 downto 0) => D(63 downto 32),
      DOPADOP(3 downto 1) => NLW_mem_reg_DOPADOP_UNCONNECTED(3 downto 1),
      DOPADOP(0) => mem_reg_n_71,
      DOPBDOP(3 downto 0) => NLW_mem_reg_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => mem_reg_i_1_n_0,
      ENBWREN => '1',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_mem_reg_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => ap_rst_n_inv,
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7) => push,
      WEBWE(6) => push,
      WEBWE(5) => push,
      WEBWE(4) => push,
      WEBWE(3) => push,
      WEBWE(2) => push,
      WEBWE(1) => push,
      WEBWE(0) => push
    );
mem_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AFF"
    )
        port map (
      I0 => empty_n,
      I1 => ap_ready_int,
      I2 => mem_reg_1,
      I3 => ap_rst_n,
      O => mem_reg_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d16_A_ram_4 is
  port (
    DIADI : out STD_LOGIC_VECTOR ( 10 downto 0 );
    ap_clk : in STD_LOGIC;
    mem_reg_0 : in STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_reg_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_to_internal_U0_stream1_din : in STD_LOGIC_VECTOR ( 64 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d16_A_ram_4 : entity is "denoise_top_fifo_w65_d16_A_ram";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d16_A_ram_4;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d16_A_ram_4 is
  signal mem_reg_n_10 : STD_LOGIC;
  signal mem_reg_n_11 : STD_LOGIC;
  signal mem_reg_n_12 : STD_LOGIC;
  signal mem_reg_n_13 : STD_LOGIC;
  signal mem_reg_n_14 : STD_LOGIC;
  signal mem_reg_n_15 : STD_LOGIC;
  signal mem_reg_n_16 : STD_LOGIC;
  signal mem_reg_n_17 : STD_LOGIC;
  signal mem_reg_n_18 : STD_LOGIC;
  signal mem_reg_n_19 : STD_LOGIC;
  signal mem_reg_n_20 : STD_LOGIC;
  signal mem_reg_n_21 : STD_LOGIC;
  signal mem_reg_n_22 : STD_LOGIC;
  signal mem_reg_n_23 : STD_LOGIC;
  signal mem_reg_n_24 : STD_LOGIC;
  signal mem_reg_n_25 : STD_LOGIC;
  signal mem_reg_n_26 : STD_LOGIC;
  signal mem_reg_n_27 : STD_LOGIC;
  signal mem_reg_n_28 : STD_LOGIC;
  signal mem_reg_n_29 : STD_LOGIC;
  signal mem_reg_n_30 : STD_LOGIC;
  signal mem_reg_n_31 : STD_LOGIC;
  signal mem_reg_n_32 : STD_LOGIC;
  signal mem_reg_n_33 : STD_LOGIC;
  signal mem_reg_n_34 : STD_LOGIC;
  signal mem_reg_n_35 : STD_LOGIC;
  signal mem_reg_n_4 : STD_LOGIC;
  signal mem_reg_n_46 : STD_LOGIC;
  signal mem_reg_n_47 : STD_LOGIC;
  signal mem_reg_n_48 : STD_LOGIC;
  signal mem_reg_n_49 : STD_LOGIC;
  signal mem_reg_n_5 : STD_LOGIC;
  signal mem_reg_n_50 : STD_LOGIC;
  signal mem_reg_n_51 : STD_LOGIC;
  signal mem_reg_n_52 : STD_LOGIC;
  signal mem_reg_n_53 : STD_LOGIC;
  signal mem_reg_n_54 : STD_LOGIC;
  signal mem_reg_n_55 : STD_LOGIC;
  signal mem_reg_n_56 : STD_LOGIC;
  signal mem_reg_n_57 : STD_LOGIC;
  signal mem_reg_n_58 : STD_LOGIC;
  signal mem_reg_n_59 : STD_LOGIC;
  signal mem_reg_n_6 : STD_LOGIC;
  signal mem_reg_n_60 : STD_LOGIC;
  signal mem_reg_n_61 : STD_LOGIC;
  signal mem_reg_n_62 : STD_LOGIC;
  signal mem_reg_n_63 : STD_LOGIC;
  signal mem_reg_n_64 : STD_LOGIC;
  signal mem_reg_n_65 : STD_LOGIC;
  signal mem_reg_n_66 : STD_LOGIC;
  signal mem_reg_n_67 : STD_LOGIC;
  signal mem_reg_n_7 : STD_LOGIC;
  signal mem_reg_n_8 : STD_LOGIC;
  signal mem_reg_n_9 : STD_LOGIC;
  signal NLW_mem_reg_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_mem_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg : label is "p1_d64";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg : label is "p1_d64";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg : label is 975;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg : label is "denoise_top/stream1_U/U_denoise_top_fifo_w65_d16_A_ram/mem_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of mem_reg : label is "auto";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg : label is 511;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg : label is 496;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg : label is 64;
begin
mem_reg: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 72,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 72
    )
        port map (
      ADDRARDADDR(15 downto 10) => B"111111",
      ADDRARDADDR(9 downto 6) => Q(3 downto 0),
      ADDRARDADDR(5 downto 0) => B"111111",
      ADDRBWRADDR(15 downto 10) => B"111111",
      ADDRBWRADDR(9 downto 6) => mem_reg_1(3 downto 0),
      ADDRBWRADDR(5 downto 0) => B"111111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => NLW_mem_reg_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => ap_clk,
      CLKBWRCLK => ap_clk,
      DBITERR => NLW_mem_reg_DBITERR_UNCONNECTED,
      DIADI(31 downto 0) => axi_to_internal_U0_stream1_din(31 downto 0),
      DIBDI(31 downto 0) => axi_to_internal_U0_stream1_din(63 downto 32),
      DIPADIP(3 downto 1) => B"111",
      DIPADIP(0) => axi_to_internal_U0_stream1_din(64),
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31) => mem_reg_n_4,
      DOADO(30) => mem_reg_n_5,
      DOADO(29) => mem_reg_n_6,
      DOADO(28) => mem_reg_n_7,
      DOADO(27) => mem_reg_n_8,
      DOADO(26) => mem_reg_n_9,
      DOADO(25) => mem_reg_n_10,
      DOADO(24) => mem_reg_n_11,
      DOADO(23) => mem_reg_n_12,
      DOADO(22) => mem_reg_n_13,
      DOADO(21) => mem_reg_n_14,
      DOADO(20) => mem_reg_n_15,
      DOADO(19) => mem_reg_n_16,
      DOADO(18) => mem_reg_n_17,
      DOADO(17) => mem_reg_n_18,
      DOADO(16) => mem_reg_n_19,
      DOADO(15) => mem_reg_n_20,
      DOADO(14) => mem_reg_n_21,
      DOADO(13) => mem_reg_n_22,
      DOADO(12) => mem_reg_n_23,
      DOADO(11) => mem_reg_n_24,
      DOADO(10) => mem_reg_n_25,
      DOADO(9) => mem_reg_n_26,
      DOADO(8) => mem_reg_n_27,
      DOADO(7) => mem_reg_n_28,
      DOADO(6) => mem_reg_n_29,
      DOADO(5) => mem_reg_n_30,
      DOADO(4) => mem_reg_n_31,
      DOADO(3) => mem_reg_n_32,
      DOADO(2) => mem_reg_n_33,
      DOADO(1) => mem_reg_n_34,
      DOADO(0) => mem_reg_n_35,
      DOBDO(31 downto 22) => DIADI(9 downto 0),
      DOBDO(21) => mem_reg_n_46,
      DOBDO(20) => mem_reg_n_47,
      DOBDO(19) => mem_reg_n_48,
      DOBDO(18) => mem_reg_n_49,
      DOBDO(17) => mem_reg_n_50,
      DOBDO(16) => mem_reg_n_51,
      DOBDO(15) => mem_reg_n_52,
      DOBDO(14) => mem_reg_n_53,
      DOBDO(13) => mem_reg_n_54,
      DOBDO(12) => mem_reg_n_55,
      DOBDO(11) => mem_reg_n_56,
      DOBDO(10) => mem_reg_n_57,
      DOBDO(9) => mem_reg_n_58,
      DOBDO(8) => mem_reg_n_59,
      DOBDO(7) => mem_reg_n_60,
      DOBDO(6) => mem_reg_n_61,
      DOBDO(5) => mem_reg_n_62,
      DOBDO(4) => mem_reg_n_63,
      DOBDO(3) => mem_reg_n_64,
      DOBDO(2) => mem_reg_n_65,
      DOBDO(1) => mem_reg_n_66,
      DOBDO(0) => mem_reg_n_67,
      DOPADOP(3 downto 1) => NLW_mem_reg_DOPADOP_UNCONNECTED(3 downto 1),
      DOPADOP(0) => DIADI(10),
      DOPBDOP(3 downto 0) => NLW_mem_reg_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => mem_reg_0,
      ENBWREN => '1',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_mem_reg_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => ap_rst_n_inv,
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7) => E(0),
      WEBWE(6) => E(0),
      WEBWE(5) => E(0),
      WEBWE(4) => E(0),
      WEBWE(3) => E(0),
      WEBWE(2) => E(0),
      WEBWE(1) => E(0),
      WEBWE(0) => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d2048_A_ram is
  port (
    DOBDO : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    push : in STD_LOGIC;
    mem_reg_3_0 : in STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    mem_reg_3_1 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    DIADI : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d2048_A_ram;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d2048_A_ram is
  signal mem_reg_3_n_58 : STD_LOGIC;
  signal mem_reg_3_n_59 : STD_LOGIC;
  signal mem_reg_3_n_60 : STD_LOGIC;
  signal mem_reg_3_n_61 : STD_LOGIC;
  signal mem_reg_3_n_62 : STD_LOGIC;
  signal mem_reg_3_n_63 : STD_LOGIC;
  signal mem_reg_3_n_64 : STD_LOGIC;
  signal mem_reg_3_n_65 : STD_LOGIC;
  signal mem_reg_3_n_66 : STD_LOGIC;
  signal mem_reg_3_n_67 : STD_LOGIC;
  signal NLW_mem_reg_3_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_3_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_3_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_3_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_3_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_3_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_3_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_3_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 11 );
  signal NLW_mem_reg_3_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_3_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_3_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_3_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_3 : label is "p0_d11";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_3 : label is "p0_d11";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_3 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_3 : label is 133055;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_3 : label is "denoise_top/stream2_U/U_denoise_top_fifo_w65_d2048_A_ram/mem_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of mem_reg_3 : label is "auto";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg_3 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_3 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_3 : label is 2047;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_3 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_3 : label is 54;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_3 : label is 64;
begin
mem_reg_3: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 4) => Q(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 4) => mem_reg_3_1(10 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_3_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_3_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => ap_clk,
      CLKBWRCLK => ap_clk,
      DBITERR => NLW_mem_reg_3_DBITERR_UNCONNECTED,
      DIADI(31 downto 11) => B"000000000000000000000",
      DIADI(10 downto 0) => DIADI(10 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000011111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_3_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 11) => NLW_mem_reg_3_DOBDO_UNCONNECTED(31 downto 11),
      DOBDO(10) => DOBDO(0),
      DOBDO(9) => mem_reg_3_n_58,
      DOBDO(8) => mem_reg_3_n_59,
      DOBDO(7) => mem_reg_3_n_60,
      DOBDO(6) => mem_reg_3_n_61,
      DOBDO(5) => mem_reg_3_n_62,
      DOBDO(4) => mem_reg_3_n_63,
      DOBDO(3) => mem_reg_3_n_64,
      DOBDO(2) => mem_reg_3_n_65,
      DOBDO(1) => mem_reg_3_n_66,
      DOBDO(0) => mem_reg_3_n_67,
      DOPADOP(3 downto 0) => NLW_mem_reg_3_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_3_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_3_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => push,
      ENBWREN => mem_reg_3_0,
      INJECTDBITERR => NLW_mem_reg_3_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_3_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_3_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => ap_rst_n_inv,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_3_SBITERR_UNCONNECTED,
      WEA(3) => push,
      WEA(2) => push,
      WEA(1 downto 0) => B"11",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe is
  port (
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    reconstruct_signal_U0_ap_ready : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \i1_fu_48_reg[5]\ : in STD_LOGIC;
    \i1_fu_48_reg[6]\ : in STD_LOGIC;
    ap_loop_init_reg_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    stream5_empty_n : in STD_LOGIC;
    \i1_fu_48_reg[0]\ : in STD_LOGIC;
    stream2_empty_n : in STD_LOGIC;
    stream6_full_n : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe is
  signal ap_loop_init : STD_LOGIC;
  signal \ap_loop_init_i_1__2_n_0\ : STD_LOGIC;
  signal \ap_loop_init_i_3__0_n_0\ : STD_LOGIC;
  signal \ap_loop_init_i_4__0_n_0\ : STD_LOGIC;
  signal \i1_fu_481__0\ : STD_LOGIC;
  signal \^reconstruct_signal_u0_ap_ready\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_loop_init_i_4__0\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \i1_fu_48[0]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \i1_fu_48[1]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \i1_fu_48[2]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \i1_fu_48[3]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \i1_fu_48[5]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \i1_fu_48[6]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \i1_fu_48[7]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \i1_fu_48[8]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \i1_fu_48[8]_i_2\ : label is "soft_lutpair100";
begin
  reconstruct_signal_U0_ap_ready <= \^reconstruct_signal_u0_ap_ready\;
\ap_loop_init_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF5DDD"
    )
        port map (
      I0 => ap_rst_n,
      I1 => ap_loop_init,
      I2 => ap_loop_init_reg_0(1),
      I3 => stream5_empty_n,
      I4 => \^reconstruct_signal_u0_ap_ready\,
      O => \ap_loop_init_i_1__2_n_0\
    );
\ap_loop_init_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \ap_loop_init_i_3__0_n_0\,
      I1 => \ap_loop_init_i_4__0_n_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      O => \^reconstruct_signal_u0_ap_ready\
    );
\ap_loop_init_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Q(6),
      I1 => Q(5),
      I2 => Q(4),
      I3 => Q(3),
      O => \ap_loop_init_i_3__0_n_0\
    );
\ap_loop_init_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => ap_loop_init_reg_0(1),
      I1 => stream5_empty_n,
      I2 => Q(8),
      I3 => Q(7),
      O => \ap_loop_init_i_4__0_n_0\
    );
ap_loop_init_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_loop_init_i_1__2_n_0\,
      Q => ap_loop_init,
      R => '0'
    );
\i1_fu_48[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i1_fu_481__0\,
      I1 => Q(0),
      O => D(0)
    );
\i1_fu_48[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => \i1_fu_481__0\,
      I1 => Q(0),
      I2 => Q(1),
      O => D(1)
    );
\i1_fu_48[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => \i1_fu_481__0\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      O => D(2)
    );
\i1_fu_48[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15554000"
    )
        port map (
      I0 => \i1_fu_481__0\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(3),
      O => D(3)
    );
\i1_fu_48[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => \i1_fu_481__0\,
      I5 => Q(4),
      O => D(4)
    );
\i1_fu_48[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \i1_fu_48_reg[5]\,
      I1 => \i1_fu_481__0\,
      I2 => Q(5),
      O => D(5)
    );
\i1_fu_48[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \i1_fu_48_reg[6]\,
      I1 => \i1_fu_481__0\,
      I2 => Q(6),
      O => D(6)
    );
\i1_fu_48[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0708"
    )
        port map (
      I0 => Q(6),
      I1 => \i1_fu_48_reg[6]\,
      I2 => \i1_fu_481__0\,
      I3 => Q(7),
      O => D(7)
    );
\i1_fu_48[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \i1_fu_481__0\,
      I1 => ap_loop_init_reg_0(1),
      I2 => stream5_empty_n,
      O => E(0)
    );
\i1_fu_48[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => Q(7),
      I1 => \i1_fu_48_reg[6]\,
      I2 => Q(6),
      I3 => \i1_fu_481__0\,
      I4 => Q(8),
      O => D(8)
    );
\i1_fu_48[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \i1_fu_48_reg[0]\,
      I1 => stream2_empty_n,
      I2 => stream6_full_n,
      I3 => ap_loop_init_reg_0(0),
      I4 => stream5_empty_n,
      I5 => ap_loop_init,
      O => \i1_fu_481__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_5 is
  port (
    ap_loop_init_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    axi_val_last_fu_95_p2 : out STD_LOGIC;
    ap_loop_init_reg_1 : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    ap_sig_allocacmp_i1_load1 : in STD_LOGIC;
    internal_to_axi_U0_ap_start : in STD_LOGIC;
    \i1_fu_54_reg[7]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_5 : entity is "denoise_top_flow_control_loop_pipe";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_5;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_5 is
  signal \^ap_loop_init_reg_0\ : STD_LOGIC;
  signal \data_p1[0]_i_4_n_0\ : STD_LOGIC;
  signal \i1_fu_54[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \i1_fu_54[6]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \i1_fu_54[1]_i_1__0\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \i1_fu_54[2]_i_1__0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \i1_fu_54[3]_i_1__0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \i1_fu_54[5]_i_2__0\ : label is "soft_lutpair86";
begin
  ap_loop_init_reg_0 <= \^ap_loop_init_reg_0\;
ap_loop_init_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_init_reg_1,
      Q => \^ap_loop_init_reg_0\,
      R => '0'
    );
\data_p1[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \i1_fu_54[5]_i_2__0_n_0\,
      I1 => \data_p1[0]_i_4_n_0\,
      I2 => Q(7),
      I3 => ap_sig_allocacmp_i1_load1,
      I4 => Q(8),
      I5 => Q(6),
      O => axi_val_last_fu_95_p2
    );
\data_p1[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080808000000000"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      I2 => Q(2),
      I3 => \^ap_loop_init_reg_0\,
      I4 => internal_to_axi_U0_ap_start,
      I5 => Q(3),
      O => \data_p1[0]_i_4_n_0\
    );
\i1_fu_54[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^ap_loop_init_reg_0\,
      I1 => Q(0),
      O => D(0)
    );
\i1_fu_54[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => Q(0),
      I1 => \^ap_loop_init_reg_0\,
      I2 => Q(1),
      O => D(1)
    );
\i1_fu_54[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0708"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => \^ap_loop_init_reg_0\,
      I3 => Q(2),
      O => D(2)
    );
\i1_fu_54[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(2),
      I3 => \^ap_loop_init_reg_0\,
      I4 => Q(3),
      O => D(3)
    );
\i1_fu_54[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => Q(3),
      I1 => \i1_fu_54[5]_i_2__0_n_0\,
      I2 => Q(2),
      I3 => Q(4),
      I4 => ap_sig_allocacmp_i1_load1,
      I5 => Q(5),
      O => D(4)
    );
\i1_fu_54[5]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A00"
    )
        port map (
      I0 => Q(1),
      I1 => internal_to_axi_U0_ap_start,
      I2 => \^ap_loop_init_reg_0\,
      I3 => Q(0),
      O => \i1_fu_54[5]_i_2__0_n_0\
    );
\i1_fu_54[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => Q(4),
      I1 => \i1_fu_54[6]_i_2_n_0\,
      I2 => Q(5),
      I3 => \^ap_loop_init_reg_0\,
      I4 => Q(6),
      O => D(5)
    );
\i1_fu_54[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888000000000000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => internal_to_axi_U0_ap_start,
      I3 => \^ap_loop_init_reg_0\,
      I4 => Q(0),
      I5 => Q(2),
      O => \i1_fu_54[6]_i_2_n_0\
    );
\i1_fu_54[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => Q(5),
      I1 => \i1_fu_54_reg[7]\,
      I2 => Q(6),
      I3 => \^ap_loop_init_reg_0\,
      I4 => Q(7),
      O => D(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_6 is
  port (
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    compute_magnitude_square_U0_ap_ready : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \i_021_fu_42_reg[5]\ : in STD_LOGIC;
    \i_021_fu_42_reg[6]\ : in STD_LOGIC;
    ap_loop_init_reg_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    stream3_full_n : in STD_LOGIC;
    \i_021_fu_42_reg[0]\ : in STD_LOGIC;
    stream1_empty_n : in STD_LOGIC;
    stream2_full_n : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_6 : entity is "denoise_top_flow_control_loop_pipe";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_6;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_6 is
  signal ap_loop_init : STD_LOGIC;
  signal \ap_loop_init_i_1__1_n_0\ : STD_LOGIC;
  signal ap_loop_init_i_3_n_0 : STD_LOGIC;
  signal ap_loop_init_i_4_n_0 : STD_LOGIC;
  signal \^compute_magnitude_square_u0_ap_ready\ : STD_LOGIC;
  signal \i_021_fu_421__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ap_loop_init_i_4 : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \i_021_fu_42[0]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \i_021_fu_42[1]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \i_021_fu_42[2]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \i_021_fu_42[3]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \i_021_fu_42[5]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \i_021_fu_42[6]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \i_021_fu_42[7]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \i_021_fu_42[8]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \i_021_fu_42[8]_i_2\ : label is "soft_lutpair49";
begin
  compute_magnitude_square_U0_ap_ready <= \^compute_magnitude_square_u0_ap_ready\;
\ap_loop_init_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF5DDD"
    )
        port map (
      I0 => ap_rst_n,
      I1 => ap_loop_init,
      I2 => ap_loop_init_reg_0(1),
      I3 => stream3_full_n,
      I4 => \^compute_magnitude_square_u0_ap_ready\,
      O => \ap_loop_init_i_1__1_n_0\
    );
ap_loop_init_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => ap_loop_init_i_3_n_0,
      I1 => ap_loop_init_i_4_n_0,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      O => \^compute_magnitude_square_u0_ap_ready\
    );
ap_loop_init_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Q(6),
      I1 => Q(5),
      I2 => Q(4),
      I3 => Q(3),
      O => ap_loop_init_i_3_n_0
    );
ap_loop_init_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => ap_loop_init_reg_0(1),
      I1 => stream3_full_n,
      I2 => Q(8),
      I3 => Q(7),
      O => ap_loop_init_i_4_n_0
    );
ap_loop_init_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_loop_init_i_1__1_n_0\,
      Q => ap_loop_init,
      R => '0'
    );
\i_021_fu_42[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i_021_fu_421__0\,
      I1 => Q(0),
      O => D(0)
    );
\i_021_fu_42[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => \i_021_fu_421__0\,
      I1 => Q(0),
      I2 => Q(1),
      O => D(1)
    );
\i_021_fu_42[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => \i_021_fu_421__0\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      O => D(2)
    );
\i_021_fu_42[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15554000"
    )
        port map (
      I0 => \i_021_fu_421__0\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(3),
      O => D(3)
    );
\i_021_fu_42[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => \i_021_fu_421__0\,
      I5 => Q(4),
      O => D(4)
    );
\i_021_fu_42[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \i_021_fu_42_reg[5]\,
      I1 => \i_021_fu_421__0\,
      I2 => Q(5),
      O => D(5)
    );
\i_021_fu_42[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \i_021_fu_42_reg[6]\,
      I1 => \i_021_fu_421__0\,
      I2 => Q(6),
      O => D(6)
    );
\i_021_fu_42[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0708"
    )
        port map (
      I0 => Q(6),
      I1 => \i_021_fu_42_reg[6]\,
      I2 => \i_021_fu_421__0\,
      I3 => Q(7),
      O => D(7)
    );
\i_021_fu_42[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \i_021_fu_421__0\,
      I1 => ap_loop_init_reg_0(1),
      I2 => stream3_full_n,
      O => E(0)
    );
\i_021_fu_42[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => Q(7),
      I1 => \i_021_fu_42_reg[6]\,
      I2 => Q(6),
      I3 => \i_021_fu_421__0\,
      I4 => Q(8),
      O => D(8)
    );
\i_021_fu_42[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \i_021_fu_42_reg[0]\,
      I1 => stream1_empty_n,
      I2 => stream2_full_n,
      I3 => ap_loop_init_reg_0(0),
      I4 => stream3_full_n,
      I5 => ap_loop_init,
      O => \i_021_fu_421__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_7 is
  port (
    axi_to_internal_U0_ap_ready : out STD_LOGIC;
    ap_sync_axi_to_internal_U0_ap_ready : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    full_n_reg : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_loop_init_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    ap_sync_reg_axi_to_internal_U0_ap_ready : in STD_LOGIC;
    start_for_compute_magnitude_square_U0_full_n : in STD_LOGIC;
    start_once_reg_reg : in STD_LOGIC;
    ap_start : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_7 : entity is "denoise_top_flow_control_loop_pipe";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_7;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_7 is
  signal ap_loop_init : STD_LOGIC;
  signal \ap_loop_init_i_1__0_n_0\ : STD_LOGIC;
  signal \^axi_to_internal_u0_ap_ready\ : STD_LOGIC;
  signal \i1_fu_54[5]_i_2_n_0\ : STD_LOGIC;
  signal \i1_fu_54[8]_i_3__0_n_0\ : STD_LOGIC;
  signal int_ap_start_i_5_n_0 : STD_LOGIC;
  signal \int_isr[1]_i_3_n_0\ : STD_LOGIC;
  signal \int_isr[1]_i_4_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_loop_init_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \i1_fu_54[0]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \i1_fu_54[1]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \i1_fu_54[2]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \i1_fu_54[3]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \i1_fu_54[5]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \i1_fu_54[6]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \i1_fu_54[7]_i_1\ : label is "soft_lutpair34";
begin
  axi_to_internal_U0_ap_ready <= \^axi_to_internal_u0_ap_ready\;
\ap_loop_init_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFD5"
    )
        port map (
      I0 => ap_rst_n,
      I1 => ap_loop_init_reg_0,
      I2 => ap_loop_init,
      I3 => \^axi_to_internal_u0_ap_ready\,
      O => \ap_loop_init_i_1__0_n_0\
    );
ap_loop_init_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_loop_init_i_1__0_n_0\,
      Q => ap_loop_init,
      R => '0'
    );
\i1_fu_54[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ap_loop_init,
      I1 => Q(0),
      O => D(0)
    );
\i1_fu_54[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => Q(0),
      I1 => ap_loop_init,
      I2 => Q(1),
      O => D(1)
    );
\i1_fu_54[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0708"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => ap_loop_init,
      I3 => Q(2),
      O => D(2)
    );
\i1_fu_54[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(2),
      I3 => ap_loop_init,
      I4 => Q(3),
      O => D(3)
    );
\i1_fu_54[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(3),
      I4 => ap_loop_init,
      I5 => Q(4),
      O => D(4)
    );
\i1_fu_54[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => Q(3),
      I1 => \i1_fu_54[5]_i_2_n_0\,
      I2 => Q(2),
      I3 => Q(4),
      I4 => ap_loop_init,
      I5 => Q(5),
      O => D(5)
    );
\i1_fu_54[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => Q(1),
      I1 => ap_loop_init,
      I2 => Q(0),
      O => \i1_fu_54[5]_i_2_n_0\
    );
\i1_fu_54[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0708"
    )
        port map (
      I0 => \i1_fu_54[8]_i_3__0_n_0\,
      I1 => Q(5),
      I2 => ap_loop_init,
      I3 => Q(6),
      O => D(6)
    );
\i1_fu_54[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => Q(5),
      I1 => \i1_fu_54[8]_i_3__0_n_0\,
      I2 => Q(6),
      I3 => ap_loop_init,
      I4 => Q(7),
      O => D(7)
    );
\i1_fu_54[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => Q(6),
      I1 => \i1_fu_54[8]_i_3__0_n_0\,
      I2 => Q(5),
      I3 => Q(7),
      I4 => ap_loop_init,
      I5 => Q(8),
      O => D(8)
    );
\i1_fu_54[8]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(0),
      I3 => ap_loop_init,
      I4 => Q(1),
      I5 => Q(3),
      O => \i1_fu_54[8]_i_3__0_n_0\
    );
int_ap_start_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => ap_loop_init_reg_0,
      I1 => Q(3),
      I2 => Q(6),
      I3 => ap_loop_init,
      I4 => Q(8),
      I5 => int_ap_start_i_5_n_0,
      O => \^axi_to_internal_u0_ap_ready\
    );
int_ap_start_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => Q(2),
      I1 => ap_loop_init,
      I2 => Q(5),
      I3 => Q(4),
      I4 => Q(7),
      I5 => \i1_fu_54[5]_i_2_n_0\,
      O => int_ap_start_i_5_n_0
    );
\int_isr[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF08000000"
    )
        port map (
      I0 => \int_isr[1]_i_3_n_0\,
      I1 => Q(0),
      I2 => ap_loop_init,
      I3 => Q(1),
      I4 => \int_isr[1]_i_4_n_0\,
      I5 => ap_sync_reg_axi_to_internal_U0_ap_ready,
      O => ap_sync_axi_to_internal_U0_ap_ready
    );
\int_isr[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => Q(7),
      I1 => Q(4),
      I2 => Q(5),
      I3 => ap_loop_init,
      I4 => Q(2),
      O => \int_isr[1]_i_3_n_0\
    );
\int_isr[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => Q(8),
      I1 => ap_loop_init,
      I2 => Q(6),
      I3 => Q(3),
      I4 => ap_loop_init_reg_0,
      O => \int_isr[1]_i_4_n_0\
    );
start_once_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50505450"
    )
        port map (
      I0 => \^axi_to_internal_u0_ap_ready\,
      I1 => start_for_compute_magnitude_square_U0_full_n,
      I2 => start_once_reg_reg,
      I3 => ap_start,
      I4 => ap_sync_reg_axi_to_internal_U0_ap_ready,
      O => full_n_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_sequential_init is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_done_cache_reg_0 : out STD_LOGIC;
    frame_counter_flag_0_i_reg_1692 : out STD_LOGIC;
    full_n_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \ap_CS_fsm_reg[4]\ : out STD_LOGIC;
    grp_spectral_subtract_fu_262_ap_ready : out STD_LOGIC;
    \frame_counter_flag_1_i_reg_155_reg[0]\ : out STD_LOGIC;
    \icmp_ln326_reg_421_reg[0]\ : out STD_LOGIC;
    \i_fu_100_reg[10]\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    ap_enable_reg_pp0_iter2_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    grp_spectral_subtract_fu_262_ap_start_reg_reg : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    frame_counter_flag_0_i_reg_169221_out : in STD_LOGIC;
    \ap_CS_fsm_reg[6]\ : in STD_LOGIC;
    icmp_ln326_fu_333_p224_in : in STD_LOGIC;
    grp_spectral_subtract_fu_262_ap_start_reg : in STD_LOGIC;
    ap_loop_exit_ready_pp0_iter3_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    frame_counter_flag_1_i_reg_155 : in STD_LOGIC;
    frame_counter_flag_0_i_reg_169 : in STD_LOGIC;
    icmp_ln326_reg_421 : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    \i_fu_100_reg[10]_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    ap_enable_reg_pp0_iter2 : in STD_LOGIC;
    stream4_i_empty_n : in STD_LOGIC;
    ap_loop_exit_ready_pp0_iter1_reg_reg : in STD_LOGIC;
    stream5_full_n : in STD_LOGIC;
    ap_enable_reg_pp0_iter1_reg : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_sequential_init;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_sequential_init is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ap_done_cache : STD_LOGIC;
  signal \ap_done_cache_i_1__1_n_0\ : STD_LOGIC;
  signal \^ap_done_cache_reg_0\ : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter1_reg_i_3_n_0 : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter1_reg_i_4_n_0 : STD_LOGIC;
  signal ap_loop_init : STD_LOGIC;
  signal ap_loop_init_int : STD_LOGIC;
  signal \ap_loop_init_int_i_1__1_n_0\ : STD_LOGIC;
  signal \^frame_counter_flag_0_i_reg_1692\ : STD_LOGIC;
  signal \^full_n_reg\ : STD_LOGIC;
  signal \^grp_spectral_subtract_fu_262_ap_ready\ : STD_LOGIC;
  signal i_fu_1001 : STD_LOGIC;
  signal \i_fu_100[10]_i_5_n_0\ : STD_LOGIC;
  signal \i_fu_100[5]_i_2_n_0\ : STD_LOGIC;
  signal \i_fu_100[7]_i_2_n_0\ : STD_LOGIC;
  signal \i_fu_100[8]_i_2_n_0\ : STD_LOGIC;
  signal \i_fu_100[9]_i_2_n_0\ : STD_LOGIC;
  signal icmp_ln113_fu_211_p2 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[6]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \ap_done_cache_i_1__1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter1_i_1 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \frame_counter_new_0_i_reg_184[3]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \frame_counter_new_0_i_reg_184[3]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \frame_counter_new_0_i_reg_184[3]_i_4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of grp_spectral_subtract_fu_262_ap_start_reg_i_1 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \i_fu_100[0]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \i_fu_100[10]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \i_fu_100[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \i_fu_100[4]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \icmp_ln326_reg_421[0]_i_1\ : label is "soft_lutpair24";
begin
  AR(0) <= \^ar\(0);
  ap_done_cache_reg_0 <= \^ap_done_cache_reg_0\;
  frame_counter_flag_0_i_reg_1692 <= \^frame_counter_flag_0_i_reg_1692\;
  full_n_reg <= \^full_n_reg\;
  grp_spectral_subtract_fu_262_ap_ready <= \^grp_spectral_subtract_fu_262_ap_ready\;
\FSM_onehot_wstate[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^ar\(0)
    );
\ap_CS_fsm[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => Q(0),
      I1 => \^ap_done_cache_reg_0\,
      I2 => Q(1),
      O => D(0)
    );
\ap_CS_fsm[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^ap_done_cache_reg_0\,
      I1 => \ap_CS_fsm_reg[6]\,
      I2 => icmp_ln326_fu_333_p224_in,
      I3 => Q(1),
      O => D(1)
    );
\ap_done_cache_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \^full_n_reg\,
      I1 => ap_loop_exit_ready_pp0_iter3_reg,
      I2 => grp_spectral_subtract_fu_262_ap_start_reg,
      I3 => ap_done_cache,
      O => \ap_done_cache_i_1__1_n_0\
    );
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_done_cache_i_1__1_n_0\,
      Q => ap_done_cache,
      R => \^ar\(0)
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3202"
    )
        port map (
      I0 => grp_spectral_subtract_fu_262_ap_start_reg,
      I1 => \^grp_spectral_subtract_fu_262_ap_ready\,
      I2 => \^full_n_reg\,
      I3 => ap_enable_reg_pp0_iter1_reg,
      O => grp_spectral_subtract_fu_262_ap_start_reg_reg
    );
ap_loop_exit_ready_pp0_iter1_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A008A8A00000000"
    )
        port map (
      I0 => grp_spectral_subtract_fu_262_ap_start_reg,
      I1 => stream5_full_n,
      I2 => ap_loop_exit_ready_pp0_iter1_reg_reg,
      I3 => stream4_i_empty_n,
      I4 => ap_enable_reg_pp0_iter2,
      I5 => icmp_ln113_fu_211_p2,
      O => \^grp_spectral_subtract_fu_262_ap_ready\
    );
ap_loop_exit_ready_pp0_iter1_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \i_fu_100_reg[10]_0\(9),
      I1 => ap_loop_init,
      I2 => \i_fu_100_reg[10]_0\(0),
      I3 => \i_fu_100_reg[10]_0\(10),
      I4 => ap_loop_exit_ready_pp0_iter1_reg_i_3_n_0,
      I5 => ap_loop_exit_ready_pp0_iter1_reg_i_4_n_0,
      O => icmp_ln113_fu_211_p2
    );
ap_loop_exit_ready_pp0_iter1_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFF00FEFEFE"
    )
        port map (
      I0 => \i_fu_100_reg[10]_0\(3),
      I1 => \i_fu_100_reg[10]_0\(4),
      I2 => \i_fu_100_reg[10]_0\(1),
      I3 => grp_spectral_subtract_fu_262_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => \i_fu_100_reg[10]_0\(2),
      O => ap_loop_exit_ready_pp0_iter1_reg_i_3_n_0
    );
ap_loop_exit_ready_pp0_iter1_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFF00FEFEFE"
    )
        port map (
      I0 => \i_fu_100_reg[10]_0\(7),
      I1 => \i_fu_100_reg[10]_0\(8),
      I2 => \i_fu_100_reg[10]_0\(5),
      I3 => grp_spectral_subtract_fu_262_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => \i_fu_100_reg[10]_0\(6),
      O => ap_loop_exit_ready_pp0_iter1_reg_i_4_n_0
    );
\ap_loop_init_int_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFCFFF4F"
    )
        port map (
      I0 => grp_spectral_subtract_fu_262_ap_start_reg,
      I1 => ap_loop_init_int,
      I2 => ap_rst_n,
      I3 => ap_loop_exit_ready_pp0_iter3_reg,
      I4 => \^full_n_reg\,
      O => \ap_loop_init_int_i_1__1_n_0\
    );
\ap_loop_init_int_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => stream5_full_n,
      I1 => ap_loop_exit_ready_pp0_iter1_reg_reg,
      I2 => stream4_i_empty_n,
      I3 => ap_enable_reg_pp0_iter2,
      O => \^full_n_reg\
    );
ap_loop_init_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_loop_init_int_i_1__1_n_0\,
      Q => ap_loop_init_int,
      R => '0'
    );
\frame_counter_flag_0_i_reg_169[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFCFEFCFC"
    )
        port map (
      I0 => frame_counter_flag_1_i_reg_155,
      I1 => \^frame_counter_flag_0_i_reg_1692\,
      I2 => frame_counter_flag_0_i_reg_169221_out,
      I3 => \ap_CS_fsm_reg[6]\,
      I4 => \^ap_done_cache_reg_0\,
      I5 => frame_counter_flag_0_i_reg_169,
      O => \frame_counter_flag_1_i_reg_155_reg[0]\
    );
\frame_counter_new_0_i_reg_184[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => frame_counter_flag_0_i_reg_169221_out,
      I1 => \^ap_done_cache_reg_0\,
      I2 => \ap_CS_fsm_reg[6]\,
      I3 => \^frame_counter_flag_0_i_reg_1692\,
      O => E(0)
    );
\frame_counter_new_0_i_reg_184[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22F20000"
    )
        port map (
      I0 => ap_done_cache,
      I1 => grp_spectral_subtract_fu_262_ap_start_reg,
      I2 => ap_loop_exit_ready_pp0_iter3_reg,
      I3 => \^full_n_reg\,
      I4 => Q(1),
      O => \^ap_done_cache_reg_0\
    );
\frame_counter_new_0_i_reg_184[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^ap_done_cache_reg_0\,
      I1 => icmp_ln326_fu_333_p224_in,
      I2 => \ap_CS_fsm_reg[6]\,
      O => \^frame_counter_flag_0_i_reg_1692\
    );
grp_spectral_subtract_fu_262_ap_start_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => Q(0),
      I1 => \^grp_spectral_subtract_fu_262_ap_ready\,
      I2 => grp_spectral_subtract_fu_262_ap_start_reg,
      O => \ap_CS_fsm_reg[4]\
    );
\i_fu_100[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80AA"
    )
        port map (
      I0 => i_fu_1001,
      I1 => ap_loop_init_int,
      I2 => grp_spectral_subtract_fu_262_ap_start_reg,
      I3 => \i_fu_100_reg[10]_0\(0),
      O => \i_fu_100_reg[10]\(0)
    );
\i_fu_100[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE0EEE0E0000EE0E"
    )
        port map (
      I0 => ap_loop_init,
      I1 => i_fu_1001,
      I2 => ap_enable_reg_pp0_iter2,
      I3 => stream4_i_empty_n,
      I4 => ap_loop_exit_ready_pp0_iter1_reg_reg,
      I5 => stream5_full_n,
      O => ap_enable_reg_pp0_iter2_reg(0)
    );
\i_fu_100[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222088808880888"
    )
        port map (
      I0 => i_fu_1001,
      I1 => \i_fu_100_reg[10]_0\(10),
      I2 => grp_spectral_subtract_fu_262_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => \i_fu_100_reg[10]_0\(9),
      I5 => \i_fu_100[10]_i_5_n_0\,
      O => \i_fu_100_reg[10]\(10)
    );
\i_fu_100[10]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => grp_spectral_subtract_fu_262_ap_start_reg,
      O => ap_loop_init
    );
\i_fu_100[10]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => grp_spectral_subtract_fu_262_ap_start_reg,
      I1 => icmp_ln113_fu_211_p2,
      O => i_fu_1001
    );
\i_fu_100[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => \i_fu_100_reg[10]_0\(8),
      I1 => \i_fu_100_reg[10]_0\(6),
      I2 => \i_fu_100[7]_i_2_n_0\,
      I3 => \i_fu_100_reg[10]_0\(5),
      I4 => ap_loop_init,
      I5 => \i_fu_100_reg[10]_0\(7),
      O => \i_fu_100[10]_i_5_n_0\
    );
\i_fu_100[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02220888"
    )
        port map (
      I0 => i_fu_1001,
      I1 => \i_fu_100_reg[10]_0\(1),
      I2 => grp_spectral_subtract_fu_262_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => \i_fu_100_reg[10]_0\(0),
      O => \i_fu_100_reg[10]\(1)
    );
\i_fu_100[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222088808880888"
    )
        port map (
      I0 => i_fu_1001,
      I1 => \i_fu_100_reg[10]_0\(2),
      I2 => grp_spectral_subtract_fu_262_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => \i_fu_100_reg[10]_0\(1),
      I5 => \i_fu_100_reg[10]_0\(0),
      O => \i_fu_100_reg[10]\(2)
    );
\i_fu_100[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0208080808080808"
    )
        port map (
      I0 => i_fu_1001,
      I1 => \i_fu_100_reg[10]_0\(3),
      I2 => ap_loop_init,
      I3 => \i_fu_100_reg[10]_0\(2),
      I4 => \i_fu_100_reg[10]_0\(0),
      I5 => \i_fu_100_reg[10]_0\(1),
      O => \i_fu_100_reg[10]\(3)
    );
\i_fu_100[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2220888"
    )
        port map (
      I0 => i_fu_1001,
      I1 => \i_fu_100_reg[10]_0\(4),
      I2 => grp_spectral_subtract_fu_262_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => \i_fu_100[5]_i_2_n_0\,
      O => \i_fu_100_reg[10]\(4)
    );
\i_fu_100[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222088808880888"
    )
        port map (
      I0 => i_fu_1001,
      I1 => \i_fu_100_reg[10]_0\(5),
      I2 => grp_spectral_subtract_fu_262_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => \i_fu_100_reg[10]_0\(4),
      I5 => \i_fu_100[5]_i_2_n_0\,
      O => \i_fu_100_reg[10]\(5)
    );
\i_fu_100[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888000000000000"
    )
        port map (
      I0 => \i_fu_100_reg[10]_0\(3),
      I1 => \i_fu_100_reg[10]_0\(1),
      I2 => ap_loop_init_int,
      I3 => grp_spectral_subtract_fu_262_ap_start_reg,
      I4 => \i_fu_100_reg[10]_0\(0),
      I5 => \i_fu_100_reg[10]_0\(2),
      O => \i_fu_100[5]_i_2_n_0\
    );
\i_fu_100[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222088808880888"
    )
        port map (
      I0 => i_fu_1001,
      I1 => \i_fu_100_reg[10]_0\(6),
      I2 => grp_spectral_subtract_fu_262_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => \i_fu_100_reg[10]_0\(5),
      I5 => \i_fu_100[7]_i_2_n_0\,
      O => \i_fu_100_reg[10]\(6)
    );
\i_fu_100[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0208080808080808"
    )
        port map (
      I0 => i_fu_1001,
      I1 => \i_fu_100_reg[10]_0\(7),
      I2 => ap_loop_init,
      I3 => \i_fu_100_reg[10]_0\(6),
      I4 => \i_fu_100[7]_i_2_n_0\,
      I5 => \i_fu_100_reg[10]_0\(5),
      O => \i_fu_100_reg[10]\(7)
    );
\i_fu_100[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \i_fu_100_reg[10]_0\(4),
      I1 => \i_fu_100_reg[10]_0\(2),
      I2 => \i_fu_100_reg[10]_0\(0),
      I3 => ap_loop_init,
      I4 => \i_fu_100_reg[10]_0\(1),
      I5 => \i_fu_100_reg[10]_0\(3),
      O => \i_fu_100[7]_i_2_n_0\
    );
\i_fu_100[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222088808880888"
    )
        port map (
      I0 => i_fu_1001,
      I1 => \i_fu_100_reg[10]_0\(8),
      I2 => grp_spectral_subtract_fu_262_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => \i_fu_100_reg[10]_0\(7),
      I5 => \i_fu_100[8]_i_2_n_0\,
      O => \i_fu_100_reg[10]\(8)
    );
\i_fu_100[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A00000000000000"
    )
        port map (
      I0 => \i_fu_100_reg[10]_0\(6),
      I1 => ap_loop_init_int,
      I2 => grp_spectral_subtract_fu_262_ap_start_reg,
      I3 => \i_fu_100_reg[10]_0\(4),
      I4 => \i_fu_100[5]_i_2_n_0\,
      I5 => \i_fu_100_reg[10]_0\(5),
      O => \i_fu_100[8]_i_2_n_0\
    );
\i_fu_100[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222088808880888"
    )
        port map (
      I0 => i_fu_1001,
      I1 => \i_fu_100_reg[10]_0\(9),
      I2 => grp_spectral_subtract_fu_262_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => \i_fu_100_reg[10]_0\(8),
      I5 => \i_fu_100[9]_i_2_n_0\,
      O => \i_fu_100_reg[10]\(9)
    );
\i_fu_100[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A00000000000000"
    )
        port map (
      I0 => \i_fu_100_reg[10]_0\(7),
      I1 => ap_loop_init_int,
      I2 => grp_spectral_subtract_fu_262_ap_start_reg,
      I3 => \i_fu_100_reg[10]_0\(5),
      I4 => \i_fu_100[7]_i_2_n_0\,
      I5 => \i_fu_100_reg[10]_0\(6),
      O => \i_fu_100[9]_i_2_n_0\
    );
\icmp_ln326_reg_421[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => icmp_ln326_fu_333_p224_in,
      I1 => \^ap_done_cache_reg_0\,
      I2 => icmp_ln326_reg_421,
      O => \icmp_ln326_reg_421_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_sequential_init_10 is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \i_fu_84_reg[10]\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    grp_noise_estimation_accumulate_fu_246_ap_start_reg_reg : out STD_LOGIC;
    grp_noise_estimation_accumulate_fu_246_ap_start_reg_reg_0 : out STD_LOGIC;
    grp_noise_estimation_accumulate_fu_246_ap_start_reg_reg_1 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    grp_noise_estimation_accumulate_fu_246_ap_start_reg : in STD_LOGIC;
    ap_loop_exit_ready_pp0_iter1_reg : in STD_LOGIC;
    ap_block_pp0_stage0_11001 : in STD_LOGIC;
    \i_fu_84_reg[10]_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    ap_done_cache_reg_0 : in STD_LOGIC;
    ap_done_cache_reg_1 : in STD_LOGIC;
    stream3_empty_n : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_sequential_init_10 : entity is "denoise_top_flow_control_loop_pipe_sequential_init";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_sequential_init_10;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_sequential_init_10 is
  signal ap_done_cache : STD_LOGIC;
  signal \ap_done_cache_i_1__0_n_0\ : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_i_3_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_i_4_n_0 : STD_LOGIC;
  signal ap_loop_init : STD_LOGIC;
  signal ap_loop_init_int : STD_LOGIC;
  signal \ap_loop_init_int_i_1__0_n_0\ : STD_LOGIC;
  signal i_fu_841 : STD_LOGIC;
  signal \i_fu_84[10]_i_4_n_0\ : STD_LOGIC;
  signal \i_fu_84[5]_i_2_n_0\ : STD_LOGIC;
  signal \i_fu_84[7]_i_3_n_0\ : STD_LOGIC;
  signal \i_fu_84[8]_i_2_n_0\ : STD_LOGIC;
  signal \i_fu_84[9]_i_2_n_0\ : STD_LOGIC;
  signal icmp_ln85_fu_184_p2 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_enable_reg_pp0_iter1_i_1__1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \i_fu_84[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \i_fu_84[10]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \i_fu_84[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \i_fu_84[4]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \i_fu_84[7]_i_2\ : label is "soft_lutpair17";
begin
\ap_CS_fsm[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBAAFBAAAAAAAA"
    )
        port map (
      I0 => Q(0),
      I1 => ap_done_cache,
      I2 => grp_noise_estimation_accumulate_fu_246_ap_start_reg,
      I3 => ap_loop_exit_ready_pp0_iter1_reg,
      I4 => ap_block_pp0_stage0_11001,
      I5 => Q(1),
      O => D(0)
    );
\ap_CS_fsm[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20AA2020"
    )
        port map (
      I0 => Q(1),
      I1 => ap_block_pp0_stage0_11001,
      I2 => ap_loop_exit_ready_pp0_iter1_reg,
      I3 => grp_noise_estimation_accumulate_fu_246_ap_start_reg,
      I4 => ap_done_cache,
      O => D(1)
    );
\ap_done_cache_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F00FFFF8F008F00"
    )
        port map (
      I0 => stream3_empty_n,
      I1 => ap_done_cache_reg_1,
      I2 => ap_done_cache_reg_0,
      I3 => ap_loop_exit_ready_pp0_iter1_reg,
      I4 => grp_noise_estimation_accumulate_fu_246_ap_start_reg,
      I5 => ap_done_cache,
      O => \ap_done_cache_i_1__0_n_0\
    );
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_done_cache_i_1__0_n_0\,
      Q => ap_done_cache,
      R => AR(0)
    );
\ap_enable_reg_pp0_iter1_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3F00BFAA"
    )
        port map (
      I0 => grp_noise_estimation_accumulate_fu_246_ap_start_reg,
      I1 => stream3_empty_n,
      I2 => ap_done_cache_reg_1,
      I3 => ap_done_cache_reg_0,
      I4 => icmp_ln85_fu_184_p2,
      O => grp_noise_estimation_accumulate_fu_246_ap_start_reg_reg_1
    );
ap_enable_reg_pp0_iter1_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \i_fu_84_reg[10]_0\(9),
      I1 => ap_loop_init,
      I2 => \i_fu_84_reg[10]_0\(0),
      I3 => \i_fu_84_reg[10]_0\(10),
      I4 => ap_enable_reg_pp0_iter1_i_3_n_0,
      I5 => ap_enable_reg_pp0_iter1_i_4_n_0,
      O => icmp_ln85_fu_184_p2
    );
ap_enable_reg_pp0_iter1_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFF00FEFEFE"
    )
        port map (
      I0 => \i_fu_84_reg[10]_0\(3),
      I1 => \i_fu_84_reg[10]_0\(4),
      I2 => \i_fu_84_reg[10]_0\(1),
      I3 => grp_noise_estimation_accumulate_fu_246_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => \i_fu_84_reg[10]_0\(2),
      O => ap_enable_reg_pp0_iter1_i_3_n_0
    );
ap_enable_reg_pp0_iter1_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFF00FEFEFE"
    )
        port map (
      I0 => \i_fu_84_reg[10]_0\(7),
      I1 => \i_fu_84_reg[10]_0\(8),
      I2 => \i_fu_84_reg[10]_0\(5),
      I3 => grp_noise_estimation_accumulate_fu_246_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => \i_fu_84_reg[10]_0\(6),
      O => ap_enable_reg_pp0_iter1_i_4_n_0
    );
\ap_loop_exit_ready_pp0_iter1_reg_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFAA3F0080AA0000"
    )
        port map (
      I0 => grp_noise_estimation_accumulate_fu_246_ap_start_reg,
      I1 => stream3_empty_n,
      I2 => ap_done_cache_reg_1,
      I3 => ap_done_cache_reg_0,
      I4 => icmp_ln85_fu_184_p2,
      I5 => ap_loop_exit_ready_pp0_iter1_reg,
      O => grp_noise_estimation_accumulate_fu_246_ap_start_reg_reg_0
    );
\ap_loop_init_int_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFCFFF4F"
    )
        port map (
      I0 => grp_noise_estimation_accumulate_fu_246_ap_start_reg,
      I1 => ap_loop_init_int,
      I2 => ap_rst_n,
      I3 => ap_loop_exit_ready_pp0_iter1_reg,
      I4 => ap_block_pp0_stage0_11001,
      O => \ap_loop_init_int_i_1__0_n_0\
    );
ap_loop_init_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_loop_init_int_i_1__0_n_0\,
      Q => ap_loop_init_int,
      R => '0'
    );
grp_noise_estimation_accumulate_fu_246_ap_start_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2A00AAAA"
    )
        port map (
      I0 => grp_noise_estimation_accumulate_fu_246_ap_start_reg,
      I1 => stream3_empty_n,
      I2 => ap_done_cache_reg_1,
      I3 => ap_done_cache_reg_0,
      I4 => icmp_ln85_fu_184_p2,
      I5 => Q(0),
      O => grp_noise_estimation_accumulate_fu_246_ap_start_reg_reg
    );
\i_fu_84[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80AA"
    )
        port map (
      I0 => i_fu_841,
      I1 => ap_loop_init_int,
      I2 => grp_noise_estimation_accumulate_fu_246_ap_start_reg,
      I3 => \i_fu_84_reg[10]_0\(0),
      O => \i_fu_84_reg[10]\(0)
    );
\i_fu_84[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F800F800F800F8"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => grp_noise_estimation_accumulate_fu_246_ap_start_reg,
      I2 => i_fu_841,
      I3 => ap_done_cache_reg_0,
      I4 => ap_done_cache_reg_1,
      I5 => stream3_empty_n,
      O => E(0)
    );
\i_fu_84[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222088808880888"
    )
        port map (
      I0 => i_fu_841,
      I1 => \i_fu_84_reg[10]_0\(10),
      I2 => grp_noise_estimation_accumulate_fu_246_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => \i_fu_84_reg[10]_0\(9),
      I5 => \i_fu_84[10]_i_4_n_0\,
      O => \i_fu_84_reg[10]\(10)
    );
\i_fu_84[10]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => grp_noise_estimation_accumulate_fu_246_ap_start_reg,
      I1 => icmp_ln85_fu_184_p2,
      O => i_fu_841
    );
\i_fu_84[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => \i_fu_84_reg[10]_0\(8),
      I1 => \i_fu_84_reg[10]_0\(6),
      I2 => \i_fu_84[7]_i_3_n_0\,
      I3 => \i_fu_84_reg[10]_0\(5),
      I4 => ap_loop_init,
      I5 => \i_fu_84_reg[10]_0\(7),
      O => \i_fu_84[10]_i_4_n_0\
    );
\i_fu_84[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02220888"
    )
        port map (
      I0 => i_fu_841,
      I1 => \i_fu_84_reg[10]_0\(1),
      I2 => grp_noise_estimation_accumulate_fu_246_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => \i_fu_84_reg[10]_0\(0),
      O => \i_fu_84_reg[10]\(1)
    );
\i_fu_84[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222088808880888"
    )
        port map (
      I0 => i_fu_841,
      I1 => \i_fu_84_reg[10]_0\(2),
      I2 => grp_noise_estimation_accumulate_fu_246_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => \i_fu_84_reg[10]_0\(1),
      I5 => \i_fu_84_reg[10]_0\(0),
      O => \i_fu_84_reg[10]\(2)
    );
\i_fu_84[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0208080808080808"
    )
        port map (
      I0 => i_fu_841,
      I1 => \i_fu_84_reg[10]_0\(3),
      I2 => ap_loop_init,
      I3 => \i_fu_84_reg[10]_0\(2),
      I4 => \i_fu_84_reg[10]_0\(0),
      I5 => \i_fu_84_reg[10]_0\(1),
      O => \i_fu_84_reg[10]\(3)
    );
\i_fu_84[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2220888"
    )
        port map (
      I0 => i_fu_841,
      I1 => \i_fu_84_reg[10]_0\(4),
      I2 => grp_noise_estimation_accumulate_fu_246_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => \i_fu_84[5]_i_2_n_0\,
      O => \i_fu_84_reg[10]\(4)
    );
\i_fu_84[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222088808880888"
    )
        port map (
      I0 => i_fu_841,
      I1 => \i_fu_84_reg[10]_0\(5),
      I2 => grp_noise_estimation_accumulate_fu_246_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => \i_fu_84_reg[10]_0\(4),
      I5 => \i_fu_84[5]_i_2_n_0\,
      O => \i_fu_84_reg[10]\(5)
    );
\i_fu_84[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888000000000000"
    )
        port map (
      I0 => \i_fu_84_reg[10]_0\(3),
      I1 => \i_fu_84_reg[10]_0\(1),
      I2 => ap_loop_init_int,
      I3 => grp_noise_estimation_accumulate_fu_246_ap_start_reg,
      I4 => \i_fu_84_reg[10]_0\(0),
      I5 => \i_fu_84_reg[10]_0\(2),
      O => \i_fu_84[5]_i_2_n_0\
    );
\i_fu_84[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222088808880888"
    )
        port map (
      I0 => i_fu_841,
      I1 => \i_fu_84_reg[10]_0\(6),
      I2 => grp_noise_estimation_accumulate_fu_246_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => \i_fu_84_reg[10]_0\(5),
      I5 => \i_fu_84[7]_i_3_n_0\,
      O => \i_fu_84_reg[10]\(6)
    );
\i_fu_84[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0208080808080808"
    )
        port map (
      I0 => i_fu_841,
      I1 => \i_fu_84_reg[10]_0\(7),
      I2 => ap_loop_init,
      I3 => \i_fu_84_reg[10]_0\(6),
      I4 => \i_fu_84[7]_i_3_n_0\,
      I5 => \i_fu_84_reg[10]_0\(5),
      O => \i_fu_84_reg[10]\(7)
    );
\i_fu_84[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => grp_noise_estimation_accumulate_fu_246_ap_start_reg,
      O => ap_loop_init
    );
\i_fu_84[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \i_fu_84_reg[10]_0\(4),
      I1 => \i_fu_84_reg[10]_0\(2),
      I2 => \i_fu_84_reg[10]_0\(0),
      I3 => ap_loop_init,
      I4 => \i_fu_84_reg[10]_0\(1),
      I5 => \i_fu_84_reg[10]_0\(3),
      O => \i_fu_84[7]_i_3_n_0\
    );
\i_fu_84[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222088808880888"
    )
        port map (
      I0 => i_fu_841,
      I1 => \i_fu_84_reg[10]_0\(8),
      I2 => grp_noise_estimation_accumulate_fu_246_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => \i_fu_84_reg[10]_0\(7),
      I5 => \i_fu_84[8]_i_2_n_0\,
      O => \i_fu_84_reg[10]\(8)
    );
\i_fu_84[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A00000000000000"
    )
        port map (
      I0 => \i_fu_84_reg[10]_0\(6),
      I1 => ap_loop_init_int,
      I2 => grp_noise_estimation_accumulate_fu_246_ap_start_reg,
      I3 => \i_fu_84_reg[10]_0\(4),
      I4 => \i_fu_84[5]_i_2_n_0\,
      I5 => \i_fu_84_reg[10]_0\(5),
      O => \i_fu_84[8]_i_2_n_0\
    );
\i_fu_84[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222088808880888"
    )
        port map (
      I0 => i_fu_841,
      I1 => \i_fu_84_reg[10]_0\(9),
      I2 => grp_noise_estimation_accumulate_fu_246_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => \i_fu_84_reg[10]_0\(8),
      I5 => \i_fu_84[9]_i_2_n_0\,
      O => \i_fu_84_reg[10]\(9)
    );
\i_fu_84[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A00000000000000"
    )
        port map (
      I0 => \i_fu_84_reg[10]_0\(7),
      I1 => ap_loop_init_int,
      I2 => grp_noise_estimation_accumulate_fu_246_ap_start_reg,
      I3 => \i_fu_84_reg[10]_0\(5),
      I4 => \i_fu_84[7]_i_3_n_0\,
      I5 => \i_fu_84_reg[10]_0\(6),
      O => \i_fu_84[9]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_sequential_init_11 is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \ap_CS_fsm_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[1]_0\ : out STD_LOGIC;
    \noise_estimated_reg[0]\ : out STD_LOGIC;
    grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg_reg : out STD_LOGIC;
    \frame_counter_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \i_fu_62_reg[10]\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    ap_loop_init_int_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[1]_1\ : in STD_LOGIC;
    \ap_CS_fsm_reg[1]_2\ : in STD_LOGIC;
    \ap_CS_fsm_reg[1]_3\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \ap_CS_fsm_reg[1]_4\ : in STD_LOGIC;
    reset_noise_read_reg_380 : in STD_LOGIC;
    grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg : in STD_LOGIC;
    reset_noise_c_dout : in STD_LOGIC;
    noise_estimated : in STD_LOGIC;
    \frame_counter_loc_0_i_reg_132_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \i_fu_62_reg[10]_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    ap_rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_sequential_init_11 : entity is "denoise_top_flow_control_loop_pipe_sequential_init";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_sequential_init_11;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_sequential_init_11 is
  signal \ap_CS_fsm[1]_i_15_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_4_n_0\ : STD_LOGIC;
  signal \^ap_cs_fsm_reg[1]_0\ : STD_LOGIC;
  signal ap_block_state2_on_subcall_done26_out : STD_LOGIC;
  signal ap_done_cache : STD_LOGIC;
  signal ap_done_cache_i_1_n_0 : STD_LOGIC;
  signal ap_loop_init : STD_LOGIC;
  signal ap_loop_init_int : STD_LOGIC;
  signal ap_loop_init_int_i_1_n_0 : STD_LOGIC;
  signal \i_fu_62[10]_i_4_n_0\ : STD_LOGIC;
  signal \i_fu_62[10]_i_5_n_0\ : STD_LOGIC;
  signal \i_fu_62[10]_i_6_n_0\ : STD_LOGIC;
  signal \i_fu_62[5]_i_2_n_0\ : STD_LOGIC;
  signal \i_fu_62[7]_i_3_n_0\ : STD_LOGIC;
  signal \i_fu_62[8]_i_2_n_0\ : STD_LOGIC;
  signal \i_fu_62[9]_i_2_n_0\ : STD_LOGIC;
  signal icmp_ln283_fu_218_p2 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_15\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of ap_done_cache_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of ap_loop_init_int_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \frame_counter_flag_1_i_reg_155[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \frame_counter_flag_1_i_reg_155[0]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \frame_counter_loc_0_i_reg_132[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \frame_counter_loc_0_i_reg_132[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \frame_counter_loc_0_i_reg_132[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \i_fu_62[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \i_fu_62[10]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \i_fu_62[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \i_fu_62[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \i_fu_62[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \i_fu_62[5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \i_fu_62[7]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \noise_estimated_loc_0_i_reg_144[0]_i_1\ : label is "soft_lutpair15";
begin
  \ap_CS_fsm_reg[1]_0\ <= \^ap_cs_fsm_reg[1]_0\;
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA00000003"
    )
        port map (
      I0 => E(0),
      I1 => \ap_CS_fsm_reg[1]_1\,
      I2 => \ap_CS_fsm_reg[1]_2\,
      I3 => \ap_CS_fsm[1]_i_4_n_0\,
      I4 => \ap_CS_fsm_reg[1]_3\,
      I5 => Q(0),
      O => D(0)
    );
\ap_CS_fsm[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2A2A2A2A2A2A202"
    )
        port map (
      I0 => reset_noise_read_reg_380,
      I1 => ap_done_cache,
      I2 => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg,
      I3 => \ap_CS_fsm[1]_i_15_n_0\,
      I4 => \i_fu_62[10]_i_5_n_0\,
      I5 => \i_fu_62[10]_i_6_n_0\,
      O => ap_block_state2_on_subcall_done26_out
    );
\ap_CS_fsm[1]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFDDD"
    )
        port map (
      I0 => \i_fu_62_reg[10]_0\(10),
      I1 => \i_fu_62_reg[10]_0\(0),
      I2 => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => \i_fu_62_reg[10]_0\(9),
      O => \ap_CS_fsm[1]_i_15_n_0\
    );
\ap_CS_fsm[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFEE"
    )
        port map (
      I0 => \ap_CS_fsm_reg[1]_4\,
      I1 => Q(2),
      I2 => ap_block_state2_on_subcall_done26_out,
      I3 => Q(1),
      I4 => Q(4),
      I5 => Q(3),
      O => \ap_CS_fsm[1]_i_4_n_0\
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FD5D0000"
    )
        port map (
      I0 => reset_noise_read_reg_380,
      I1 => ap_done_cache,
      I2 => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg,
      I3 => icmp_ln283_fu_218_p2,
      I4 => Q(1),
      O => D(1)
    );
ap_done_cache_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => icmp_ln283_fu_218_p2,
      I1 => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg,
      I2 => ap_done_cache,
      O => ap_done_cache_i_1_n_0
    );
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_done_cache_i_1_n_0,
      Q => ap_done_cache,
      R => AR(0)
    );
ap_loop_init_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F3BB"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => ap_rst_n,
      I2 => icmp_ln283_fu_218_p2,
      I3 => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg,
      O => ap_loop_init_int_i_1_n_0
    );
ap_loop_init_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_init_int_i_1_n_0,
      Q => ap_loop_init_int,
      R => '0'
    );
\frame_counter_flag_1_i_reg_155[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^ap_cs_fsm_reg[1]_0\,
      I1 => reset_noise_c_dout,
      I2 => E(0),
      O => \ap_CS_fsm_reg[1]\(0)
    );
\frame_counter_flag_1_i_reg_155[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
        port map (
      I0 => Q(1),
      I1 => icmp_ln283_fu_218_p2,
      I2 => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg,
      I3 => ap_done_cache,
      I4 => reset_noise_read_reg_380,
      O => \^ap_cs_fsm_reg[1]_0\
    );
\frame_counter_loc_0_i_reg_132[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \frame_counter_loc_0_i_reg_132_reg[3]\(0),
      I1 => \^ap_cs_fsm_reg[1]_0\,
      O => \frame_counter_reg[3]\(0)
    );
\frame_counter_loc_0_i_reg_132[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \frame_counter_loc_0_i_reg_132_reg[3]\(1),
      I1 => \^ap_cs_fsm_reg[1]_0\,
      O => \frame_counter_reg[3]\(1)
    );
\frame_counter_loc_0_i_reg_132[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \frame_counter_loc_0_i_reg_132_reg[3]\(2),
      I1 => \^ap_cs_fsm_reg[1]_0\,
      O => \frame_counter_reg[3]\(2)
    );
\frame_counter_loc_0_i_reg_132[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \frame_counter_loc_0_i_reg_132_reg[3]\(3),
      I1 => \^ap_cs_fsm_reg[1]_0\,
      O => \frame_counter_reg[3]\(3)
    );
grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => E(0),
      I1 => reset_noise_c_dout,
      I2 => icmp_ln283_fu_218_p2,
      I3 => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg,
      O => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg_reg
    );
\i_fu_62[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0B"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => \i_fu_62_reg[10]_0\(0),
      I2 => icmp_ln283_fu_218_p2,
      O => \i_fu_62_reg[10]\(0)
    );
\i_fu_62[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => icmp_ln283_fu_218_p2,
      I1 => ap_loop_init_int,
      I2 => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg,
      O => ap_loop_init_int_reg_0(0)
    );
\i_fu_62[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001222"
    )
        port map (
      I0 => \i_fu_62_reg[10]_0\(10),
      I1 => ap_loop_init_int,
      I2 => \i_fu_62_reg[10]_0\(9),
      I3 => \i_fu_62[10]_i_4_n_0\,
      I4 => icmp_ln283_fu_218_p2,
      O => \i_fu_62_reg[10]\(10)
    );
\i_fu_62[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \i_fu_62_reg[10]_0\(9),
      I1 => ap_loop_init,
      I2 => \i_fu_62_reg[10]_0\(0),
      I3 => \i_fu_62_reg[10]_0\(10),
      I4 => \i_fu_62[10]_i_5_n_0\,
      I5 => \i_fu_62[10]_i_6_n_0\,
      O => icmp_ln283_fu_218_p2
    );
\i_fu_62[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => \i_fu_62_reg[10]_0\(8),
      I1 => \i_fu_62_reg[10]_0\(6),
      I2 => \i_fu_62[7]_i_3_n_0\,
      I3 => \i_fu_62_reg[10]_0\(5),
      I4 => ap_loop_init,
      I5 => \i_fu_62_reg[10]_0\(7),
      O => \i_fu_62[10]_i_4_n_0\
    );
\i_fu_62[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFF00FEFEFE"
    )
        port map (
      I0 => \i_fu_62_reg[10]_0\(3),
      I1 => \i_fu_62_reg[10]_0\(4),
      I2 => \i_fu_62_reg[10]_0\(1),
      I3 => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => \i_fu_62_reg[10]_0\(2),
      O => \i_fu_62[10]_i_5_n_0\
    );
\i_fu_62[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFF00FEFEFE"
    )
        port map (
      I0 => \i_fu_62_reg[10]_0\(7),
      I1 => \i_fu_62_reg[10]_0\(8),
      I2 => \i_fu_62_reg[10]_0\(5),
      I3 => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => \i_fu_62_reg[10]_0\(6),
      O => \i_fu_62[10]_i_6_n_0\
    );
\i_fu_62[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0012"
    )
        port map (
      I0 => \i_fu_62_reg[10]_0\(1),
      I1 => ap_loop_init_int,
      I2 => \i_fu_62_reg[10]_0\(0),
      I3 => icmp_ln283_fu_218_p2,
      O => \i_fu_62_reg[10]\(1)
    );
\i_fu_62[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001222"
    )
        port map (
      I0 => \i_fu_62_reg[10]_0\(2),
      I1 => ap_loop_init_int,
      I2 => \i_fu_62_reg[10]_0\(1),
      I3 => \i_fu_62_reg[10]_0\(0),
      I4 => icmp_ln283_fu_218_p2,
      O => \i_fu_62_reg[10]\(2)
    );
\i_fu_62[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000012222222"
    )
        port map (
      I0 => \i_fu_62_reg[10]_0\(3),
      I1 => ap_loop_init,
      I2 => \i_fu_62_reg[10]_0\(2),
      I3 => \i_fu_62_reg[10]_0\(0),
      I4 => \i_fu_62_reg[10]_0\(1),
      I5 => icmp_ln283_fu_218_p2,
      O => \i_fu_62_reg[10]\(3)
    );
\i_fu_62[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D2"
    )
        port map (
      I0 => \i_fu_62_reg[10]_0\(4),
      I1 => ap_loop_init_int,
      I2 => \i_fu_62[5]_i_2_n_0\,
      I3 => icmp_ln283_fu_218_p2,
      O => \i_fu_62_reg[10]\(4)
    );
\i_fu_62[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001222"
    )
        port map (
      I0 => \i_fu_62_reg[10]_0\(5),
      I1 => ap_loop_init_int,
      I2 => \i_fu_62_reg[10]_0\(4),
      I3 => \i_fu_62[5]_i_2_n_0\,
      I4 => icmp_ln283_fu_218_p2,
      O => \i_fu_62_reg[10]\(5)
    );
\i_fu_62[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888000000000000"
    )
        port map (
      I0 => \i_fu_62_reg[10]_0\(3),
      I1 => \i_fu_62_reg[10]_0\(1),
      I2 => ap_loop_init_int,
      I3 => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg,
      I4 => \i_fu_62_reg[10]_0\(0),
      I5 => \i_fu_62_reg[10]_0\(2),
      O => \i_fu_62[5]_i_2_n_0\
    );
\i_fu_62[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001222"
    )
        port map (
      I0 => \i_fu_62_reg[10]_0\(6),
      I1 => ap_loop_init_int,
      I2 => \i_fu_62_reg[10]_0\(5),
      I3 => \i_fu_62[7]_i_3_n_0\,
      I4 => icmp_ln283_fu_218_p2,
      O => \i_fu_62_reg[10]\(6)
    );
\i_fu_62[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000012222222"
    )
        port map (
      I0 => \i_fu_62_reg[10]_0\(7),
      I1 => ap_loop_init,
      I2 => \i_fu_62_reg[10]_0\(6),
      I3 => \i_fu_62[7]_i_3_n_0\,
      I4 => \i_fu_62_reg[10]_0\(5),
      I5 => icmp_ln283_fu_218_p2,
      O => \i_fu_62_reg[10]\(7)
    );
\i_fu_62[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg,
      O => ap_loop_init
    );
\i_fu_62[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \i_fu_62_reg[10]_0\(4),
      I1 => \i_fu_62_reg[10]_0\(2),
      I2 => \i_fu_62_reg[10]_0\(0),
      I3 => ap_loop_init,
      I4 => \i_fu_62_reg[10]_0\(1),
      I5 => \i_fu_62_reg[10]_0\(3),
      O => \i_fu_62[7]_i_3_n_0\
    );
\i_fu_62[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001222"
    )
        port map (
      I0 => \i_fu_62_reg[10]_0\(8),
      I1 => ap_loop_init_int,
      I2 => \i_fu_62_reg[10]_0\(7),
      I3 => \i_fu_62[8]_i_2_n_0\,
      I4 => icmp_ln283_fu_218_p2,
      O => \i_fu_62_reg[10]\(8)
    );
\i_fu_62[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A00000000000000"
    )
        port map (
      I0 => \i_fu_62_reg[10]_0\(6),
      I1 => ap_loop_init_int,
      I2 => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg,
      I3 => \i_fu_62_reg[10]_0\(4),
      I4 => \i_fu_62[5]_i_2_n_0\,
      I5 => \i_fu_62_reg[10]_0\(5),
      O => \i_fu_62[8]_i_2_n_0\
    );
\i_fu_62[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001222"
    )
        port map (
      I0 => \i_fu_62_reg[10]_0\(9),
      I1 => ap_loop_init_int,
      I2 => \i_fu_62_reg[10]_0\(8),
      I3 => \i_fu_62[9]_i_2_n_0\,
      I4 => icmp_ln283_fu_218_p2,
      O => \i_fu_62_reg[10]\(9)
    );
\i_fu_62[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A00000000000000"
    )
        port map (
      I0 => \i_fu_62_reg[10]_0\(7),
      I1 => ap_loop_init_int,
      I2 => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg,
      I3 => \i_fu_62_reg[10]_0\(5),
      I4 => \i_fu_62[7]_i_3_n_0\,
      I5 => \i_fu_62_reg[10]_0\(6),
      O => \i_fu_62[9]_i_2_n_0\
    );
\noise_estimated_loc_0_i_reg_144[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => noise_estimated,
      I1 => \^ap_cs_fsm_reg[1]_0\,
      O => \noise_estimated_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_sequential_init_12 is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \ap_CS_fsm_reg[50]\ : out STD_LOGIC;
    \noise_frame_count_read_reg_372_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ap_loop_exit_ready_pp0_iter2_reg_reg : out STD_LOGIC;
    \frame_counter_flag_1_i_reg_155_reg[0]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[49]\ : out STD_LOGIC;
    \noise_estimated_new_0_i_reg_211_reg[0]\ : out STD_LOGIC;
    \i_fu_76_reg[9]\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_ready : out STD_LOGIC;
    ap_loop_init_int_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    p_23_in : in STD_LOGIC;
    \ap_CS_fsm_reg[50]_0\ : in STD_LOGIC;
    \frame_counter_new_0_i_reg_184_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    frame_counter_flag_0_i_reg_1692 : in STD_LOGIC;
    \frame_counter_new_0_i_reg_184_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    add_ln324_fu_327_p2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    frame_counter_flag_1_i_reg_155 : in STD_LOGIC;
    ap_loop_exit_ready_pp0_iter2_reg : in STD_LOGIC;
    grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg : in STD_LOGIC;
    icmp_ln326_reg_421 : in STD_LOGIC;
    \frame_counter_reg[0]\ : in STD_LOGIC;
    frame_counter_flag_0_i_reg_169 : in STD_LOGIC;
    \ap_CS_fsm_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \i_fu_76_reg[10]\ : in STD_LOGIC;
    \i_fu_76_reg[10]_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \noise_estimated_reg[0]\ : in STD_LOGIC;
    noise_estimated_flag_0_i_reg_197 : in STD_LOGIC;
    ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p61 : in STD_LOGIC;
    noise_estimated : in STD_LOGIC;
    \i_fu_76_reg[10]_1\ : in STD_LOGIC;
    \i_fu_76_reg[9]_0\ : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    \i_fu_76_reg[6]\ : in STD_LOGIC;
    \i_fu_76_reg[5]\ : in STD_LOGIC;
    \i_fu_76_reg[0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_sequential_init_12 : entity is "denoise_top_flow_control_loop_pipe_sequential_init";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_sequential_init_12;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_sequential_init_12 is
  signal \^ap_cs_fsm_reg[50]\ : STD_LOGIC;
  signal ap_done_cache : STD_LOGIC;
  signal \ap_done_cache_i_1__2_n_0\ : STD_LOGIC;
  signal \^ap_loop_exit_ready_pp0_iter2_reg_reg\ : STD_LOGIC;
  signal ap_loop_init_int : STD_LOGIC;
  signal \ap_loop_init_int_i_1__2_n_0\ : STD_LOGIC;
  signal \i_fu_76[10]_i_5_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_loop_exit_ready_pp0_iter1_reg_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \frame_counter_new_0_i_reg_184[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \i_fu_76[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i_fu_76[10]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i_fu_76[10]_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i_fu_76[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i_fu_76[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \i_fu_76[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \i_fu_76[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i_fu_76[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i_fu_76[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \noise_estimated_flag_0_i_reg_197[0]_i_1\ : label is "soft_lutpair4";
begin
  \ap_CS_fsm_reg[50]\ <= \^ap_cs_fsm_reg[50]\;
  ap_loop_exit_ready_pp0_iter2_reg_reg <= \^ap_loop_exit_ready_pp0_iter2_reg_reg\;
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \ap_CS_fsm_reg[0]\(0),
      I1 => Q(0),
      I2 => \^ap_cs_fsm_reg[50]\,
      I3 => Q(3),
      O => D(0)
    );
\ap_CS_fsm[50]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAEAEAEFFAEAEAE"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => \^ap_cs_fsm_reg[50]\,
      I3 => Q(1),
      I4 => p_23_in,
      I5 => \ap_CS_fsm_reg[50]_0\,
      O => D(1)
    );
\ap_done_cache_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => ap_loop_exit_ready_pp0_iter2_reg,
      I1 => grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg,
      I2 => ap_done_cache,
      O => \ap_done_cache_i_1__2_n_0\
    );
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_done_cache_i_1__2_n_0\,
      Q => ap_done_cache,
      R => AR(0)
    );
\ap_loop_exit_ready_pp0_iter1_reg_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \i_fu_76_reg[10]_0\(10),
      I1 => ap_loop_init_int,
      I2 => grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg,
      I3 => \i_fu_76_reg[10]_0\(1),
      I4 => \i_fu_76_reg[10]\,
      O => grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_ready
    );
\ap_loop_init_int_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFDD"
    )
        port map (
      I0 => ap_rst_n,
      I1 => ap_loop_exit_ready_pp0_iter2_reg,
      I2 => grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg,
      I3 => ap_loop_init_int,
      O => \ap_loop_init_int_i_1__2_n_0\
    );
ap_loop_init_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_loop_init_int_i_1__2_n_0\,
      Q => ap_loop_init_int,
      R => '0'
    );
\frame_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8888888"
    )
        port map (
      I0 => \^ap_cs_fsm_reg[50]\,
      I1 => frame_counter_flag_0_i_reg_169,
      I2 => Q(3),
      I3 => icmp_ln326_reg_421,
      I4 => \frame_counter_reg[0]\,
      O => E(0)
    );
\frame_counter[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA20AAAAAAAAAAAA"
    )
        port map (
      I0 => Q(3),
      I1 => grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg,
      I2 => ap_done_cache,
      I3 => ap_loop_exit_ready_pp0_iter2_reg,
      I4 => \frame_counter_reg[0]\,
      I5 => icmp_ln326_reg_421,
      O => \^ap_cs_fsm_reg[50]\
    );
\frame_counter_new_0_i_reg_184[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \frame_counter_new_0_i_reg_184_reg[3]\(0),
      I1 => \^ap_loop_exit_ready_pp0_iter2_reg_reg\,
      I2 => frame_counter_flag_0_i_reg_1692,
      I3 => \frame_counter_new_0_i_reg_184_reg[2]\(0),
      O => \noise_frame_count_read_reg_372_reg[3]\(0)
    );
\frame_counter_new_0_i_reg_184[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B8B888"
    )
        port map (
      I0 => \frame_counter_new_0_i_reg_184_reg[3]\(1),
      I1 => \^ap_loop_exit_ready_pp0_iter2_reg_reg\,
      I2 => frame_counter_flag_0_i_reg_1692,
      I3 => \frame_counter_new_0_i_reg_184_reg[2]\(1),
      I4 => \frame_counter_new_0_i_reg_184_reg[2]\(0),
      O => \noise_frame_count_read_reg_372_reg[3]\(1)
    );
\frame_counter_new_0_i_reg_184[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8B888B888B888"
    )
        port map (
      I0 => \frame_counter_new_0_i_reg_184_reg[3]\(2),
      I1 => \^ap_loop_exit_ready_pp0_iter2_reg_reg\,
      I2 => frame_counter_flag_0_i_reg_1692,
      I3 => \frame_counter_new_0_i_reg_184_reg[2]\(2),
      I4 => \frame_counter_new_0_i_reg_184_reg[2]\(1),
      I5 => \frame_counter_new_0_i_reg_184_reg[2]\(0),
      O => \noise_frame_count_read_reg_372_reg[3]\(2)
    );
\frame_counter_new_0_i_reg_184[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \frame_counter_new_0_i_reg_184_reg[3]\(3),
      I1 => \^ap_loop_exit_ready_pp0_iter2_reg_reg\,
      I2 => frame_counter_flag_0_i_reg_1692,
      I3 => add_ln324_fu_327_p2(0),
      O => \noise_frame_count_read_reg_372_reg[3]\(3)
    );
grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAFEAAFFAAFFAA"
    )
        port map (
      I0 => Q(2),
      I1 => \i_fu_76_reg[10]\,
      I2 => \i_fu_76_reg[10]_0\(1),
      I3 => grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => \i_fu_76_reg[10]_0\(10),
      O => \ap_CS_fsm_reg[49]\
    );
\i_fu_76[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFFAAFB"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => \i_fu_76_reg[10]_0\(10),
      I2 => \i_fu_76_reg[10]_0\(1),
      I3 => \i_fu_76_reg[10]_0\(0),
      I4 => \i_fu_76_reg[0]\,
      O => \i_fu_76_reg[9]\(0)
    );
\i_fu_76[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FB00"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => \i_fu_76_reg[10]_0\(10),
      I2 => \i_fu_76_reg[10]_0\(1),
      I3 => grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg,
      I4 => \i_fu_76_reg[10]\,
      O => ap_loop_init_int_reg_0(0)
    );
\i_fu_76[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF002000D0002000"
    )
        port map (
      I0 => \i_fu_76_reg[10]_0\(9),
      I1 => \i_fu_76_reg[10]_1\,
      I2 => \i_fu_76_reg[10]_0\(1),
      I3 => \i_fu_76[10]_i_5_n_0\,
      I4 => \i_fu_76_reg[10]_0\(10),
      I5 => \i_fu_76_reg[10]\,
      O => \i_fu_76_reg[9]\(10)
    );
\i_fu_76[10]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg,
      I1 => ap_loop_init_int,
      O => \i_fu_76[10]_i_5_n_0\
    );
\i_fu_76[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \i_fu_76_reg[10]_0\(0),
      I1 => ap_loop_init_int,
      I2 => \i_fu_76_reg[10]_0\(1),
      O => \i_fu_76_reg[9]\(1)
    );
\i_fu_76[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1230"
    )
        port map (
      I0 => \i_fu_76_reg[10]_0\(1),
      I1 => ap_loop_init_int,
      I2 => \i_fu_76_reg[10]_0\(2),
      I3 => \i_fu_76_reg[10]_0\(0),
      O => \i_fu_76_reg[9]\(2)
    );
\i_fu_76[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => \i_fu_76_reg[10]_0\(1),
      I1 => \i_fu_76_reg[10]_0\(0),
      I2 => \i_fu_76_reg[10]_0\(2),
      I3 => ap_loop_init_int,
      I4 => \i_fu_76_reg[10]_0\(3),
      O => \i_fu_76_reg[9]\(3)
    );
\i_fu_76[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F800000FF000000"
    )
        port map (
      I0 => \i_fu_76_reg[10]_0\(3),
      I1 => \i_fu_76_reg[10]_0\(0),
      I2 => \i_fu_76_reg[10]_0\(2),
      I3 => \i_fu_76_reg[10]_0\(4),
      I4 => \i_fu_76[10]_i_5_n_0\,
      I5 => \i_fu_76_reg[10]_0\(1),
      O => \i_fu_76_reg[9]\(4)
    );
\i_fu_76[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"090C"
    )
        port map (
      I0 => \i_fu_76_reg[5]\,
      I1 => \i_fu_76_reg[10]_0\(5),
      I2 => ap_loop_init_int,
      I3 => \i_fu_76_reg[10]_0\(1),
      O => \i_fu_76_reg[9]\(5)
    );
\i_fu_76[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"090C"
    )
        port map (
      I0 => \i_fu_76_reg[6]\,
      I1 => \i_fu_76_reg[10]_0\(6),
      I2 => ap_loop_init_int,
      I3 => \i_fu_76_reg[10]_0\(1),
      O => \i_fu_76_reg[9]\(6)
    );
\i_fu_76[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"090C"
    )
        port map (
      I0 => \i_fu_76_reg[9]_0\,
      I1 => \i_fu_76_reg[10]_0\(7),
      I2 => ap_loop_init_int,
      I3 => \i_fu_76_reg[10]_0\(1),
      O => \i_fu_76_reg[9]\(7)
    );
\i_fu_76[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00D200F0"
    )
        port map (
      I0 => \i_fu_76_reg[10]_0\(7),
      I1 => \i_fu_76_reg[9]_0\,
      I2 => \i_fu_76_reg[10]_0\(8),
      I3 => ap_loop_init_int,
      I4 => \i_fu_76_reg[10]_0\(1),
      O => \i_fu_76_reg[9]\(8)
    );
\i_fu_76[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF200000FF000000"
    )
        port map (
      I0 => \i_fu_76_reg[10]_0\(8),
      I1 => \i_fu_76_reg[9]_0\,
      I2 => \i_fu_76_reg[10]_0\(7),
      I3 => \i_fu_76_reg[10]_0\(9),
      I4 => \i_fu_76[10]_i_5_n_0\,
      I5 => \i_fu_76_reg[10]_0\(1),
      O => \i_fu_76_reg[9]\(9)
    );
\noise_estimated[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFCC80"
    )
        port map (
      I0 => \noise_estimated_reg[0]\,
      I1 => \^ap_cs_fsm_reg[50]\,
      I2 => noise_estimated_flag_0_i_reg_197,
      I3 => ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p61,
      I4 => noise_estimated,
      O => \noise_estimated_new_0_i_reg_211_reg[0]\
    );
\noise_estimated_flag_0_i_reg_197[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^ap_loop_exit_ready_pp0_iter2_reg_reg\,
      I1 => frame_counter_flag_1_i_reg_155,
      O => \frame_counter_flag_1_i_reg_155_reg[0]\
    );
\noise_estimated_new_0_i_reg_211[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AE00000000000000"
    )
        port map (
      I0 => ap_loop_exit_ready_pp0_iter2_reg,
      I1 => ap_done_cache,
      I2 => grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg,
      I3 => Q(3),
      I4 => icmp_ln326_reg_421,
      I5 => \frame_counter_reg[0]\,
      O => \^ap_loop_exit_ready_pp0_iter2_reg_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_regslice_both is
  port (
    ap_loop_exit_ready_pp0_iter1_reg_reg : out STD_LOGIC;
    empty_n_reg : out STD_LOGIC;
    internal_to_axi_U0_ap_ready : out STD_LOGIC;
    ap_rst_n_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    clean_out_TVALID : out STD_LOGIC;
    auto_restart_status_reg : out STD_LOGIC;
    empty_n_reg_0 : out STD_LOGIC;
    clean_out_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    \i1_fu_54_reg[0]\ : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_loop_init : in STD_LOGIC;
    axi_val_last_fu_95_p2 : in STD_LOGIC;
    clean_out_TREADY : in STD_LOGIC;
    \i1_fu_54_reg[0]_0\ : in STD_LOGIC;
    stream6_empty_n : in STD_LOGIC;
    internal_to_axi_U0_ap_start : in STD_LOGIC;
    int_task_ap_done_reg : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_regslice_both;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_regslice_both is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ack_in_t_i_1__1_n_0\ : STD_LOGIC;
  signal clean_out_TREADY_int_regslice : STD_LOGIC;
  signal \^clean_out_tvalid\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[10]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[11]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[12]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[13]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[14]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[15]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[16]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[17]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[18]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[19]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[20]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[21]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[22]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[23]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[24]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[25]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[26]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[27]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[28]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[29]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[30]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[31]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[32]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[33]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[34]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[35]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[36]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[37]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[38]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[39]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[40]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[41]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[42]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[43]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[44]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[45]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[46]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[47]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[48]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[49]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[50]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[51]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[52]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[53]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[54]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[55]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[56]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[57]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[58]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[59]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[60]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[61]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[62]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[63]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[9]\ : STD_LOGIC;
  signal \^empty_n_reg\ : STD_LOGIC;
  signal \^internal_to_axi_u0_ap_ready\ : STD_LOGIC;
  signal load_p1 : STD_LOGIC;
  signal load_p2 : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal regslice_both_clean_out_V_data_V_U_apdone_blk : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair87";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \ap_loop_exit_ready_pp0_iter1_reg_i_1__1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of ap_loop_init_i_1 : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \data_p1[0]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \i1_fu_54[8]_i_3\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of int_task_ap_done_i_2 : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_3\ : label is "soft_lutpair90";
begin
  E(0) <= \^e\(0);
  clean_out_TVALID <= \^clean_out_tvalid\;
  empty_n_reg <= \^empty_n_reg\;
  internal_to_axi_U0_ap_ready <= \^internal_to_axi_u0_ap_ready\;
\FSM_sequential_state[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF5D"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => \^e\(0),
      I3 => clean_out_TREADY,
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDFFC000"
    )
        port map (
      I0 => clean_out_TREADY,
      I1 => \^e\(0),
      I2 => clean_out_TREADY_int_regslice,
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(0),
      Q => \state__0\(0),
      S => ap_rst_n_inv
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => ap_rst_n_inv
    );
\ack_in_t_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AFFEEAA"
    )
        port map (
      I0 => clean_out_TREADY_int_regslice,
      I1 => clean_out_TREADY,
      I2 => \^e\(0),
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \ack_in_t_i_1__1_n_0\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__1_n_0\,
      Q => clean_out_TREADY_int_regslice,
      R => ap_rst_n_inv
    );
\ap_enable_reg_pp0_iter1_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => internal_to_axi_U0_ap_start,
      I1 => \^empty_n_reg\,
      I2 => \i1_fu_54_reg[0]_0\,
      O => empty_n_reg_0
    );
\ap_loop_exit_ready_pp0_iter1_reg_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8C80"
    )
        port map (
      I0 => \i1_fu_54_reg[0]\,
      I1 => ap_rst_n,
      I2 => \^empty_n_reg\,
      I3 => \^internal_to_axi_u0_ap_ready\,
      O => ap_loop_exit_ready_pp0_iter1_reg_reg
    );
ap_loop_init_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF5D"
    )
        port map (
      I0 => ap_rst_n,
      I1 => ap_loop_init,
      I2 => \^e\(0),
      I3 => \^internal_to_axi_u0_ap_ready\,
      O => ap_rst_n_0
    );
\data_p1[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[0]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(0),
      O => p_0_in(0)
    );
\data_p1[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[10]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(10),
      O => p_0_in(10)
    );
\data_p1[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[11]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(11),
      O => p_0_in(11)
    );
\data_p1[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[12]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(12),
      O => p_0_in(12)
    );
\data_p1[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[13]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(13),
      O => p_0_in(13)
    );
\data_p1[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[14]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(14),
      O => p_0_in(14)
    );
\data_p1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[15]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(15),
      O => p_0_in(15)
    );
\data_p1[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[16]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(16),
      O => p_0_in(16)
    );
\data_p1[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[17]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(17),
      O => p_0_in(17)
    );
\data_p1[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[18]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(18),
      O => p_0_in(18)
    );
\data_p1[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[19]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(19),
      O => p_0_in(19)
    );
\data_p1[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[1]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(1),
      O => p_0_in(1)
    );
\data_p1[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[20]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(20),
      O => p_0_in(20)
    );
\data_p1[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[21]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(21),
      O => p_0_in(21)
    );
\data_p1[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[22]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(22),
      O => p_0_in(22)
    );
\data_p1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[23]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(23),
      O => p_0_in(23)
    );
\data_p1[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[24]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(24),
      O => p_0_in(24)
    );
\data_p1[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[25]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(25),
      O => p_0_in(25)
    );
\data_p1[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[26]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(26),
      O => p_0_in(26)
    );
\data_p1[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[27]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(27),
      O => p_0_in(27)
    );
\data_p1[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[28]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(28),
      O => p_0_in(28)
    );
\data_p1[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[29]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(29),
      O => p_0_in(29)
    );
\data_p1[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[2]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(2),
      O => p_0_in(2)
    );
\data_p1[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[30]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(30),
      O => p_0_in(30)
    );
\data_p1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[31]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(31),
      O => p_0_in(31)
    );
\data_p1[32]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[32]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(32),
      O => p_0_in(32)
    );
\data_p1[33]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[33]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(33),
      O => p_0_in(33)
    );
\data_p1[34]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[34]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(34),
      O => p_0_in(34)
    );
\data_p1[35]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[35]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(35),
      O => p_0_in(35)
    );
\data_p1[36]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[36]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(36),
      O => p_0_in(36)
    );
\data_p1[37]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[37]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(37),
      O => p_0_in(37)
    );
\data_p1[38]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[38]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(38),
      O => p_0_in(38)
    );
\data_p1[39]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[39]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(39),
      O => p_0_in(39)
    );
\data_p1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[3]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(3),
      O => p_0_in(3)
    );
\data_p1[40]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[40]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(40),
      O => p_0_in(40)
    );
\data_p1[41]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[41]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(41),
      O => p_0_in(41)
    );
\data_p1[42]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[42]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(42),
      O => p_0_in(42)
    );
\data_p1[43]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[43]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(43),
      O => p_0_in(43)
    );
\data_p1[44]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[44]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(44),
      O => p_0_in(44)
    );
\data_p1[45]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[45]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(45),
      O => p_0_in(45)
    );
\data_p1[46]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[46]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(46),
      O => p_0_in(46)
    );
\data_p1[47]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[47]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(47),
      O => p_0_in(47)
    );
\data_p1[48]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[48]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(48),
      O => p_0_in(48)
    );
\data_p1[49]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[49]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(49),
      O => p_0_in(49)
    );
\data_p1[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[4]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(4),
      O => p_0_in(4)
    );
\data_p1[50]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[50]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(50),
      O => p_0_in(50)
    );
\data_p1[51]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[51]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(51),
      O => p_0_in(51)
    );
\data_p1[52]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[52]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(52),
      O => p_0_in(52)
    );
\data_p1[53]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[53]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(53),
      O => p_0_in(53)
    );
\data_p1[54]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[54]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(54),
      O => p_0_in(54)
    );
\data_p1[55]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[55]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(55),
      O => p_0_in(55)
    );
\data_p1[56]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[56]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(56),
      O => p_0_in(56)
    );
\data_p1[57]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[57]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(57),
      O => p_0_in(57)
    );
\data_p1[58]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[58]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(58),
      O => p_0_in(58)
    );
\data_p1[59]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[59]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(59),
      O => p_0_in(59)
    );
\data_p1[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[5]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(5),
      O => p_0_in(5)
    );
\data_p1[60]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[60]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(60),
      O => p_0_in(60)
    );
\data_p1[61]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[61]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(61),
      O => p_0_in(61)
    );
\data_p1[62]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[62]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(62),
      O => p_0_in(62)
    );
\data_p1[63]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AC0"
    )
        port map (
      I0 => clean_out_TREADY,
      I1 => \^e\(0),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => load_p1
    );
\data_p1[63]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[63]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(63),
      O => p_0_in(63)
    );
\data_p1[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[6]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(6),
      O => p_0_in(6)
    );
\data_p1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[7]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(7),
      O => p_0_in(7)
    );
\data_p1[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[8]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(8),
      O => p_0_in(8)
    );
\data_p1[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[9]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(9),
      O => p_0_in(9)
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(0),
      Q => clean_out_TDATA(0),
      R => '0'
    );
\data_p1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(10),
      Q => clean_out_TDATA(10),
      R => '0'
    );
\data_p1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(11),
      Q => clean_out_TDATA(11),
      R => '0'
    );
\data_p1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(12),
      Q => clean_out_TDATA(12),
      R => '0'
    );
\data_p1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(13),
      Q => clean_out_TDATA(13),
      R => '0'
    );
\data_p1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(14),
      Q => clean_out_TDATA(14),
      R => '0'
    );
\data_p1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(15),
      Q => clean_out_TDATA(15),
      R => '0'
    );
\data_p1_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(16),
      Q => clean_out_TDATA(16),
      R => '0'
    );
\data_p1_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(17),
      Q => clean_out_TDATA(17),
      R => '0'
    );
\data_p1_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(18),
      Q => clean_out_TDATA(18),
      R => '0'
    );
\data_p1_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(19),
      Q => clean_out_TDATA(19),
      R => '0'
    );
\data_p1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(1),
      Q => clean_out_TDATA(1),
      R => '0'
    );
\data_p1_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(20),
      Q => clean_out_TDATA(20),
      R => '0'
    );
\data_p1_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(21),
      Q => clean_out_TDATA(21),
      R => '0'
    );
\data_p1_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(22),
      Q => clean_out_TDATA(22),
      R => '0'
    );
\data_p1_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(23),
      Q => clean_out_TDATA(23),
      R => '0'
    );
\data_p1_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(24),
      Q => clean_out_TDATA(24),
      R => '0'
    );
\data_p1_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(25),
      Q => clean_out_TDATA(25),
      R => '0'
    );
\data_p1_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(26),
      Q => clean_out_TDATA(26),
      R => '0'
    );
\data_p1_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(27),
      Q => clean_out_TDATA(27),
      R => '0'
    );
\data_p1_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(28),
      Q => clean_out_TDATA(28),
      R => '0'
    );
\data_p1_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(29),
      Q => clean_out_TDATA(29),
      R => '0'
    );
\data_p1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(2),
      Q => clean_out_TDATA(2),
      R => '0'
    );
\data_p1_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(30),
      Q => clean_out_TDATA(30),
      R => '0'
    );
\data_p1_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(31),
      Q => clean_out_TDATA(31),
      R => '0'
    );
\data_p1_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(32),
      Q => clean_out_TDATA(32),
      R => '0'
    );
\data_p1_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(33),
      Q => clean_out_TDATA(33),
      R => '0'
    );
\data_p1_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(34),
      Q => clean_out_TDATA(34),
      R => '0'
    );
\data_p1_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(35),
      Q => clean_out_TDATA(35),
      R => '0'
    );
\data_p1_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(36),
      Q => clean_out_TDATA(36),
      R => '0'
    );
\data_p1_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(37),
      Q => clean_out_TDATA(37),
      R => '0'
    );
\data_p1_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(38),
      Q => clean_out_TDATA(38),
      R => '0'
    );
\data_p1_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(39),
      Q => clean_out_TDATA(39),
      R => '0'
    );
\data_p1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(3),
      Q => clean_out_TDATA(3),
      R => '0'
    );
\data_p1_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(40),
      Q => clean_out_TDATA(40),
      R => '0'
    );
\data_p1_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(41),
      Q => clean_out_TDATA(41),
      R => '0'
    );
\data_p1_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(42),
      Q => clean_out_TDATA(42),
      R => '0'
    );
\data_p1_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(43),
      Q => clean_out_TDATA(43),
      R => '0'
    );
\data_p1_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(44),
      Q => clean_out_TDATA(44),
      R => '0'
    );
\data_p1_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(45),
      Q => clean_out_TDATA(45),
      R => '0'
    );
\data_p1_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(46),
      Q => clean_out_TDATA(46),
      R => '0'
    );
\data_p1_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(47),
      Q => clean_out_TDATA(47),
      R => '0'
    );
\data_p1_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(48),
      Q => clean_out_TDATA(48),
      R => '0'
    );
\data_p1_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(49),
      Q => clean_out_TDATA(49),
      R => '0'
    );
\data_p1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(4),
      Q => clean_out_TDATA(4),
      R => '0'
    );
\data_p1_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(50),
      Q => clean_out_TDATA(50),
      R => '0'
    );
\data_p1_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(51),
      Q => clean_out_TDATA(51),
      R => '0'
    );
\data_p1_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(52),
      Q => clean_out_TDATA(52),
      R => '0'
    );
\data_p1_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(53),
      Q => clean_out_TDATA(53),
      R => '0'
    );
\data_p1_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(54),
      Q => clean_out_TDATA(54),
      R => '0'
    );
\data_p1_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(55),
      Q => clean_out_TDATA(55),
      R => '0'
    );
\data_p1_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(56),
      Q => clean_out_TDATA(56),
      R => '0'
    );
\data_p1_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(57),
      Q => clean_out_TDATA(57),
      R => '0'
    );
\data_p1_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(58),
      Q => clean_out_TDATA(58),
      R => '0'
    );
\data_p1_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(59),
      Q => clean_out_TDATA(59),
      R => '0'
    );
\data_p1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(5),
      Q => clean_out_TDATA(5),
      R => '0'
    );
\data_p1_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(60),
      Q => clean_out_TDATA(60),
      R => '0'
    );
\data_p1_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(61),
      Q => clean_out_TDATA(61),
      R => '0'
    );
\data_p1_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(62),
      Q => clean_out_TDATA(62),
      R => '0'
    );
\data_p1_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(63),
      Q => clean_out_TDATA(63),
      R => '0'
    );
\data_p1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(6),
      Q => clean_out_TDATA(6),
      R => '0'
    );
\data_p1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(7),
      Q => clean_out_TDATA(7),
      R => '0'
    );
\data_p1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(8),
      Q => clean_out_TDATA(8),
      R => '0'
    );
\data_p1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(9),
      Q => clean_out_TDATA(9),
      R => '0'
    );
\data_p2[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^e\(0),
      I1 => clean_out_TREADY_int_regslice,
      O => load_p2
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(0),
      Q => \data_p2_reg_n_0_[0]\,
      R => '0'
    );
\data_p2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(10),
      Q => \data_p2_reg_n_0_[10]\,
      R => '0'
    );
\data_p2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(11),
      Q => \data_p2_reg_n_0_[11]\,
      R => '0'
    );
\data_p2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(12),
      Q => \data_p2_reg_n_0_[12]\,
      R => '0'
    );
\data_p2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(13),
      Q => \data_p2_reg_n_0_[13]\,
      R => '0'
    );
\data_p2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(14),
      Q => \data_p2_reg_n_0_[14]\,
      R => '0'
    );
\data_p2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(15),
      Q => \data_p2_reg_n_0_[15]\,
      R => '0'
    );
\data_p2_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(16),
      Q => \data_p2_reg_n_0_[16]\,
      R => '0'
    );
\data_p2_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(17),
      Q => \data_p2_reg_n_0_[17]\,
      R => '0'
    );
\data_p2_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(18),
      Q => \data_p2_reg_n_0_[18]\,
      R => '0'
    );
\data_p2_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(19),
      Q => \data_p2_reg_n_0_[19]\,
      R => '0'
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(1),
      Q => \data_p2_reg_n_0_[1]\,
      R => '0'
    );
\data_p2_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(20),
      Q => \data_p2_reg_n_0_[20]\,
      R => '0'
    );
\data_p2_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(21),
      Q => \data_p2_reg_n_0_[21]\,
      R => '0'
    );
\data_p2_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(22),
      Q => \data_p2_reg_n_0_[22]\,
      R => '0'
    );
\data_p2_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(23),
      Q => \data_p2_reg_n_0_[23]\,
      R => '0'
    );
\data_p2_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(24),
      Q => \data_p2_reg_n_0_[24]\,
      R => '0'
    );
\data_p2_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(25),
      Q => \data_p2_reg_n_0_[25]\,
      R => '0'
    );
\data_p2_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(26),
      Q => \data_p2_reg_n_0_[26]\,
      R => '0'
    );
\data_p2_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(27),
      Q => \data_p2_reg_n_0_[27]\,
      R => '0'
    );
\data_p2_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(28),
      Q => \data_p2_reg_n_0_[28]\,
      R => '0'
    );
\data_p2_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(29),
      Q => \data_p2_reg_n_0_[29]\,
      R => '0'
    );
\data_p2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(2),
      Q => \data_p2_reg_n_0_[2]\,
      R => '0'
    );
\data_p2_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(30),
      Q => \data_p2_reg_n_0_[30]\,
      R => '0'
    );
\data_p2_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(31),
      Q => \data_p2_reg_n_0_[31]\,
      R => '0'
    );
\data_p2_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(32),
      Q => \data_p2_reg_n_0_[32]\,
      R => '0'
    );
\data_p2_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(33),
      Q => \data_p2_reg_n_0_[33]\,
      R => '0'
    );
\data_p2_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(34),
      Q => \data_p2_reg_n_0_[34]\,
      R => '0'
    );
\data_p2_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(35),
      Q => \data_p2_reg_n_0_[35]\,
      R => '0'
    );
\data_p2_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(36),
      Q => \data_p2_reg_n_0_[36]\,
      R => '0'
    );
\data_p2_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(37),
      Q => \data_p2_reg_n_0_[37]\,
      R => '0'
    );
\data_p2_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(38),
      Q => \data_p2_reg_n_0_[38]\,
      R => '0'
    );
\data_p2_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(39),
      Q => \data_p2_reg_n_0_[39]\,
      R => '0'
    );
\data_p2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(3),
      Q => \data_p2_reg_n_0_[3]\,
      R => '0'
    );
\data_p2_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(40),
      Q => \data_p2_reg_n_0_[40]\,
      R => '0'
    );
\data_p2_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(41),
      Q => \data_p2_reg_n_0_[41]\,
      R => '0'
    );
\data_p2_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(42),
      Q => \data_p2_reg_n_0_[42]\,
      R => '0'
    );
\data_p2_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(43),
      Q => \data_p2_reg_n_0_[43]\,
      R => '0'
    );
\data_p2_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(44),
      Q => \data_p2_reg_n_0_[44]\,
      R => '0'
    );
\data_p2_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(45),
      Q => \data_p2_reg_n_0_[45]\,
      R => '0'
    );
\data_p2_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(46),
      Q => \data_p2_reg_n_0_[46]\,
      R => '0'
    );
\data_p2_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(47),
      Q => \data_p2_reg_n_0_[47]\,
      R => '0'
    );
\data_p2_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(48),
      Q => \data_p2_reg_n_0_[48]\,
      R => '0'
    );
\data_p2_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(49),
      Q => \data_p2_reg_n_0_[49]\,
      R => '0'
    );
\data_p2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(4),
      Q => \data_p2_reg_n_0_[4]\,
      R => '0'
    );
\data_p2_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(50),
      Q => \data_p2_reg_n_0_[50]\,
      R => '0'
    );
\data_p2_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(51),
      Q => \data_p2_reg_n_0_[51]\,
      R => '0'
    );
\data_p2_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(52),
      Q => \data_p2_reg_n_0_[52]\,
      R => '0'
    );
\data_p2_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(53),
      Q => \data_p2_reg_n_0_[53]\,
      R => '0'
    );
\data_p2_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(54),
      Q => \data_p2_reg_n_0_[54]\,
      R => '0'
    );
\data_p2_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(55),
      Q => \data_p2_reg_n_0_[55]\,
      R => '0'
    );
\data_p2_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(56),
      Q => \data_p2_reg_n_0_[56]\,
      R => '0'
    );
\data_p2_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(57),
      Q => \data_p2_reg_n_0_[57]\,
      R => '0'
    );
\data_p2_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(58),
      Q => \data_p2_reg_n_0_[58]\,
      R => '0'
    );
\data_p2_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(59),
      Q => \data_p2_reg_n_0_[59]\,
      R => '0'
    );
\data_p2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(5),
      Q => \data_p2_reg_n_0_[5]\,
      R => '0'
    );
\data_p2_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(60),
      Q => \data_p2_reg_n_0_[60]\,
      R => '0'
    );
\data_p2_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(61),
      Q => \data_p2_reg_n_0_[61]\,
      R => '0'
    );
\data_p2_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(62),
      Q => \data_p2_reg_n_0_[62]\,
      R => '0'
    );
\data_p2_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(63),
      Q => \data_p2_reg_n_0_[63]\,
      R => '0'
    );
\data_p2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(6),
      Q => \data_p2_reg_n_0_[6]\,
      R => '0'
    );
\data_p2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(7),
      Q => \data_p2_reg_n_0_[7]\,
      R => '0'
    );
\data_p2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(8),
      Q => \data_p2_reg_n_0_[8]\,
      R => '0'
    );
\data_p2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(9),
      Q => \data_p2_reg_n_0_[9]\,
      R => '0'
    );
\i1_fu_54[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3700000000000000"
    )
        port map (
      I0 => \i1_fu_54_reg[0]_0\,
      I1 => regslice_both_clean_out_V_data_V_U_apdone_blk,
      I2 => \i1_fu_54_reg[0]\,
      I3 => clean_out_TREADY_int_regslice,
      I4 => stream6_empty_n,
      I5 => internal_to_axi_U0_ap_start,
      O => \^e\(0)
    );
\i1_fu_54[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => clean_out_TREADY,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      O => regslice_both_clean_out_V_data_V_U_apdone_blk
    );
\int_isr[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2F2FFF2A2A2A"
    )
        port map (
      I0 => internal_to_axi_U0_ap_start,
      I1 => stream6_empty_n,
      I2 => clean_out_TREADY_int_regslice,
      I3 => \i1_fu_54_reg[0]\,
      I4 => regslice_both_clean_out_V_data_V_U_apdone_blk,
      I5 => \i1_fu_54_reg[0]_0\,
      O => \^empty_n_reg\
    );
int_task_ap_done_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => int_task_ap_done_reg,
      I1 => \i1_fu_54_reg[0]\,
      I2 => \^empty_n_reg\,
      O => auto_restart_status_reg
    );
\mOutPtr[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^e\(0),
      I1 => axi_val_last_fu_95_p2,
      O => \^internal_to_axi_u0_ap_ready\
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF5F8800"
    )
        port map (
      I0 => state(1),
      I1 => clean_out_TREADY_int_regslice,
      I2 => clean_out_TREADY,
      I3 => \^e\(0),
      I4 => \^clean_out_tvalid\,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF5D"
    )
        port map (
      I0 => \^clean_out_tvalid\,
      I1 => state(1),
      I2 => \^e\(0),
      I3 => clean_out_TREADY,
      O => \state[1]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \^clean_out_tvalid\,
      R => ap_rst_n_inv
    );
\state_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => state(1),
      S => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_regslice_both_8 is
  port (
    ack_in_t_reg_0 : out STD_LOGIC;
    mOutPtr111_out : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    full_n_reg : out STD_LOGIC;
    axi_to_internal_U0_stream1_din : out STD_LOGIC_VECTOR ( 63 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    pop : in STD_LOGIC;
    ap_sync_reg_axi_to_internal_U0_ap_ready : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    \i1_fu_54_reg[8]\ : in STD_LOGIC;
    start_for_compute_magnitude_square_U0_full_n : in STD_LOGIC;
    stream1_full_n : in STD_LOGIC;
    fft_in_TVALID : in STD_LOGIC;
    fft_in_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_regslice_both_8 : entity is "denoise_top_regslice_both";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_regslice_both_8;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_regslice_both_8 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ack_in_t_i_1_n_0 : STD_LOGIC;
  signal \^ack_in_t_reg_0\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[10]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[11]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[12]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[13]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[14]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[15]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[16]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[17]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[18]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[19]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[20]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[21]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[22]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[23]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[24]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[25]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[26]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[27]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[28]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[29]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[30]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[31]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[32]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[33]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[34]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[35]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[36]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[37]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[38]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[39]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[40]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[41]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[42]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[43]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[44]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[45]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[46]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[47]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[48]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[49]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[50]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[51]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[52]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[53]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[54]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[55]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[56]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[57]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[58]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[59]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[60]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[61]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[62]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[63]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[9]\ : STD_LOGIC;
  signal fft_in_TVALID_int_regslice : STD_LOGIC;
  signal \^full_n_reg\ : STD_LOGIC;
  signal load_p1 : STD_LOGIC;
  signal load_p2 : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__3\ : label is "soft_lutpair38";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of ack_in_t_i_1 : label is "soft_lutpair38";
begin
  E(0) <= \^e\(0);
  ack_in_t_reg_0 <= \^ack_in_t_reg_0\;
  full_n_reg <= \^full_n_reg\;
\FSM_sequential_state[0]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5FDF"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => \^full_n_reg\,
      I3 => fft_in_TVALID,
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF58080"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \^ack_in_t_reg_0\,
      I2 => fft_in_TVALID,
      I3 => \^full_n_reg\,
      I4 => \state__0\(1),
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(0),
      Q => \state__0\(0),
      S => SR(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => SR(0)
    );
ack_in_t_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFFAFAA"
    )
        port map (
      I0 => \^ack_in_t_reg_0\,
      I1 => fft_in_TVALID,
      I2 => \^full_n_reg\,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => ack_in_t_i_1_n_0
    );
ack_in_t_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF777FFFFF"
    )
        port map (
      I0 => stream1_full_n,
      I1 => fft_in_TVALID_int_regslice,
      I2 => start_for_compute_magnitude_square_U0_full_n,
      I3 => \i1_fu_54_reg[8]\,
      I4 => ap_start,
      I5 => ap_sync_reg_axi_to_internal_U0_ap_ready,
      O => \^full_n_reg\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ack_in_t_i_1_n_0,
      Q => \^ack_in_t_reg_0\,
      R => SR(0)
    );
\data_p1[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[0]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(0),
      O => p_0_in(0)
    );
\data_p1[10]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[10]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(10),
      O => p_0_in(10)
    );
\data_p1[11]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[11]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(11),
      O => p_0_in(11)
    );
\data_p1[12]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[12]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(12),
      O => p_0_in(12)
    );
\data_p1[13]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[13]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(13),
      O => p_0_in(13)
    );
\data_p1[14]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[14]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(14),
      O => p_0_in(14)
    );
\data_p1[15]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[15]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(15),
      O => p_0_in(15)
    );
\data_p1[16]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[16]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(16),
      O => p_0_in(16)
    );
\data_p1[17]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[17]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(17),
      O => p_0_in(17)
    );
\data_p1[18]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[18]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(18),
      O => p_0_in(18)
    );
\data_p1[19]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[19]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(19),
      O => p_0_in(19)
    );
\data_p1[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[1]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(1),
      O => p_0_in(1)
    );
\data_p1[20]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[20]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(20),
      O => p_0_in(20)
    );
\data_p1[21]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[21]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(21),
      O => p_0_in(21)
    );
\data_p1[22]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[22]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(22),
      O => p_0_in(22)
    );
\data_p1[23]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[23]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(23),
      O => p_0_in(23)
    );
\data_p1[24]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[24]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(24),
      O => p_0_in(24)
    );
\data_p1[25]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[25]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(25),
      O => p_0_in(25)
    );
\data_p1[26]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[26]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(26),
      O => p_0_in(26)
    );
\data_p1[27]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[27]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(27),
      O => p_0_in(27)
    );
\data_p1[28]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[28]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(28),
      O => p_0_in(28)
    );
\data_p1[29]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[29]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(29),
      O => p_0_in(29)
    );
\data_p1[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[2]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(2),
      O => p_0_in(2)
    );
\data_p1[30]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[30]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(30),
      O => p_0_in(30)
    );
\data_p1[31]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[31]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(31),
      O => p_0_in(31)
    );
\data_p1[32]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[32]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(32),
      O => p_0_in(32)
    );
\data_p1[33]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[33]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(33),
      O => p_0_in(33)
    );
\data_p1[34]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[34]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(34),
      O => p_0_in(34)
    );
\data_p1[35]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[35]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(35),
      O => p_0_in(35)
    );
\data_p1[36]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[36]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(36),
      O => p_0_in(36)
    );
\data_p1[37]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[37]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(37),
      O => p_0_in(37)
    );
\data_p1[38]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[38]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(38),
      O => p_0_in(38)
    );
\data_p1[39]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[39]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(39),
      O => p_0_in(39)
    );
\data_p1[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[3]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(3),
      O => p_0_in(3)
    );
\data_p1[40]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[40]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(40),
      O => p_0_in(40)
    );
\data_p1[41]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[41]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(41),
      O => p_0_in(41)
    );
\data_p1[42]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[42]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(42),
      O => p_0_in(42)
    );
\data_p1[43]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[43]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(43),
      O => p_0_in(43)
    );
\data_p1[44]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[44]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(44),
      O => p_0_in(44)
    );
\data_p1[45]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[45]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(45),
      O => p_0_in(45)
    );
\data_p1[46]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[46]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(46),
      O => p_0_in(46)
    );
\data_p1[47]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[47]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(47),
      O => p_0_in(47)
    );
\data_p1[48]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[48]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(48),
      O => p_0_in(48)
    );
\data_p1[49]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[49]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(49),
      O => p_0_in(49)
    );
\data_p1[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[4]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(4),
      O => p_0_in(4)
    );
\data_p1[50]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[50]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(50),
      O => p_0_in(50)
    );
\data_p1[51]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[51]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(51),
      O => p_0_in(51)
    );
\data_p1[52]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[52]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(52),
      O => p_0_in(52)
    );
\data_p1[53]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[53]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(53),
      O => p_0_in(53)
    );
\data_p1[54]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[54]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(54),
      O => p_0_in(54)
    );
\data_p1[55]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[55]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(55),
      O => p_0_in(55)
    );
\data_p1[56]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[56]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(56),
      O => p_0_in(56)
    );
\data_p1[57]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[57]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(57),
      O => p_0_in(57)
    );
\data_p1[58]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[58]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(58),
      O => p_0_in(58)
    );
\data_p1[59]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[59]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(59),
      O => p_0_in(59)
    );
\data_p1[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[5]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(5),
      O => p_0_in(5)
    );
\data_p1[60]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[60]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(60),
      O => p_0_in(60)
    );
\data_p1[61]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[61]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(61),
      O => p_0_in(61)
    );
\data_p1[62]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[62]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(62),
      O => p_0_in(62)
    );
\data_p1[63]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7404"
    )
        port map (
      I0 => \^full_n_reg\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TVALID,
      O => load_p1
    );
\data_p1[63]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[63]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(63),
      O => p_0_in(63)
    );
\data_p1[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[6]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(6),
      O => p_0_in(6)
    );
\data_p1[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[7]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(7),
      O => p_0_in(7)
    );
\data_p1[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[8]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(8),
      O => p_0_in(8)
    );
\data_p1[9]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[9]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TDATA(9),
      O => p_0_in(9)
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(0),
      Q => axi_to_internal_U0_stream1_din(0),
      R => '0'
    );
\data_p1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(10),
      Q => axi_to_internal_U0_stream1_din(10),
      R => '0'
    );
\data_p1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(11),
      Q => axi_to_internal_U0_stream1_din(11),
      R => '0'
    );
\data_p1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(12),
      Q => axi_to_internal_U0_stream1_din(12),
      R => '0'
    );
\data_p1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(13),
      Q => axi_to_internal_U0_stream1_din(13),
      R => '0'
    );
\data_p1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(14),
      Q => axi_to_internal_U0_stream1_din(14),
      R => '0'
    );
\data_p1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(15),
      Q => axi_to_internal_U0_stream1_din(15),
      R => '0'
    );
\data_p1_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(16),
      Q => axi_to_internal_U0_stream1_din(16),
      R => '0'
    );
\data_p1_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(17),
      Q => axi_to_internal_U0_stream1_din(17),
      R => '0'
    );
\data_p1_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(18),
      Q => axi_to_internal_U0_stream1_din(18),
      R => '0'
    );
\data_p1_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(19),
      Q => axi_to_internal_U0_stream1_din(19),
      R => '0'
    );
\data_p1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(1),
      Q => axi_to_internal_U0_stream1_din(1),
      R => '0'
    );
\data_p1_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(20),
      Q => axi_to_internal_U0_stream1_din(20),
      R => '0'
    );
\data_p1_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(21),
      Q => axi_to_internal_U0_stream1_din(21),
      R => '0'
    );
\data_p1_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(22),
      Q => axi_to_internal_U0_stream1_din(22),
      R => '0'
    );
\data_p1_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(23),
      Q => axi_to_internal_U0_stream1_din(23),
      R => '0'
    );
\data_p1_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(24),
      Q => axi_to_internal_U0_stream1_din(24),
      R => '0'
    );
\data_p1_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(25),
      Q => axi_to_internal_U0_stream1_din(25),
      R => '0'
    );
\data_p1_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(26),
      Q => axi_to_internal_U0_stream1_din(26),
      R => '0'
    );
\data_p1_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(27),
      Q => axi_to_internal_U0_stream1_din(27),
      R => '0'
    );
\data_p1_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(28),
      Q => axi_to_internal_U0_stream1_din(28),
      R => '0'
    );
\data_p1_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(29),
      Q => axi_to_internal_U0_stream1_din(29),
      R => '0'
    );
\data_p1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(2),
      Q => axi_to_internal_U0_stream1_din(2),
      R => '0'
    );
\data_p1_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(30),
      Q => axi_to_internal_U0_stream1_din(30),
      R => '0'
    );
\data_p1_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(31),
      Q => axi_to_internal_U0_stream1_din(31),
      R => '0'
    );
\data_p1_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(32),
      Q => axi_to_internal_U0_stream1_din(32),
      R => '0'
    );
\data_p1_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(33),
      Q => axi_to_internal_U0_stream1_din(33),
      R => '0'
    );
\data_p1_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(34),
      Q => axi_to_internal_U0_stream1_din(34),
      R => '0'
    );
\data_p1_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(35),
      Q => axi_to_internal_U0_stream1_din(35),
      R => '0'
    );
\data_p1_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(36),
      Q => axi_to_internal_U0_stream1_din(36),
      R => '0'
    );
\data_p1_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(37),
      Q => axi_to_internal_U0_stream1_din(37),
      R => '0'
    );
\data_p1_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(38),
      Q => axi_to_internal_U0_stream1_din(38),
      R => '0'
    );
\data_p1_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(39),
      Q => axi_to_internal_U0_stream1_din(39),
      R => '0'
    );
\data_p1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(3),
      Q => axi_to_internal_U0_stream1_din(3),
      R => '0'
    );
\data_p1_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(40),
      Q => axi_to_internal_U0_stream1_din(40),
      R => '0'
    );
\data_p1_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(41),
      Q => axi_to_internal_U0_stream1_din(41),
      R => '0'
    );
\data_p1_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(42),
      Q => axi_to_internal_U0_stream1_din(42),
      R => '0'
    );
\data_p1_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(43),
      Q => axi_to_internal_U0_stream1_din(43),
      R => '0'
    );
\data_p1_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(44),
      Q => axi_to_internal_U0_stream1_din(44),
      R => '0'
    );
\data_p1_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(45),
      Q => axi_to_internal_U0_stream1_din(45),
      R => '0'
    );
\data_p1_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(46),
      Q => axi_to_internal_U0_stream1_din(46),
      R => '0'
    );
\data_p1_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(47),
      Q => axi_to_internal_U0_stream1_din(47),
      R => '0'
    );
\data_p1_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(48),
      Q => axi_to_internal_U0_stream1_din(48),
      R => '0'
    );
\data_p1_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(49),
      Q => axi_to_internal_U0_stream1_din(49),
      R => '0'
    );
\data_p1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(4),
      Q => axi_to_internal_U0_stream1_din(4),
      R => '0'
    );
\data_p1_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(50),
      Q => axi_to_internal_U0_stream1_din(50),
      R => '0'
    );
\data_p1_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(51),
      Q => axi_to_internal_U0_stream1_din(51),
      R => '0'
    );
\data_p1_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(52),
      Q => axi_to_internal_U0_stream1_din(52),
      R => '0'
    );
\data_p1_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(53),
      Q => axi_to_internal_U0_stream1_din(53),
      R => '0'
    );
\data_p1_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(54),
      Q => axi_to_internal_U0_stream1_din(54),
      R => '0'
    );
\data_p1_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(55),
      Q => axi_to_internal_U0_stream1_din(55),
      R => '0'
    );
\data_p1_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(56),
      Q => axi_to_internal_U0_stream1_din(56),
      R => '0'
    );
\data_p1_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(57),
      Q => axi_to_internal_U0_stream1_din(57),
      R => '0'
    );
\data_p1_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(58),
      Q => axi_to_internal_U0_stream1_din(58),
      R => '0'
    );
\data_p1_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(59),
      Q => axi_to_internal_U0_stream1_din(59),
      R => '0'
    );
\data_p1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(5),
      Q => axi_to_internal_U0_stream1_din(5),
      R => '0'
    );
\data_p1_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(60),
      Q => axi_to_internal_U0_stream1_din(60),
      R => '0'
    );
\data_p1_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(61),
      Q => axi_to_internal_U0_stream1_din(61),
      R => '0'
    );
\data_p1_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(62),
      Q => axi_to_internal_U0_stream1_din(62),
      R => '0'
    );
\data_p1_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(63),
      Q => axi_to_internal_U0_stream1_din(63),
      R => '0'
    );
\data_p1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(6),
      Q => axi_to_internal_U0_stream1_din(6),
      R => '0'
    );
\data_p1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(7),
      Q => axi_to_internal_U0_stream1_din(7),
      R => '0'
    );
\data_p1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(8),
      Q => axi_to_internal_U0_stream1_din(8),
      R => '0'
    );
\data_p1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(9),
      Q => axi_to_internal_U0_stream1_din(9),
      R => '0'
    );
\data_p2[63]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => fft_in_TVALID,
      I1 => \^ack_in_t_reg_0\,
      O => load_p2
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(0),
      Q => \data_p2_reg_n_0_[0]\,
      R => '0'
    );
\data_p2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(10),
      Q => \data_p2_reg_n_0_[10]\,
      R => '0'
    );
\data_p2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(11),
      Q => \data_p2_reg_n_0_[11]\,
      R => '0'
    );
\data_p2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(12),
      Q => \data_p2_reg_n_0_[12]\,
      R => '0'
    );
\data_p2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(13),
      Q => \data_p2_reg_n_0_[13]\,
      R => '0'
    );
\data_p2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(14),
      Q => \data_p2_reg_n_0_[14]\,
      R => '0'
    );
\data_p2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(15),
      Q => \data_p2_reg_n_0_[15]\,
      R => '0'
    );
\data_p2_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(16),
      Q => \data_p2_reg_n_0_[16]\,
      R => '0'
    );
\data_p2_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(17),
      Q => \data_p2_reg_n_0_[17]\,
      R => '0'
    );
\data_p2_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(18),
      Q => \data_p2_reg_n_0_[18]\,
      R => '0'
    );
\data_p2_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(19),
      Q => \data_p2_reg_n_0_[19]\,
      R => '0'
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(1),
      Q => \data_p2_reg_n_0_[1]\,
      R => '0'
    );
\data_p2_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(20),
      Q => \data_p2_reg_n_0_[20]\,
      R => '0'
    );
\data_p2_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(21),
      Q => \data_p2_reg_n_0_[21]\,
      R => '0'
    );
\data_p2_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(22),
      Q => \data_p2_reg_n_0_[22]\,
      R => '0'
    );
\data_p2_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(23),
      Q => \data_p2_reg_n_0_[23]\,
      R => '0'
    );
\data_p2_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(24),
      Q => \data_p2_reg_n_0_[24]\,
      R => '0'
    );
\data_p2_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(25),
      Q => \data_p2_reg_n_0_[25]\,
      R => '0'
    );
\data_p2_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(26),
      Q => \data_p2_reg_n_0_[26]\,
      R => '0'
    );
\data_p2_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(27),
      Q => \data_p2_reg_n_0_[27]\,
      R => '0'
    );
\data_p2_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(28),
      Q => \data_p2_reg_n_0_[28]\,
      R => '0'
    );
\data_p2_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(29),
      Q => \data_p2_reg_n_0_[29]\,
      R => '0'
    );
\data_p2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(2),
      Q => \data_p2_reg_n_0_[2]\,
      R => '0'
    );
\data_p2_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(30),
      Q => \data_p2_reg_n_0_[30]\,
      R => '0'
    );
\data_p2_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(31),
      Q => \data_p2_reg_n_0_[31]\,
      R => '0'
    );
\data_p2_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(32),
      Q => \data_p2_reg_n_0_[32]\,
      R => '0'
    );
\data_p2_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(33),
      Q => \data_p2_reg_n_0_[33]\,
      R => '0'
    );
\data_p2_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(34),
      Q => \data_p2_reg_n_0_[34]\,
      R => '0'
    );
\data_p2_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(35),
      Q => \data_p2_reg_n_0_[35]\,
      R => '0'
    );
\data_p2_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(36),
      Q => \data_p2_reg_n_0_[36]\,
      R => '0'
    );
\data_p2_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(37),
      Q => \data_p2_reg_n_0_[37]\,
      R => '0'
    );
\data_p2_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(38),
      Q => \data_p2_reg_n_0_[38]\,
      R => '0'
    );
\data_p2_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(39),
      Q => \data_p2_reg_n_0_[39]\,
      R => '0'
    );
\data_p2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(3),
      Q => \data_p2_reg_n_0_[3]\,
      R => '0'
    );
\data_p2_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(40),
      Q => \data_p2_reg_n_0_[40]\,
      R => '0'
    );
\data_p2_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(41),
      Q => \data_p2_reg_n_0_[41]\,
      R => '0'
    );
\data_p2_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(42),
      Q => \data_p2_reg_n_0_[42]\,
      R => '0'
    );
\data_p2_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(43),
      Q => \data_p2_reg_n_0_[43]\,
      R => '0'
    );
\data_p2_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(44),
      Q => \data_p2_reg_n_0_[44]\,
      R => '0'
    );
\data_p2_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(45),
      Q => \data_p2_reg_n_0_[45]\,
      R => '0'
    );
\data_p2_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(46),
      Q => \data_p2_reg_n_0_[46]\,
      R => '0'
    );
\data_p2_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(47),
      Q => \data_p2_reg_n_0_[47]\,
      R => '0'
    );
\data_p2_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(48),
      Q => \data_p2_reg_n_0_[48]\,
      R => '0'
    );
\data_p2_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(49),
      Q => \data_p2_reg_n_0_[49]\,
      R => '0'
    );
\data_p2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(4),
      Q => \data_p2_reg_n_0_[4]\,
      R => '0'
    );
\data_p2_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(50),
      Q => \data_p2_reg_n_0_[50]\,
      R => '0'
    );
\data_p2_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(51),
      Q => \data_p2_reg_n_0_[51]\,
      R => '0'
    );
\data_p2_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(52),
      Q => \data_p2_reg_n_0_[52]\,
      R => '0'
    );
\data_p2_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(53),
      Q => \data_p2_reg_n_0_[53]\,
      R => '0'
    );
\data_p2_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(54),
      Q => \data_p2_reg_n_0_[54]\,
      R => '0'
    );
\data_p2_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(55),
      Q => \data_p2_reg_n_0_[55]\,
      R => '0'
    );
\data_p2_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(56),
      Q => \data_p2_reg_n_0_[56]\,
      R => '0'
    );
\data_p2_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(57),
      Q => \data_p2_reg_n_0_[57]\,
      R => '0'
    );
\data_p2_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(58),
      Q => \data_p2_reg_n_0_[58]\,
      R => '0'
    );
\data_p2_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(59),
      Q => \data_p2_reg_n_0_[59]\,
      R => '0'
    );
\data_p2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(5),
      Q => \data_p2_reg_n_0_[5]\,
      R => '0'
    );
\data_p2_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(60),
      Q => \data_p2_reg_n_0_[60]\,
      R => '0'
    );
\data_p2_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(61),
      Q => \data_p2_reg_n_0_[61]\,
      R => '0'
    );
\data_p2_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(62),
      Q => \data_p2_reg_n_0_[62]\,
      R => '0'
    );
\data_p2_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(63),
      Q => \data_p2_reg_n_0_[63]\,
      R => '0'
    );
\data_p2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(6),
      Q => \data_p2_reg_n_0_[6]\,
      R => '0'
    );
\data_p2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(7),
      Q => \data_p2_reg_n_0_[7]\,
      R => '0'
    );
\data_p2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(8),
      Q => \data_p2_reg_n_0_[8]\,
      R => '0'
    );
\data_p2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => fft_in_TDATA(9),
      Q => \data_p2_reg_n_0_[9]\,
      R => '0'
    );
\i1_fu_54[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4440000000000000"
    )
        port map (
      I0 => ap_sync_reg_axi_to_internal_U0_ap_ready,
      I1 => ap_start,
      I2 => \i1_fu_54_reg[8]\,
      I3 => start_for_compute_magnitude_square_U0_full_n,
      I4 => fft_in_TVALID_int_regslice,
      I5 => stream1_full_n,
      O => \^e\(0)
    );
\mOutPtr[4]_i_3__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^e\(0),
      I1 => pop,
      O => mOutPtr111_out
    );
\state[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF58080"
    )
        port map (
      I0 => state(1),
      I1 => \^ack_in_t_reg_0\,
      I2 => fft_in_TVALID,
      I3 => \^full_n_reg\,
      I4 => fft_in_TVALID_int_regslice,
      O => \state[0]_i_1__0_n_0\
    );
\state[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5FDF"
    )
        port map (
      I0 => fft_in_TVALID_int_regslice,
      I1 => state(1),
      I2 => \^full_n_reg\,
      I3 => fft_in_TVALID,
      O => \state[1]_i_1__0_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \state[0]_i_1__0_n_0\,
      Q => fft_in_TVALID_int_regslice,
      R => SR(0)
    );
\state_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \state[1]_i_1__0_n_0\,
      Q => state(1),
      S => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_regslice_both__parameterized0\ is
  port (
    clean_out_TSTRB : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    clean_out_TREADY : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_regslice_both__parameterized0\ : entity is "denoise_top_regslice_both";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_regslice_both__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_regslice_both__parameterized0\ is
  signal \ack_in_t_i_1__2_n_0\ : STD_LOGIC;
  signal ack_in_t_reg_n_0 : STD_LOGIC;
  signal \^clean_out_tstrb\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \data_p1[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_p2[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[7]\ : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__1\ : label is "soft_lutpair91";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__2\ : label is "soft_lutpair91";
begin
  clean_out_TSTRB(0) <= \^clean_out_tstrb\(0);
\FSM_sequential_state[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF5D"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => E(0),
      I3 => clean_out_TREADY,
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF5F8800"
    )
        port map (
      I0 => \state__0\(0),
      I1 => ack_in_t_reg_n_0,
      I2 => clean_out_TREADY,
      I3 => E(0),
      I4 => \state__0\(1),
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(0),
      Q => \state__0\(0),
      S => ap_rst_n_inv
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => ap_rst_n_inv
    );
\ack_in_t_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AFFEEAA"
    )
        port map (
      I0 => ack_in_t_reg_n_0,
      I1 => clean_out_TREADY,
      I2 => E(0),
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \ack_in_t_i_1__2_n_0\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__2_n_0\,
      Q => ack_in_t_reg_n_0,
      R => ap_rst_n_inv
    );
\data_p1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBBFFFFC088F000"
    )
        port map (
      I0 => \data_p2_reg_n_0_[7]\,
      I1 => clean_out_TREADY,
      I2 => E(0),
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      I5 => \^clean_out_tstrb\(0),
      O => \data_p1[7]_i_1_n_0\
    );
\data_p1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p1[7]_i_1_n_0\,
      Q => \^clean_out_tstrb\(0),
      R => '0'
    );
\data_p2[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => ack_in_t_reg_n_0,
      I1 => E(0),
      I2 => \data_p2_reg_n_0_[7]\,
      O => \data_p2[7]_i_1_n_0\
    );
\data_p2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p2[7]_i_1_n_0\,
      Q => \data_p2_reg_n_0_[7]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_regslice_both__parameterized1\ is
  port (
    clean_out_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    clean_out_TREADY : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_val_last_fu_95_p2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_regslice_both__parameterized1\ : entity is "denoise_top_regslice_both";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_regslice_both__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_regslice_both__parameterized1\ is
  signal \ack_in_t_i_1__3_n_0\ : STD_LOGIC;
  signal ack_in_t_reg_n_0 : STD_LOGIC;
  signal \^clean_out_tlast\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \data_p1[0]_i_1__2_n_0\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC;
  signal \data_p2[0]_i_1__0_n_0\ : STD_LOGIC;
  signal load_p1 : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__0\ : label is "soft_lutpair92";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__3\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \data_p1[0]_i_3\ : label is "soft_lutpair93";
begin
  clean_out_TLAST(0) <= \^clean_out_tlast\(0);
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF5D"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => E(0),
      I3 => clean_out_TREADY,
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF5F8800"
    )
        port map (
      I0 => \state__0\(0),
      I1 => ack_in_t_reg_n_0,
      I2 => clean_out_TREADY,
      I3 => E(0),
      I4 => \state__0\(1),
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(0),
      Q => \state__0\(0),
      S => ap_rst_n_inv
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => ap_rst_n_inv
    );
\ack_in_t_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AFFEEAA"
    )
        port map (
      I0 => ack_in_t_reg_n_0,
      I1 => clean_out_TREADY,
      I2 => E(0),
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \ack_in_t_i_1__3_n_0\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__3_n_0\,
      Q => ack_in_t_reg_n_0,
      R => ap_rst_n_inv
    );
\data_p1[0]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => data_p2,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => axi_val_last_fu_95_p2,
      I4 => load_p1,
      I5 => \^clean_out_tlast\(0),
      O => \data_p1[0]_i_1__2_n_0\
    );
\data_p1[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AC0"
    )
        port map (
      I0 => clean_out_TREADY,
      I1 => E(0),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => load_p1
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p1[0]_i_1__2_n_0\,
      Q => \^clean_out_tlast\(0),
      R => '0'
    );
\data_p2[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => axi_val_last_fu_95_p2,
      I1 => E(0),
      I2 => ack_in_t_reg_n_0,
      I3 => data_p2,
      O => \data_p2[0]_i_1__0_n_0\
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p2[0]_i_1__0_n_0\,
      Q => data_p2,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_regslice_both__parameterized1_9\ is
  port (
    axi_to_internal_U0_stream1_din : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    fft_in_TVALID : in STD_LOGIC;
    \data_p1_reg[0]_0\ : in STD_LOGIC;
    fft_in_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_regslice_both__parameterized1_9\ : entity is "denoise_top_regslice_both";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_regslice_both__parameterized1_9\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_regslice_both__parameterized1_9\ is
  signal \ack_in_t_i_1__0_n_0\ : STD_LOGIC;
  signal ack_in_t_reg_n_0 : STD_LOGIC;
  signal \^axi_to_internal_u0_stream1_din\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \data_p1[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p1[0]_i_2_n_0\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC;
  signal \data_p2[0]_i_1_n_0\ : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__2\ : label is "soft_lutpair39";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__0\ : label is "soft_lutpair39";
begin
  axi_to_internal_U0_stream1_din(0) <= \^axi_to_internal_u0_stream1_din\(0);
\FSM_sequential_state[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5FDF"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => \data_p1_reg[0]_0\,
      I3 => fft_in_TVALID,
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF58080"
    )
        port map (
      I0 => \state__0\(0),
      I1 => ack_in_t_reg_n_0,
      I2 => fft_in_TVALID,
      I3 => \data_p1_reg[0]_0\,
      I4 => \state__0\(1),
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(0),
      Q => \state__0\(0),
      S => SR(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => SR(0)
    );
\ack_in_t_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFFAFAA"
    )
        port map (
      I0 => ack_in_t_reg_n_0,
      I1 => fft_in_TVALID,
      I2 => \data_p1_reg[0]_0\,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \ack_in_t_i_1__0_n_0\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__0_n_0\,
      Q => ack_in_t_reg_n_0,
      R => SR(0)
    );
\data_p1[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEFFFEF2A200020"
    )
        port map (
      I0 => \data_p1[0]_i_2_n_0\,
      I1 => \data_p1_reg[0]_0\,
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      I4 => fft_in_TVALID,
      I5 => \^axi_to_internal_u0_stream1_din\(0),
      O => \data_p1[0]_i_1__1_n_0\
    );
\data_p1[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => fft_in_TLAST(0),
      O => \data_p1[0]_i_2_n_0\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p1[0]_i_1__1_n_0\,
      Q => \^axi_to_internal_u0_stream1_din\(0),
      R => '0'
    );
\data_p2[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => fft_in_TLAST(0),
      I1 => fft_in_TVALID,
      I2 => ack_in_t_reg_n_0,
      I3 => data_p2,
      O => \data_p2[0]_i_1_n_0\
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p2[0]_i_1_n_0\,
      Q => data_p2,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_start_for_Block_entry_frame_counter_wr_proc_U0 is
  port (
    Block_entry_frame_counter_wr_proc_U0_ap_start : out STD_LOGIC;
    start_for_Block_entry_frame_counter_wr_proc_U0_full_n : out STD_LOGIC;
    full_n_reg_0 : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    \mOutPtr_reg[0]_0\ : in STD_LOGIC;
    start_once_reg_reg : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    start_once_reg : in STD_LOGIC;
    entry_proc_U0_noise_frame_count_c_write : in STD_LOGIC;
    \mOutPtr_reg[0]_1\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_start_for_Block_entry_frame_counter_wr_proc_U0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_start_for_Block_entry_frame_counter_wr_proc_U0 is
  signal \^block_entry_frame_counter_wr_proc_u0_ap_start\ : STD_LOGIC;
  signal \empty_n_i_1__2_n_0\ : STD_LOGIC;
  signal \full_n_i_1__2_n_0\ : STD_LOGIC;
  signal mOutPtr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \mOutPtr[0]_i_1_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1_n_0\ : STD_LOGIC;
  signal \mOutPtr[2]_i_1_n_0\ : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal \^start_for_block_entry_frame_counter_wr_proc_u0_full_n\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \mOutPtr[2]_i_1\ : label is "soft_lutpair111";
begin
  Block_entry_frame_counter_wr_proc_U0_ap_start <= \^block_entry_frame_counter_wr_proc_u0_ap_start\;
  start_for_Block_entry_frame_counter_wr_proc_U0_full_n <= \^start_for_block_entry_frame_counter_wr_proc_u0_full_n\;
\empty_n_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFF0000"
    )
        port map (
      I0 => p_6_in,
      I1 => mOutPtr(2),
      I2 => mOutPtr(1),
      I3 => mOutPtr(0),
      I4 => p_9_in,
      I5 => \^block_entry_frame_counter_wr_proc_u0_ap_start\,
      O => \empty_n_i_1__2_n_0\
    );
empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \empty_n_i_1__2_n_0\,
      Q => \^block_entry_frame_counter_wr_proc_u0_ap_start\,
      R => ap_rst_n_inv
    );
\full_n_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFBFFFBF0000"
    )
        port map (
      I0 => mOutPtr(0),
      I1 => p_9_in,
      I2 => mOutPtr(1),
      I3 => mOutPtr(2),
      I4 => p_6_in,
      I5 => \^start_for_block_entry_frame_counter_wr_proc_u0_full_n\,
      O => \full_n_i_1__2_n_0\
    );
full_n_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \full_n_i_1__2_n_0\,
      Q => \^start_for_block_entry_frame_counter_wr_proc_u0_full_n\,
      S => ap_rst_n_inv
    );
\mOutPtr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777877788887888"
    )
        port map (
      I0 => \mOutPtr_reg[0]_0\,
      I1 => \^block_entry_frame_counter_wr_proc_u0_ap_start\,
      I2 => \mOutPtr_reg[0]_1\,
      I3 => \^start_for_block_entry_frame_counter_wr_proc_u0_full_n\,
      I4 => start_once_reg,
      I5 => mOutPtr(0),
      O => \mOutPtr[0]_i_1_n_0\
    );
\mOutPtr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6798"
    )
        port map (
      I0 => mOutPtr(0),
      I1 => p_9_in,
      I2 => p_6_in,
      I3 => mOutPtr(1),
      O => \mOutPtr[1]_i_1_n_0\
    );
\mOutPtr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7E7F8180"
    )
        port map (
      I0 => mOutPtr(0),
      I1 => mOutPtr(1),
      I2 => p_9_in,
      I3 => p_6_in,
      I4 => mOutPtr(2),
      O => \mOutPtr[2]_i_1_n_0\
    );
\mOutPtr[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040004000400"
    )
        port map (
      I0 => start_once_reg_reg,
      I1 => ap_start,
      I2 => start_once_reg,
      I3 => \^start_for_block_entry_frame_counter_wr_proc_u0_full_n\,
      I4 => \mOutPtr_reg[0]_0\,
      I5 => \^block_entry_frame_counter_wr_proc_u0_ap_start\,
      O => p_9_in
    );
\mOutPtr[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888808888888888"
    )
        port map (
      I0 => \mOutPtr_reg[0]_0\,
      I1 => \^block_entry_frame_counter_wr_proc_u0_ap_start\,
      I2 => start_once_reg_reg,
      I3 => ap_start,
      I4 => start_once_reg,
      I5 => \^start_for_block_entry_frame_counter_wr_proc_u0_full_n\,
      O => p_6_in
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \mOutPtr[0]_i_1_n_0\,
      Q => mOutPtr(0),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \mOutPtr[1]_i_1_n_0\,
      Q => mOutPtr(1),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \mOutPtr[2]_i_1_n_0\,
      Q => mOutPtr(2),
      R => ap_rst_n_inv
    );
\start_once_reg_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CCEC"
    )
        port map (
      I0 => \^start_for_block_entry_frame_counter_wr_proc_u0_full_n\,
      I1 => start_once_reg,
      I2 => ap_start,
      I3 => start_once_reg_reg,
      I4 => entry_proc_U0_noise_frame_count_c_write,
      O => full_n_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_start_for_compute_magnitude_square_U0 is
  port (
    compute_magnitude_square_U0_ap_start : out STD_LOGIC;
    start_for_compute_magnitude_square_U0_full_n : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    compute_magnitude_square_U0_ap_ready : in STD_LOGIC;
    ap_sync_reg_axi_to_internal_U0_ap_ready : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    start_once_reg : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_start_for_compute_magnitude_square_U0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_start_for_compute_magnitude_square_U0 is
  signal \^compute_magnitude_square_u0_ap_start\ : STD_LOGIC;
  signal \empty_n_i_1__11_n_0\ : STD_LOGIC;
  signal \full_n_i_1__11_n_0\ : STD_LOGIC;
  signal mOutPtr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \mOutPtr[0]_i_1_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1_n_0\ : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal \^start_for_compute_magnitude_square_u0_full_n\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \empty_n_i_1__11\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_1\ : label is "soft_lutpair112";
begin
  compute_magnitude_square_U0_ap_start <= \^compute_magnitude_square_u0_ap_start\;
  start_for_compute_magnitude_square_U0_full_n <= \^start_for_compute_magnitude_square_u0_full_n\;
\empty_n_i_1__11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF7FF00"
    )
        port map (
      I0 => p_6_in,
      I1 => mOutPtr(0),
      I2 => mOutPtr(1),
      I3 => p_9_in,
      I4 => \^compute_magnitude_square_u0_ap_start\,
      O => \empty_n_i_1__11_n_0\
    );
empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \empty_n_i_1__11_n_0\,
      Q => \^compute_magnitude_square_u0_ap_start\,
      R => ap_rst_n_inv
    );
\full_n_i_1__11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7F7F700"
    )
        port map (
      I0 => p_9_in,
      I1 => mOutPtr(0),
      I2 => mOutPtr(1),
      I3 => p_6_in,
      I4 => \^start_for_compute_magnitude_square_u0_full_n\,
      O => \full_n_i_1__11_n_0\
    );
full_n_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \full_n_i_1__11_n_0\,
      Q => \^start_for_compute_magnitude_square_u0_full_n\,
      S => ap_rst_n_inv
    );
\mOutPtr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => p_6_in,
      I1 => p_9_in,
      I2 => mOutPtr(0),
      O => \mOutPtr[0]_i_1_n_0\
    );
\mOutPtr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6798"
    )
        port map (
      I0 => mOutPtr(0),
      I1 => p_9_in,
      I2 => p_6_in,
      I3 => mOutPtr(1),
      O => \mOutPtr[1]_i_1_n_0\
    );
\mOutPtr[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040004000400"
    )
        port map (
      I0 => ap_sync_reg_axi_to_internal_U0_ap_ready,
      I1 => ap_start,
      I2 => start_once_reg,
      I3 => \^start_for_compute_magnitude_square_u0_full_n\,
      I4 => compute_magnitude_square_U0_ap_ready,
      I5 => \^compute_magnitude_square_u0_ap_start\,
      O => p_9_in
    );
\mOutPtr[1]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888808888888888"
    )
        port map (
      I0 => compute_magnitude_square_U0_ap_ready,
      I1 => \^compute_magnitude_square_u0_ap_start\,
      I2 => ap_sync_reg_axi_to_internal_U0_ap_ready,
      I3 => ap_start,
      I4 => start_once_reg,
      I5 => \^start_for_compute_magnitude_square_u0_full_n\,
      O => p_6_in
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \mOutPtr[0]_i_1_n_0\,
      Q => mOutPtr(0),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \mOutPtr[1]_i_1_n_0\,
      Q => mOutPtr(1),
      R => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_start_for_internal_to_axi_U0 is
  port (
    internal_to_axi_U0_ap_start : out STD_LOGIC;
    start_for_internal_to_axi_U0_full_n : out STD_LOGIC;
    ap_sig_allocacmp_i1_load1 : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_loop_init : in STD_LOGIC;
    internal_to_axi_U0_ap_ready : in STD_LOGIC;
    \push__0\ : in STD_LOGIC;
    start_once_reg : in STD_LOGIC;
    reconstruct_signal_U0_ap_start : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_start_for_internal_to_axi_U0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_start_for_internal_to_axi_U0 is
  signal \empty_n_i_1__13_n_0\ : STD_LOGIC;
  signal \full_n_i_1__13_n_0\ : STD_LOGIC;
  signal \^internal_to_axi_u0_ap_start\ : STD_LOGIC;
  signal mOutPtr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \mOutPtr[0]_i_1_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1_n_0\ : STD_LOGIC;
  signal \^start_for_internal_to_axi_u0_full_n\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \empty_n_i_1__13\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_1\ : label is "soft_lutpair113";
begin
  internal_to_axi_U0_ap_start <= \^internal_to_axi_u0_ap_start\;
  start_for_internal_to_axi_U0_full_n <= \^start_for_internal_to_axi_u0_full_n\;
\empty_n_i_1__13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFD0F0"
    )
        port map (
      I0 => mOutPtr(0),
      I1 => mOutPtr(1),
      I2 => \^internal_to_axi_u0_ap_start\,
      I3 => internal_to_axi_U0_ap_ready,
      I4 => \push__0\,
      O => \empty_n_i_1__13_n_0\
    );
empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \empty_n_i_1__13_n_0\,
      Q => \^internal_to_axi_u0_ap_start\,
      R => ap_rst_n_inv
    );
\full_n_i_1__13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFDFDF0F000000"
    )
        port map (
      I0 => mOutPtr(0),
      I1 => mOutPtr(1),
      I2 => \push__0\,
      I3 => \^internal_to_axi_u0_ap_start\,
      I4 => internal_to_axi_U0_ap_ready,
      I5 => \^start_for_internal_to_axi_u0_full_n\,
      O => \full_n_i_1__13_n_0\
    );
full_n_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \full_n_i_1__13_n_0\,
      Q => \^start_for_internal_to_axi_u0_full_n\,
      S => ap_rst_n_inv
    );
\i1_fu_54[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^internal_to_axi_u0_ap_start\,
      I1 => ap_loop_init,
      O => ap_sig_allocacmp_i1_load1
    );
\mOutPtr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7877777787888888"
    )
        port map (
      I0 => internal_to_axi_U0_ap_ready,
      I1 => \^internal_to_axi_u0_ap_start\,
      I2 => start_once_reg,
      I3 => \^start_for_internal_to_axi_u0_full_n\,
      I4 => reconstruct_signal_U0_ap_start,
      I5 => mOutPtr(0),
      O => \mOutPtr[0]_i_1_n_0\
    );
\mOutPtr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E7771888"
    )
        port map (
      I0 => mOutPtr(0),
      I1 => \push__0\,
      I2 => \^internal_to_axi_u0_ap_start\,
      I3 => internal_to_axi_U0_ap_ready,
      I4 => mOutPtr(1),
      O => \mOutPtr[1]_i_1_n_0\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \mOutPtr[0]_i_1_n_0\,
      Q => mOutPtr(0),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \mOutPtr[1]_i_1_n_0\,
      Q => mOutPtr(1),
      R => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_start_for_reconstruct_signal_U0 is
  port (
    reconstruct_signal_U0_ap_start : out STD_LOGIC;
    start_for_reconstruct_signal_U0_full_n : out STD_LOGIC;
    \push__0\ : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    reconstruct_signal_U0_ap_ready : in STD_LOGIC;
    start_once_reg : in STD_LOGIC;
    compute_magnitude_square_U0_ap_start : in STD_LOGIC;
    start_for_internal_to_axi_U0_full_n : in STD_LOGIC;
    start_once_reg_0 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_start_for_reconstruct_signal_U0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_start_for_reconstruct_signal_U0 is
  signal \empty_n_i_1__12_n_0\ : STD_LOGIC;
  signal \full_n_i_1__12_n_0\ : STD_LOGIC;
  signal mOutPtr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \mOutPtr[0]_i_1_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1_n_0\ : STD_LOGIC;
  signal \mOutPtr[2]_i_1_n_0\ : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal \^reconstruct_signal_u0_ap_start\ : STD_LOGIC;
  signal \^start_for_reconstruct_signal_u0_full_n\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \mOutPtr[2]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \mOutPtr[2]_i_2__0\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \mOutPtr[2]_i_3__0\ : label is "soft_lutpair114";
begin
  reconstruct_signal_U0_ap_start <= \^reconstruct_signal_u0_ap_start\;
  start_for_reconstruct_signal_U0_full_n <= \^start_for_reconstruct_signal_u0_full_n\;
\empty_n_i_1__12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFF0000"
    )
        port map (
      I0 => p_6_in,
      I1 => mOutPtr(2),
      I2 => mOutPtr(1),
      I3 => mOutPtr(0),
      I4 => p_9_in,
      I5 => \^reconstruct_signal_u0_ap_start\,
      O => \empty_n_i_1__12_n_0\
    );
empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \empty_n_i_1__12_n_0\,
      Q => \^reconstruct_signal_u0_ap_start\,
      R => ap_rst_n_inv
    );
\full_n_i_1__12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFBFFFBF0000"
    )
        port map (
      I0 => mOutPtr(0),
      I1 => p_9_in,
      I2 => mOutPtr(1),
      I3 => mOutPtr(2),
      I4 => p_6_in,
      I5 => \^start_for_reconstruct_signal_u0_full_n\,
      O => \full_n_i_1__12_n_0\
    );
full_n_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \full_n_i_1__12_n_0\,
      Q => \^start_for_reconstruct_signal_u0_full_n\,
      S => ap_rst_n_inv
    );
\mOutPtr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => p_6_in,
      I1 => p_9_in,
      I2 => mOutPtr(0),
      O => \mOutPtr[0]_i_1_n_0\
    );
\mOutPtr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6798"
    )
        port map (
      I0 => mOutPtr(0),
      I1 => p_9_in,
      I2 => p_6_in,
      I3 => mOutPtr(1),
      O => \mOutPtr[1]_i_1_n_0\
    );
\mOutPtr[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^reconstruct_signal_u0_ap_start\,
      I1 => start_for_internal_to_axi_U0_full_n,
      I2 => start_once_reg_0,
      O => \push__0\
    );
\mOutPtr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7E7F8180"
    )
        port map (
      I0 => mOutPtr(0),
      I1 => mOutPtr(1),
      I2 => p_9_in,
      I3 => p_6_in,
      I4 => mOutPtr(2),
      O => \mOutPtr[2]_i_1_n_0\
    );
\mOutPtr[2]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00404040"
    )
        port map (
      I0 => start_once_reg,
      I1 => \^start_for_reconstruct_signal_u0_full_n\,
      I2 => compute_magnitude_square_U0_ap_start,
      I3 => reconstruct_signal_U0_ap_ready,
      I4 => \^reconstruct_signal_u0_ap_start\,
      O => p_9_in
    );
\mOutPtr[2]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80888888"
    )
        port map (
      I0 => reconstruct_signal_U0_ap_ready,
      I1 => \^reconstruct_signal_u0_ap_start\,
      I2 => start_once_reg,
      I3 => \^start_for_reconstruct_signal_u0_full_n\,
      I4 => compute_magnitude_square_U0_ap_start,
      O => p_6_in
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \mOutPtr[0]_i_1_n_0\,
      Q => mOutPtr(0),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \mOutPtr[1]_i_1_n_0\,
      Q => mOutPtr(1),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \mOutPtr[2]_i_1_n_0\,
      Q => mOutPtr(2),
      R => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \ap_CS_fsm_reg[50]\ : out STD_LOGIC;
    \noise_frame_count_read_reg_372_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    frame_counter_flag_0_i_reg_169221_out : out STD_LOGIC;
    \frame_counter_flag_1_i_reg_155_reg[0]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[49]\ : out STD_LOGIC;
    \noise_estimated_new_0_i_reg_211_reg[0]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    p_23_in : in STD_LOGIC;
    \ap_CS_fsm_reg[50]_0\ : in STD_LOGIC;
    \frame_counter_new_0_i_reg_184_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    frame_counter_flag_0_i_reg_1692 : in STD_LOGIC;
    \frame_counter_new_0_i_reg_184_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    add_ln324_fu_327_p2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    frame_counter_flag_1_i_reg_155 : in STD_LOGIC;
    grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg : in STD_LOGIC;
    icmp_ln326_reg_421 : in STD_LOGIC;
    \frame_counter_reg[0]\ : in STD_LOGIC;
    frame_counter_flag_0_i_reg_169 : in STD_LOGIC;
    \ap_CS_fsm_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \noise_estimated_reg[0]\ : in STD_LOGIC;
    noise_estimated_flag_0_i_reg_197 : in STD_LOGIC;
    ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p61 : in STD_LOGIC;
    noise_estimated : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE is
  signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_12 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_13 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_14 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_15 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_16 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_17 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_18 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_19 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_20 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_21 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_22 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_24 : STD_LOGIC;
  signal grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_ready : STD_LOGIC;
  signal \i_fu_76[0]_i_2_n_0\ : STD_LOGIC;
  signal \i_fu_76[10]_i_3_n_0\ : STD_LOGIC;
  signal \i_fu_76[10]_i_4_n_0\ : STD_LOGIC;
  signal \i_fu_76[10]_i_6_n_0\ : STD_LOGIC;
  signal \i_fu_76[5]_i_2_n_0\ : STD_LOGIC;
  signal \i_fu_76[6]_i_2_n_0\ : STD_LOGIC;
  signal \i_fu_76[9]_i_2_n_0\ : STD_LOGIC;
  signal \i_fu_76_reg_n_0_[0]\ : STD_LOGIC;
  signal \i_fu_76_reg_n_0_[10]\ : STD_LOGIC;
  signal \i_fu_76_reg_n_0_[1]\ : STD_LOGIC;
  signal \i_fu_76_reg_n_0_[2]\ : STD_LOGIC;
  signal \i_fu_76_reg_n_0_[3]\ : STD_LOGIC;
  signal \i_fu_76_reg_n_0_[4]\ : STD_LOGIC;
  signal \i_fu_76_reg_n_0_[5]\ : STD_LOGIC;
  signal \i_fu_76_reg_n_0_[6]\ : STD_LOGIC;
  signal \i_fu_76_reg_n_0_[7]\ : STD_LOGIC;
  signal \i_fu_76_reg_n_0_[8]\ : STD_LOGIC;
  signal \i_fu_76_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \i_fu_76[10]_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \i_fu_76[10]_i_6\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \i_fu_76[5]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \i_fu_76[6]_i_2\ : label is "soft_lutpair6";
begin
ap_loop_exit_ready_pp0_iter1_reg_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => AR(0),
      D => grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_ready,
      Q => ap_loop_exit_ready_pp0_iter1_reg
    );
ap_loop_exit_ready_pp0_iter2_reg_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => AR(0),
      D => ap_loop_exit_ready_pp0_iter1_reg,
      Q => ap_loop_exit_ready_pp0_iter2_reg
    );
flow_control_loop_pipe_sequential_init_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_sequential_init_12
     port map (
      AR(0) => AR(0),
      D(1 downto 0) => D(1 downto 0),
      E(0) => E(0),
      Q(3 downto 0) => Q(3 downto 0),
      add_ln324_fu_327_p2(0) => add_ln324_fu_327_p2(0),
      \ap_CS_fsm_reg[0]\(0) => \ap_CS_fsm_reg[0]\(0),
      \ap_CS_fsm_reg[49]\ => \ap_CS_fsm_reg[49]\,
      \ap_CS_fsm_reg[50]\ => \ap_CS_fsm_reg[50]\,
      \ap_CS_fsm_reg[50]_0\ => \ap_CS_fsm_reg[50]_0\,
      ap_clk => ap_clk,
      ap_loop_exit_ready_pp0_iter2_reg => ap_loop_exit_ready_pp0_iter2_reg,
      ap_loop_exit_ready_pp0_iter2_reg_reg => frame_counter_flag_0_i_reg_169221_out,
      ap_loop_init_int_reg_0(0) => flow_control_loop_pipe_sequential_init_U_n_24,
      ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p61 => ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p61,
      ap_rst_n => ap_rst_n,
      frame_counter_flag_0_i_reg_169 => frame_counter_flag_0_i_reg_169,
      frame_counter_flag_0_i_reg_1692 => frame_counter_flag_0_i_reg_1692,
      frame_counter_flag_1_i_reg_155 => frame_counter_flag_1_i_reg_155,
      \frame_counter_flag_1_i_reg_155_reg[0]\ => \frame_counter_flag_1_i_reg_155_reg[0]\,
      \frame_counter_new_0_i_reg_184_reg[2]\(2 downto 0) => \frame_counter_new_0_i_reg_184_reg[2]\(2 downto 0),
      \frame_counter_new_0_i_reg_184_reg[3]\(3 downto 0) => \frame_counter_new_0_i_reg_184_reg[3]\(3 downto 0),
      \frame_counter_reg[0]\ => \frame_counter_reg[0]\,
      grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_ready => grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_ready,
      grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg => grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg,
      \i_fu_76_reg[0]\ => \i_fu_76[0]_i_2_n_0\,
      \i_fu_76_reg[10]\ => \i_fu_76[10]_i_3_n_0\,
      \i_fu_76_reg[10]_0\(10) => \i_fu_76_reg_n_0_[10]\,
      \i_fu_76_reg[10]_0\(9) => \i_fu_76_reg_n_0_[9]\,
      \i_fu_76_reg[10]_0\(8) => \i_fu_76_reg_n_0_[8]\,
      \i_fu_76_reg[10]_0\(7) => \i_fu_76_reg_n_0_[7]\,
      \i_fu_76_reg[10]_0\(6) => \i_fu_76_reg_n_0_[6]\,
      \i_fu_76_reg[10]_0\(5) => \i_fu_76_reg_n_0_[5]\,
      \i_fu_76_reg[10]_0\(4) => \i_fu_76_reg_n_0_[4]\,
      \i_fu_76_reg[10]_0\(3) => \i_fu_76_reg_n_0_[3]\,
      \i_fu_76_reg[10]_0\(2) => \i_fu_76_reg_n_0_[2]\,
      \i_fu_76_reg[10]_0\(1) => \i_fu_76_reg_n_0_[1]\,
      \i_fu_76_reg[10]_0\(0) => \i_fu_76_reg_n_0_[0]\,
      \i_fu_76_reg[10]_1\ => \i_fu_76[10]_i_4_n_0\,
      \i_fu_76_reg[5]\ => \i_fu_76[5]_i_2_n_0\,
      \i_fu_76_reg[6]\ => \i_fu_76[6]_i_2_n_0\,
      \i_fu_76_reg[9]\(10) => flow_control_loop_pipe_sequential_init_U_n_12,
      \i_fu_76_reg[9]\(9) => flow_control_loop_pipe_sequential_init_U_n_13,
      \i_fu_76_reg[9]\(8) => flow_control_loop_pipe_sequential_init_U_n_14,
      \i_fu_76_reg[9]\(7) => flow_control_loop_pipe_sequential_init_U_n_15,
      \i_fu_76_reg[9]\(6) => flow_control_loop_pipe_sequential_init_U_n_16,
      \i_fu_76_reg[9]\(5) => flow_control_loop_pipe_sequential_init_U_n_17,
      \i_fu_76_reg[9]\(4) => flow_control_loop_pipe_sequential_init_U_n_18,
      \i_fu_76_reg[9]\(3) => flow_control_loop_pipe_sequential_init_U_n_19,
      \i_fu_76_reg[9]\(2) => flow_control_loop_pipe_sequential_init_U_n_20,
      \i_fu_76_reg[9]\(1) => flow_control_loop_pipe_sequential_init_U_n_21,
      \i_fu_76_reg[9]\(0) => flow_control_loop_pipe_sequential_init_U_n_22,
      \i_fu_76_reg[9]_0\ => \i_fu_76[9]_i_2_n_0\,
      icmp_ln326_reg_421 => icmp_ln326_reg_421,
      noise_estimated => noise_estimated,
      noise_estimated_flag_0_i_reg_197 => noise_estimated_flag_0_i_reg_197,
      \noise_estimated_new_0_i_reg_211_reg[0]\ => \noise_estimated_new_0_i_reg_211_reg[0]\,
      \noise_estimated_reg[0]\ => \noise_estimated_reg[0]\,
      \noise_frame_count_read_reg_372_reg[3]\(3 downto 0) => \noise_frame_count_read_reg_372_reg[3]\(3 downto 0),
      p_23_in => p_23_in
    );
\i_fu_76[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \i_fu_76_reg_n_0_[4]\,
      I1 => \i_fu_76_reg_n_0_[5]\,
      I2 => \i_fu_76_reg_n_0_[2]\,
      I3 => \i_fu_76_reg_n_0_[3]\,
      I4 => \i_fu_76[10]_i_6_n_0\,
      O => \i_fu_76[0]_i_2_n_0\
    );
\i_fu_76[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \i_fu_76[10]_i_6_n_0\,
      I1 => \i_fu_76_reg_n_0_[3]\,
      I2 => \i_fu_76_reg_n_0_[2]\,
      I3 => \i_fu_76_reg_n_0_[5]\,
      I4 => \i_fu_76_reg_n_0_[4]\,
      I5 => \i_fu_76_reg_n_0_[0]\,
      O => \i_fu_76[10]_i_3_n_0\
    );
\i_fu_76[10]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \i_fu_76_reg_n_0_[7]\,
      I1 => \i_fu_76[9]_i_2_n_0\,
      I2 => \i_fu_76_reg_n_0_[8]\,
      O => \i_fu_76[10]_i_4_n_0\
    );
\i_fu_76[10]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \i_fu_76_reg_n_0_[7]\,
      I1 => \i_fu_76_reg_n_0_[6]\,
      I2 => \i_fu_76_reg_n_0_[9]\,
      I3 => \i_fu_76_reg_n_0_[8]\,
      O => \i_fu_76[10]_i_6_n_0\
    );
\i_fu_76[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \i_fu_76_reg_n_0_[3]\,
      I1 => \i_fu_76_reg_n_0_[0]\,
      I2 => \i_fu_76_reg_n_0_[2]\,
      I3 => \i_fu_76_reg_n_0_[4]\,
      O => \i_fu_76[5]_i_2_n_0\
    );
\i_fu_76[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \i_fu_76_reg_n_0_[4]\,
      I1 => \i_fu_76_reg_n_0_[2]\,
      I2 => \i_fu_76_reg_n_0_[0]\,
      I3 => \i_fu_76_reg_n_0_[3]\,
      I4 => \i_fu_76_reg_n_0_[5]\,
      O => \i_fu_76[6]_i_2_n_0\
    );
\i_fu_76[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \i_fu_76_reg_n_0_[5]\,
      I1 => \i_fu_76_reg_n_0_[3]\,
      I2 => \i_fu_76_reg_n_0_[0]\,
      I3 => \i_fu_76_reg_n_0_[2]\,
      I4 => \i_fu_76_reg_n_0_[4]\,
      I5 => \i_fu_76_reg_n_0_[6]\,
      O => \i_fu_76[9]_i_2_n_0\
    );
\i_fu_76_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_24,
      CLR => AR(0),
      D => flow_control_loop_pipe_sequential_init_U_n_22,
      Q => \i_fu_76_reg_n_0_[0]\
    );
\i_fu_76_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_24,
      CLR => AR(0),
      D => flow_control_loop_pipe_sequential_init_U_n_12,
      Q => \i_fu_76_reg_n_0_[10]\
    );
\i_fu_76_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_24,
      CLR => AR(0),
      D => flow_control_loop_pipe_sequential_init_U_n_21,
      Q => \i_fu_76_reg_n_0_[1]\
    );
\i_fu_76_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_24,
      CLR => AR(0),
      D => flow_control_loop_pipe_sequential_init_U_n_20,
      Q => \i_fu_76_reg_n_0_[2]\
    );
\i_fu_76_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_24,
      CLR => AR(0),
      D => flow_control_loop_pipe_sequential_init_U_n_19,
      Q => \i_fu_76_reg_n_0_[3]\
    );
\i_fu_76_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_24,
      CLR => AR(0),
      D => flow_control_loop_pipe_sequential_init_U_n_18,
      Q => \i_fu_76_reg_n_0_[4]\
    );
\i_fu_76_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_24,
      CLR => AR(0),
      D => flow_control_loop_pipe_sequential_init_U_n_17,
      Q => \i_fu_76_reg_n_0_[5]\
    );
\i_fu_76_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_24,
      CLR => AR(0),
      D => flow_control_loop_pipe_sequential_init_U_n_16,
      Q => \i_fu_76_reg_n_0_[6]\
    );
\i_fu_76_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_24,
      CLR => AR(0),
      D => flow_control_loop_pipe_sequential_init_U_n_15,
      Q => \i_fu_76_reg_n_0_[7]\
    );
\i_fu_76_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_24,
      CLR => AR(0),
      D => flow_control_loop_pipe_sequential_init_U_n_14,
      Q => \i_fu_76_reg_n_0_[8]\
    );
\i_fu_76_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_24,
      CLR => AR(0),
      D => flow_control_loop_pipe_sequential_init_U_n_13,
      Q => \i_fu_76_reg_n_0_[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \ap_CS_fsm_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[1]_0\ : out STD_LOGIC;
    \noise_estimated_reg[0]\ : out STD_LOGIC;
    grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg_reg : out STD_LOGIC;
    \frame_counter_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[1]_1\ : in STD_LOGIC;
    \ap_CS_fsm_reg[1]_2\ : in STD_LOGIC;
    \ap_CS_fsm_reg[1]_3\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \ap_CS_fsm_reg[1]_4\ : in STD_LOGIC;
    reset_noise_read_reg_380 : in STD_LOGIC;
    grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg : in STD_LOGIC;
    reset_noise_c_dout : in STD_LOGIC;
    noise_estimated : in STD_LOGIC;
    \frame_counter_loc_0_i_reg_132_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ap_clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE is
  signal flow_control_loop_pipe_sequential_init_U_n_20 : STD_LOGIC;
  signal i_fu_62 : STD_LOGIC;
  signal \i_fu_62_reg_n_0_[0]\ : STD_LOGIC;
  signal \i_fu_62_reg_n_0_[10]\ : STD_LOGIC;
  signal \i_fu_62_reg_n_0_[1]\ : STD_LOGIC;
  signal \i_fu_62_reg_n_0_[2]\ : STD_LOGIC;
  signal \i_fu_62_reg_n_0_[3]\ : STD_LOGIC;
  signal \i_fu_62_reg_n_0_[4]\ : STD_LOGIC;
  signal \i_fu_62_reg_n_0_[5]\ : STD_LOGIC;
  signal \i_fu_62_reg_n_0_[6]\ : STD_LOGIC;
  signal \i_fu_62_reg_n_0_[7]\ : STD_LOGIC;
  signal \i_fu_62_reg_n_0_[8]\ : STD_LOGIC;
  signal \i_fu_62_reg_n_0_[9]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 10 downto 1 );
begin
flow_control_loop_pipe_sequential_init_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_sequential_init_11
     port map (
      AR(0) => AR(0),
      D(1 downto 0) => D(1 downto 0),
      E(0) => E(0),
      Q(4 downto 0) => Q(4 downto 0),
      \ap_CS_fsm_reg[1]\(0) => \ap_CS_fsm_reg[1]\(0),
      \ap_CS_fsm_reg[1]_0\ => \ap_CS_fsm_reg[1]_0\,
      \ap_CS_fsm_reg[1]_1\ => \ap_CS_fsm_reg[1]_1\,
      \ap_CS_fsm_reg[1]_2\ => \ap_CS_fsm_reg[1]_2\,
      \ap_CS_fsm_reg[1]_3\ => \ap_CS_fsm_reg[1]_3\,
      \ap_CS_fsm_reg[1]_4\ => \ap_CS_fsm_reg[1]_4\,
      ap_clk => ap_clk,
      ap_loop_init_int_reg_0(0) => i_fu_62,
      ap_rst_n => ap_rst_n,
      \frame_counter_loc_0_i_reg_132_reg[3]\(3 downto 0) => \frame_counter_loc_0_i_reg_132_reg[3]\(3 downto 0),
      \frame_counter_reg[3]\(3 downto 0) => \frame_counter_reg[3]\(3 downto 0),
      grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg,
      grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg_reg => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg_reg,
      \i_fu_62_reg[10]\(10 downto 1) => p_0_in(10 downto 1),
      \i_fu_62_reg[10]\(0) => flow_control_loop_pipe_sequential_init_U_n_20,
      \i_fu_62_reg[10]_0\(10) => \i_fu_62_reg_n_0_[10]\,
      \i_fu_62_reg[10]_0\(9) => \i_fu_62_reg_n_0_[9]\,
      \i_fu_62_reg[10]_0\(8) => \i_fu_62_reg_n_0_[8]\,
      \i_fu_62_reg[10]_0\(7) => \i_fu_62_reg_n_0_[7]\,
      \i_fu_62_reg[10]_0\(6) => \i_fu_62_reg_n_0_[6]\,
      \i_fu_62_reg[10]_0\(5) => \i_fu_62_reg_n_0_[5]\,
      \i_fu_62_reg[10]_0\(4) => \i_fu_62_reg_n_0_[4]\,
      \i_fu_62_reg[10]_0\(3) => \i_fu_62_reg_n_0_[3]\,
      \i_fu_62_reg[10]_0\(2) => \i_fu_62_reg_n_0_[2]\,
      \i_fu_62_reg[10]_0\(1) => \i_fu_62_reg_n_0_[1]\,
      \i_fu_62_reg[10]_0\(0) => \i_fu_62_reg_n_0_[0]\,
      noise_estimated => noise_estimated,
      \noise_estimated_reg[0]\ => \noise_estimated_reg[0]\,
      reset_noise_c_dout => reset_noise_c_dout,
      reset_noise_read_reg_380 => reset_noise_read_reg_380
    );
\i_fu_62_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_62,
      CLR => AR(0),
      D => flow_control_loop_pipe_sequential_init_U_n_20,
      Q => \i_fu_62_reg_n_0_[0]\
    );
\i_fu_62_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_62,
      CLR => AR(0),
      D => p_0_in(10),
      Q => \i_fu_62_reg_n_0_[10]\
    );
\i_fu_62_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_62,
      CLR => AR(0),
      D => p_0_in(1),
      Q => \i_fu_62_reg_n_0_[1]\
    );
\i_fu_62_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_62,
      CLR => AR(0),
      D => p_0_in(2),
      Q => \i_fu_62_reg_n_0_[2]\
    );
\i_fu_62_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_62,
      CLR => AR(0),
      D => p_0_in(3),
      Q => \i_fu_62_reg_n_0_[3]\
    );
\i_fu_62_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_62,
      CLR => AR(0),
      D => p_0_in(4),
      Q => \i_fu_62_reg_n_0_[4]\
    );
\i_fu_62_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_62,
      CLR => AR(0),
      D => p_0_in(5),
      Q => \i_fu_62_reg_n_0_[5]\
    );
\i_fu_62_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_62,
      CLR => AR(0),
      D => p_0_in(6),
      Q => \i_fu_62_reg_n_0_[6]\
    );
\i_fu_62_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_62,
      CLR => AR(0),
      D => p_0_in(7),
      Q => \i_fu_62_reg_n_0_[7]\
    );
\i_fu_62_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_62,
      CLR => AR(0),
      D => p_0_in(8),
      Q => \i_fu_62_reg_n_0_[8]\
    );
\i_fu_62_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_62,
      CLR => AR(0),
      D => p_0_in(9),
      Q => \i_fu_62_reg_n_0_[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_axi_to_internal is
  port (
    ack_in_t_reg : out STD_LOGIC;
    axi_to_internal_U0_stream1_din : out STD_LOGIC_VECTOR ( 64 downto 0 );
    start_once_reg : out STD_LOGIC;
    mOutPtr111_out : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_to_internal_U0_ap_ready : out STD_LOGIC;
    ap_sync_axi_to_internal_U0_ap_ready : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    pop : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_sync_reg_axi_to_internal_U0_ap_ready : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    start_for_compute_magnitude_square_U0_full_n : in STD_LOGIC;
    stream1_full_n : in STD_LOGIC;
    fft_in_TVALID : in STD_LOGIC;
    fft_in_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    fft_in_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_axi_to_internal;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_axi_to_internal is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal flow_control_loop_pipe_U_n_11 : STD_LOGIC;
  signal i1_fu_54 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal i_fu_102_p2 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal regslice_both_fft_in_V_data_V_U_n_3 : STD_LOGIC;
  signal \^start_once_reg\ : STD_LOGIC;
begin
  E(0) <= \^e\(0);
  start_once_reg <= \^start_once_reg\;
flow_control_loop_pipe_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_7
     port map (
      D(8 downto 0) => i_fu_102_p2(8 downto 0),
      Q(8 downto 0) => i1_fu_54(8 downto 0),
      ap_clk => ap_clk,
      ap_loop_init_reg_0 => regslice_both_fft_in_V_data_V_U_n_3,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      ap_sync_axi_to_internal_U0_ap_ready => ap_sync_axi_to_internal_U0_ap_ready,
      ap_sync_reg_axi_to_internal_U0_ap_ready => ap_sync_reg_axi_to_internal_U0_ap_ready,
      axi_to_internal_U0_ap_ready => axi_to_internal_U0_ap_ready,
      full_n_reg => flow_control_loop_pipe_U_n_11,
      start_for_compute_magnitude_square_U0_full_n => start_for_compute_magnitude_square_U0_full_n,
      start_once_reg_reg => \^start_once_reg\
    );
\i1_fu_54_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => i_fu_102_p2(0),
      Q => i1_fu_54(0),
      R => SR(0)
    );
\i1_fu_54_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => i_fu_102_p2(1),
      Q => i1_fu_54(1),
      R => SR(0)
    );
\i1_fu_54_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => i_fu_102_p2(2),
      Q => i1_fu_54(2),
      R => SR(0)
    );
\i1_fu_54_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => i_fu_102_p2(3),
      Q => i1_fu_54(3),
      R => SR(0)
    );
\i1_fu_54_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => i_fu_102_p2(4),
      Q => i1_fu_54(4),
      R => SR(0)
    );
\i1_fu_54_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => i_fu_102_p2(5),
      Q => i1_fu_54(5),
      R => SR(0)
    );
\i1_fu_54_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => i_fu_102_p2(6),
      Q => i1_fu_54(6),
      R => SR(0)
    );
\i1_fu_54_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => i_fu_102_p2(7),
      Q => i1_fu_54(7),
      R => SR(0)
    );
\i1_fu_54_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^e\(0),
      D => i_fu_102_p2(8),
      Q => i1_fu_54(8),
      R => SR(0)
    );
regslice_both_fft_in_V_data_V_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_regslice_both_8
     port map (
      E(0) => \^e\(0),
      SR(0) => SR(0),
      ack_in_t_reg_0 => ack_in_t_reg,
      ap_clk => ap_clk,
      ap_start => ap_start,
      ap_sync_reg_axi_to_internal_U0_ap_ready => ap_sync_reg_axi_to_internal_U0_ap_ready,
      axi_to_internal_U0_stream1_din(63 downto 0) => axi_to_internal_U0_stream1_din(63 downto 0),
      fft_in_TDATA(63 downto 0) => fft_in_TDATA(63 downto 0),
      fft_in_TVALID => fft_in_TVALID,
      full_n_reg => regslice_both_fft_in_V_data_V_U_n_3,
      \i1_fu_54_reg[8]\ => \^start_once_reg\,
      mOutPtr111_out => mOutPtr111_out,
      pop => pop,
      start_for_compute_magnitude_square_U0_full_n => start_for_compute_magnitude_square_U0_full_n,
      stream1_full_n => stream1_full_n
    );
regslice_both_fft_in_V_last_V_U: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_regslice_both__parameterized1_9\
     port map (
      SR(0) => SR(0),
      ap_clk => ap_clk,
      axi_to_internal_U0_stream1_din(0) => axi_to_internal_U0_stream1_din(64),
      \data_p1_reg[0]_0\ => regslice_both_fft_in_V_data_V_U_n_3,
      fft_in_TLAST(0) => fft_in_TLAST(0),
      fft_in_TVALID => fft_in_TVALID
    );
start_once_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_U_n_11,
      Q => \^start_once_reg\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_compute_magnitude_square is
  port (
    start_once_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    compute_magnitude_square_U0_stream2_write : out STD_LOGIC;
    \ap_CS_fsm_reg[0]_0\ : out STD_LOGIC;
    start_once_reg_reg_0 : out STD_LOGIC;
    dout_vld_reg : out STD_LOGIC;
    push : out STD_LOGIC;
    dout_vld_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_8_in : out STD_LOGIC;
    dout_vld_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    pop : out STD_LOGIC;
    compute_magnitude_square_U0_ap_ready : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \mOutPtr_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \mOutPtr_reg[10]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ap_rst_n_0 : out STD_LOGIC;
    dout_vld_reg_2 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    stream3_full_n : in STD_LOGIC;
    stream3_empty_n : in STD_LOGIC;
    stream4_i_full_n : in STD_LOGIC;
    mOutPtr_reg_0_sp_1 : in STD_LOGIC;
    int_ap_idle_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    Block_entry_frame_counter_wr_proc_U0_ap_start : in STD_LOGIC;
    int_ap_idle_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream1_empty_n : in STD_LOGIC;
    stream2_full_n : in STD_LOGIC;
    stream2_empty_n : in STD_LOGIC;
    reconstruct_signal_U0_stream6_write : in STD_LOGIC;
    \num_data_cnt_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    empty_n : in STD_LOGIC;
    start_for_reconstruct_signal_U0_full_n : in STD_LOGIC;
    compute_magnitude_square_U0_ap_start : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    pop_0 : in STD_LOGIC;
    mOutPtr_reg : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_compute_magnitude_square;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_compute_magnitude_square is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^compute_magnitude_square_u0_ap_ready\ : STD_LOGIC;
  signal \^compute_magnitude_square_u0_stream2_write\ : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_9 : STD_LOGIC;
  signal i_021_fu_42 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \i_021_fu_42[5]_i_2_n_0\ : STD_LOGIC;
  signal \i_021_fu_42[8]_i_4_n_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_3_n_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_4_n_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_5_n_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_6_n_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_7_n_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_8_n_0\ : STD_LOGIC;
  signal \mOutPtr[4]_i_2__4_n_0\ : STD_LOGIC;
  signal \mOutPtr[4]_i_3__4_n_0\ : STD_LOGIC;
  signal \mOutPtr[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \mOutPtr[4]_i_5_n_0\ : STD_LOGIC;
  signal \mOutPtr[8]_i_2_n_0\ : STD_LOGIC;
  signal \mOutPtr[8]_i_3_n_0\ : STD_LOGIC;
  signal \mOutPtr[8]_i_4_n_0\ : STD_LOGIC;
  signal \mOutPtr[8]_i_5_n_0\ : STD_LOGIC;
  signal \mOutPtr_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \mOutPtr_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \mOutPtr_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \mOutPtr_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \mOutPtr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \mOutPtr_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \mOutPtr_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \mOutPtr_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \mOutPtr_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \mOutPtr_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \mOutPtr_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal mOutPtr_reg_0_sn_1 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^pop\ : STD_LOGIC;
  signal \^push\ : STD_LOGIC;
  signal \^start_once_reg\ : STD_LOGIC;
  signal \start_once_reg_i_1__0_n_0\ : STD_LOGIC;
  signal \^start_once_reg_reg_0\ : STD_LOGIC;
  signal \NLW_mOutPtr_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_2__0\ : label is "soft_lutpair53";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \mOutPtr_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \mOutPtr_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \mOutPtr_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \start_once_reg_i_1__0\ : label is "soft_lutpair53";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  compute_magnitude_square_U0_ap_ready <= \^compute_magnitude_square_u0_ap_ready\;
  compute_magnitude_square_U0_stream2_write <= \^compute_magnitude_square_u0_stream2_write\;
  mOutPtr_reg_0_sn_1 <= mOutPtr_reg_0_sp_1;
  pop <= \^pop\;
  push <= \^push\;
  start_once_reg <= \^start_once_reg\;
  start_once_reg_reg_0 <= \^start_once_reg_reg_0\;
\ap_CS_fsm[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2EEEEEEECCCCCCCC"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^start_once_reg_reg_0\,
      I3 => stream1_empty_n,
      I4 => stream2_full_n,
      I5 => stream3_full_n,
      O => ap_NS_fsm(0)
    );
\ap_CS_fsm[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D111111133333333"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^start_once_reg_reg_0\,
      I3 => stream1_empty_n,
      I4 => stream2_full_n,
      I5 => stream3_full_n,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[1]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^start_once_reg\,
      I1 => start_for_reconstruct_signal_U0_full_n,
      I2 => compute_magnitude_square_U0_ap_start,
      O => \^start_once_reg_reg_0\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      PRE => ap_rst_n_inv,
      Q => \^q\(0)
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => ap_rst_n_inv,
      D => ap_NS_fsm(1),
      Q => \^q\(1)
    );
flow_control_loop_pipe_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_6
     port map (
      D(8 downto 0) => p_1_in(8 downto 0),
      E(0) => flow_control_loop_pipe_U_n_9,
      Q(8 downto 0) => i_021_fu_42(8 downto 0),
      ap_clk => ap_clk,
      ap_loop_init_reg_0(1 downto 0) => \^q\(1 downto 0),
      ap_rst_n => ap_rst_n,
      compute_magnitude_square_U0_ap_ready => \^compute_magnitude_square_u0_ap_ready\,
      \i_021_fu_42_reg[0]\ => \^start_once_reg_reg_0\,
      \i_021_fu_42_reg[5]\ => \i_021_fu_42[5]_i_2_n_0\,
      \i_021_fu_42_reg[6]\ => \i_021_fu_42[8]_i_4_n_0\,
      stream1_empty_n => stream1_empty_n,
      stream2_full_n => stream2_full_n,
      stream3_full_n => stream3_full_n
    );
\i_021_fu_42[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => i_021_fu_42(4),
      I1 => i_021_fu_42(2),
      I2 => i_021_fu_42(0),
      I3 => i_021_fu_42(1),
      I4 => i_021_fu_42(3),
      O => \i_021_fu_42[5]_i_2_n_0\
    );
\i_021_fu_42[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => i_021_fu_42(5),
      I1 => i_021_fu_42(3),
      I2 => i_021_fu_42(1),
      I3 => i_021_fu_42(0),
      I4 => i_021_fu_42(2),
      I5 => i_021_fu_42(4),
      O => \i_021_fu_42[8]_i_4_n_0\
    );
\i_021_fu_42_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_9,
      CLR => ap_rst_n_inv,
      D => p_1_in(0),
      Q => i_021_fu_42(0)
    );
\i_021_fu_42_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_9,
      CLR => ap_rst_n_inv,
      D => p_1_in(1),
      Q => i_021_fu_42(1)
    );
\i_021_fu_42_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_9,
      CLR => ap_rst_n_inv,
      D => p_1_in(2),
      Q => i_021_fu_42(2)
    );
\i_021_fu_42_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_9,
      CLR => ap_rst_n_inv,
      D => p_1_in(3),
      Q => i_021_fu_42(3)
    );
\i_021_fu_42_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_9,
      CLR => ap_rst_n_inv,
      D => p_1_in(4),
      Q => i_021_fu_42(4)
    );
\i_021_fu_42_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_9,
      CLR => ap_rst_n_inv,
      D => p_1_in(5),
      Q => i_021_fu_42(5)
    );
\i_021_fu_42_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_9,
      CLR => ap_rst_n_inv,
      D => p_1_in(6),
      Q => i_021_fu_42(6)
    );
\i_021_fu_42_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_9,
      CLR => ap_rst_n_inv,
      D => p_1_in(7),
      Q => i_021_fu_42(7)
    );
\i_021_fu_42_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_9,
      CLR => ap_rst_n_inv,
      D => p_1_in(8),
      Q => i_021_fu_42(8)
    );
int_ap_idle_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^q\(0),
      I1 => int_ap_idle_reg(0),
      I2 => Block_entry_frame_counter_wr_proc_U0_ap_start,
      I3 => int_ap_idle_reg_0(0),
      O => \ap_CS_fsm_reg[0]_0\
    );
\mOutPtr[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \^push\,
      I1 => pop_0,
      O => \mOutPtr[0]_i_3_n_0\
    );
\mOutPtr[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^push\,
      I1 => pop_0,
      O => \mOutPtr[0]_i_4_n_0\
    );
\mOutPtr[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2D"
    )
        port map (
      I0 => \^push\,
      I1 => pop_0,
      I2 => mOutPtr_reg(3),
      O => \mOutPtr[0]_i_5_n_0\
    );
\mOutPtr[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2D"
    )
        port map (
      I0 => \^push\,
      I1 => pop_0,
      I2 => mOutPtr_reg(2),
      O => \mOutPtr[0]_i_6_n_0\
    );
\mOutPtr[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2D"
    )
        port map (
      I0 => \^push\,
      I1 => pop_0,
      I2 => mOutPtr_reg(1),
      O => \mOutPtr[0]_i_7_n_0\
    );
\mOutPtr[0]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \^push\,
      I1 => pop_0,
      I2 => mOutPtr_reg(0),
      O => \mOutPtr[0]_i_8_n_0\
    );
\mOutPtr[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1FE0E0E0E0E0E0E0"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^compute_magnitude_square_u0_stream2_write\,
      I2 => stream3_full_n,
      I3 => stream3_empty_n,
      I4 => stream4_i_full_n,
      I5 => mOutPtr_reg_0_sn_1,
      O => E(0)
    );
\mOutPtr[4]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^pop\,
      I1 => \num_data_cnt_reg[0]\(0),
      O => dout_vld_reg_1(0)
    );
\mOutPtr[4]_i_2__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2D"
    )
        port map (
      I0 => \^push\,
      I1 => pop_0,
      I2 => mOutPtr_reg(7),
      O => \mOutPtr[4]_i_2__4_n_0\
    );
\mOutPtr[4]_i_3__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2D"
    )
        port map (
      I0 => \^push\,
      I1 => pop_0,
      I2 => mOutPtr_reg(6),
      O => \mOutPtr[4]_i_3__4_n_0\
    );
\mOutPtr[4]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2D"
    )
        port map (
      I0 => \^push\,
      I1 => pop_0,
      I2 => mOutPtr_reg(5),
      O => \mOutPtr[4]_i_4__0_n_0\
    );
\mOutPtr[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2D"
    )
        port map (
      I0 => \^push\,
      I1 => pop_0,
      I2 => mOutPtr_reg(4),
      O => \mOutPtr[4]_i_5_n_0\
    );
\mOutPtr[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2D"
    )
        port map (
      I0 => \^push\,
      I1 => pop_0,
      I2 => mOutPtr_reg(11),
      O => \mOutPtr[8]_i_2_n_0\
    );
\mOutPtr[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2D"
    )
        port map (
      I0 => \^push\,
      I1 => pop_0,
      I2 => mOutPtr_reg(10),
      O => \mOutPtr[8]_i_3_n_0\
    );
\mOutPtr[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2D"
    )
        port map (
      I0 => \^push\,
      I1 => pop_0,
      I2 => mOutPtr_reg(9),
      O => \mOutPtr[8]_i_4_n_0\
    );
\mOutPtr[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2D"
    )
        port map (
      I0 => \^push\,
      I1 => pop_0,
      I2 => mOutPtr_reg(8),
      O => \mOutPtr[8]_i_5_n_0\
    );
\mOutPtr_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mOutPtr_reg[0]_i_2_n_0\,
      CO(2) => \mOutPtr_reg[0]_i_2_n_1\,
      CO(1) => \mOutPtr_reg[0]_i_2_n_2\,
      CO(0) => \mOutPtr_reg[0]_i_2_n_3\,
      CYINIT => \mOutPtr[0]_i_3_n_0\,
      DI(3 downto 1) => mOutPtr_reg(3 downto 1),
      DI(0) => \mOutPtr[0]_i_4_n_0\,
      O(3 downto 0) => O(3 downto 0),
      S(3) => \mOutPtr[0]_i_5_n_0\,
      S(2) => \mOutPtr[0]_i_6_n_0\,
      S(1) => \mOutPtr[0]_i_7_n_0\,
      S(0) => \mOutPtr[0]_i_8_n_0\
    );
\mOutPtr_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mOutPtr_reg[0]_i_2_n_0\,
      CO(3) => \mOutPtr_reg[4]_i_1_n_0\,
      CO(2) => \mOutPtr_reg[4]_i_1_n_1\,
      CO(1) => \mOutPtr_reg[4]_i_1_n_2\,
      CO(0) => \mOutPtr_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => mOutPtr_reg(7 downto 4),
      O(3 downto 0) => \mOutPtr_reg[7]\(3 downto 0),
      S(3) => \mOutPtr[4]_i_2__4_n_0\,
      S(2) => \mOutPtr[4]_i_3__4_n_0\,
      S(1) => \mOutPtr[4]_i_4__0_n_0\,
      S(0) => \mOutPtr[4]_i_5_n_0\
    );
\mOutPtr_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mOutPtr_reg[4]_i_1_n_0\,
      CO(3) => \NLW_mOutPtr_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \mOutPtr_reg[8]_i_1_n_1\,
      CO(1) => \mOutPtr_reg[8]_i_1_n_2\,
      CO(0) => \mOutPtr_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => mOutPtr_reg(10 downto 8),
      O(3 downto 0) => \mOutPtr_reg[10]\(3 downto 0),
      S(3) => \mOutPtr[8]_i_2_n_0\,
      S(2) => \mOutPtr[8]_i_3_n_0\,
      S(1) => \mOutPtr[8]_i_4_n_0\,
      S(0) => \mOutPtr[8]_i_5_n_0\
    );
mem_reg_3_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^start_once_reg_reg_0\,
      I1 => stream1_empty_n,
      I2 => stream2_full_n,
      I3 => \^q\(0),
      I4 => stream3_full_n,
      O => \^push\
    );
\mem_reg_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^pop\,
      I1 => ap_rst_n,
      O => ap_rst_n_0
    );
\num_data_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^push\,
      I1 => stream2_empty_n,
      I2 => reconstruct_signal_U0_stream6_write,
      O => dout_vld_reg
    );
\num_data_cnt[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D5"
    )
        port map (
      I0 => \^push\,
      I1 => reconstruct_signal_U0_stream6_write,
      I2 => stream2_empty_n,
      O => dout_vld_reg_2
    );
\num_data_cnt[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \^push\,
      I1 => reconstruct_signal_U0_stream6_write,
      I2 => stream2_empty_n,
      O => DI(0)
    );
\num_data_cnt[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => stream3_full_n,
      I1 => \^q\(0),
      I2 => stream2_full_n,
      I3 => stream1_empty_n,
      I4 => \^start_once_reg_reg_0\,
      O => \^compute_magnitude_square_u0_stream2_write\
    );
\num_data_cnt[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \num_data_cnt_reg[0]\(0),
      I1 => \^start_once_reg_reg_0\,
      I2 => stream1_empty_n,
      I3 => stream2_full_n,
      I4 => \^q\(0),
      I5 => stream3_full_n,
      O => dout_vld_reg_0(0)
    );
\num_data_cnt[4]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \num_data_cnt_reg[0]\(0),
      I1 => stream3_full_n,
      I2 => \^q\(0),
      I3 => stream2_full_n,
      I4 => stream1_empty_n,
      I5 => \^start_once_reg_reg_0\,
      O => p_8_in
    );
\raddr[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B333333300000000"
    )
        port map (
      I0 => \^start_once_reg_reg_0\,
      I1 => stream1_empty_n,
      I2 => stream2_full_n,
      I3 => \^q\(0),
      I4 => stream3_full_n,
      I5 => empty_n,
      O => \^pop\
    );
\start_once_reg_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5540"
    )
        port map (
      I0 => \^compute_magnitude_square_u0_ap_ready\,
      I1 => compute_magnitude_square_U0_ap_start,
      I2 => start_for_reconstruct_signal_U0_full_n,
      I3 => \^start_once_reg\,
      O => \start_once_reg_i_1__0_n_0\
    );
start_once_reg_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => ap_rst_n_inv,
      D => \start_once_reg_i_1__0_n_0\,
      Q => \^start_once_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w1_d8_S_1 is
  port (
    reset_noise_c_dout : out STD_LOGIC;
    reset_noise_c_empty_n : out STD_LOGIC;
    reset_noise_c_full_n : out STD_LOGIC;
    reset_noise : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    entry_proc_U0_noise_frame_count_c_write : in STD_LOGIC;
    \addr_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w1_d8_S_1 : entity is "denoise_top_fifo_w1_d8_S";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w1_d8_S_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w1_d8_S_1 is
  signal addr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal addr110_out : STD_LOGIC;
  signal \addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \addr[2]_i_2_n_0\ : STD_LOGIC;
  signal \empty_n_i_1__5_n_0\ : STD_LOGIC;
  signal \full_n_i_1__5_n_0\ : STD_LOGIC;
  signal \full_n_i_2__3_n_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__7_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \mOutPtr[2]_i_1__4_n_0\ : STD_LOGIC;
  signal \mOutPtr[3]_i_1__4_n_0\ : STD_LOGIC;
  signal \mOutPtr[3]_i_2__1_n_0\ : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal \^reset_noise_c_empty_n\ : STD_LOGIC;
  signal \^reset_noise_c_full_n\ : STD_LOGIC;
  signal reset_noise_c_num_data_valid : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \addr[2]_i_2\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \addr[2]_i_3__0\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \addr[2]_i_4__0\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \empty_n_i_1__5\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \full_n_i_1__5\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \full_n_i_2__3\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \mOutPtr[0]_i_1__7\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_1__3\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \mOutPtr[2]_i_1__4\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \mOutPtr[3]_i_2__1\ : label is "soft_lutpair106";
begin
  reset_noise_c_empty_n <= \^reset_noise_c_empty_n\;
  reset_noise_c_full_n <= \^reset_noise_c_full_n\;
U_denoise_top_fifo_w1_d8_S_ShiftReg: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w1_d8_S_ShiftReg
     port map (
      addr(2 downto 0) => addr(2 downto 0),
      ap_clk => ap_clk,
      entry_proc_U0_noise_frame_count_c_write => entry_proc_U0_noise_frame_count_c_write,
      reset_noise => reset_noise,
      reset_noise_c_dout => reset_noise_c_dout,
      \reset_noise_read_reg_380_reg[0]\ => \^reset_noise_c_full_n\
    );
\addr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF95FF40006A00"
    )
        port map (
      I0 => \addr_reg[0]_0\,
      I1 => \^reset_noise_c_full_n\,
      I2 => entry_proc_U0_noise_frame_count_c_write,
      I3 => \^reset_noise_c_empty_n\,
      I4 => \addr[2]_i_2_n_0\,
      I5 => addr(0),
      O => \addr[0]_i_1_n_0\
    );
\addr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55EFEFEFAA101010"
    )
        port map (
      I0 => addr(0),
      I1 => \addr[2]_i_2_n_0\,
      I2 => p_6_in,
      I3 => \^reset_noise_c_empty_n\,
      I4 => p_9_in,
      I5 => addr(1),
      O => \addr[1]_i_1_n_0\
    );
\addr[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => entry_proc_U0_noise_frame_count_c_write,
      I1 => \^reset_noise_c_full_n\,
      I2 => \addr_reg[0]_0\,
      I3 => \^reset_noise_c_empty_n\,
      O => p_9_in
    );
\addr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777FEFF88880100"
    )
        port map (
      I0 => addr(1),
      I1 => addr(0),
      I2 => \addr[2]_i_2_n_0\,
      I3 => p_6_in,
      I4 => addr110_out,
      I5 => addr(2),
      O => \addr[2]_i_1_n_0\
    );
\addr[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => reset_noise_c_num_data_valid(1),
      I1 => reset_noise_c_num_data_valid(0),
      I2 => reset_noise_c_num_data_valid(3),
      I3 => reset_noise_c_num_data_valid(2),
      O => \addr[2]_i_2_n_0\
    );
\addr[2]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => \addr_reg[0]_0\,
      I1 => \^reset_noise_c_empty_n\,
      I2 => entry_proc_U0_noise_frame_count_c_write,
      I3 => \^reset_noise_c_full_n\,
      O => p_6_in
    );
\addr[2]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \addr_reg[0]_0\,
      I1 => \^reset_noise_c_full_n\,
      I2 => entry_proc_U0_noise_frame_count_c_write,
      I3 => \^reset_noise_c_empty_n\,
      O => addr110_out
    );
\addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \addr[0]_i_1_n_0\,
      Q => addr(0),
      R => ap_rst_n_inv
    );
\addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \addr[1]_i_1_n_0\,
      Q => addr(1),
      R => ap_rst_n_inv
    );
\addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \addr[2]_i_1_n_0\,
      Q => addr(2),
      R => ap_rst_n_inv
    );
\empty_n_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4C4C4C"
    )
        port map (
      I0 => \addr[2]_i_2_n_0\,
      I1 => \^reset_noise_c_empty_n\,
      I2 => \addr_reg[0]_0\,
      I3 => \^reset_noise_c_full_n\,
      I4 => entry_proc_U0_noise_frame_count_c_write,
      O => \empty_n_i_1__5_n_0\
    );
empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \empty_n_i_1__5_n_0\,
      Q => \^reset_noise_c_empty_n\,
      R => ap_rst_n_inv
    );
\full_n_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4C4C4C"
    )
        port map (
      I0 => \full_n_i_2__3_n_0\,
      I1 => \^reset_noise_c_full_n\,
      I2 => entry_proc_U0_noise_frame_count_c_write,
      I3 => \^reset_noise_c_empty_n\,
      I4 => \addr_reg[0]_0\,
      O => \full_n_i_1__5_n_0\
    );
\full_n_i_2__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => reset_noise_c_num_data_valid(1),
      I1 => reset_noise_c_num_data_valid(0),
      I2 => reset_noise_c_num_data_valid(3),
      I3 => reset_noise_c_num_data_valid(2),
      O => \full_n_i_2__3_n_0\
    );
full_n_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \full_n_i_1__5_n_0\,
      Q => \^reset_noise_c_full_n\,
      S => ap_rst_n_inv
    );
\mOutPtr[0]_i_1__7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_noise_c_num_data_valid(0),
      O => \mOutPtr[0]_i_1__7_n_0\
    );
\mOutPtr[1]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => reset_noise_c_num_data_valid(0),
      I1 => p_9_in,
      I2 => reset_noise_c_num_data_valid(1),
      O => \mOutPtr[1]_i_1__3_n_0\
    );
\mOutPtr[2]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => p_9_in,
      I1 => reset_noise_c_num_data_valid(0),
      I2 => reset_noise_c_num_data_valid(2),
      I3 => reset_noise_c_num_data_valid(1),
      O => \mOutPtr[2]_i_1__4_n_0\
    );
\mOutPtr[3]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \^reset_noise_c_full_n\,
      I1 => entry_proc_U0_noise_frame_count_c_write,
      I2 => \^reset_noise_c_empty_n\,
      I3 => \addr_reg[0]_0\,
      O => \mOutPtr[3]_i_1__4_n_0\
    );
\mOutPtr[3]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => p_9_in,
      I1 => reset_noise_c_num_data_valid(0),
      I2 => reset_noise_c_num_data_valid(1),
      I3 => reset_noise_c_num_data_valid(3),
      I4 => reset_noise_c_num_data_valid(2),
      O => \mOutPtr[3]_i_2__1_n_0\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr[3]_i_1__4_n_0\,
      D => \mOutPtr[0]_i_1__7_n_0\,
      Q => reset_noise_c_num_data_valid(0),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr[3]_i_1__4_n_0\,
      D => \mOutPtr[1]_i_1__3_n_0\,
      Q => reset_noise_c_num_data_valid(1),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr[3]_i_1__4_n_0\,
      D => \mOutPtr[2]_i_1__4_n_0\,
      Q => reset_noise_c_num_data_valid(2),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr[3]_i_1__4_n_0\,
      D => \mOutPtr[3]_i_2__1_n_0\,
      Q => reset_noise_c_num_data_valid(3),
      R => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w4_d8_S is
  port (
    noise_frame_count_c_full_n : out STD_LOGIC;
    empty_n_reg_0 : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    beta_c_empty_n : in STD_LOGIC;
    cmp_i97_loc_empty_n : in STD_LOGIC;
    reset_noise_c_empty_n : in STD_LOGIC;
    alpha_c_empty_n : in STD_LOGIC;
    Block_entry_frame_counter_wr_proc_U0_ap_start : in STD_LOGIC;
    entry_proc_U0_noise_frame_count_c_write : in STD_LOGIC;
    \addr_reg[0]_0\ : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w4_d8_S;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w4_d8_S is
  signal addr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal addr110_out : STD_LOGIC;
  signal \addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \addr[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \empty_n_i_1__4_n_0\ : STD_LOGIC;
  signal \full_n_i_1__4_n_0\ : STD_LOGIC;
  signal \full_n_i_2__4_n_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__8_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \mOutPtr[2]_i_1__3_n_0\ : STD_LOGIC;
  signal \mOutPtr[3]_i_1__3_n_0\ : STD_LOGIC;
  signal \mOutPtr[3]_i_2__0_n_0\ : STD_LOGIC;
  signal noise_frame_count_c_empty_n : STD_LOGIC;
  signal \^noise_frame_count_c_full_n\ : STD_LOGIC;
  signal noise_frame_count_c_num_data_valid : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_6_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal push : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \addr[2]_i_2__0\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \addr[2]_i_3\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \addr[2]_i_4\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \empty_n_i_1__4\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \full_n_i_1__4\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \full_n_i_2__4\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \mOutPtr[0]_i_1__8\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_1__2\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \mOutPtr[2]_i_1__3\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \mOutPtr[3]_i_2__0\ : label is "soft_lutpair94";
begin
  noise_frame_count_c_full_n <= \^noise_frame_count_c_full_n\;
U_denoise_top_fifo_w4_d8_S_ShiftReg: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w4_d8_S_ShiftReg
     port map (
      addr(2 downto 0) => addr(2 downto 0),
      ap_clk => ap_clk,
      entry_proc_U0_noise_frame_count_c_write => entry_proc_U0_noise_frame_count_c_write,
      \in\(3 downto 0) => \in\(3 downto 0),
      \noise_frame_count_read_reg_372_reg[3]\ => \^noise_frame_count_c_full_n\,
      \out\(3 downto 0) => \out\(3 downto 0),
      push => push
    );
\addr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF95FF40006A00"
    )
        port map (
      I0 => \addr_reg[0]_0\,
      I1 => \^noise_frame_count_c_full_n\,
      I2 => entry_proc_U0_noise_frame_count_c_write,
      I3 => noise_frame_count_c_empty_n,
      I4 => \addr[2]_i_2__0_n_0\,
      I5 => addr(0),
      O => \addr[0]_i_1_n_0\
    );
\addr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEF5FFF0010A000"
    )
        port map (
      I0 => addr(0),
      I1 => \addr[2]_i_2__0_n_0\,
      I2 => noise_frame_count_c_empty_n,
      I3 => push,
      I4 => \addr_reg[0]_0\,
      I5 => addr(1),
      O => \addr[1]_i_1_n_0\
    );
\addr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777FEFF88880100"
    )
        port map (
      I0 => addr(1),
      I1 => addr(0),
      I2 => \addr[2]_i_2__0_n_0\,
      I3 => p_6_in,
      I4 => addr110_out,
      I5 => addr(2),
      O => \addr[2]_i_1_n_0\
    );
\addr[2]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => noise_frame_count_c_num_data_valid(1),
      I1 => noise_frame_count_c_num_data_valid(0),
      I2 => noise_frame_count_c_num_data_valid(3),
      I3 => noise_frame_count_c_num_data_valid(2),
      O => \addr[2]_i_2__0_n_0\
    );
\addr[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => \addr_reg[0]_0\,
      I1 => noise_frame_count_c_empty_n,
      I2 => entry_proc_U0_noise_frame_count_c_write,
      I3 => \^noise_frame_count_c_full_n\,
      O => p_6_in
    );
\addr[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \addr_reg[0]_0\,
      I1 => \^noise_frame_count_c_full_n\,
      I2 => entry_proc_U0_noise_frame_count_c_write,
      I3 => noise_frame_count_c_empty_n,
      O => addr110_out
    );
\addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \addr[0]_i_1_n_0\,
      Q => addr(0),
      R => ap_rst_n_inv
    );
\addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \addr[1]_i_1_n_0\,
      Q => addr(1),
      R => ap_rst_n_inv
    );
\addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \addr[2]_i_1_n_0\,
      Q => addr(2),
      R => ap_rst_n_inv
    );
\empty_n_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4C4C4C"
    )
        port map (
      I0 => \addr[2]_i_2__0_n_0\,
      I1 => noise_frame_count_c_empty_n,
      I2 => \addr_reg[0]_0\,
      I3 => \^noise_frame_count_c_full_n\,
      I4 => entry_proc_U0_noise_frame_count_c_write,
      O => \empty_n_i_1__4_n_0\
    );
empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \empty_n_i_1__4_n_0\,
      Q => noise_frame_count_c_empty_n,
      R => ap_rst_n_inv
    );
\full_n_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4C4C4C"
    )
        port map (
      I0 => \full_n_i_2__4_n_0\,
      I1 => \^noise_frame_count_c_full_n\,
      I2 => entry_proc_U0_noise_frame_count_c_write,
      I3 => noise_frame_count_c_empty_n,
      I4 => \addr_reg[0]_0\,
      O => \full_n_i_1__4_n_0\
    );
\full_n_i_2__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => noise_frame_count_c_num_data_valid(1),
      I1 => noise_frame_count_c_num_data_valid(0),
      I2 => noise_frame_count_c_num_data_valid(3),
      I3 => noise_frame_count_c_num_data_valid(2),
      O => \full_n_i_2__4_n_0\
    );
full_n_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \full_n_i_1__4_n_0\,
      Q => \^noise_frame_count_c_full_n\,
      S => ap_rst_n_inv
    );
\mOutPtr[0]_i_1__8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => noise_frame_count_c_num_data_valid(0),
      O => \mOutPtr[0]_i_1__8_n_0\
    );
\mOutPtr[1]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => noise_frame_count_c_num_data_valid(0),
      I1 => p_9_in,
      I2 => noise_frame_count_c_num_data_valid(1),
      O => \mOutPtr[1]_i_1__2_n_0\
    );
\mOutPtr[2]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => p_9_in,
      I1 => noise_frame_count_c_num_data_valid(0),
      I2 => noise_frame_count_c_num_data_valid(2),
      I3 => noise_frame_count_c_num_data_valid(1),
      O => \mOutPtr[2]_i_1__3_n_0\
    );
\mOutPtr[3]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \^noise_frame_count_c_full_n\,
      I1 => entry_proc_U0_noise_frame_count_c_write,
      I2 => noise_frame_count_c_empty_n,
      I3 => \addr_reg[0]_0\,
      O => \mOutPtr[3]_i_1__3_n_0\
    );
\mOutPtr[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => p_9_in,
      I1 => noise_frame_count_c_num_data_valid(0),
      I2 => noise_frame_count_c_num_data_valid(1),
      I3 => noise_frame_count_c_num_data_valid(3),
      I4 => noise_frame_count_c_num_data_valid(2),
      O => \mOutPtr[3]_i_2__0_n_0\
    );
\mOutPtr[3]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => entry_proc_U0_noise_frame_count_c_write,
      I1 => \^noise_frame_count_c_full_n\,
      I2 => \addr_reg[0]_0\,
      I3 => noise_frame_count_c_empty_n,
      O => p_9_in
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr[3]_i_1__3_n_0\,
      D => \mOutPtr[0]_i_1__8_n_0\,
      Q => noise_frame_count_c_num_data_valid(0),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr[3]_i_1__3_n_0\,
      D => \mOutPtr[1]_i_1__2_n_0\,
      Q => noise_frame_count_c_num_data_valid(1),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr[3]_i_1__3_n_0\,
      D => \mOutPtr[2]_i_1__3_n_0\,
      Q => noise_frame_count_c_num_data_valid(2),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr[3]_i_1__3_n_0\,
      D => \mOutPtr[3]_i_2__0_n_0\,
      Q => noise_frame_count_c_num_data_valid(3),
      R => ap_rst_n_inv
    );
\reset_noise_read_reg_380[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => noise_frame_count_c_empty_n,
      I1 => beta_c_empty_n,
      I2 => cmp_i97_loc_empty_n,
      I3 => reset_noise_c_empty_n,
      I4 => alpha_c_empty_n,
      I5 => Block_entry_frame_counter_wr_proc_U0_ap_start,
      O => empty_n_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d16_A is
  port (
    DIADI : out STD_LOGIC_VECTOR ( 10 downto 0 );
    empty_n : out STD_LOGIC;
    stream1_empty_n : out STD_LOGIC;
    stream1_full_n : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    mem_reg : in STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    axi_to_internal_U0_stream1_din : in STD_LOGIC_VECTOR ( 64 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    compute_magnitude_square_U0_stream2_write : in STD_LOGIC;
    p_8_in : in STD_LOGIC;
    pop : in STD_LOGIC;
    mOutPtr111_out : in STD_LOGIC;
    stream3_full_n : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream2_full_n : in STD_LOGIC;
    dout_vld_reg_0 : in STD_LOGIC;
    \mOutPtr_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \num_data_cnt_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d16_A;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d16_A is
  signal dout_vld_i_1_n_0 : STD_LOGIC;
  signal \^empty_n\ : STD_LOGIC;
  signal \empty_n_i_1__8_n_0\ : STD_LOGIC;
  signal \empty_n_i_2__4_n_0\ : STD_LOGIC;
  signal \full_n1__4\ : STD_LOGIC;
  signal \full_n_i_1__8_n_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1__7_n_0\ : STD_LOGIC;
  signal \mOutPtr[2]_i_1__8_n_0\ : STD_LOGIC;
  signal \mOutPtr[3]_i_1__8_n_0\ : STD_LOGIC;
  signal \mOutPtr[4]_i_2__3_n_0\ : STD_LOGIC;
  signal mOutPtr_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \num_data_cnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \num_data_cnt[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \num_data_cnt[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \num_data_cnt[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \num_data_cnt[4]_i_2__0_n_0\ : STD_LOGIC;
  signal num_data_cnt_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal raddr : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \raddr[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \raddr[1]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[3]_i_2_n_0\ : STD_LOGIC;
  signal \^stream1_empty_n\ : STD_LOGIC;
  signal \^stream1_full_n\ : STD_LOGIC;
  signal waddr : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \waddr[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \waddr[1]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[3]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \empty_n_i_2__4\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \mOutPtr[0]_i_1__1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_1__7\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \mOutPtr[2]_i_1__8\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \num_data_cnt[0]_i_1__0\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \num_data_cnt[1]_i_1__0\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \raddr[0]_i_1__0\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \raddr[1]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \raddr[2]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \raddr[3]_i_2\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \waddr[0]_i_1__0\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \waddr[1]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \waddr[2]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \waddr[3]_i_1\ : label is "soft_lutpair121";
begin
  empty_n <= \^empty_n\;
  stream1_empty_n <= \^stream1_empty_n\;
  stream1_full_n <= \^stream1_full_n\;
U_denoise_top_fifo_w65_d16_A_ram: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d16_A_ram_4
     port map (
      DIADI(10 downto 0) => DIADI(10 downto 0),
      E(0) => E(0),
      Q(3 downto 0) => raddr(3 downto 0),
      ap_clk => ap_clk,
      ap_rst_n_inv => ap_rst_n_inv,
      axi_to_internal_U0_stream1_din(64 downto 0) => axi_to_internal_U0_stream1_din(64 downto 0),
      mem_reg_0 => mem_reg,
      mem_reg_1(3 downto 0) => waddr(3 downto 0)
    );
dout_vld_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFAAAAFFFFAAAA"
    )
        port map (
      I0 => \^empty_n\,
      I1 => stream3_full_n,
      I2 => Q(0),
      I3 => stream2_full_n,
      I4 => \^stream1_empty_n\,
      I5 => dout_vld_reg_0,
      O => dout_vld_i_1_n_0
    );
dout_vld_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => dout_vld_i_1_n_0,
      Q => \^stream1_empty_n\,
      R => ap_rst_n_inv
    );
\empty_n_i_1__8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F730"
    )
        port map (
      I0 => \empty_n_i_2__4_n_0\,
      I1 => pop,
      I2 => E(0),
      I3 => \^empty_n\,
      O => \empty_n_i_1__8_n_0\
    );
\empty_n_i_2__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => mOutPtr_reg(0),
      I1 => mOutPtr_reg(1),
      I2 => mOutPtr_reg(2),
      I3 => mOutPtr_reg(4),
      I4 => mOutPtr_reg(3),
      O => \empty_n_i_2__4_n_0\
    );
empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \empty_n_i_1__8_n_0\,
      Q => \^empty_n\,
      R => ap_rst_n_inv
    );
\full_n_i_1__8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55551000"
    )
        port map (
      I0 => \full_n1__4\,
      I1 => E(0),
      I2 => \^stream1_empty_n\,
      I3 => compute_magnitude_square_U0_stream2_write,
      I4 => \^stream1_full_n\,
      O => \full_n_i_1__8_n_0\
    );
\full_n_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => num_data_cnt_reg(3),
      I1 => num_data_cnt_reg(4),
      I2 => num_data_cnt_reg(2),
      I3 => num_data_cnt_reg(1),
      I4 => num_data_cnt_reg(0),
      I5 => p_8_in,
      O => \full_n1__4\
    );
full_n_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \full_n_i_1__8_n_0\,
      Q => \^stream1_full_n\,
      S => ap_rst_n_inv
    );
\mOutPtr[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mOutPtr_reg(0),
      O => \mOutPtr[0]_i_1__1_n_0\
    );
\mOutPtr[1]_i_1__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9A65"
    )
        port map (
      I0 => mOutPtr_reg(0),
      I1 => pop,
      I2 => E(0),
      I3 => mOutPtr_reg(1),
      O => \mOutPtr[1]_i_1__7_n_0\
    );
\mOutPtr[2]_i_1__8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BF40F40B"
    )
        port map (
      I0 => pop,
      I1 => E(0),
      I2 => mOutPtr_reg(0),
      I3 => mOutPtr_reg(2),
      I4 => mOutPtr_reg(1),
      O => \mOutPtr[2]_i_1__8_n_0\
    );
\mOutPtr[3]_i_1__8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF4000FFF4000B"
    )
        port map (
      I0 => pop,
      I1 => E(0),
      I2 => mOutPtr_reg(0),
      I3 => mOutPtr_reg(1),
      I4 => mOutPtr_reg(3),
      I5 => mOutPtr_reg(2),
      O => \mOutPtr[3]_i_1__8_n_0\
    );
\mOutPtr[4]_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF8000FFFE0001"
    )
        port map (
      I0 => mOutPtr111_out,
      I1 => mOutPtr_reg(0),
      I2 => mOutPtr_reg(1),
      I3 => mOutPtr_reg(2),
      I4 => mOutPtr_reg(4),
      I5 => mOutPtr_reg(3),
      O => \mOutPtr[4]_i_2__3_n_0\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr_reg[0]_0\(0),
      D => \mOutPtr[0]_i_1__1_n_0\,
      Q => mOutPtr_reg(0),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr_reg[0]_0\(0),
      D => \mOutPtr[1]_i_1__7_n_0\,
      Q => mOutPtr_reg(1),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr_reg[0]_0\(0),
      D => \mOutPtr[2]_i_1__8_n_0\,
      Q => mOutPtr_reg(2),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr_reg[0]_0\(0),
      D => \mOutPtr[3]_i_1__8_n_0\,
      Q => mOutPtr_reg(3),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr_reg[0]_0\(0),
      D => \mOutPtr[4]_i_2__3_n_0\,
      Q => mOutPtr_reg(4),
      R => ap_rst_n_inv
    );
\num_data_cnt[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_data_cnt_reg(0),
      O => \num_data_cnt[0]_i_1__0_n_0\
    );
\num_data_cnt[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"95AA6A55"
    )
        port map (
      I0 => num_data_cnt_reg(0),
      I1 => \^stream1_empty_n\,
      I2 => compute_magnitude_square_U0_stream2_write,
      I3 => E(0),
      I4 => num_data_cnt_reg(1),
      O => \num_data_cnt[1]_i_1__0_n_0\
    );
\num_data_cnt[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF7000FF70008F"
    )
        port map (
      I0 => \^stream1_empty_n\,
      I1 => compute_magnitude_square_U0_stream2_write,
      I2 => E(0),
      I3 => num_data_cnt_reg(0),
      I4 => num_data_cnt_reg(2),
      I5 => num_data_cnt_reg(1),
      O => \num_data_cnt[2]_i_1__0_n_0\
    );
\num_data_cnt[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => p_8_in,
      I1 => num_data_cnt_reg(0),
      I2 => num_data_cnt_reg(1),
      I3 => num_data_cnt_reg(3),
      I4 => num_data_cnt_reg(2),
      O => \num_data_cnt[3]_i_1__0_n_0\
    );
\num_data_cnt[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF8000FFFE0001"
    )
        port map (
      I0 => p_8_in,
      I1 => num_data_cnt_reg(0),
      I2 => num_data_cnt_reg(1),
      I3 => num_data_cnt_reg(2),
      I4 => num_data_cnt_reg(4),
      I5 => num_data_cnt_reg(3),
      O => \num_data_cnt[4]_i_2__0_n_0\
    );
\num_data_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \num_data_cnt_reg[0]_0\(0),
      D => \num_data_cnt[0]_i_1__0_n_0\,
      Q => num_data_cnt_reg(0),
      R => ap_rst_n_inv
    );
\num_data_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \num_data_cnt_reg[0]_0\(0),
      D => \num_data_cnt[1]_i_1__0_n_0\,
      Q => num_data_cnt_reg(1),
      R => ap_rst_n_inv
    );
\num_data_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \num_data_cnt_reg[0]_0\(0),
      D => \num_data_cnt[2]_i_1__0_n_0\,
      Q => num_data_cnt_reg(2),
      R => ap_rst_n_inv
    );
\num_data_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \num_data_cnt_reg[0]_0\(0),
      D => \num_data_cnt[3]_i_1__0_n_0\,
      Q => num_data_cnt_reg(3),
      R => ap_rst_n_inv
    );
\num_data_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \num_data_cnt_reg[0]_0\(0),
      D => \num_data_cnt[4]_i_2__0_n_0\,
      Q => num_data_cnt_reg(4),
      R => ap_rst_n_inv
    );
\raddr[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"007F"
    )
        port map (
      I0 => raddr(1),
      I1 => raddr(2),
      I2 => raddr(3),
      I3 => raddr(0),
      O => \raddr[0]_i_1__0_n_0\
    );
\raddr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2666"
    )
        port map (
      I0 => raddr(0),
      I1 => raddr(1),
      I2 => raddr(2),
      I3 => raddr(3),
      O => \raddr[1]_i_1_n_0\
    );
\raddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3878"
    )
        port map (
      I0 => raddr(0),
      I1 => raddr(1),
      I2 => raddr(2),
      I3 => raddr(3),
      O => \raddr[2]_i_1_n_0\
    );
\raddr[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F80"
    )
        port map (
      I0 => raddr(0),
      I1 => raddr(1),
      I2 => raddr(2),
      I3 => raddr(3),
      O => \raddr[3]_i_2_n_0\
    );
\raddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => pop,
      D => \raddr[0]_i_1__0_n_0\,
      Q => raddr(0),
      R => ap_rst_n_inv
    );
\raddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => pop,
      D => \raddr[1]_i_1_n_0\,
      Q => raddr(1),
      R => ap_rst_n_inv
    );
\raddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => pop,
      D => \raddr[2]_i_1_n_0\,
      Q => raddr(2),
      R => ap_rst_n_inv
    );
\raddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => pop,
      D => \raddr[3]_i_2_n_0\,
      Q => raddr(3),
      R => ap_rst_n_inv
    );
\waddr[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"007F"
    )
        port map (
      I0 => waddr(1),
      I1 => waddr(2),
      I2 => waddr(3),
      I3 => waddr(0),
      O => \waddr[0]_i_1__0_n_0\
    );
\waddr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2666"
    )
        port map (
      I0 => waddr(0),
      I1 => waddr(1),
      I2 => waddr(2),
      I3 => waddr(3),
      O => \waddr[1]_i_1_n_0\
    );
\waddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3878"
    )
        port map (
      I0 => waddr(0),
      I1 => waddr(1),
      I2 => waddr(2),
      I3 => waddr(3),
      O => \waddr[2]_i_1_n_0\
    );
\waddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F80"
    )
        port map (
      I0 => waddr(0),
      I1 => waddr(1),
      I2 => waddr(2),
      I3 => waddr(3),
      O => \waddr[3]_i_1_n_0\
    );
\waddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \waddr[0]_i_1__0_n_0\,
      Q => waddr(0),
      R => ap_rst_n_inv
    );
\waddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \waddr[1]_i_1_n_0\,
      Q => waddr(1),
      R => ap_rst_n_inv
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \waddr[2]_i_1_n_0\,
      Q => waddr(2),
      R => ap_rst_n_inv
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \waddr[3]_i_1_n_0\,
      Q => waddr(3),
      R => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d16_A_3 is
  port (
    D : out STD_LOGIC_VECTOR ( 63 downto 0 );
    stream6_empty_n : out STD_LOGIC;
    stream6_full_n : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    DOBDO : in STD_LOGIC_VECTOR ( 0 to 0 );
    push : in STD_LOGIC;
    ap_ready_int : in STD_LOGIC;
    p_8_in : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d16_A_3 : entity is "denoise_top_fifo_w65_d16_A";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d16_A_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d16_A_3 is
  signal \dout_vld_i_1__1_n_0\ : STD_LOGIC;
  signal empty_n : STD_LOGIC;
  signal \empty_n_i_1__10_n_0\ : STD_LOGIC;
  signal \empty_n_i_2__7_n_0\ : STD_LOGIC;
  signal \full_n_i_1__10_n_0\ : STD_LOGIC;
  signal \full_n_i_2__9_n_0\ : STD_LOGIC;
  signal mOutPtr111_out : STD_LOGIC;
  signal \mOutPtr[0]_i_1__4_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1__6_n_0\ : STD_LOGIC;
  signal \mOutPtr[2]_i_1__7_n_0\ : STD_LOGIC;
  signal \mOutPtr[3]_i_1__7_n_0\ : STD_LOGIC;
  signal \mOutPtr[4]_i_1__2_n_0\ : STD_LOGIC;
  signal \mOutPtr[4]_i_2__2_n_0\ : STD_LOGIC;
  signal mOutPtr_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \num_data_cnt[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \num_data_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \num_data_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \num_data_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \num_data_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal num_data_cnt_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal pop : STD_LOGIC;
  signal raddr : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \raddr[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \raddr[1]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[3]_i_2_n_0\ : STD_LOGIC;
  signal \^stream6_empty_n\ : STD_LOGIC;
  signal \^stream6_full_n\ : STD_LOGIC;
  signal waddr : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \waddr[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \waddr[1]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[3]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \empty_n_i_1__10\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \mOutPtr[0]_i_1__4\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \mOutPtr[2]_i_1__7\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \mOutPtr[4]_i_3__2\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \num_data_cnt[0]_i_1__1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \num_data_cnt[3]_i_1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \raddr[0]_i_1__1\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \raddr[1]_i_1\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \raddr[2]_i_1\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \raddr[3]_i_2\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \waddr[0]_i_1__1\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \waddr[1]_i_1\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \waddr[2]_i_1\ : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \waddr[3]_i_1\ : label is "soft_lutpair142";
begin
  stream6_empty_n <= \^stream6_empty_n\;
  stream6_full_n <= \^stream6_full_n\;
U_denoise_top_fifo_w65_d16_A_ram: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d16_A_ram
     port map (
      D(63 downto 0) => D(63 downto 0),
      DOBDO(0) => DOBDO(0),
      Q(3 downto 0) => raddr(3 downto 0),
      ap_clk => ap_clk,
      ap_ready_int => ap_ready_int,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      empty_n => empty_n,
      mem_reg_0(3 downto 0) => waddr(3 downto 0),
      mem_reg_1 => \^stream6_empty_n\,
      push => push
    );
\dout_vld_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => empty_n,
      I1 => ap_ready_int,
      I2 => \^stream6_empty_n\,
      O => \dout_vld_i_1__1_n_0\
    );
dout_vld_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \dout_vld_i_1__1_n_0\,
      Q => \^stream6_empty_n\,
      R => ap_rst_n_inv
    );
\empty_n_i_1__10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF5D00"
    )
        port map (
      I0 => \empty_n_i_2__7_n_0\,
      I1 => \^stream6_empty_n\,
      I2 => ap_ready_int,
      I3 => empty_n,
      I4 => push,
      O => \empty_n_i_1__10_n_0\
    );
\empty_n_i_2__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => mOutPtr_reg(0),
      I1 => mOutPtr_reg(1),
      I2 => mOutPtr_reg(2),
      I3 => mOutPtr_reg(4),
      I4 => mOutPtr_reg(3),
      O => \empty_n_i_2__7_n_0\
    );
empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \empty_n_i_1__10_n_0\,
      Q => empty_n,
      R => ap_rst_n_inv
    );
\full_n_i_1__10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7773000"
    )
        port map (
      I0 => \full_n_i_2__9_n_0\,
      I1 => push,
      I2 => \^stream6_empty_n\,
      I3 => ap_ready_int,
      I4 => \^stream6_full_n\,
      O => \full_n_i_1__10_n_0\
    );
\full_n_i_2__9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => num_data_cnt_reg(0),
      I1 => num_data_cnt_reg(1),
      I2 => num_data_cnt_reg(2),
      I3 => num_data_cnt_reg(4),
      I4 => num_data_cnt_reg(3),
      O => \full_n_i_2__9_n_0\
    );
full_n_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \full_n_i_1__10_n_0\,
      Q => \^stream6_full_n\,
      S => ap_rst_n_inv
    );
\mOutPtr[0]_i_1__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mOutPtr_reg(0),
      O => \mOutPtr[0]_i_1__4_n_0\
    );
\mOutPtr[1]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A655AAAA59AA5555"
    )
        port map (
      I0 => mOutPtr_reg(0),
      I1 => \^stream6_empty_n\,
      I2 => ap_ready_int,
      I3 => empty_n,
      I4 => push,
      I5 => mOutPtr_reg(1),
      O => \mOutPtr[1]_i_1__6_n_0\
    );
\mOutPtr[2]_i_1__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BF40F40B"
    )
        port map (
      I0 => pop,
      I1 => push,
      I2 => mOutPtr_reg(0),
      I3 => mOutPtr_reg(2),
      I4 => mOutPtr_reg(1),
      O => \mOutPtr[2]_i_1__7_n_0\
    );
\mOutPtr[3]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF4000FFF4000B"
    )
        port map (
      I0 => pop,
      I1 => push,
      I2 => mOutPtr_reg(0),
      I3 => mOutPtr_reg(1),
      I4 => mOutPtr_reg(3),
      I5 => mOutPtr_reg(2),
      O => \mOutPtr[3]_i_1__7_n_0\
    );
\mOutPtr[4]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2FD0"
    )
        port map (
      I0 => \^stream6_empty_n\,
      I1 => ap_ready_int,
      I2 => empty_n,
      I3 => push,
      O => \mOutPtr[4]_i_1__2_n_0\
    );
\mOutPtr[4]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF8000FFFE0001"
    )
        port map (
      I0 => mOutPtr111_out,
      I1 => mOutPtr_reg(0),
      I2 => mOutPtr_reg(1),
      I3 => mOutPtr_reg(2),
      I4 => mOutPtr_reg(4),
      I5 => mOutPtr_reg(3),
      O => \mOutPtr[4]_i_2__2_n_0\
    );
\mOutPtr[4]_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A22"
    )
        port map (
      I0 => push,
      I1 => empty_n,
      I2 => ap_ready_int,
      I3 => \^stream6_empty_n\,
      O => mOutPtr111_out
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr[4]_i_1__2_n_0\,
      D => \mOutPtr[0]_i_1__4_n_0\,
      Q => mOutPtr_reg(0),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr[4]_i_1__2_n_0\,
      D => \mOutPtr[1]_i_1__6_n_0\,
      Q => mOutPtr_reg(1),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr[4]_i_1__2_n_0\,
      D => \mOutPtr[2]_i_1__7_n_0\,
      Q => mOutPtr_reg(2),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr[4]_i_1__2_n_0\,
      D => \mOutPtr[3]_i_1__7_n_0\,
      Q => mOutPtr_reg(3),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr[4]_i_1__2_n_0\,
      D => \mOutPtr[4]_i_2__2_n_0\,
      Q => mOutPtr_reg(4),
      R => ap_rst_n_inv
    );
\num_data_cnt[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_data_cnt_reg(0),
      O => \num_data_cnt[0]_i_1__1_n_0\
    );
\num_data_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"95AA6A55"
    )
        port map (
      I0 => num_data_cnt_reg(0),
      I1 => \^stream6_empty_n\,
      I2 => ap_ready_int,
      I3 => push,
      I4 => num_data_cnt_reg(1),
      O => \num_data_cnt[1]_i_1_n_0\
    );
\num_data_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF7000FF70008F"
    )
        port map (
      I0 => \^stream6_empty_n\,
      I1 => ap_ready_int,
      I2 => push,
      I3 => num_data_cnt_reg(0),
      I4 => num_data_cnt_reg(2),
      I5 => num_data_cnt_reg(1),
      O => \num_data_cnt[2]_i_1_n_0\
    );
\num_data_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => p_8_in,
      I1 => num_data_cnt_reg(0),
      I2 => num_data_cnt_reg(1),
      I3 => num_data_cnt_reg(3),
      I4 => num_data_cnt_reg(2),
      O => \num_data_cnt[3]_i_1_n_0\
    );
\num_data_cnt[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF8000FFFE0001"
    )
        port map (
      I0 => p_8_in,
      I1 => num_data_cnt_reg(0),
      I2 => num_data_cnt_reg(1),
      I3 => num_data_cnt_reg(2),
      I4 => num_data_cnt_reg(4),
      I5 => num_data_cnt_reg(3),
      O => \num_data_cnt[4]_i_2_n_0\
    );
\num_data_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \num_data_cnt[0]_i_1__1_n_0\,
      Q => num_data_cnt_reg(0),
      R => ap_rst_n_inv
    );
\num_data_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \num_data_cnt[1]_i_1_n_0\,
      Q => num_data_cnt_reg(1),
      R => ap_rst_n_inv
    );
\num_data_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \num_data_cnt[2]_i_1_n_0\,
      Q => num_data_cnt_reg(2),
      R => ap_rst_n_inv
    );
\num_data_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \num_data_cnt[3]_i_1_n_0\,
      Q => num_data_cnt_reg(3),
      R => ap_rst_n_inv
    );
\num_data_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \num_data_cnt[4]_i_2_n_0\,
      Q => num_data_cnt_reg(4),
      R => ap_rst_n_inv
    );
\raddr[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"007F"
    )
        port map (
      I0 => raddr(1),
      I1 => raddr(2),
      I2 => raddr(3),
      I3 => raddr(0),
      O => \raddr[0]_i_1__1_n_0\
    );
\raddr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2666"
    )
        port map (
      I0 => raddr(0),
      I1 => raddr(1),
      I2 => raddr(2),
      I3 => raddr(3),
      O => \raddr[1]_i_1_n_0\
    );
\raddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3878"
    )
        port map (
      I0 => raddr(0),
      I1 => raddr(1),
      I2 => raddr(2),
      I3 => raddr(3),
      O => \raddr[2]_i_1_n_0\
    );
\raddr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \^stream6_empty_n\,
      I1 => ap_ready_int,
      I2 => empty_n,
      O => pop
    );
\raddr[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F80"
    )
        port map (
      I0 => raddr(0),
      I1 => raddr(1),
      I2 => raddr(2),
      I3 => raddr(3),
      O => \raddr[3]_i_2_n_0\
    );
\raddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => pop,
      D => \raddr[0]_i_1__1_n_0\,
      Q => raddr(0),
      R => ap_rst_n_inv
    );
\raddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => pop,
      D => \raddr[1]_i_1_n_0\,
      Q => raddr(1),
      R => ap_rst_n_inv
    );
\raddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => pop,
      D => \raddr[2]_i_1_n_0\,
      Q => raddr(2),
      R => ap_rst_n_inv
    );
\raddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => pop,
      D => \raddr[3]_i_2_n_0\,
      Q => raddr(3),
      R => ap_rst_n_inv
    );
\waddr[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"007F"
    )
        port map (
      I0 => waddr(1),
      I1 => waddr(2),
      I2 => waddr(3),
      I3 => waddr(0),
      O => \waddr[0]_i_1__1_n_0\
    );
\waddr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2666"
    )
        port map (
      I0 => waddr(0),
      I1 => waddr(1),
      I2 => waddr(2),
      I3 => waddr(3),
      O => \waddr[1]_i_1_n_0\
    );
\waddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3878"
    )
        port map (
      I0 => waddr(0),
      I1 => waddr(1),
      I2 => waddr(2),
      I3 => waddr(3),
      O => \waddr[2]_i_1_n_0\
    );
\waddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F80"
    )
        port map (
      I0 => waddr(0),
      I1 => waddr(1),
      I2 => waddr(2),
      I3 => waddr(3),
      O => \waddr[3]_i_1_n_0\
    );
\waddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => push,
      D => \waddr[0]_i_1__1_n_0\,
      Q => waddr(0),
      R => ap_rst_n_inv
    );
\waddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => push,
      D => \waddr[1]_i_1_n_0\,
      Q => waddr(1),
      R => ap_rst_n_inv
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => push,
      D => \waddr[2]_i_1_n_0\,
      Q => waddr(2),
      R => ap_rst_n_inv
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => push,
      D => \waddr[3]_i_1_n_0\,
      Q => waddr(3),
      R => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d2048_A is
  port (
    DOBDO : out STD_LOGIC_VECTOR ( 0 to 0 );
    mOutPtr_reg : out STD_LOGIC_VECTOR ( 11 downto 0 );
    empty_n : out STD_LOGIC;
    stream2_empty_n : out STD_LOGIC;
    stream2_full_n : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    push : in STD_LOGIC;
    mem_reg_3 : in STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    DIADI : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \mOutPtr_reg[0]_0\ : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \mOutPtr_reg[7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \mOutPtr_reg[11]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \num_data_cnt_reg[0]_0\ : in STD_LOGIC;
    \num_data_cnt_reg[3]_0\ : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream5_empty_n : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream6_full_n : in STD_LOGIC;
    dout_vld_reg_0 : in STD_LOGIC;
    reconstruct_signal_U0_stream6_write : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d2048_A;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d2048_A is
  signal \dout_vld_i_1__0_n_0\ : STD_LOGIC;
  signal \^empty_n\ : STD_LOGIC;
  signal \empty_n_i_1__9_n_0\ : STD_LOGIC;
  signal \empty_n_i_2__5_n_0\ : STD_LOGIC;
  signal \empty_n_i_3__0_n_0\ : STD_LOGIC;
  signal empty_n_i_4_n_0 : STD_LOGIC;
  signal \full_n_i_1__9_n_0\ : STD_LOGIC;
  signal \full_n_i_2__5_n_0\ : STD_LOGIC;
  signal full_n_i_3_n_0 : STD_LOGIC;
  signal full_n_i_4_n_0 : STD_LOGIC;
  signal \^moutptr_reg\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \num_data_cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \num_data_cnt[0]_i_7_n_0\ : STD_LOGIC;
  signal \num_data_cnt[0]_i_8_n_0\ : STD_LOGIC;
  signal \num_data_cnt[0]_i_9_n_0\ : STD_LOGIC;
  signal \num_data_cnt[4]_i_2__1_n_0\ : STD_LOGIC;
  signal \num_data_cnt[4]_i_3__1_n_0\ : STD_LOGIC;
  signal \num_data_cnt[4]_i_4_n_0\ : STD_LOGIC;
  signal \num_data_cnt[4]_i_5_n_0\ : STD_LOGIC;
  signal \num_data_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \num_data_cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \num_data_cnt[8]_i_4_n_0\ : STD_LOGIC;
  signal \num_data_cnt[8]_i_5_n_0\ : STD_LOGIC;
  signal num_data_cnt_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \num_data_cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \num_data_cnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \num_data_cnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \num_data_cnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \num_data_cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \num_data_cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \num_data_cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \num_data_cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \num_data_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \num_data_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \num_data_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \num_data_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \num_data_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \num_data_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \num_data_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \num_data_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \num_data_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \num_data_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \num_data_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \num_data_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \num_data_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \num_data_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \num_data_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal raddr : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \raddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[10]_i_2_n_0\ : STD_LOGIC;
  signal \raddr[10]_i_3_n_0\ : STD_LOGIC;
  signal \raddr[1]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[2]_i_2_n_0\ : STD_LOGIC;
  signal \raddr[2]_i_3_n_0\ : STD_LOGIC;
  signal \raddr[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \raddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[4]_i_2_n_0\ : STD_LOGIC;
  signal \raddr[5]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[5]_i_2_n_0\ : STD_LOGIC;
  signal \raddr[5]_i_3_n_0\ : STD_LOGIC;
  signal \raddr[5]_i_4_n_0\ : STD_LOGIC;
  signal \raddr[6]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[6]_i_2_n_0\ : STD_LOGIC;
  signal \raddr[6]_i_3_n_0\ : STD_LOGIC;
  signal \raddr[7]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[8]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[9]_i_1_n_0\ : STD_LOGIC;
  signal \^stream2_empty_n\ : STD_LOGIC;
  signal \^stream2_full_n\ : STD_LOGIC;
  signal waddr : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \waddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[10]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[10]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[1]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[2]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[2]_i_3_n_0\ : STD_LOGIC;
  signal \waddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[4]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \waddr[5]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[5]_i_3_n_0\ : STD_LOGIC;
  signal \waddr[5]_i_4_n_0\ : STD_LOGIC;
  signal \waddr[6]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[6]_i_2_n_0\ : STD_LOGIC;
  signal \waddr[6]_i_3_n_0\ : STD_LOGIC;
  signal \waddr[7]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[8]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[9]_i_1_n_0\ : STD_LOGIC;
  signal \NLW_num_data_cnt_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \num_data_cnt_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \num_data_cnt_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \num_data_cnt_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \raddr[1]_i_1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \raddr[2]_i_1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \raddr[2]_i_2\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \raddr[2]_i_3\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \raddr[5]_i_2\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \raddr[5]_i_3\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \raddr[5]_i_4\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \raddr[6]_i_2\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \waddr[1]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \waddr[2]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \waddr[2]_i_2\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \waddr[2]_i_3\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \waddr[5]_i_2\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \waddr[5]_i_3\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \waddr[5]_i_4\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \waddr[6]_i_2\ : label is "soft_lutpair129";
begin
  empty_n <= \^empty_n\;
  mOutPtr_reg(11 downto 0) <= \^moutptr_reg\(11 downto 0);
  stream2_empty_n <= \^stream2_empty_n\;
  stream2_full_n <= \^stream2_full_n\;
U_denoise_top_fifo_w65_d2048_A_ram: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d2048_A_ram
     port map (
      DIADI(10 downto 0) => DIADI(10 downto 0),
      DOBDO(0) => DOBDO(0),
      Q(10 downto 0) => waddr(10 downto 0),
      ap_clk => ap_clk,
      ap_rst_n_inv => ap_rst_n_inv,
      mem_reg_3_0 => mem_reg_3,
      mem_reg_3_1(10 downto 0) => raddr(10 downto 0),
      push => push
    );
\dout_vld_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFAAAAFFFFAAAA"
    )
        port map (
      I0 => \^empty_n\,
      I1 => stream5_empty_n,
      I2 => Q(0),
      I3 => stream6_full_n,
      I4 => \^stream2_empty_n\,
      I5 => dout_vld_reg_0,
      O => \dout_vld_i_1__0_n_0\
    );
dout_vld_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \dout_vld_i_1__0_n_0\,
      Q => \^stream2_empty_n\,
      R => ap_rst_n_inv
    );
\empty_n_i_1__9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F730"
    )
        port map (
      I0 => \empty_n_i_2__5_n_0\,
      I1 => E(0),
      I2 => push,
      I3 => \^empty_n\,
      O => \empty_n_i_1__9_n_0\
    );
\empty_n_i_2__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \empty_n_i_3__0_n_0\,
      I1 => \^moutptr_reg\(11),
      I2 => \^moutptr_reg\(10),
      I3 => \^moutptr_reg\(9),
      I4 => \^moutptr_reg\(8),
      I5 => empty_n_i_4_n_0,
      O => \empty_n_i_2__5_n_0\
    );
\empty_n_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^moutptr_reg\(7),
      I1 => \^moutptr_reg\(6),
      I2 => \^moutptr_reg\(5),
      I3 => \^moutptr_reg\(4),
      O => \empty_n_i_3__0_n_0\
    );
empty_n_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \^moutptr_reg\(1),
      I1 => \^moutptr_reg\(0),
      I2 => \^moutptr_reg\(3),
      I3 => \^moutptr_reg\(2),
      O => empty_n_i_4_n_0
    );
empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \empty_n_i_1__9_n_0\,
      Q => \^empty_n\,
      R => ap_rst_n_inv
    );
\full_n_i_1__9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7773000"
    )
        port map (
      I0 => \full_n_i_2__5_n_0\,
      I1 => push,
      I2 => \^stream2_empty_n\,
      I3 => reconstruct_signal_U0_stream6_write,
      I4 => \^stream2_full_n\,
      O => \full_n_i_1__9_n_0\
    );
\full_n_i_2__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => full_n_i_3_n_0,
      I1 => num_data_cnt_reg(11),
      I2 => num_data_cnt_reg(10),
      I3 => num_data_cnt_reg(9),
      I4 => num_data_cnt_reg(8),
      I5 => full_n_i_4_n_0,
      O => \full_n_i_2__5_n_0\
    );
full_n_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => num_data_cnt_reg(7),
      I1 => num_data_cnt_reg(6),
      I2 => num_data_cnt_reg(5),
      I3 => num_data_cnt_reg(4),
      O => full_n_i_3_n_0
    );
full_n_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => num_data_cnt_reg(1),
      I1 => num_data_cnt_reg(0),
      I2 => num_data_cnt_reg(3),
      I3 => num_data_cnt_reg(2),
      O => full_n_i_4_n_0
    );
full_n_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \full_n_i_1__9_n_0\,
      Q => \^stream2_full_n\,
      S => ap_rst_n_inv
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr_reg[0]_0\,
      D => O(0),
      Q => \^moutptr_reg\(0),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr_reg[0]_0\,
      D => \mOutPtr_reg[11]_0\(2),
      Q => \^moutptr_reg\(10),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr_reg[0]_0\,
      D => \mOutPtr_reg[11]_0\(3),
      Q => \^moutptr_reg\(11),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr_reg[0]_0\,
      D => O(1),
      Q => \^moutptr_reg\(1),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr_reg[0]_0\,
      D => O(2),
      Q => \^moutptr_reg\(2),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr_reg[0]_0\,
      D => O(3),
      Q => \^moutptr_reg\(3),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr_reg[0]_0\,
      D => \mOutPtr_reg[7]_0\(0),
      Q => \^moutptr_reg\(4),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr_reg[0]_0\,
      D => \mOutPtr_reg[7]_0\(1),
      Q => \^moutptr_reg\(5),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr_reg[0]_0\,
      D => \mOutPtr_reg[7]_0\(2),
      Q => \^moutptr_reg\(6),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr_reg[0]_0\,
      D => \mOutPtr_reg[7]_0\(3),
      Q => \^moutptr_reg\(7),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr_reg[0]_0\,
      D => \mOutPtr_reg[11]_0\(0),
      Q => \^moutptr_reg\(8),
      R => ap_rst_n_inv
    );
\mOutPtr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \mOutPtr_reg[0]_0\,
      D => \mOutPtr_reg[11]_0\(1),
      Q => \^moutptr_reg\(9),
      R => ap_rst_n_inv
    );
\num_data_cnt[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AD5"
    )
        port map (
      I0 => push,
      I1 => reconstruct_signal_U0_stream6_write,
      I2 => \^stream2_empty_n\,
      I3 => num_data_cnt_reg(3),
      O => \num_data_cnt[0]_i_6_n_0\
    );
\num_data_cnt[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AD5"
    )
        port map (
      I0 => push,
      I1 => reconstruct_signal_U0_stream6_write,
      I2 => \^stream2_empty_n\,
      I3 => num_data_cnt_reg(2),
      O => \num_data_cnt[0]_i_7_n_0\
    );
\num_data_cnt[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AD5"
    )
        port map (
      I0 => push,
      I1 => reconstruct_signal_U0_stream6_write,
      I2 => \^stream2_empty_n\,
      I3 => num_data_cnt_reg(1),
      O => \num_data_cnt[0]_i_8_n_0\
    );
\num_data_cnt[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D52A"
    )
        port map (
      I0 => push,
      I1 => reconstruct_signal_U0_stream6_write,
      I2 => \^stream2_empty_n\,
      I3 => num_data_cnt_reg(0),
      O => \num_data_cnt[0]_i_9_n_0\
    );
\num_data_cnt[4]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AD5"
    )
        port map (
      I0 => push,
      I1 => reconstruct_signal_U0_stream6_write,
      I2 => \^stream2_empty_n\,
      I3 => num_data_cnt_reg(7),
      O => \num_data_cnt[4]_i_2__1_n_0\
    );
\num_data_cnt[4]_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AD5"
    )
        port map (
      I0 => push,
      I1 => reconstruct_signal_U0_stream6_write,
      I2 => \^stream2_empty_n\,
      I3 => num_data_cnt_reg(6),
      O => \num_data_cnt[4]_i_3__1_n_0\
    );
\num_data_cnt[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AD5"
    )
        port map (
      I0 => push,
      I1 => reconstruct_signal_U0_stream6_write,
      I2 => \^stream2_empty_n\,
      I3 => num_data_cnt_reg(5),
      O => \num_data_cnt[4]_i_4_n_0\
    );
\num_data_cnt[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AD5"
    )
        port map (
      I0 => push,
      I1 => reconstruct_signal_U0_stream6_write,
      I2 => \^stream2_empty_n\,
      I3 => num_data_cnt_reg(4),
      O => \num_data_cnt[4]_i_5_n_0\
    );
\num_data_cnt[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AD5"
    )
        port map (
      I0 => push,
      I1 => reconstruct_signal_U0_stream6_write,
      I2 => \^stream2_empty_n\,
      I3 => num_data_cnt_reg(11),
      O => \num_data_cnt[8]_i_2_n_0\
    );
\num_data_cnt[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AD5"
    )
        port map (
      I0 => push,
      I1 => reconstruct_signal_U0_stream6_write,
      I2 => \^stream2_empty_n\,
      I3 => num_data_cnt_reg(10),
      O => \num_data_cnt[8]_i_3_n_0\
    );
\num_data_cnt[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AD5"
    )
        port map (
      I0 => push,
      I1 => reconstruct_signal_U0_stream6_write,
      I2 => \^stream2_empty_n\,
      I3 => num_data_cnt_reg(9),
      O => \num_data_cnt[8]_i_4_n_0\
    );
\num_data_cnt[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AD5"
    )
        port map (
      I0 => push,
      I1 => reconstruct_signal_U0_stream6_write,
      I2 => \^stream2_empty_n\,
      I3 => num_data_cnt_reg(8),
      O => \num_data_cnt[8]_i_5_n_0\
    );
\num_data_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \num_data_cnt_reg[0]_0\,
      D => \num_data_cnt_reg[0]_i_2_n_7\,
      Q => num_data_cnt_reg(0),
      R => ap_rst_n_inv
    );
\num_data_cnt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \num_data_cnt_reg[0]_i_2_n_0\,
      CO(2) => \num_data_cnt_reg[0]_i_2_n_1\,
      CO(1) => \num_data_cnt_reg[0]_i_2_n_2\,
      CO(0) => \num_data_cnt_reg[0]_i_2_n_3\,
      CYINIT => \num_data_cnt_reg[3]_0\,
      DI(3 downto 1) => num_data_cnt_reg(3 downto 1),
      DI(0) => DI(0),
      O(3) => \num_data_cnt_reg[0]_i_2_n_4\,
      O(2) => \num_data_cnt_reg[0]_i_2_n_5\,
      O(1) => \num_data_cnt_reg[0]_i_2_n_6\,
      O(0) => \num_data_cnt_reg[0]_i_2_n_7\,
      S(3) => \num_data_cnt[0]_i_6_n_0\,
      S(2) => \num_data_cnt[0]_i_7_n_0\,
      S(1) => \num_data_cnt[0]_i_8_n_0\,
      S(0) => \num_data_cnt[0]_i_9_n_0\
    );
\num_data_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \num_data_cnt_reg[0]_0\,
      D => \num_data_cnt_reg[8]_i_1_n_5\,
      Q => num_data_cnt_reg(10),
      R => ap_rst_n_inv
    );
\num_data_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \num_data_cnt_reg[0]_0\,
      D => \num_data_cnt_reg[8]_i_1_n_4\,
      Q => num_data_cnt_reg(11),
      R => ap_rst_n_inv
    );
\num_data_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \num_data_cnt_reg[0]_0\,
      D => \num_data_cnt_reg[0]_i_2_n_6\,
      Q => num_data_cnt_reg(1),
      R => ap_rst_n_inv
    );
\num_data_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \num_data_cnt_reg[0]_0\,
      D => \num_data_cnt_reg[0]_i_2_n_5\,
      Q => num_data_cnt_reg(2),
      R => ap_rst_n_inv
    );
\num_data_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \num_data_cnt_reg[0]_0\,
      D => \num_data_cnt_reg[0]_i_2_n_4\,
      Q => num_data_cnt_reg(3),
      R => ap_rst_n_inv
    );
\num_data_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \num_data_cnt_reg[0]_0\,
      D => \num_data_cnt_reg[4]_i_1_n_7\,
      Q => num_data_cnt_reg(4),
      R => ap_rst_n_inv
    );
\num_data_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \num_data_cnt_reg[0]_i_2_n_0\,
      CO(3) => \num_data_cnt_reg[4]_i_1_n_0\,
      CO(2) => \num_data_cnt_reg[4]_i_1_n_1\,
      CO(1) => \num_data_cnt_reg[4]_i_1_n_2\,
      CO(0) => \num_data_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => num_data_cnt_reg(7 downto 4),
      O(3) => \num_data_cnt_reg[4]_i_1_n_4\,
      O(2) => \num_data_cnt_reg[4]_i_1_n_5\,
      O(1) => \num_data_cnt_reg[4]_i_1_n_6\,
      O(0) => \num_data_cnt_reg[4]_i_1_n_7\,
      S(3) => \num_data_cnt[4]_i_2__1_n_0\,
      S(2) => \num_data_cnt[4]_i_3__1_n_0\,
      S(1) => \num_data_cnt[4]_i_4_n_0\,
      S(0) => \num_data_cnt[4]_i_5_n_0\
    );
\num_data_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \num_data_cnt_reg[0]_0\,
      D => \num_data_cnt_reg[4]_i_1_n_6\,
      Q => num_data_cnt_reg(5),
      R => ap_rst_n_inv
    );
\num_data_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \num_data_cnt_reg[0]_0\,
      D => \num_data_cnt_reg[4]_i_1_n_5\,
      Q => num_data_cnt_reg(6),
      R => ap_rst_n_inv
    );
\num_data_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \num_data_cnt_reg[0]_0\,
      D => \num_data_cnt_reg[4]_i_1_n_4\,
      Q => num_data_cnt_reg(7),
      R => ap_rst_n_inv
    );
\num_data_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \num_data_cnt_reg[0]_0\,
      D => \num_data_cnt_reg[8]_i_1_n_7\,
      Q => num_data_cnt_reg(8),
      R => ap_rst_n_inv
    );
\num_data_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \num_data_cnt_reg[4]_i_1_n_0\,
      CO(3) => \NLW_num_data_cnt_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \num_data_cnt_reg[8]_i_1_n_1\,
      CO(1) => \num_data_cnt_reg[8]_i_1_n_2\,
      CO(0) => \num_data_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => num_data_cnt_reg(10 downto 8),
      O(3) => \num_data_cnt_reg[8]_i_1_n_4\,
      O(2) => \num_data_cnt_reg[8]_i_1_n_5\,
      O(1) => \num_data_cnt_reg[8]_i_1_n_6\,
      O(0) => \num_data_cnt_reg[8]_i_1_n_7\,
      S(3) => \num_data_cnt[8]_i_2_n_0\,
      S(2) => \num_data_cnt[8]_i_3_n_0\,
      S(1) => \num_data_cnt[8]_i_4_n_0\,
      S(0) => \num_data_cnt[8]_i_5_n_0\
    );
\num_data_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \num_data_cnt_reg[0]_0\,
      D => \num_data_cnt_reg[8]_i_1_n_6\,
      Q => num_data_cnt_reg(9),
      R => ap_rst_n_inv
    );
\raddr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2333333333333333"
    )
        port map (
      I0 => \raddr[10]_i_3_n_0\,
      I1 => raddr(0),
      I2 => raddr(8),
      I3 => raddr(7),
      I4 => raddr(10),
      I5 => raddr(9),
      O => \raddr[0]_i_1_n_0\
    );
\raddr[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF7FF08000000"
    )
        port map (
      I0 => raddr(7),
      I1 => raddr(8),
      I2 => \raddr[10]_i_3_n_0\,
      I3 => raddr(9),
      I4 => raddr(0),
      I5 => raddr(10),
      O => \raddr[10]_i_2_n_0\
    );
\raddr[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => raddr(5),
      I1 => raddr(6),
      I2 => raddr(3),
      I3 => raddr(4),
      I4 => raddr(2),
      I5 => raddr(1),
      O => \raddr[10]_i_3_n_0\
    );
\raddr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FB0"
    )
        port map (
      I0 => \raddr[2]_i_2_n_0\,
      I1 => raddr(2),
      I2 => raddr(1),
      I3 => raddr(0),
      O => \raddr[1]_i_1_n_0\
    );
\raddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FA0"
    )
        port map (
      I0 => raddr(0),
      I1 => \raddr[2]_i_2_n_0\,
      I2 => raddr(1),
      I3 => raddr(2),
      O => \raddr[2]_i_1_n_0\
    );
\raddr[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => raddr(5),
      I1 => raddr(6),
      I2 => raddr(3),
      I3 => raddr(4),
      I4 => \raddr[2]_i_3_n_0\,
      O => \raddr[2]_i_2_n_0\
    );
\raddr[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => raddr(8),
      I1 => raddr(7),
      I2 => raddr(10),
      I3 => raddr(9),
      O => \raddr[2]_i_3_n_0\
    );
\raddr[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFB0A0B0A0B0A0B0"
    )
        port map (
      I0 => \raddr[4]_i_2_n_0\,
      I1 => raddr(4),
      I2 => raddr(3),
      I3 => raddr(0),
      I4 => raddr(2),
      I5 => raddr(1),
      O => \raddr[3]_i_1__1_n_0\
    );
\raddr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFFFC0000000"
    )
        port map (
      I0 => \raddr[4]_i_2_n_0\,
      I1 => raddr(1),
      I2 => raddr(2),
      I3 => raddr(0),
      I4 => raddr(3),
      I5 => raddr(4),
      O => \raddr[4]_i_1_n_0\
    );
\raddr[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF15FFFFFF"
    )
        port map (
      I0 => raddr(0),
      I1 => raddr(5),
      I2 => raddr(6),
      I3 => raddr(1),
      I4 => raddr(2),
      I5 => \raddr[5]_i_3_n_0\,
      O => \raddr[4]_i_2_n_0\
    );
\raddr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0FCF01C"
    )
        port map (
      I0 => raddr(6),
      I1 => raddr(0),
      I2 => raddr(5),
      I3 => \raddr[5]_i_2_n_0\,
      I4 => \raddr[5]_i_3_n_0\,
      I5 => \raddr[5]_i_4_n_0\,
      O => \raddr[5]_i_1_n_0\
    );
\raddr[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => raddr(1),
      I1 => raddr(2),
      O => \raddr[5]_i_2_n_0\
    );
\raddr[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007FFF"
    )
        port map (
      I0 => raddr(9),
      I1 => raddr(10),
      I2 => raddr(7),
      I3 => raddr(8),
      I4 => raddr(0),
      O => \raddr[5]_i_3_n_0\
    );
\raddr[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => raddr(3),
      I1 => raddr(4),
      O => \raddr[5]_i_4_n_0\
    );
\raddr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F858F0F0F0F0F0F0"
    )
        port map (
      I0 => raddr(5),
      I1 => \raddr[6]_i_2_n_0\,
      I2 => raddr(6),
      I3 => \raddr[6]_i_3_n_0\,
      I4 => raddr(4),
      I5 => raddr(3),
      O => \raddr[6]_i_1_n_0\
    );
\raddr[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => raddr(0),
      I1 => raddr(2),
      I2 => raddr(1),
      O => \raddr[6]_i_2_n_0\
    );
\raddr[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF15555555"
    )
        port map (
      I0 => raddr(0),
      I1 => raddr(8),
      I2 => raddr(7),
      I3 => raddr(10),
      I4 => raddr(9),
      I5 => \raddr[5]_i_2_n_0\,
      O => \raddr[6]_i_3_n_0\
    );
\raddr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF7F00FF0000"
    )
        port map (
      I0 => raddr(10),
      I1 => raddr(9),
      I2 => raddr(8),
      I3 => \raddr[10]_i_3_n_0\,
      I4 => raddr(0),
      I5 => raddr(7),
      O => \raddr[7]_i_1_n_0\
    );
\raddr[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABFFFFF55000000"
    )
        port map (
      I0 => \raddr[10]_i_3_n_0\,
      I1 => raddr(10),
      I2 => raddr(9),
      I3 => raddr(0),
      I4 => raddr(7),
      I5 => raddr(8),
      O => \raddr[8]_i_1_n_0\
    );
\raddr[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F01CF0F0F0F0F0F0"
    )
        port map (
      I0 => raddr(10),
      I1 => raddr(0),
      I2 => raddr(9),
      I3 => \raddr[10]_i_3_n_0\,
      I4 => raddr(8),
      I5 => raddr(7),
      O => \raddr[9]_i_1_n_0\
    );
\raddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \raddr[0]_i_1_n_0\,
      Q => raddr(0),
      R => ap_rst_n_inv
    );
\raddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \raddr[10]_i_2_n_0\,
      Q => raddr(10),
      R => ap_rst_n_inv
    );
\raddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \raddr[1]_i_1_n_0\,
      Q => raddr(1),
      R => ap_rst_n_inv
    );
\raddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \raddr[2]_i_1_n_0\,
      Q => raddr(2),
      R => ap_rst_n_inv
    );
\raddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \raddr[3]_i_1__1_n_0\,
      Q => raddr(3),
      R => ap_rst_n_inv
    );
\raddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \raddr[4]_i_1_n_0\,
      Q => raddr(4),
      R => ap_rst_n_inv
    );
\raddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \raddr[5]_i_1_n_0\,
      Q => raddr(5),
      R => ap_rst_n_inv
    );
\raddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \raddr[6]_i_1_n_0\,
      Q => raddr(6),
      R => ap_rst_n_inv
    );
\raddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \raddr[7]_i_1_n_0\,
      Q => raddr(7),
      R => ap_rst_n_inv
    );
\raddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \raddr[8]_i_1_n_0\,
      Q => raddr(8),
      R => ap_rst_n_inv
    );
\raddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \raddr[9]_i_1_n_0\,
      Q => raddr(9),
      R => ap_rst_n_inv
    );
\waddr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2333333333333333"
    )
        port map (
      I0 => \waddr[10]_i_2_n_0\,
      I1 => waddr(0),
      I2 => waddr(8),
      I3 => waddr(7),
      I4 => waddr(10),
      I5 => waddr(9),
      O => \waddr[0]_i_1_n_0\
    );
\waddr[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF7FF08000000"
    )
        port map (
      I0 => waddr(7),
      I1 => waddr(8),
      I2 => \waddr[10]_i_2_n_0\,
      I3 => waddr(9),
      I4 => waddr(0),
      I5 => waddr(10),
      O => \waddr[10]_i_1_n_0\
    );
\waddr[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => waddr(5),
      I1 => waddr(6),
      I2 => waddr(3),
      I3 => waddr(4),
      I4 => waddr(2),
      I5 => waddr(1),
      O => \waddr[10]_i_2_n_0\
    );
\waddr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FB0"
    )
        port map (
      I0 => \waddr[2]_i_2_n_0\,
      I1 => waddr(2),
      I2 => waddr(1),
      I3 => waddr(0),
      O => \waddr[1]_i_1_n_0\
    );
\waddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FA0"
    )
        port map (
      I0 => waddr(0),
      I1 => \waddr[2]_i_2_n_0\,
      I2 => waddr(1),
      I3 => waddr(2),
      O => \waddr[2]_i_1_n_0\
    );
\waddr[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => waddr(5),
      I1 => waddr(6),
      I2 => waddr(3),
      I3 => waddr(4),
      I4 => \waddr[2]_i_3_n_0\,
      O => \waddr[2]_i_2_n_0\
    );
\waddr[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => waddr(8),
      I1 => waddr(7),
      I2 => waddr(10),
      I3 => waddr(9),
      O => \waddr[2]_i_3_n_0\
    );
\waddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFB0A0B0A0B0A0B0"
    )
        port map (
      I0 => \waddr[4]_i_2_n_0\,
      I1 => waddr(4),
      I2 => waddr(3),
      I3 => waddr(0),
      I4 => waddr(2),
      I5 => waddr(1),
      O => \waddr[3]_i_1_n_0\
    );
\waddr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFFFC0000000"
    )
        port map (
      I0 => \waddr[4]_i_2_n_0\,
      I1 => waddr(1),
      I2 => waddr(2),
      I3 => waddr(0),
      I4 => waddr(3),
      I5 => waddr(4),
      O => \waddr[4]_i_1_n_0\
    );
\waddr[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF15FFFFFF"
    )
        port map (
      I0 => waddr(0),
      I1 => waddr(5),
      I2 => waddr(6),
      I3 => waddr(1),
      I4 => waddr(2),
      I5 => \waddr[5]_i_3_n_0\,
      O => \waddr[4]_i_2_n_0\
    );
\waddr[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0FCF01C"
    )
        port map (
      I0 => waddr(6),
      I1 => waddr(0),
      I2 => waddr(5),
      I3 => \waddr[5]_i_2_n_0\,
      I4 => \waddr[5]_i_3_n_0\,
      I5 => \waddr[5]_i_4_n_0\,
      O => \waddr[5]_i_1__0_n_0\
    );
\waddr[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => waddr(1),
      I1 => waddr(2),
      O => \waddr[5]_i_2_n_0\
    );
\waddr[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007FFF"
    )
        port map (
      I0 => waddr(9),
      I1 => waddr(10),
      I2 => waddr(7),
      I3 => waddr(8),
      I4 => waddr(0),
      O => \waddr[5]_i_3_n_0\
    );
\waddr[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => waddr(3),
      I1 => waddr(4),
      O => \waddr[5]_i_4_n_0\
    );
\waddr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F858F0F0F0F0F0F0"
    )
        port map (
      I0 => waddr(5),
      I1 => \waddr[6]_i_2_n_0\,
      I2 => waddr(6),
      I3 => \waddr[6]_i_3_n_0\,
      I4 => waddr(4),
      I5 => waddr(3),
      O => \waddr[6]_i_1_n_0\
    );
\waddr[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => waddr(0),
      I1 => waddr(2),
      I2 => waddr(1),
      O => \waddr[6]_i_2_n_0\
    );
\waddr[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF15555555"
    )
        port map (
      I0 => waddr(0),
      I1 => waddr(8),
      I2 => waddr(7),
      I3 => waddr(10),
      I4 => waddr(9),
      I5 => \waddr[5]_i_2_n_0\,
      O => \waddr[6]_i_3_n_0\
    );
\waddr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF7F00FF0000"
    )
        port map (
      I0 => waddr(10),
      I1 => waddr(9),
      I2 => waddr(8),
      I3 => \waddr[10]_i_2_n_0\,
      I4 => waddr(0),
      I5 => waddr(7),
      O => \waddr[7]_i_1_n_0\
    );
\waddr[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABFFFFF55000000"
    )
        port map (
      I0 => \waddr[10]_i_2_n_0\,
      I1 => waddr(10),
      I2 => waddr(9),
      I3 => waddr(0),
      I4 => waddr(7),
      I5 => waddr(8),
      O => \waddr[8]_i_1_n_0\
    );
\waddr[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F01CF0F0F0F0F0F0"
    )
        port map (
      I0 => waddr(10),
      I1 => waddr(0),
      I2 => waddr(9),
      I3 => \waddr[10]_i_2_n_0\,
      I4 => waddr(8),
      I5 => waddr(7),
      O => \waddr[9]_i_1_n_0\
    );
\waddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => push,
      D => \waddr[0]_i_1_n_0\,
      Q => waddr(0),
      R => ap_rst_n_inv
    );
\waddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => push,
      D => \waddr[10]_i_1_n_0\,
      Q => waddr(10),
      R => ap_rst_n_inv
    );
\waddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => push,
      D => \waddr[1]_i_1_n_0\,
      Q => waddr(1),
      R => ap_rst_n_inv
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => push,
      D => \waddr[2]_i_1_n_0\,
      Q => waddr(2),
      R => ap_rst_n_inv
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => push,
      D => \waddr[3]_i_1_n_0\,
      Q => waddr(3),
      R => ap_rst_n_inv
    );
\waddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => push,
      D => \waddr[4]_i_1_n_0\,
      Q => waddr(4),
      R => ap_rst_n_inv
    );
\waddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => push,
      D => \waddr[5]_i_1__0_n_0\,
      Q => waddr(5),
      R => ap_rst_n_inv
    );
\waddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => push,
      D => \waddr[6]_i_1_n_0\,
      Q => waddr(6),
      R => ap_rst_n_inv
    );
\waddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => push,
      D => \waddr[7]_i_1_n_0\,
      Q => waddr(7),
      R => ap_rst_n_inv
    );
\waddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => push,
      D => \waddr[8]_i_1_n_0\,
      Q => waddr(8),
      R => ap_rst_n_inv
    );
\waddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => push,
      D => \waddr[9]_i_1_n_0\,
      Q => waddr(9),
      R => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_internal_to_axi is
  port (
    ap_loop_init : out STD_LOGIC;
    clean_out_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_loop_exit_ready_pp0_iter1_reg : out STD_LOGIC;
    ap_enable_reg_pp0_iter1 : out STD_LOGIC;
    ap_block_pp0_stage0_11001 : out STD_LOGIC;
    internal_to_axi_U0_ap_ready : out STD_LOGIC;
    ap_ready_int : out STD_LOGIC;
    clean_out_TVALID : out STD_LOGIC;
    auto_restart_status_reg : out STD_LOGIC;
    clean_out_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    clean_out_TSTRB : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    clean_out_TREADY : in STD_LOGIC;
    stream6_empty_n : in STD_LOGIC;
    internal_to_axi_U0_ap_start : in STD_LOGIC;
    int_task_ap_done_reg : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 63 downto 0 );
    ap_sig_allocacmp_i1_load1 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_internal_to_axi;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_internal_to_axi is
  signal \^ap_enable_reg_pp0_iter1\ : STD_LOGIC;
  signal \^ap_loop_exit_ready_pp0_iter1_reg\ : STD_LOGIC;
  signal \^ap_loop_init\ : STD_LOGIC;
  signal \^ap_ready_int\ : STD_LOGIC;
  signal axi_val_last_fu_95_p2 : STD_LOGIC;
  signal i1_fu_54 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \i1_fu_54[8]_i_4_n_0\ : STD_LOGIC;
  signal i_fu_102_p2 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal regslice_both_clean_out_V_data_V_U_n_0 : STD_LOGIC;
  signal regslice_both_clean_out_V_data_V_U_n_3 : STD_LOGIC;
  signal regslice_both_clean_out_V_data_V_U_n_7 : STD_LOGIC;
begin
  ap_enable_reg_pp0_iter1 <= \^ap_enable_reg_pp0_iter1\;
  ap_loop_exit_ready_pp0_iter1_reg <= \^ap_loop_exit_ready_pp0_iter1_reg\;
  ap_loop_init <= \^ap_loop_init\;
  ap_ready_int <= \^ap_ready_int\;
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_clean_out_V_data_V_U_n_7,
      Q => \^ap_enable_reg_pp0_iter1\,
      R => ap_rst_n_inv
    );
ap_loop_exit_ready_pp0_iter1_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_clean_out_V_data_V_U_n_0,
      Q => \^ap_loop_exit_ready_pp0_iter1_reg\,
      R => '0'
    );
flow_control_loop_pipe_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_5
     port map (
      D(6 downto 4) => i_fu_102_p2(7 downto 5),
      D(3 downto 0) => i_fu_102_p2(3 downto 0),
      Q(8 downto 0) => i1_fu_54(8 downto 0),
      ap_clk => ap_clk,
      ap_loop_init_reg_0 => \^ap_loop_init\,
      ap_loop_init_reg_1 => regslice_both_clean_out_V_data_V_U_n_3,
      ap_sig_allocacmp_i1_load1 => ap_sig_allocacmp_i1_load1,
      axi_val_last_fu_95_p2 => axi_val_last_fu_95_p2,
      \i1_fu_54_reg[7]\ => \i1_fu_54[8]_i_4_n_0\,
      internal_to_axi_U0_ap_start => internal_to_axi_U0_ap_start
    );
\i1_fu_54[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => i1_fu_54(2),
      I1 => i1_fu_54(0),
      I2 => i1_fu_54(1),
      I3 => i1_fu_54(3),
      I4 => ap_sig_allocacmp_i1_load1,
      I5 => i1_fu_54(4),
      O => i_fu_102_p2(4)
    );
\i1_fu_54[8]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => i1_fu_54(6),
      I1 => \i1_fu_54[8]_i_4_n_0\,
      I2 => i1_fu_54(5),
      I3 => i1_fu_54(7),
      I4 => ap_sig_allocacmp_i1_load1,
      I5 => i1_fu_54(8),
      O => i_fu_102_p2(8)
    );
\i1_fu_54[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => i1_fu_54(4),
      I1 => i1_fu_54(2),
      I2 => i1_fu_54(0),
      I3 => ap_sig_allocacmp_i1_load1,
      I4 => i1_fu_54(1),
      I5 => i1_fu_54(3),
      O => \i1_fu_54[8]_i_4_n_0\
    );
\i1_fu_54_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready_int\,
      D => i_fu_102_p2(0),
      Q => i1_fu_54(0),
      R => ap_rst_n_inv
    );
\i1_fu_54_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready_int\,
      D => i_fu_102_p2(1),
      Q => i1_fu_54(1),
      R => ap_rst_n_inv
    );
\i1_fu_54_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready_int\,
      D => i_fu_102_p2(2),
      Q => i1_fu_54(2),
      R => ap_rst_n_inv
    );
\i1_fu_54_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready_int\,
      D => i_fu_102_p2(3),
      Q => i1_fu_54(3),
      R => ap_rst_n_inv
    );
\i1_fu_54_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready_int\,
      D => i_fu_102_p2(4),
      Q => i1_fu_54(4),
      R => ap_rst_n_inv
    );
\i1_fu_54_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready_int\,
      D => i_fu_102_p2(5),
      Q => i1_fu_54(5),
      R => ap_rst_n_inv
    );
\i1_fu_54_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready_int\,
      D => i_fu_102_p2(6),
      Q => i1_fu_54(6),
      R => ap_rst_n_inv
    );
\i1_fu_54_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready_int\,
      D => i_fu_102_p2(7),
      Q => i1_fu_54(7),
      R => ap_rst_n_inv
    );
\i1_fu_54_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_ready_int\,
      D => i_fu_102_p2(8),
      Q => i1_fu_54(8),
      R => ap_rst_n_inv
    );
regslice_both_clean_out_V_data_V_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_regslice_both
     port map (
      D(63 downto 0) => D(63 downto 0),
      E(0) => \^ap_ready_int\,
      ap_clk => ap_clk,
      ap_loop_exit_ready_pp0_iter1_reg_reg => regslice_both_clean_out_V_data_V_U_n_0,
      ap_loop_init => \^ap_loop_init\,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => regslice_both_clean_out_V_data_V_U_n_3,
      ap_rst_n_inv => ap_rst_n_inv,
      auto_restart_status_reg => auto_restart_status_reg,
      axi_val_last_fu_95_p2 => axi_val_last_fu_95_p2,
      clean_out_TDATA(63 downto 0) => clean_out_TDATA(63 downto 0),
      clean_out_TREADY => clean_out_TREADY,
      clean_out_TVALID => clean_out_TVALID,
      empty_n_reg => ap_block_pp0_stage0_11001,
      empty_n_reg_0 => regslice_both_clean_out_V_data_V_U_n_7,
      \i1_fu_54_reg[0]\ => \^ap_loop_exit_ready_pp0_iter1_reg\,
      \i1_fu_54_reg[0]_0\ => \^ap_enable_reg_pp0_iter1\,
      int_task_ap_done_reg => int_task_ap_done_reg,
      internal_to_axi_U0_ap_ready => internal_to_axi_U0_ap_ready,
      internal_to_axi_U0_ap_start => internal_to_axi_U0_ap_start,
      stream6_empty_n => stream6_empty_n
    );
regslice_both_clean_out_V_keep_V_U: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_regslice_both__parameterized0\
     port map (
      E(0) => \^ap_ready_int\,
      ap_clk => ap_clk,
      ap_rst_n_inv => ap_rst_n_inv,
      clean_out_TREADY => clean_out_TREADY,
      clean_out_TSTRB(0) => clean_out_TSTRB(0)
    );
regslice_both_clean_out_V_last_V_U: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_regslice_both__parameterized1\
     port map (
      E(0) => \^ap_ready_int\,
      ap_clk => ap_clk,
      ap_rst_n_inv => ap_rst_n_inv,
      axi_val_last_fu_95_p2 => axi_val_last_fu_95_p2,
      clean_out_TLAST(0) => clean_out_TLAST(0),
      clean_out_TREADY => clean_out_TREADY
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_noise_estimation_accumulate is
  port (
    ap_enable_reg_pp0_iter1_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    p_6_in : out STD_LOGIC;
    grp_noise_estimation_accumulate_fu_246_ap_start_reg_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    grp_noise_estimation_accumulate_fu_246_ap_start_reg : in STD_LOGIC;
    ap_block_pp0_stage0_11001 : in STD_LOGIC;
    ap_done_cache_reg : in STD_LOGIC;
    stream3_empty_n : in STD_LOGIC;
    stream3_full_n : in STD_LOGIC;
    compute_magnitude_square_U0_stream2_write : in STD_LOGIC;
    full_n_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    pop : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_noise_estimation_accumulate;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_noise_estimation_accumulate is
  signal \^ap_enable_reg_pp0_iter1_reg_0\ : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_10 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_11 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_13 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_15 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_16 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_2 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_3 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_4 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_5 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_6 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_7 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_8 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_9 : STD_LOGIC;
  signal \i_fu_84_reg_n_0_[0]\ : STD_LOGIC;
  signal \i_fu_84_reg_n_0_[10]\ : STD_LOGIC;
  signal \i_fu_84_reg_n_0_[1]\ : STD_LOGIC;
  signal \i_fu_84_reg_n_0_[2]\ : STD_LOGIC;
  signal \i_fu_84_reg_n_0_[3]\ : STD_LOGIC;
  signal \i_fu_84_reg_n_0_[4]\ : STD_LOGIC;
  signal \i_fu_84_reg_n_0_[5]\ : STD_LOGIC;
  signal \i_fu_84_reg_n_0_[6]\ : STD_LOGIC;
  signal \i_fu_84_reg_n_0_[7]\ : STD_LOGIC;
  signal \i_fu_84_reg_n_0_[8]\ : STD_LOGIC;
  signal \i_fu_84_reg_n_0_[9]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  ap_enable_reg_pp0_iter1_reg_0 <= \^ap_enable_reg_pp0_iter1_reg_0\;
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => AR(0),
      D => flow_control_loop_pipe_sequential_init_U_n_16,
      Q => \^ap_enable_reg_pp0_iter1_reg_0\
    );
ap_loop_exit_ready_pp0_iter1_reg_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => AR(0),
      D => flow_control_loop_pipe_sequential_init_U_n_15,
      Q => ap_loop_exit_ready_pp0_iter1_reg
    );
\empty_n_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080008000808080"
    )
        port map (
      I0 => \^ap_enable_reg_pp0_iter1_reg_0\,
      I1 => ap_done_cache_reg,
      I2 => stream3_empty_n,
      I3 => stream3_full_n,
      I4 => compute_magnitude_square_U0_stream2_write,
      I5 => full_n_reg(0),
      O => p_6_in
    );
flow_control_loop_pipe_sequential_init_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_sequential_init_10
     port map (
      AR(0) => AR(0),
      D(1 downto 0) => D(1 downto 0),
      E(0) => flow_control_loop_pipe_sequential_init_U_n_13,
      Q(1 downto 0) => Q(1 downto 0),
      ap_block_pp0_stage0_11001 => ap_block_pp0_stage0_11001,
      ap_clk => ap_clk,
      ap_done_cache_reg_0 => \^ap_enable_reg_pp0_iter1_reg_0\,
      ap_done_cache_reg_1 => ap_done_cache_reg,
      ap_loop_exit_ready_pp0_iter1_reg => ap_loop_exit_ready_pp0_iter1_reg,
      ap_rst_n => ap_rst_n,
      grp_noise_estimation_accumulate_fu_246_ap_start_reg => grp_noise_estimation_accumulate_fu_246_ap_start_reg,
      grp_noise_estimation_accumulate_fu_246_ap_start_reg_reg => grp_noise_estimation_accumulate_fu_246_ap_start_reg_reg,
      grp_noise_estimation_accumulate_fu_246_ap_start_reg_reg_0 => flow_control_loop_pipe_sequential_init_U_n_15,
      grp_noise_estimation_accumulate_fu_246_ap_start_reg_reg_1 => flow_control_loop_pipe_sequential_init_U_n_16,
      \i_fu_84_reg[10]\(10) => flow_control_loop_pipe_sequential_init_U_n_2,
      \i_fu_84_reg[10]\(9) => flow_control_loop_pipe_sequential_init_U_n_3,
      \i_fu_84_reg[10]\(8) => flow_control_loop_pipe_sequential_init_U_n_4,
      \i_fu_84_reg[10]\(7) => flow_control_loop_pipe_sequential_init_U_n_5,
      \i_fu_84_reg[10]\(6) => flow_control_loop_pipe_sequential_init_U_n_6,
      \i_fu_84_reg[10]\(5) => flow_control_loop_pipe_sequential_init_U_n_7,
      \i_fu_84_reg[10]\(4) => flow_control_loop_pipe_sequential_init_U_n_8,
      \i_fu_84_reg[10]\(3) => flow_control_loop_pipe_sequential_init_U_n_9,
      \i_fu_84_reg[10]\(2) => flow_control_loop_pipe_sequential_init_U_n_10,
      \i_fu_84_reg[10]\(1) => flow_control_loop_pipe_sequential_init_U_n_11,
      \i_fu_84_reg[10]\(0) => p_0_in(0),
      \i_fu_84_reg[10]_0\(10) => \i_fu_84_reg_n_0_[10]\,
      \i_fu_84_reg[10]_0\(9) => \i_fu_84_reg_n_0_[9]\,
      \i_fu_84_reg[10]_0\(8) => \i_fu_84_reg_n_0_[8]\,
      \i_fu_84_reg[10]_0\(7) => \i_fu_84_reg_n_0_[7]\,
      \i_fu_84_reg[10]_0\(6) => \i_fu_84_reg_n_0_[6]\,
      \i_fu_84_reg[10]_0\(5) => \i_fu_84_reg_n_0_[5]\,
      \i_fu_84_reg[10]_0\(4) => \i_fu_84_reg_n_0_[4]\,
      \i_fu_84_reg[10]_0\(3) => \i_fu_84_reg_n_0_[3]\,
      \i_fu_84_reg[10]_0\(2) => \i_fu_84_reg_n_0_[2]\,
      \i_fu_84_reg[10]_0\(1) => \i_fu_84_reg_n_0_[1]\,
      \i_fu_84_reg[10]_0\(0) => \i_fu_84_reg_n_0_[0]\,
      stream3_empty_n => stream3_empty_n
    );
\i_fu_84_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_13,
      CLR => AR(0),
      D => p_0_in(0),
      Q => \i_fu_84_reg_n_0_[0]\
    );
\i_fu_84_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_13,
      CLR => AR(0),
      D => flow_control_loop_pipe_sequential_init_U_n_2,
      Q => \i_fu_84_reg_n_0_[10]\
    );
\i_fu_84_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_13,
      CLR => AR(0),
      D => flow_control_loop_pipe_sequential_init_U_n_11,
      Q => \i_fu_84_reg_n_0_[1]\
    );
\i_fu_84_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_13,
      CLR => AR(0),
      D => flow_control_loop_pipe_sequential_init_U_n_10,
      Q => \i_fu_84_reg_n_0_[2]\
    );
\i_fu_84_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_13,
      CLR => AR(0),
      D => flow_control_loop_pipe_sequential_init_U_n_9,
      Q => \i_fu_84_reg_n_0_[3]\
    );
\i_fu_84_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_13,
      CLR => AR(0),
      D => flow_control_loop_pipe_sequential_init_U_n_8,
      Q => \i_fu_84_reg_n_0_[4]\
    );
\i_fu_84_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_13,
      CLR => AR(0),
      D => flow_control_loop_pipe_sequential_init_U_n_7,
      Q => \i_fu_84_reg_n_0_[5]\
    );
\i_fu_84_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_13,
      CLR => AR(0),
      D => flow_control_loop_pipe_sequential_init_U_n_6,
      Q => \i_fu_84_reg_n_0_[6]\
    );
\i_fu_84_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_13,
      CLR => AR(0),
      D => flow_control_loop_pipe_sequential_init_U_n_5,
      Q => \i_fu_84_reg_n_0_[7]\
    );
\i_fu_84_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_13,
      CLR => AR(0),
      D => flow_control_loop_pipe_sequential_init_U_n_4,
      Q => \i_fu_84_reg_n_0_[8]\
    );
\i_fu_84_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_13,
      CLR => AR(0),
      D => flow_control_loop_pipe_sequential_init_U_n_3,
      Q => \i_fu_84_reg_n_0_[9]\
    );
\mOutPtr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^ap_enable_reg_pp0_iter1_reg_0\,
      I1 => ap_done_cache_reg,
      I2 => stream3_empty_n,
      I3 => Q(1),
      I4 => pop,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_reconstruct_signal is
  port (
    start_once_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    push : out STD_LOGIC;
    p_8_in : out STD_LOGIC;
    dout_vld_reg : out STD_LOGIC;
    pop : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    start_once_reg_reg_0 : out STD_LOGIC;
    reconstruct_signal_U0_stream6_write : out STD_LOGIC;
    reconstruct_signal_U0_ap_ready : out STD_LOGIC;
    ap_rst_n_0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    stream6_empty_n : in STD_LOGIC;
    ap_ready_int : in STD_LOGIC;
    push_0 : in STD_LOGIC;
    stream2_empty_n : in STD_LOGIC;
    stream6_full_n : in STD_LOGIC;
    stream5_empty_n : in STD_LOGIC;
    empty_n : in STD_LOGIC;
    start_for_internal_to_axi_U0_full_n : in STD_LOGIC;
    reconstruct_signal_U0_ap_start : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_reconstruct_signal;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_reconstruct_signal is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal flow_control_loop_pipe_U_n_9 : STD_LOGIC;
  signal i1_fu_48 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \i1_fu_48[5]_i_2_n_0\ : STD_LOGIC;
  signal \i1_fu_48[8]_i_4_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^pop\ : STD_LOGIC;
  signal \^push\ : STD_LOGIC;
  signal \^reconstruct_signal_u0_ap_ready\ : STD_LOGIC;
  signal \^start_once_reg\ : STD_LOGIC;
  signal \start_once_reg_i_1__1_n_0\ : STD_LOGIC;
  signal \^start_once_reg_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_2__1\ : label is "soft_lutpair104";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute SOFT_HLUTNM of \num_data_cnt[4]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \num_data_cnt[4]_i_3\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \start_once_reg_i_1__1\ : label is "soft_lutpair104";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  pop <= \^pop\;
  push <= \^push\;
  reconstruct_signal_U0_ap_ready <= \^reconstruct_signal_u0_ap_ready\;
  start_once_reg <= \^start_once_reg\;
  start_once_reg_reg_0 <= \^start_once_reg_reg_0\;
\ap_CS_fsm[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2EEEEEEECCCCCCCC"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^start_once_reg_reg_0\,
      I3 => stream2_empty_n,
      I4 => stream6_full_n,
      I5 => stream5_empty_n,
      O => ap_NS_fsm(0)
    );
\ap_CS_fsm[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D111111133333333"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^start_once_reg_reg_0\,
      I3 => stream2_empty_n,
      I4 => stream6_full_n,
      I5 => stream5_empty_n,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[1]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^start_once_reg\,
      I1 => start_for_internal_to_axi_U0_full_n,
      I2 => reconstruct_signal_U0_ap_start,
      O => \^start_once_reg_reg_0\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      PRE => ap_rst_n_inv,
      Q => \^q\(0)
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => ap_rst_n_inv,
      D => ap_NS_fsm(1),
      Q => \^q\(1)
    );
flow_control_loop_pipe_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe
     port map (
      D(8 downto 0) => p_1_in(8 downto 0),
      E(0) => flow_control_loop_pipe_U_n_9,
      Q(8 downto 0) => i1_fu_48(8 downto 0),
      ap_clk => ap_clk,
      ap_loop_init_reg_0(1 downto 0) => \^q\(1 downto 0),
      ap_rst_n => ap_rst_n,
      \i1_fu_48_reg[0]\ => \^start_once_reg_reg_0\,
      \i1_fu_48_reg[5]\ => \i1_fu_48[5]_i_2_n_0\,
      \i1_fu_48_reg[6]\ => \i1_fu_48[8]_i_4_n_0\,
      reconstruct_signal_U0_ap_ready => \^reconstruct_signal_u0_ap_ready\,
      stream2_empty_n => stream2_empty_n,
      stream5_empty_n => stream5_empty_n,
      stream6_full_n => stream6_full_n
    );
\i1_fu_48[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => i1_fu_48(4),
      I1 => i1_fu_48(2),
      I2 => i1_fu_48(0),
      I3 => i1_fu_48(1),
      I4 => i1_fu_48(3),
      O => \i1_fu_48[5]_i_2_n_0\
    );
\i1_fu_48[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => i1_fu_48(5),
      I1 => i1_fu_48(3),
      I2 => i1_fu_48(1),
      I3 => i1_fu_48(0),
      I4 => i1_fu_48(2),
      I5 => i1_fu_48(4),
      O => \i1_fu_48[8]_i_4_n_0\
    );
\i1_fu_48_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_9,
      CLR => ap_rst_n_inv,
      D => p_1_in(0),
      Q => i1_fu_48(0)
    );
\i1_fu_48_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_9,
      CLR => ap_rst_n_inv,
      D => p_1_in(1),
      Q => i1_fu_48(1)
    );
\i1_fu_48_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_9,
      CLR => ap_rst_n_inv,
      D => p_1_in(2),
      Q => i1_fu_48(2)
    );
\i1_fu_48_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_9,
      CLR => ap_rst_n_inv,
      D => p_1_in(3),
      Q => i1_fu_48(3)
    );
\i1_fu_48_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_9,
      CLR => ap_rst_n_inv,
      D => p_1_in(4),
      Q => i1_fu_48(4)
    );
\i1_fu_48_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_9,
      CLR => ap_rst_n_inv,
      D => p_1_in(5),
      Q => i1_fu_48(5)
    );
\i1_fu_48_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_9,
      CLR => ap_rst_n_inv,
      D => p_1_in(6),
      Q => i1_fu_48(6)
    );
\i1_fu_48_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_9,
      CLR => ap_rst_n_inv,
      D => p_1_in(7),
      Q => i1_fu_48(7)
    );
\i1_fu_48_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_9,
      CLR => ap_rst_n_inv,
      D => p_1_in(8),
      Q => i1_fu_48(8)
    );
\mOutPtr[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^pop\,
      I1 => push_0,
      O => dout_vld_reg
    );
mem_reg_3_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^pop\,
      I1 => ap_rst_n,
      O => ap_rst_n_0
    );
mem_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^start_once_reg_reg_0\,
      I1 => stream2_empty_n,
      I2 => stream6_full_n,
      I3 => \^q\(0),
      I4 => stream5_empty_n,
      O => \^push\
    );
\num_data_cnt[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => stream5_empty_n,
      I1 => \^q\(0),
      I2 => stream6_full_n,
      I3 => stream2_empty_n,
      I4 => \^start_once_reg_reg_0\,
      O => reconstruct_signal_U0_stream6_write
    );
\num_data_cnt[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^push\,
      I1 => stream6_empty_n,
      I2 => ap_ready_int,
      O => E(0)
    );
\num_data_cnt[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \^push\,
      I1 => ap_ready_int,
      I2 => stream6_empty_n,
      O => p_8_in
    );
\raddr[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B333333300000000"
    )
        port map (
      I0 => \^start_once_reg_reg_0\,
      I1 => stream2_empty_n,
      I2 => stream6_full_n,
      I3 => \^q\(0),
      I4 => stream5_empty_n,
      I5 => empty_n,
      O => \^pop\
    );
\start_once_reg_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5540"
    )
        port map (
      I0 => \^reconstruct_signal_u0_ap_ready\,
      I1 => reconstruct_signal_U0_ap_start,
      I2 => start_for_internal_to_axi_U0_full_n,
      I3 => \^start_once_reg\,
      O => \start_once_reg_i_1__1_n_0\
    );
start_once_reg_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => ap_rst_n_inv,
      D => \start_once_reg_i_1__1_n_0\,
      Q => \^start_once_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_spectral_subtract is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_23_in : out STD_LOGIC;
    frame_counter_flag_0_i_reg_1692 : out STD_LOGIC;
    full_n_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \ap_CS_fsm_reg[4]\ : out STD_LOGIC;
    \frame_counter_flag_1_i_reg_155_reg[0]\ : out STD_LOGIC;
    \icmp_ln326_reg_421_reg[0]\ : out STD_LOGIC;
    p_9_in : out STD_LOGIC;
    ap_enable_reg_pp0_iter4_reg_0 : out STD_LOGIC;
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_6_in : out STD_LOGIC;
    pop : out STD_LOGIC;
    frame_counter_flag_0_i_reg_169221_out : in STD_LOGIC;
    \ap_CS_fsm_reg[6]\ : in STD_LOGIC;
    icmp_ln326_fu_333_p224_in : in STD_LOGIC;
    grp_spectral_subtract_fu_262_ap_start_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    frame_counter_flag_1_i_reg_155 : in STD_LOGIC;
    frame_counter_flag_0_i_reg_169 : in STD_LOGIC;
    icmp_ln326_reg_421 : in STD_LOGIC;
    stream5_full_n : in STD_LOGIC;
    stream5_empty_n : in STD_LOGIC;
    reconstruct_signal_U0_stream6_write : in STD_LOGIC;
    full_n_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    stream4_i_empty_n : in STD_LOGIC;
    stream3_empty_n : in STD_LOGIC;
    empty_n_reg : in STD_LOGIC;
    empty_n_reg_0 : in STD_LOGIC;
    ap_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_spectral_subtract;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_spectral_subtract is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ap_block_pp0_stage0_subdone : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_reg_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter3 : STD_LOGIC;
  signal \^ap_enable_reg_pp0_iter4_reg_0\ : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter3_reg : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_11 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_12 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_13 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_14 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_15 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_16 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_17 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_18 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_19 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_20 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_21 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_22 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_23 : STD_LOGIC;
  signal \^full_n_reg\ : STD_LOGIC;
  signal grp_spectral_subtract_fu_262_ap_ready : STD_LOGIC;
  signal \i_fu_100_reg_n_0_[0]\ : STD_LOGIC;
  signal \i_fu_100_reg_n_0_[10]\ : STD_LOGIC;
  signal \i_fu_100_reg_n_0_[1]\ : STD_LOGIC;
  signal \i_fu_100_reg_n_0_[2]\ : STD_LOGIC;
  signal \i_fu_100_reg_n_0_[3]\ : STD_LOGIC;
  signal \i_fu_100_reg_n_0_[4]\ : STD_LOGIC;
  signal \i_fu_100_reg_n_0_[5]\ : STD_LOGIC;
  signal \i_fu_100_reg_n_0_[6]\ : STD_LOGIC;
  signal \i_fu_100_reg_n_0_[7]\ : STD_LOGIC;
  signal \i_fu_100_reg_n_0_[8]\ : STD_LOGIC;
  signal \i_fu_100_reg_n_0_[9]\ : STD_LOGIC;
  signal \^pop\ : STD_LOGIC;
begin
  AR(0) <= \^ar\(0);
  ap_enable_reg_pp0_iter4_reg_0 <= \^ap_enable_reg_pp0_iter4_reg_0\;
  full_n_reg <= \^full_n_reg\;
  pop <= \^pop\;
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ar\(0),
      D => flow_control_loop_pipe_sequential_init_U_n_23,
      Q => ap_enable_reg_pp0_iter1_reg_n_0
    );
ap_enable_reg_pp0_iter2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DD0D"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter2,
      I1 => stream4_i_empty_n,
      I2 => \^ap_enable_reg_pp0_iter4_reg_0\,
      I3 => stream5_full_n,
      O => ap_block_pp0_stage0_subdone
    );
ap_enable_reg_pp0_iter2_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      CLR => \^ar\(0),
      D => ap_enable_reg_pp0_iter1_reg_n_0,
      Q => ap_enable_reg_pp0_iter2
    );
ap_enable_reg_pp0_iter3_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      CLR => \^ar\(0),
      D => ap_enable_reg_pp0_iter2,
      Q => ap_enable_reg_pp0_iter3
    );
ap_enable_reg_pp0_iter4_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      CLR => \^ar\(0),
      D => ap_enable_reg_pp0_iter3,
      Q => \^ap_enable_reg_pp0_iter4_reg_0\
    );
ap_loop_exit_ready_pp0_iter1_reg_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      CLR => \^ar\(0),
      D => grp_spectral_subtract_fu_262_ap_ready,
      Q => ap_loop_exit_ready_pp0_iter1_reg
    );
ap_loop_exit_ready_pp0_iter2_reg_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      CLR => \^ar\(0),
      D => ap_loop_exit_ready_pp0_iter1_reg,
      Q => ap_loop_exit_ready_pp0_iter2_reg
    );
ap_loop_exit_ready_pp0_iter3_reg_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      CLR => \^ar\(0),
      D => ap_loop_exit_ready_pp0_iter2_reg,
      Q => ap_loop_exit_ready_pp0_iter3_reg
    );
empty_n_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAAAAAA"
    )
        port map (
      I0 => \^pop\,
      I1 => Q(0),
      I2 => stream3_empty_n,
      I3 => empty_n_reg,
      I4 => empty_n_reg_0,
      O => p_6_in
    );
flow_control_loop_pipe_sequential_init_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_sequential_init
     port map (
      AR(0) => \^ar\(0),
      D(1 downto 0) => D(1 downto 0),
      E(0) => E(0),
      Q(1 downto 0) => Q(2 downto 1),
      \ap_CS_fsm_reg[4]\ => \ap_CS_fsm_reg[4]\,
      \ap_CS_fsm_reg[6]\ => \ap_CS_fsm_reg[6]\,
      ap_clk => ap_clk,
      ap_done_cache_reg_0 => p_23_in,
      ap_enable_reg_pp0_iter1_reg => ap_enable_reg_pp0_iter1_reg_n_0,
      ap_enable_reg_pp0_iter2 => ap_enable_reg_pp0_iter2,
      ap_enable_reg_pp0_iter2_reg(0) => flow_control_loop_pipe_sequential_init_U_n_22,
      ap_loop_exit_ready_pp0_iter1_reg_reg => \^ap_enable_reg_pp0_iter4_reg_0\,
      ap_loop_exit_ready_pp0_iter3_reg => ap_loop_exit_ready_pp0_iter3_reg,
      ap_rst_n => ap_rst_n,
      frame_counter_flag_0_i_reg_169 => frame_counter_flag_0_i_reg_169,
      frame_counter_flag_0_i_reg_1692 => frame_counter_flag_0_i_reg_1692,
      frame_counter_flag_0_i_reg_169221_out => frame_counter_flag_0_i_reg_169221_out,
      frame_counter_flag_1_i_reg_155 => frame_counter_flag_1_i_reg_155,
      \frame_counter_flag_1_i_reg_155_reg[0]\ => \frame_counter_flag_1_i_reg_155_reg[0]\,
      full_n_reg => \^full_n_reg\,
      grp_spectral_subtract_fu_262_ap_ready => grp_spectral_subtract_fu_262_ap_ready,
      grp_spectral_subtract_fu_262_ap_start_reg => grp_spectral_subtract_fu_262_ap_start_reg,
      grp_spectral_subtract_fu_262_ap_start_reg_reg => flow_control_loop_pipe_sequential_init_U_n_23,
      \i_fu_100_reg[10]\(10) => flow_control_loop_pipe_sequential_init_U_n_11,
      \i_fu_100_reg[10]\(9) => flow_control_loop_pipe_sequential_init_U_n_12,
      \i_fu_100_reg[10]\(8) => flow_control_loop_pipe_sequential_init_U_n_13,
      \i_fu_100_reg[10]\(7) => flow_control_loop_pipe_sequential_init_U_n_14,
      \i_fu_100_reg[10]\(6) => flow_control_loop_pipe_sequential_init_U_n_15,
      \i_fu_100_reg[10]\(5) => flow_control_loop_pipe_sequential_init_U_n_16,
      \i_fu_100_reg[10]\(4) => flow_control_loop_pipe_sequential_init_U_n_17,
      \i_fu_100_reg[10]\(3) => flow_control_loop_pipe_sequential_init_U_n_18,
      \i_fu_100_reg[10]\(2) => flow_control_loop_pipe_sequential_init_U_n_19,
      \i_fu_100_reg[10]\(1) => flow_control_loop_pipe_sequential_init_U_n_20,
      \i_fu_100_reg[10]\(0) => flow_control_loop_pipe_sequential_init_U_n_21,
      \i_fu_100_reg[10]_0\(10) => \i_fu_100_reg_n_0_[10]\,
      \i_fu_100_reg[10]_0\(9) => \i_fu_100_reg_n_0_[9]\,
      \i_fu_100_reg[10]_0\(8) => \i_fu_100_reg_n_0_[8]\,
      \i_fu_100_reg[10]_0\(7) => \i_fu_100_reg_n_0_[7]\,
      \i_fu_100_reg[10]_0\(6) => \i_fu_100_reg_n_0_[6]\,
      \i_fu_100_reg[10]_0\(5) => \i_fu_100_reg_n_0_[5]\,
      \i_fu_100_reg[10]_0\(4) => \i_fu_100_reg_n_0_[4]\,
      \i_fu_100_reg[10]_0\(3) => \i_fu_100_reg_n_0_[3]\,
      \i_fu_100_reg[10]_0\(2) => \i_fu_100_reg_n_0_[2]\,
      \i_fu_100_reg[10]_0\(1) => \i_fu_100_reg_n_0_[1]\,
      \i_fu_100_reg[10]_0\(0) => \i_fu_100_reg_n_0_[0]\,
      icmp_ln326_fu_333_p224_in => icmp_ln326_fu_333_p224_in,
      icmp_ln326_reg_421 => icmp_ln326_reg_421,
      \icmp_ln326_reg_421_reg[0]\ => \icmp_ln326_reg_421_reg[0]\,
      stream4_i_empty_n => stream4_i_empty_n,
      stream5_full_n => stream5_full_n
    );
\i_fu_100_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_22,
      CLR => \^ar\(0),
      D => flow_control_loop_pipe_sequential_init_U_n_21,
      Q => \i_fu_100_reg_n_0_[0]\
    );
\i_fu_100_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_22,
      CLR => \^ar\(0),
      D => flow_control_loop_pipe_sequential_init_U_n_11,
      Q => \i_fu_100_reg_n_0_[10]\
    );
\i_fu_100_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_22,
      CLR => \^ar\(0),
      D => flow_control_loop_pipe_sequential_init_U_n_20,
      Q => \i_fu_100_reg_n_0_[1]\
    );
\i_fu_100_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_22,
      CLR => \^ar\(0),
      D => flow_control_loop_pipe_sequential_init_U_n_19,
      Q => \i_fu_100_reg_n_0_[2]\
    );
\i_fu_100_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_22,
      CLR => \^ar\(0),
      D => flow_control_loop_pipe_sequential_init_U_n_18,
      Q => \i_fu_100_reg_n_0_[3]\
    );
\i_fu_100_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_22,
      CLR => \^ar\(0),
      D => flow_control_loop_pipe_sequential_init_U_n_17,
      Q => \i_fu_100_reg_n_0_[4]\
    );
\i_fu_100_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_22,
      CLR => \^ar\(0),
      D => flow_control_loop_pipe_sequential_init_U_n_16,
      Q => \i_fu_100_reg_n_0_[5]\
    );
\i_fu_100_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_22,
      CLR => \^ar\(0),
      D => flow_control_loop_pipe_sequential_init_U_n_15,
      Q => \i_fu_100_reg_n_0_[6]\
    );
\i_fu_100_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_22,
      CLR => \^ar\(0),
      D => flow_control_loop_pipe_sequential_init_U_n_14,
      Q => \i_fu_100_reg_n_0_[7]\
    );
\i_fu_100_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_22,
      CLR => \^ar\(0),
      D => flow_control_loop_pipe_sequential_init_U_n_13,
      Q => \i_fu_100_reg_n_0_[8]\
    );
\i_fu_100_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_22,
      CLR => \^ar\(0),
      D => flow_control_loop_pipe_sequential_init_U_n_12,
      Q => \i_fu_100_reg_n_0_[9]\
    );
\mOutPtr[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80800080"
    )
        port map (
      I0 => Q(2),
      I1 => ap_enable_reg_pp0_iter2,
      I2 => stream4_i_empty_n,
      I3 => \^ap_enable_reg_pp0_iter4_reg_0\,
      I4 => stream5_full_n,
      O => \^pop\
    );
\mOutPtr[4]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000202020"
    )
        port map (
      I0 => \^ap_enable_reg_pp0_iter4_reg_0\,
      I1 => \^full_n_reg\,
      I2 => stream5_full_n,
      I3 => stream5_empty_n,
      I4 => reconstruct_signal_U0_stream6_write,
      I5 => full_n_reg_0(0),
      O => p_9_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_Block_entry_frame_counter_wr_proc is
  port (
    \ap_CS_fsm_reg[0]_0\ : out STD_LOGIC;
    ap_rst_n_inv : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[50]_0\ : out STD_LOGIC;
    ap_block_pp0_stage0_11001 : out STD_LOGIC;
    p_6_in : out STD_LOGIC;
    ap_enable_reg_pp0_iter1_reg : out STD_LOGIC;
    stream4_i_full_n : out STD_LOGIC;
    p_9_in : out STD_LOGIC;
    ap_enable_reg_pp0_iter4 : out STD_LOGIC;
    reset_noise_c_dout : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    stream3_empty_n : in STD_LOGIC;
    stream3_full_n : in STD_LOGIC;
    compute_magnitude_square_U0_stream2_write : in STD_LOGIC;
    full_n_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream5_full_n : in STD_LOGIC;
    stream5_empty_n : in STD_LOGIC;
    reconstruct_signal_U0_stream6_write : in STD_LOGIC;
    full_n_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    \noise_frame_count_read_reg_372_reg[0]_0\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_Block_entry_frame_counter_wr_proc;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_Block_entry_frame_counter_wr_proc is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal add_ln324_fu_327_p2 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \ap_CS_fsm[1]_i_10_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_11_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_13_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_14_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_16_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_2_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_3_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_5_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_6_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_7_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_8_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_9_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[50]_i_2_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[6]_i_3_n_0\ : STD_LOGIC;
  signal \^ap_cs_fsm_reg[0]_0\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[10]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[11]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[12]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[13]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[14]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[15]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[16]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[17]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[18]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[19]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[20]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[21]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[22]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[23]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[24]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[25]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[26]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[27]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[28]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[29]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[30]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[31]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[32]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[33]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[34]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[35]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[36]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[37]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[38]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[39]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[40]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[41]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[42]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[43]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[44]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[45]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[46]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[47]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[48]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[6]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[7]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[8]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[9]\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_CS_fsm_state5 : STD_LOGIC;
  signal ap_CS_fsm_state50 : STD_LOGIC;
  signal ap_CS_fsm_state51 : STD_LOGIC;
  signal ap_CS_fsm_state6 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 50 downto 0 );
  signal ap_block_pp0_stage0_11001_1 : STD_LOGIC;
  signal \^ap_enable_reg_pp0_iter1_reg\ : STD_LOGIC;
  signal ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p6 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p61 : STD_LOGIC;
  signal \^ap_rst_n_inv\ : STD_LOGIC;
  signal \empty_62_reg_411[0]_i_1_n_0\ : STD_LOGIC;
  signal \empty_62_reg_411[0]_i_2_n_0\ : STD_LOGIC;
  signal \empty_62_reg_411_reg_n_0_[0]\ : STD_LOGIC;
  signal frame_counter : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal frame_counter0 : STD_LOGIC;
  signal frame_counter_flag_0_i_reg_169 : STD_LOGIC;
  signal frame_counter_flag_0_i_reg_1692 : STD_LOGIC;
  signal frame_counter_flag_0_i_reg_169221_out : STD_LOGIC;
  signal frame_counter_flag_1_i_reg_155 : STD_LOGIC;
  signal frame_counter_loc_0_i_reg_132 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal frame_counter_new_0_i_reg_184 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg : STD_LOGIC;
  signal grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_10 : STD_LOGIC;
  signal grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_11 : STD_LOGIC;
  signal grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_3 : STD_LOGIC;
  signal grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_4 : STD_LOGIC;
  signal grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_5 : STD_LOGIC;
  signal grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_6 : STD_LOGIC;
  signal grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_8 : STD_LOGIC;
  signal grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg : STD_LOGIC;
  signal grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_2 : STD_LOGIC;
  signal grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_3 : STD_LOGIC;
  signal grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_4 : STD_LOGIC;
  signal grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_5 : STD_LOGIC;
  signal grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_6 : STD_LOGIC;
  signal grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_7 : STD_LOGIC;
  signal grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_8 : STD_LOGIC;
  signal grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_9 : STD_LOGIC;
  signal grp_fu_349_p1 : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal grp_noise_estimation_accumulate_fu_246_ap_start_reg : STD_LOGIC;
  signal grp_noise_estimation_accumulate_fu_246_n_4 : STD_LOGIC;
  signal grp_noise_estimation_accumulate_fu_246_n_5 : STD_LOGIC;
  signal grp_spectral_subtract_fu_262_ap_start_reg : STD_LOGIC;
  signal grp_spectral_subtract_fu_262_n_0 : STD_LOGIC;
  signal grp_spectral_subtract_fu_262_n_6 : STD_LOGIC;
  signal grp_spectral_subtract_fu_262_n_7 : STD_LOGIC;
  signal grp_spectral_subtract_fu_262_n_8 : STD_LOGIC;
  signal icmp_ln326_fu_333_p224_in : STD_LOGIC;
  signal icmp_ln326_reg_421 : STD_LOGIC;
  signal noise_estimated : STD_LOGIC;
  signal noise_estimated_flag_0_i_reg_197 : STD_LOGIC;
  signal \noise_estimated_loc_0_i_reg_144_reg_n_0_[0]\ : STD_LOGIC;
  signal \noise_estimated_new_0_i_reg_211_reg_n_0_[0]\ : STD_LOGIC;
  signal p_23_in : STD_LOGIC;
  signal p_6_in_0 : STD_LOGIC;
  signal pop : STD_LOGIC;
  signal reset_noise_read_reg_380 : STD_LOGIC;
  signal stream4_i_empty_n : STD_LOGIC;
  signal \^stream4_i_full_n\ : STD_LOGIC;
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[10]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[11]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[12]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[13]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[14]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[15]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[16]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[17]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[18]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[19]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[20]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[21]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[22]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[23]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[24]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[25]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[26]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[27]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[28]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[29]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[30]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[31]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[32]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[33]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[34]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[35]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[36]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[37]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[38]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[39]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[40]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[41]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[42]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[43]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[44]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[45]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[46]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[47]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[48]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[49]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[50]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[5]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[6]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[7]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[8]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[9]\ : label is "none";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \frame_counter[0]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \noise_estimated[0]_i_2\ : label is "soft_lutpair29";
begin
  Q(0) <= \^q\(0);
  \ap_CS_fsm_reg[0]_0\ <= \^ap_cs_fsm_reg[0]_0\;
  ap_enable_reg_pp0_iter1_reg <= \^ap_enable_reg_pp0_iter1_reg\;
  ap_rst_n_inv <= \^ap_rst_n_inv\;
  stream4_i_full_n <= \^stream4_i_full_n\;
\ap_CS_fsm[1]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[12]\,
      I1 => \ap_CS_fsm_reg_n_0_[13]\,
      I2 => \ap_CS_fsm_reg_n_0_[10]\,
      I3 => \ap_CS_fsm_reg_n_0_[11]\,
      O => \ap_CS_fsm[1]_i_10_n_0\
    );
\ap_CS_fsm[1]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[8]\,
      I1 => \ap_CS_fsm_reg_n_0_[9]\,
      I2 => \ap_CS_fsm_reg_n_0_[6]\,
      I3 => \ap_CS_fsm_reg_n_0_[7]\,
      O => \ap_CS_fsm[1]_i_11_n_0\
    );
\ap_CS_fsm[1]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[28]\,
      I1 => \ap_CS_fsm_reg_n_0_[29]\,
      I2 => \ap_CS_fsm_reg_n_0_[26]\,
      I3 => \ap_CS_fsm_reg_n_0_[27]\,
      O => \ap_CS_fsm[1]_i_13_n_0\
    );
\ap_CS_fsm[1]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[23]\,
      I1 => \ap_CS_fsm_reg_n_0_[22]\,
      I2 => \ap_CS_fsm_reg_n_0_[25]\,
      I3 => \ap_CS_fsm_reg_n_0_[24]\,
      I4 => \ap_CS_fsm[1]_i_16_n_0\,
      O => \ap_CS_fsm[1]_i_14_n_0\
    );
\ap_CS_fsm[1]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[20]\,
      I1 => \ap_CS_fsm_reg_n_0_[21]\,
      I2 => \ap_CS_fsm_reg_n_0_[18]\,
      I3 => \ap_CS_fsm_reg_n_0_[19]\,
      O => \ap_CS_fsm[1]_i_16_n_0\
    );
\ap_CS_fsm[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => ap_CS_fsm_state51,
      I2 => \ap_CS_fsm[1]_i_6_n_0\,
      I3 => \ap_CS_fsm[1]_i_7_n_0\,
      I4 => \ap_CS_fsm[1]_i_8_n_0\,
      I5 => \ap_CS_fsm[1]_i_9_n_0\,
      O => \ap_CS_fsm[1]_i_2_n_0\
    );
\ap_CS_fsm[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[15]\,
      I1 => \ap_CS_fsm_reg_n_0_[14]\,
      I2 => \ap_CS_fsm_reg_n_0_[17]\,
      I3 => \ap_CS_fsm_reg_n_0_[16]\,
      I4 => \ap_CS_fsm[1]_i_10_n_0\,
      O => \ap_CS_fsm[1]_i_3_n_0\
    );
\ap_CS_fsm[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \ap_CS_fsm[1]_i_13_n_0\,
      I1 => \ap_CS_fsm_reg_n_0_[32]\,
      I2 => \ap_CS_fsm_reg_n_0_[33]\,
      I3 => \ap_CS_fsm_reg_n_0_[30]\,
      I4 => \ap_CS_fsm_reg_n_0_[31]\,
      I5 => \ap_CS_fsm[1]_i_14_n_0\,
      O => \ap_CS_fsm[1]_i_5_n_0\
    );
\ap_CS_fsm[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[40]\,
      I1 => \ap_CS_fsm_reg_n_0_[41]\,
      I2 => \ap_CS_fsm_reg_n_0_[38]\,
      I3 => \ap_CS_fsm_reg_n_0_[39]\,
      O => \ap_CS_fsm[1]_i_6_n_0\
    );
\ap_CS_fsm[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[36]\,
      I1 => \ap_CS_fsm_reg_n_0_[37]\,
      I2 => \ap_CS_fsm_reg_n_0_[34]\,
      I3 => \ap_CS_fsm_reg_n_0_[35]\,
      O => \ap_CS_fsm[1]_i_7_n_0\
    );
\ap_CS_fsm[1]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[48]\,
      I1 => ap_CS_fsm_state50,
      I2 => \ap_CS_fsm_reg_n_0_[46]\,
      I3 => \ap_CS_fsm_reg_n_0_[47]\,
      O => \ap_CS_fsm[1]_i_8_n_0\
    );
\ap_CS_fsm[1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[44]\,
      I1 => \ap_CS_fsm_reg_n_0_[45]\,
      I2 => \ap_CS_fsm_reg_n_0_[42]\,
      I3 => \ap_CS_fsm_reg_n_0_[43]\,
      O => \ap_CS_fsm[1]_i_9_n_0\
    );
\ap_CS_fsm[50]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => icmp_ln326_fu_333_p224_in,
      I1 => \empty_62_reg_411_reg_n_0_[0]\,
      O => \ap_CS_fsm[50]_i_2_n_0\
    );
\ap_CS_fsm[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F80807F00000000"
    )
        port map (
      I0 => frame_counter_loc_0_i_reg_132(1),
      I1 => frame_counter_loc_0_i_reg_132(0),
      I2 => frame_counter_loc_0_i_reg_132(2),
      I3 => frame_counter_loc_0_i_reg_132(3),
      I4 => grp_fu_349_p1(23),
      I5 => \ap_CS_fsm[6]_i_3_n_0\,
      O => icmp_ln326_fu_333_p224_in
    );
\ap_CS_fsm[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0041820014000082"
    )
        port map (
      I0 => grp_fu_349_p1(20),
      I1 => grp_fu_349_p1(22),
      I2 => frame_counter_loc_0_i_reg_132(2),
      I3 => frame_counter_loc_0_i_reg_132(1),
      I4 => frame_counter_loc_0_i_reg_132(0),
      I5 => grp_fu_349_p1(21),
      O => \ap_CS_fsm[6]_i_3_n_0\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      PRE => \^ap_rst_n_inv\,
      Q => \^q\(0)
    );
\ap_CS_fsm_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[9]\,
      Q => \ap_CS_fsm_reg_n_0_[10]\
    );
\ap_CS_fsm_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[10]\,
      Q => \ap_CS_fsm_reg_n_0_[11]\
    );
\ap_CS_fsm_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[11]\,
      Q => \ap_CS_fsm_reg_n_0_[12]\
    );
\ap_CS_fsm_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[12]\,
      Q => \ap_CS_fsm_reg_n_0_[13]\
    );
\ap_CS_fsm_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[13]\,
      Q => \ap_CS_fsm_reg_n_0_[14]\
    );
\ap_CS_fsm_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[14]\,
      Q => \ap_CS_fsm_reg_n_0_[15]\
    );
\ap_CS_fsm_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[15]\,
      Q => \ap_CS_fsm_reg_n_0_[16]\
    );
\ap_CS_fsm_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[16]\,
      Q => \ap_CS_fsm_reg_n_0_[17]\
    );
\ap_CS_fsm_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[17]\,
      Q => \ap_CS_fsm_reg_n_0_[18]\
    );
\ap_CS_fsm_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[18]\,
      Q => \ap_CS_fsm_reg_n_0_[19]\
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2
    );
\ap_CS_fsm_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[19]\,
      Q => \ap_CS_fsm_reg_n_0_[20]\
    );
\ap_CS_fsm_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[20]\,
      Q => \ap_CS_fsm_reg_n_0_[21]\
    );
\ap_CS_fsm_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[21]\,
      Q => \ap_CS_fsm_reg_n_0_[22]\
    );
\ap_CS_fsm_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[22]\,
      Q => \ap_CS_fsm_reg_n_0_[23]\
    );
\ap_CS_fsm_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[23]\,
      Q => \ap_CS_fsm_reg_n_0_[24]\
    );
\ap_CS_fsm_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[24]\,
      Q => \ap_CS_fsm_reg_n_0_[25]\
    );
\ap_CS_fsm_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[25]\,
      Q => \ap_CS_fsm_reg_n_0_[26]\
    );
\ap_CS_fsm_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[26]\,
      Q => \ap_CS_fsm_reg_n_0_[27]\
    );
\ap_CS_fsm_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[27]\,
      Q => \ap_CS_fsm_reg_n_0_[28]\
    );
\ap_CS_fsm_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[28]\,
      Q => \ap_CS_fsm_reg_n_0_[29]\
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state3
    );
\ap_CS_fsm_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[29]\,
      Q => \ap_CS_fsm_reg_n_0_[30]\
    );
\ap_CS_fsm_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[30]\,
      Q => \ap_CS_fsm_reg_n_0_[31]\
    );
\ap_CS_fsm_reg[32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[31]\,
      Q => \ap_CS_fsm_reg_n_0_[32]\
    );
\ap_CS_fsm_reg[33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[32]\,
      Q => \ap_CS_fsm_reg_n_0_[33]\
    );
\ap_CS_fsm_reg[34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[33]\,
      Q => \ap_CS_fsm_reg_n_0_[34]\
    );
\ap_CS_fsm_reg[35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[34]\,
      Q => \ap_CS_fsm_reg_n_0_[35]\
    );
\ap_CS_fsm_reg[36]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[35]\,
      Q => \ap_CS_fsm_reg_n_0_[36]\
    );
\ap_CS_fsm_reg[37]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[36]\,
      Q => \ap_CS_fsm_reg_n_0_[37]\
    );
\ap_CS_fsm_reg[38]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[37]\,
      Q => \ap_CS_fsm_reg_n_0_[38]\
    );
\ap_CS_fsm_reg[39]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[38]\,
      Q => \ap_CS_fsm_reg_n_0_[39]\
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => ap_NS_fsm(3),
      Q => ap_CS_fsm_state4
    );
\ap_CS_fsm_reg[40]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[39]\,
      Q => \ap_CS_fsm_reg_n_0_[40]\
    );
\ap_CS_fsm_reg[41]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[40]\,
      Q => \ap_CS_fsm_reg_n_0_[41]\
    );
\ap_CS_fsm_reg[42]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[41]\,
      Q => \ap_CS_fsm_reg_n_0_[42]\
    );
\ap_CS_fsm_reg[43]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[42]\,
      Q => \ap_CS_fsm_reg_n_0_[43]\
    );
\ap_CS_fsm_reg[44]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[43]\,
      Q => \ap_CS_fsm_reg_n_0_[44]\
    );
\ap_CS_fsm_reg[45]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[44]\,
      Q => \ap_CS_fsm_reg_n_0_[45]\
    );
\ap_CS_fsm_reg[46]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[45]\,
      Q => \ap_CS_fsm_reg_n_0_[46]\
    );
\ap_CS_fsm_reg[47]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[46]\,
      Q => \ap_CS_fsm_reg_n_0_[47]\
    );
\ap_CS_fsm_reg[48]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[47]\,
      Q => \ap_CS_fsm_reg_n_0_[48]\
    );
\ap_CS_fsm_reg[49]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[48]\,
      Q => ap_CS_fsm_state50
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => ap_NS_fsm(4),
      Q => ap_CS_fsm_state5
    );
\ap_CS_fsm_reg[50]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => ap_NS_fsm(50),
      Q => ap_CS_fsm_state51
    );
\ap_CS_fsm_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => ap_NS_fsm(5),
      Q => ap_CS_fsm_state6
    );
\ap_CS_fsm_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => ap_NS_fsm(6),
      Q => \ap_CS_fsm_reg_n_0_[6]\
    );
\ap_CS_fsm_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[6]\,
      Q => \ap_CS_fsm_reg_n_0_[7]\
    );
\ap_CS_fsm_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[7]\,
      Q => \ap_CS_fsm_reg_n_0_[8]\
    );
\ap_CS_fsm_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \ap_CS_fsm_reg_n_0_[8]\,
      Q => \ap_CS_fsm_reg_n_0_[9]\
    );
\empty_62_reg_411[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B2FFFF00B20000"
    )
        port map (
      I0 => grp_fu_349_p1(23),
      I1 => frame_counter_loc_0_i_reg_132(3),
      I2 => \empty_62_reg_411[0]_i_2_n_0\,
      I3 => \noise_estimated_loc_0_i_reg_144_reg_n_0_[0]\,
      I4 => ap_CS_fsm_state3,
      I5 => \empty_62_reg_411_reg_n_0_[0]\,
      O => \empty_62_reg_411[0]_i_1_n_0\
    );
\empty_62_reg_411[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F02FFFF00002F02"
    )
        port map (
      I0 => grp_fu_349_p1(20),
      I1 => frame_counter_loc_0_i_reg_132(0),
      I2 => frame_counter_loc_0_i_reg_132(1),
      I3 => grp_fu_349_p1(21),
      I4 => frame_counter_loc_0_i_reg_132(2),
      I5 => grp_fu_349_p1(22),
      O => \empty_62_reg_411[0]_i_2_n_0\
    );
\empty_62_reg_411_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => \empty_62_reg_411[0]_i_1_n_0\,
      Q => \empty_62_reg_411_reg_n_0_[0]\
    );
\frame_counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => grp_fu_349_p1(20),
      I1 => ap_CS_fsm_state51,
      I2 => icmp_ln326_reg_421,
      I3 => \empty_62_reg_411_reg_n_0_[0]\,
      I4 => frame_counter_new_0_i_reg_184(0),
      O => ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p6(0)
    );
\frame_counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => grp_fu_349_p1(21),
      I1 => ap_CS_fsm_state51,
      I2 => icmp_ln326_reg_421,
      I3 => \empty_62_reg_411_reg_n_0_[0]\,
      I4 => frame_counter_new_0_i_reg_184(1),
      O => ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p6(1)
    );
\frame_counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => grp_fu_349_p1(22),
      I1 => ap_CS_fsm_state51,
      I2 => icmp_ln326_reg_421,
      I3 => \empty_62_reg_411_reg_n_0_[0]\,
      I4 => frame_counter_new_0_i_reg_184(2),
      O => ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p6(2)
    );
\frame_counter[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => grp_fu_349_p1(23),
      I1 => ap_CS_fsm_state51,
      I2 => icmp_ln326_reg_421,
      I3 => \empty_62_reg_411_reg_n_0_[0]\,
      I4 => frame_counter_new_0_i_reg_184(3),
      O => ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p6(3)
    );
\frame_counter_flag_0_i_reg_169_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => grp_spectral_subtract_fu_262_n_7,
      Q => frame_counter_flag_0_i_reg_169
    );
\frame_counter_flag_1_i_reg_155_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_2,
      CLR => \^ap_rst_n_inv\,
      D => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_3,
      Q => frame_counter_flag_1_i_reg_155
    );
\frame_counter_loc_0_i_reg_132_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_2,
      CLR => \^ap_rst_n_inv\,
      D => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_9,
      Q => frame_counter_loc_0_i_reg_132(0)
    );
\frame_counter_loc_0_i_reg_132_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_2,
      CLR => \^ap_rst_n_inv\,
      D => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_8,
      Q => frame_counter_loc_0_i_reg_132(1)
    );
\frame_counter_loc_0_i_reg_132_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_2,
      CLR => \^ap_rst_n_inv\,
      D => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_7,
      Q => frame_counter_loc_0_i_reg_132(2)
    );
\frame_counter_loc_0_i_reg_132_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_2,
      CLR => \^ap_rst_n_inv\,
      D => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_6,
      Q => frame_counter_loc_0_i_reg_132(3)
    );
\frame_counter_new_0_i_reg_184[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => frame_counter_loc_0_i_reg_132(1),
      I1 => frame_counter_loc_0_i_reg_132(0),
      I2 => frame_counter_loc_0_i_reg_132(2),
      I3 => frame_counter_loc_0_i_reg_132(3),
      O => add_ln324_fu_327_p2(3)
    );
\frame_counter_new_0_i_reg_184_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_spectral_subtract_fu_262_n_0,
      CLR => \^ap_rst_n_inv\,
      D => grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_6,
      Q => frame_counter_new_0_i_reg_184(0)
    );
\frame_counter_new_0_i_reg_184_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_spectral_subtract_fu_262_n_0,
      CLR => \^ap_rst_n_inv\,
      D => grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_5,
      Q => frame_counter_new_0_i_reg_184(1)
    );
\frame_counter_new_0_i_reg_184_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_spectral_subtract_fu_262_n_0,
      CLR => \^ap_rst_n_inv\,
      D => grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_4,
      Q => frame_counter_new_0_i_reg_184(2)
    );
\frame_counter_new_0_i_reg_184_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_spectral_subtract_fu_262_n_0,
      CLR => \^ap_rst_n_inv\,
      D => grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_3,
      Q => frame_counter_new_0_i_reg_184(3)
    );
\frame_counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => frame_counter0,
      CLR => \^ap_rst_n_inv\,
      D => ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p6(0),
      Q => frame_counter(0)
    );
\frame_counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => frame_counter0,
      CLR => \^ap_rst_n_inv\,
      D => ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p6(1),
      Q => frame_counter(1)
    );
\frame_counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => frame_counter0,
      CLR => \^ap_rst_n_inv\,
      D => ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p6(2),
      Q => frame_counter(2)
    );
\frame_counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => frame_counter0,
      CLR => \^ap_rst_n_inv\,
      D => ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p6(3),
      Q => frame_counter(3)
    );
grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE
     port map (
      AR(0) => \^ap_rst_n_inv\,
      D(1) => ap_NS_fsm(50),
      D(0) => ap_NS_fsm(0),
      E(0) => frame_counter0,
      Q(3) => ap_CS_fsm_state51,
      Q(2) => ap_CS_fsm_state50,
      Q(1) => ap_CS_fsm_state6,
      Q(0) => \^q\(0),
      add_ln324_fu_327_p2(0) => add_ln324_fu_327_p2(3),
      \ap_CS_fsm_reg[0]\(0) => \^ap_cs_fsm_reg[0]_0\,
      \ap_CS_fsm_reg[49]\ => grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_10,
      \ap_CS_fsm_reg[50]\ => \ap_CS_fsm_reg[50]_0\,
      \ap_CS_fsm_reg[50]_0\ => \ap_CS_fsm[50]_i_2_n_0\,
      ap_clk => ap_clk,
      ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p61 => ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p61,
      ap_rst_n => ap_rst_n,
      frame_counter_flag_0_i_reg_169 => frame_counter_flag_0_i_reg_169,
      frame_counter_flag_0_i_reg_1692 => frame_counter_flag_0_i_reg_1692,
      frame_counter_flag_0_i_reg_169221_out => frame_counter_flag_0_i_reg_169221_out,
      frame_counter_flag_1_i_reg_155 => frame_counter_flag_1_i_reg_155,
      \frame_counter_flag_1_i_reg_155_reg[0]\ => grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_8,
      \frame_counter_new_0_i_reg_184_reg[2]\(2 downto 0) => frame_counter_loc_0_i_reg_132(2 downto 0),
      \frame_counter_new_0_i_reg_184_reg[3]\(3 downto 0) => grp_fu_349_p1(23 downto 20),
      \frame_counter_reg[0]\ => \empty_62_reg_411_reg_n_0_[0]\,
      grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg => grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg,
      icmp_ln326_reg_421 => icmp_ln326_reg_421,
      noise_estimated => noise_estimated,
      noise_estimated_flag_0_i_reg_197 => noise_estimated_flag_0_i_reg_197,
      \noise_estimated_new_0_i_reg_211_reg[0]\ => grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_11,
      \noise_estimated_reg[0]\ => \noise_estimated_new_0_i_reg_211_reg_n_0_[0]\,
      \noise_frame_count_read_reg_372_reg[3]\(3) => grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_3,
      \noise_frame_count_read_reg_372_reg[3]\(2) => grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_4,
      \noise_frame_count_read_reg_372_reg[3]\(1) => grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_5,
      \noise_frame_count_read_reg_372_reg[3]\(0) => grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_6,
      p_23_in => p_23_in
    );
grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_10,
      Q => grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg
    );
grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE
     port map (
      AR(0) => \^ap_rst_n_inv\,
      D(1 downto 0) => ap_NS_fsm(2 downto 1),
      E(0) => \^ap_cs_fsm_reg[0]_0\,
      Q(4) => ap_CS_fsm_state6,
      Q(3) => ap_CS_fsm_state5,
      Q(2) => ap_CS_fsm_state4,
      Q(1) => ap_CS_fsm_state2,
      Q(0) => \^q\(0),
      \ap_CS_fsm_reg[1]\(0) => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_2,
      \ap_CS_fsm_reg[1]_0\ => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_3,
      \ap_CS_fsm_reg[1]_1\ => \ap_CS_fsm[1]_i_2_n_0\,
      \ap_CS_fsm_reg[1]_2\ => \ap_CS_fsm[1]_i_3_n_0\,
      \ap_CS_fsm_reg[1]_3\ => \ap_CS_fsm[1]_i_5_n_0\,
      \ap_CS_fsm_reg[1]_4\ => \ap_CS_fsm[1]_i_11_n_0\,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \frame_counter_loc_0_i_reg_132_reg[3]\(3 downto 0) => frame_counter(3 downto 0),
      \frame_counter_reg[3]\(3) => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_6,
      \frame_counter_reg[3]\(2) => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_7,
      \frame_counter_reg[3]\(1) => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_8,
      \frame_counter_reg[3]\(0) => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_9,
      grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg,
      grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg_reg => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_5,
      noise_estimated => noise_estimated,
      \noise_estimated_reg[0]\ => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_4,
      reset_noise_c_dout => reset_noise_c_dout,
      reset_noise_read_reg_380 => reset_noise_read_reg_380
    );
grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_5,
      Q => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg
    );
grp_noise_estimation_accumulate_fu_246: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_noise_estimation_accumulate
     port map (
      AR(0) => \^ap_rst_n_inv\,
      D(1 downto 0) => ap_NS_fsm(4 downto 3),
      E(0) => grp_noise_estimation_accumulate_fu_246_n_5,
      Q(1) => ap_CS_fsm_state4,
      Q(0) => ap_CS_fsm_state3,
      ap_block_pp0_stage0_11001 => ap_block_pp0_stage0_11001_1,
      ap_clk => ap_clk,
      ap_done_cache_reg => \^stream4_i_full_n\,
      ap_enable_reg_pp0_iter1_reg_0 => \^ap_enable_reg_pp0_iter1_reg\,
      ap_rst_n => ap_rst_n,
      compute_magnitude_square_U0_stream2_write => compute_magnitude_square_U0_stream2_write,
      full_n_reg(0) => full_n_reg(0),
      grp_noise_estimation_accumulate_fu_246_ap_start_reg => grp_noise_estimation_accumulate_fu_246_ap_start_reg,
      grp_noise_estimation_accumulate_fu_246_ap_start_reg_reg => grp_noise_estimation_accumulate_fu_246_n_4,
      p_6_in => p_6_in,
      pop => pop,
      stream3_empty_n => stream3_empty_n,
      stream3_full_n => stream3_full_n
    );
grp_noise_estimation_accumulate_fu_246_ap_start_reg_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => grp_noise_estimation_accumulate_fu_246_n_4,
      Q => grp_noise_estimation_accumulate_fu_246_ap_start_reg
    );
grp_spectral_subtract_fu_262: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_spectral_subtract
     port map (
      AR(0) => \^ap_rst_n_inv\,
      D(1 downto 0) => ap_NS_fsm(6 downto 5),
      E(0) => grp_spectral_subtract_fu_262_n_0,
      Q(2) => ap_CS_fsm_state6,
      Q(1) => ap_CS_fsm_state5,
      Q(0) => ap_CS_fsm_state4,
      \ap_CS_fsm_reg[4]\ => grp_spectral_subtract_fu_262_n_6,
      \ap_CS_fsm_reg[6]\ => \empty_62_reg_411_reg_n_0_[0]\,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter4_reg_0 => ap_enable_reg_pp0_iter4,
      ap_rst_n => ap_rst_n,
      empty_n_reg => \^stream4_i_full_n\,
      empty_n_reg_0 => \^ap_enable_reg_pp0_iter1_reg\,
      frame_counter_flag_0_i_reg_169 => frame_counter_flag_0_i_reg_169,
      frame_counter_flag_0_i_reg_1692 => frame_counter_flag_0_i_reg_1692,
      frame_counter_flag_0_i_reg_169221_out => frame_counter_flag_0_i_reg_169221_out,
      frame_counter_flag_1_i_reg_155 => frame_counter_flag_1_i_reg_155,
      \frame_counter_flag_1_i_reg_155_reg[0]\ => grp_spectral_subtract_fu_262_n_7,
      full_n_reg => ap_block_pp0_stage0_11001,
      full_n_reg_0(0) => full_n_reg_0(0),
      grp_spectral_subtract_fu_262_ap_start_reg => grp_spectral_subtract_fu_262_ap_start_reg,
      icmp_ln326_fu_333_p224_in => icmp_ln326_fu_333_p224_in,
      icmp_ln326_reg_421 => icmp_ln326_reg_421,
      \icmp_ln326_reg_421_reg[0]\ => grp_spectral_subtract_fu_262_n_8,
      p_23_in => p_23_in,
      p_6_in => p_6_in_0,
      p_9_in => p_9_in,
      pop => pop,
      reconstruct_signal_U0_stream6_write => reconstruct_signal_U0_stream6_write,
      stream3_empty_n => stream3_empty_n,
      stream4_i_empty_n => stream4_i_empty_n,
      stream5_empty_n => stream5_empty_n,
      stream5_full_n => stream5_full_n
    );
grp_spectral_subtract_fu_262_ap_start_reg_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => grp_spectral_subtract_fu_262_n_6,
      Q => grp_spectral_subtract_fu_262_ap_start_reg
    );
\icmp_ln326_reg_421_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => grp_spectral_subtract_fu_262_n_8,
      Q => icmp_ln326_reg_421
    );
\noise_estimated[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ap_CS_fsm_state51,
      I1 => icmp_ln326_reg_421,
      I2 => \empty_62_reg_411_reg_n_0_[0]\,
      O => ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p61
    );
\noise_estimated_flag_0_i_reg_197_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_spectral_subtract_fu_262_n_0,
      CLR => \^ap_rst_n_inv\,
      D => grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_8,
      Q => noise_estimated_flag_0_i_reg_197
    );
\noise_estimated_loc_0_i_reg_144_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_2,
      CLR => \^ap_rst_n_inv\,
      D => grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_4,
      Q => \noise_estimated_loc_0_i_reg_144_reg_n_0_[0]\
    );
\noise_estimated_new_0_i_reg_211_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => grp_spectral_subtract_fu_262_n_0,
      CLR => \^ap_rst_n_inv\,
      D => frame_counter_flag_0_i_reg_169221_out,
      Q => \noise_estimated_new_0_i_reg_211_reg_n_0_[0]\
    );
\noise_estimated_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      CLR => \^ap_rst_n_inv\,
      D => grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_11,
      Q => noise_estimated
    );
\noise_frame_count_read_reg_372_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_cs_fsm_reg[0]_0\,
      CLR => \^ap_rst_n_inv\,
      D => \out\(0),
      Q => grp_fu_349_p1(20)
    );
\noise_frame_count_read_reg_372_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_cs_fsm_reg[0]_0\,
      CLR => \^ap_rst_n_inv\,
      D => \out\(1),
      Q => grp_fu_349_p1(21)
    );
\noise_frame_count_read_reg_372_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_cs_fsm_reg[0]_0\,
      CLR => \^ap_rst_n_inv\,
      D => \out\(2),
      Q => grp_fu_349_p1(22)
    );
\noise_frame_count_read_reg_372_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_cs_fsm_reg[0]_0\,
      CLR => \^ap_rst_n_inv\,
      D => \out\(3),
      Q => grp_fu_349_p1(23)
    );
\reset_noise_read_reg_380[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \noise_frame_count_read_reg_372_reg[0]_0\,
      O => \^ap_cs_fsm_reg[0]_0\
    );
\reset_noise_read_reg_380_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^ap_cs_fsm_reg[0]_0\,
      CLR => \^ap_rst_n_inv\,
      D => reset_noise_c_dout,
      Q => reset_noise_read_reg_380
    );
stream4_i_fifo_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w24_d16_S
     port map (
      AR(0) => \^ap_rst_n_inv\,
      E(0) => grp_noise_estimation_accumulate_fu_246_n_5,
      Q(0) => ap_CS_fsm_state4,
      \ap_CS_fsm_reg[4]\ => \^ap_enable_reg_pp0_iter1_reg\,
      ap_block_pp0_stage0_11001 => ap_block_pp0_stage0_11001_1,
      ap_clk => ap_clk,
      full_n_reg_0 => \^stream4_i_full_n\,
      p_6_in => p_6_in_0,
      pop => pop,
      stream3_empty_n => stream3_empty_n,
      stream4_i_empty_n => stream4_i_empty_n
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top is
  port (
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WREADY : out STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    fft_in_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    fft_in_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    fft_in_TSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    fft_in_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    clean_out_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    clean_out_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clean_out_TSTRB : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clean_out_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    fft_in_TVALID : in STD_LOGIC;
    fft_in_TREADY : out STD_LOGIC;
    clean_out_TVALID : out STD_LOGIC;
    clean_out_TREADY : in STD_LOGIC
  );
  attribute C_S_AXI_CONTROL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CONTROL_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top : entity is 6;
  attribute C_S_AXI_CONTROL_DATA_WIDTH : integer;
  attribute C_S_AXI_CONTROL_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top : entity is 32;
  attribute C_S_AXI_CONTROL_WSTRB_WIDTH : integer;
  attribute C_S_AXI_CONTROL_WSTRB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top : entity is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top : entity is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top : entity is 4;
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top is
  signal \<const0>\ : STD_LOGIC;
  signal Block_entry_frame_counter_wr_proc_U0_ap_start : STD_LOGIC;
  signal Block_entry_frame_counter_wr_proc_U0_n_0 : STD_LOGIC;
  signal Block_entry_frame_counter_wr_proc_U0_n_2 : STD_LOGIC;
  signal Block_entry_frame_counter_wr_proc_U0_n_3 : STD_LOGIC;
  signal Block_entry_frame_counter_wr_proc_U0_n_6 : STD_LOGIC;
  signal alpha_c_empty_n : STD_LOGIC;
  signal alpha_c_full_n : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state2_3 : STD_LOGIC;
  signal ap_block_pp0_stage0_11001 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
  signal ap_loop_init : STD_LOGIC;
  signal ap_ready_int : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal ap_sig_allocacmp_i1_load1 : STD_LOGIC;
  signal ap_start : STD_LOGIC;
  signal ap_sync_axi_to_internal_U0_ap_ready : STD_LOGIC;
  signal ap_sync_entry_proc_U0_ap_ready : STD_LOGIC;
  signal ap_sync_reg_Block_entry_proc_U0_ap_ready : STD_LOGIC;
  signal ap_sync_reg_axi_to_internal_U0_ap_ready : STD_LOGIC;
  signal ap_sync_reg_entry_proc_U0_ap_ready_reg_n_0 : STD_LOGIC;
  signal axi_to_internal_U0_ap_ready : STD_LOGIC;
  signal axi_to_internal_U0_stream1_din : STD_LOGIC_VECTOR ( 64 downto 0 );
  signal beta_c_U_n_2 : STD_LOGIC;
  signal beta_c_empty_n : STD_LOGIC;
  signal \^clean_out_tstrb\ : STD_LOGIC_VECTOR ( 6 to 6 );
  signal cmp_i97_loc_empty_n : STD_LOGIC;
  signal cmp_i97_loc_full_n : STD_LOGIC;
  signal compute_magnitude_square_U0_ap_ready : STD_LOGIC;
  signal compute_magnitude_square_U0_ap_start : STD_LOGIC;
  signal compute_magnitude_square_U0_n_1 : STD_LOGIC;
  signal compute_magnitude_square_U0_n_11 : STD_LOGIC;
  signal compute_magnitude_square_U0_n_14 : STD_LOGIC;
  signal compute_magnitude_square_U0_n_15 : STD_LOGIC;
  signal compute_magnitude_square_U0_n_16 : STD_LOGIC;
  signal compute_magnitude_square_U0_n_17 : STD_LOGIC;
  signal compute_magnitude_square_U0_n_18 : STD_LOGIC;
  signal compute_magnitude_square_U0_n_19 : STD_LOGIC;
  signal compute_magnitude_square_U0_n_20 : STD_LOGIC;
  signal compute_magnitude_square_U0_n_21 : STD_LOGIC;
  signal compute_magnitude_square_U0_n_22 : STD_LOGIC;
  signal compute_magnitude_square_U0_n_23 : STD_LOGIC;
  signal compute_magnitude_square_U0_n_24 : STD_LOGIC;
  signal compute_magnitude_square_U0_n_25 : STD_LOGIC;
  signal compute_magnitude_square_U0_n_26 : STD_LOGIC;
  signal compute_magnitude_square_U0_n_27 : STD_LOGIC;
  signal compute_magnitude_square_U0_n_28 : STD_LOGIC;
  signal compute_magnitude_square_U0_n_3 : STD_LOGIC;
  signal compute_magnitude_square_U0_n_5 : STD_LOGIC;
  signal compute_magnitude_square_U0_n_6 : STD_LOGIC;
  signal compute_magnitude_square_U0_n_7 : STD_LOGIC;
  signal compute_magnitude_square_U0_n_9 : STD_LOGIC;
  signal compute_magnitude_square_U0_stream2_write : STD_LOGIC;
  signal control_s_axi_U_n_1 : STD_LOGIC;
  signal control_s_axi_U_n_14 : STD_LOGIC;
  signal control_s_axi_U_n_15 : STD_LOGIC;
  signal control_s_axi_U_n_16 : STD_LOGIC;
  signal control_s_axi_U_n_6 : STD_LOGIC;
  signal empty_n : STD_LOGIC;
  signal empty_n_8 : STD_LOGIC;
  signal entry_proc_U0_noise_frame_count_c_write : STD_LOGIC;
  signal \grp_spectral_subtract_fu_262/ap_block_pp0_stage0_11001\ : STD_LOGIC;
  signal \grp_spectral_subtract_fu_262/ap_enable_reg_pp0_iter4\ : STD_LOGIC;
  signal internal_to_axi_U0_ap_ready : STD_LOGIC;
  signal internal_to_axi_U0_ap_start : STD_LOGIC;
  signal internal_to_axi_U0_n_8 : STD_LOGIC;
  signal mOutPtr111_out : STD_LOGIC;
  signal mOutPtr_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal noise_frame_count : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal noise_frame_count_c_U_n_1 : STD_LOGIC;
  signal noise_frame_count_c_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal noise_frame_count_c_full_n : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal p_8_in_5 : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal pop : STD_LOGIC;
  signal pop_4 : STD_LOGIC;
  signal push : STD_LOGIC;
  signal push_1 : STD_LOGIC;
  signal push_6 : STD_LOGIC;
  signal \push__0\ : STD_LOGIC;
  signal reconstruct_signal_U0_ap_ready : STD_LOGIC;
  signal reconstruct_signal_U0_ap_start : STD_LOGIC;
  signal reconstruct_signal_U0_n_1 : STD_LOGIC;
  signal reconstruct_signal_U0_n_11 : STD_LOGIC;
  signal reconstruct_signal_U0_n_4 : STD_LOGIC;
  signal reconstruct_signal_U0_n_7 : STD_LOGIC;
  signal reconstruct_signal_U0_n_8 : STD_LOGIC;
  signal reconstruct_signal_U0_stream6_write : STD_LOGIC;
  signal reset_noise : STD_LOGIC;
  signal reset_noise_c_dout : STD_LOGIC;
  signal reset_noise_c_empty_n : STD_LOGIC;
  signal reset_noise_c_full_n : STD_LOGIC;
  signal \^s_axi_control_rdata\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal start_for_Block_entry_frame_counter_wr_proc_U0_U_n_2 : STD_LOGIC;
  signal start_for_Block_entry_frame_counter_wr_proc_U0_full_n : STD_LOGIC;
  signal start_for_compute_magnitude_square_U0_full_n : STD_LOGIC;
  signal start_for_internal_to_axi_U0_full_n : STD_LOGIC;
  signal start_for_reconstruct_signal_U0_full_n : STD_LOGIC;
  signal start_once_reg : STD_LOGIC;
  signal start_once_reg_0 : STD_LOGIC;
  signal start_once_reg_2 : STD_LOGIC;
  signal start_once_reg_7 : STD_LOGIC;
  signal stream1_dout : STD_LOGIC_VECTOR ( 64 downto 54 );
  signal stream1_empty_n : STD_LOGIC;
  signal stream1_full_n : STD_LOGIC;
  signal stream2_dout : STD_LOGIC_VECTOR ( 64 to 64 );
  signal stream2_empty_n : STD_LOGIC;
  signal stream2_full_n : STD_LOGIC;
  signal stream3_empty_n : STD_LOGIC;
  signal stream3_full_n : STD_LOGIC;
  signal stream4_i_full_n : STD_LOGIC;
  signal stream5_empty_n : STD_LOGIC;
  signal stream5_full_n : STD_LOGIC;
  signal stream6_dout : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal stream6_empty_n : STD_LOGIC;
  signal stream6_full_n : STD_LOGIC;
begin
  clean_out_TKEEP(7) <= \^clean_out_tstrb\(6);
  clean_out_TKEEP(6) <= \^clean_out_tstrb\(6);
  clean_out_TKEEP(5) <= \^clean_out_tstrb\(6);
  clean_out_TKEEP(4) <= \^clean_out_tstrb\(6);
  clean_out_TKEEP(3) <= \^clean_out_tstrb\(6);
  clean_out_TKEEP(2) <= \^clean_out_tstrb\(6);
  clean_out_TKEEP(1) <= \^clean_out_tstrb\(6);
  clean_out_TKEEP(0) <= \^clean_out_tstrb\(6);
  clean_out_TSTRB(7) <= \^clean_out_tstrb\(6);
  clean_out_TSTRB(6) <= \^clean_out_tstrb\(6);
  clean_out_TSTRB(5) <= \^clean_out_tstrb\(6);
  clean_out_TSTRB(4) <= \^clean_out_tstrb\(6);
  clean_out_TSTRB(3) <= \^clean_out_tstrb\(6);
  clean_out_TSTRB(2) <= \^clean_out_tstrb\(6);
  clean_out_TSTRB(1) <= \^clean_out_tstrb\(6);
  clean_out_TSTRB(0) <= \^clean_out_tstrb\(6);
  s_axi_control_BRESP(1) <= \<const0>\;
  s_axi_control_BRESP(0) <= \<const0>\;
  s_axi_control_RDATA(31) <= \<const0>\;
  s_axi_control_RDATA(30) <= \<const0>\;
  s_axi_control_RDATA(29) <= \<const0>\;
  s_axi_control_RDATA(28) <= \<const0>\;
  s_axi_control_RDATA(27) <= \<const0>\;
  s_axi_control_RDATA(26) <= \<const0>\;
  s_axi_control_RDATA(25) <= \<const0>\;
  s_axi_control_RDATA(24) <= \<const0>\;
  s_axi_control_RDATA(23 downto 0) <= \^s_axi_control_rdata\(23 downto 0);
  s_axi_control_RRESP(1) <= \<const0>\;
  s_axi_control_RRESP(0) <= \<const0>\;
Block_entry_frame_counter_wr_proc_U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_Block_entry_frame_counter_wr_proc
     port map (
      Q(0) => Block_entry_frame_counter_wr_proc_U0_n_2,
      \ap_CS_fsm_reg[0]_0\ => Block_entry_frame_counter_wr_proc_U0_n_0,
      \ap_CS_fsm_reg[50]_0\ => Block_entry_frame_counter_wr_proc_U0_n_3,
      ap_block_pp0_stage0_11001 => \grp_spectral_subtract_fu_262/ap_block_pp0_stage0_11001\,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1_reg => Block_entry_frame_counter_wr_proc_U0_n_6,
      ap_enable_reg_pp0_iter4 => \grp_spectral_subtract_fu_262/ap_enable_reg_pp0_iter4\,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      compute_magnitude_square_U0_stream2_write => compute_magnitude_square_U0_stream2_write,
      full_n_reg(0) => ap_CS_fsm_state2,
      full_n_reg_0(0) => ap_CS_fsm_state2_3,
      \noise_frame_count_read_reg_372_reg[0]_0\ => noise_frame_count_c_U_n_1,
      \out\(3 downto 0) => noise_frame_count_c_dout(3 downto 0),
      p_6_in => p_6_in,
      p_9_in => p_9_in,
      reconstruct_signal_U0_stream6_write => reconstruct_signal_U0_stream6_write,
      reset_noise_c_dout => reset_noise_c_dout,
      stream3_empty_n => stream3_empty_n,
      stream3_full_n => stream3_full_n,
      stream4_i_full_n => stream4_i_full_n,
      stream5_empty_n => stream5_empty_n,
      stream5_full_n => stream5_full_n
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
alpha_c_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w24_d8_S
     port map (
      SR(0) => ap_rst_n_inv,
      alpha_c_empty_n => alpha_c_empty_n,
      alpha_c_full_n => alpha_c_full_n,
      ap_clk => ap_clk,
      entry_proc_U0_noise_frame_count_c_write => entry_proc_U0_noise_frame_count_c_write,
      full_n_reg_0 => Block_entry_frame_counter_wr_proc_U0_n_0
    );
ap_sync_reg_Block_entry_proc_U0_ap_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => control_s_axi_U_n_14,
      Q => ap_sync_reg_Block_entry_proc_U0_ap_ready,
      R => '0'
    );
ap_sync_reg_axi_to_internal_U0_ap_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => control_s_axi_U_n_16,
      Q => ap_sync_reg_axi_to_internal_U0_ap_ready,
      R => '0'
    );
ap_sync_reg_entry_proc_U0_ap_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => control_s_axi_U_n_15,
      Q => ap_sync_reg_entry_proc_U0_ap_ready_reg_n_0,
      R => '0'
    );
axi_to_internal_U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_axi_to_internal
     port map (
      E(0) => push,
      SR(0) => ap_rst_n_inv,
      ack_in_t_reg => fft_in_TREADY,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      ap_sync_axi_to_internal_U0_ap_ready => ap_sync_axi_to_internal_U0_ap_ready,
      ap_sync_reg_axi_to_internal_U0_ap_ready => ap_sync_reg_axi_to_internal_U0_ap_ready,
      axi_to_internal_U0_ap_ready => axi_to_internal_U0_ap_ready,
      axi_to_internal_U0_stream1_din(64 downto 0) => axi_to_internal_U0_stream1_din(64 downto 0),
      fft_in_TDATA(63 downto 0) => fft_in_TDATA(63 downto 0),
      fft_in_TLAST(0) => fft_in_TLAST(0),
      fft_in_TVALID => fft_in_TVALID,
      mOutPtr111_out => mOutPtr111_out,
      pop => pop,
      start_for_compute_magnitude_square_U0_full_n => start_for_compute_magnitude_square_U0_full_n,
      start_once_reg => start_once_reg_0,
      stream1_full_n => stream1_full_n
    );
beta_c_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w24_d8_S_0
     port map (
      SR(0) => ap_rst_n_inv,
      alpha_c_full_n => alpha_c_full_n,
      ap_clk => ap_clk,
      ap_start => ap_start,
      ap_sync_entry_proc_U0_ap_ready => ap_sync_entry_proc_U0_ap_ready,
      ap_sync_reg_Block_entry_proc_U0_ap_ready => ap_sync_reg_Block_entry_proc_U0_ap_ready,
      ap_sync_reg_entry_proc_U0_ap_ready_reg => beta_c_U_n_2,
      beta_c_empty_n => beta_c_empty_n,
      cmp_i97_loc_full_n => cmp_i97_loc_full_n,
      entry_proc_U0_noise_frame_count_c_write => entry_proc_U0_noise_frame_count_c_write,
      full_n_reg_0 => Block_entry_frame_counter_wr_proc_U0_n_0,
      full_n_reg_1 => control_s_axi_U_n_6,
      int_ap_start_reg => ap_sync_reg_entry_proc_U0_ap_ready_reg_n_0,
      noise_frame_count_c_full_n => noise_frame_count_c_full_n,
      reset_noise_c_full_n => reset_noise_c_full_n
    );
cmp_i97_loc_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w1_d8_S
     port map (
      ap_clk => ap_clk,
      ap_rst_n_inv => ap_rst_n_inv,
      ap_start => ap_start,
      ap_sync_reg_Block_entry_proc_U0_ap_ready => ap_sync_reg_Block_entry_proc_U0_ap_ready,
      cmp_i97_loc_empty_n => cmp_i97_loc_empty_n,
      cmp_i97_loc_full_n => cmp_i97_loc_full_n,
      full_n_reg_0 => Block_entry_frame_counter_wr_proc_U0_n_0
    );
compute_magnitude_square_U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_compute_magnitude_square
     port map (
      Block_entry_frame_counter_wr_proc_U0_ap_start => Block_entry_frame_counter_wr_proc_U0_ap_start,
      DI(0) => compute_magnitude_square_U0_n_14,
      E(0) => compute_magnitude_square_U0_n_1,
      O(3) => compute_magnitude_square_U0_n_15,
      O(2) => compute_magnitude_square_U0_n_16,
      O(1) => compute_magnitude_square_U0_n_17,
      O(0) => compute_magnitude_square_U0_n_18,
      Q(1) => ap_CS_fsm_state2,
      Q(0) => compute_magnitude_square_U0_n_3,
      \ap_CS_fsm_reg[0]_0\ => compute_magnitude_square_U0_n_5,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => compute_magnitude_square_U0_n_27,
      ap_rst_n_inv => ap_rst_n_inv,
      compute_magnitude_square_U0_ap_ready => compute_magnitude_square_U0_ap_ready,
      compute_magnitude_square_U0_ap_start => compute_magnitude_square_U0_ap_start,
      compute_magnitude_square_U0_stream2_write => compute_magnitude_square_U0_stream2_write,
      dout_vld_reg => compute_magnitude_square_U0_n_7,
      dout_vld_reg_0(0) => compute_magnitude_square_U0_n_9,
      dout_vld_reg_1(0) => compute_magnitude_square_U0_n_11,
      dout_vld_reg_2 => compute_magnitude_square_U0_n_28,
      empty_n => empty_n,
      int_ap_idle_reg(0) => reconstruct_signal_U0_n_7,
      int_ap_idle_reg_0(0) => Block_entry_frame_counter_wr_proc_U0_n_2,
      mOutPtr_reg(11 downto 0) => mOutPtr_reg(11 downto 0),
      \mOutPtr_reg[10]\(3) => compute_magnitude_square_U0_n_23,
      \mOutPtr_reg[10]\(2) => compute_magnitude_square_U0_n_24,
      \mOutPtr_reg[10]\(1) => compute_magnitude_square_U0_n_25,
      \mOutPtr_reg[10]\(0) => compute_magnitude_square_U0_n_26,
      \mOutPtr_reg[7]\(3) => compute_magnitude_square_U0_n_19,
      \mOutPtr_reg[7]\(2) => compute_magnitude_square_U0_n_20,
      \mOutPtr_reg[7]\(1) => compute_magnitude_square_U0_n_21,
      \mOutPtr_reg[7]\(0) => compute_magnitude_square_U0_n_22,
      mOutPtr_reg_0_sp_1 => Block_entry_frame_counter_wr_proc_U0_n_6,
      \num_data_cnt_reg[0]\(0) => push,
      p_8_in => p_8_in,
      pop => pop,
      pop_0 => pop_4,
      push => push_1,
      reconstruct_signal_U0_stream6_write => reconstruct_signal_U0_stream6_write,
      start_for_reconstruct_signal_U0_full_n => start_for_reconstruct_signal_U0_full_n,
      start_once_reg => start_once_reg_2,
      start_once_reg_reg_0 => compute_magnitude_square_U0_n_6,
      stream1_empty_n => stream1_empty_n,
      stream2_empty_n => stream2_empty_n,
      stream2_full_n => stream2_full_n,
      stream3_empty_n => stream3_empty_n,
      stream3_full_n => stream3_full_n,
      stream4_i_full_n => stream4_i_full_n
    );
control_s_axi_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_control_s_axi
     port map (
      \FSM_onehot_rstate_reg[1]_0\ => s_axi_control_ARREADY,
      \FSM_onehot_wstate_reg[1]_0\ => s_axi_control_AWREADY,
      \FSM_onehot_wstate_reg[2]_0\ => s_axi_control_WREADY,
      Q(3 downto 0) => noise_frame_count(3 downto 0),
      ap_block_pp0_stage0_11001 => ap_block_pp0_stage0_11001,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_loop_exit_ready_pp0_iter1_reg => ap_loop_exit_ready_pp0_iter1_reg,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => control_s_axi_U_n_14,
      ap_rst_n_1 => control_s_axi_U_n_15,
      ap_rst_n_2 => control_s_axi_U_n_16,
      ap_rst_n_inv => ap_rst_n_inv,
      ap_start => ap_start,
      ap_sync_axi_to_internal_U0_ap_ready => ap_sync_axi_to_internal_U0_ap_ready,
      ap_sync_entry_proc_U0_ap_ready => ap_sync_entry_proc_U0_ap_ready,
      ap_sync_reg_Block_entry_proc_U0_ap_ready => ap_sync_reg_Block_entry_proc_U0_ap_ready,
      ap_sync_reg_axi_to_internal_U0_ap_ready => ap_sync_reg_axi_to_internal_U0_ap_ready,
      ap_sync_reg_entry_proc_U0_ap_ready_reg => control_s_axi_U_n_6,
      auto_restart_status_reg_0 => control_s_axi_U_n_1,
      axi_to_internal_U0_ap_ready => axi_to_internal_U0_ap_ready,
      cmp_i97_loc_full_n => cmp_i97_loc_full_n,
      int_ap_idle_reg_0 => compute_magnitude_square_U0_n_5,
      int_ap_idle_reg_1 => compute_magnitude_square_U0_n_6,
      int_ap_start_reg_0 => beta_c_U_n_2,
      int_task_ap_done_reg_0 => internal_to_axi_U0_n_8,
      internal_to_axi_U0_ap_start => internal_to_axi_U0_ap_start,
      interrupt => interrupt,
      \mOutPtr_reg[0]\ => ap_sync_reg_entry_proc_U0_ap_ready_reg_n_0,
      reconstruct_signal_U0_ap_start => reconstruct_signal_U0_ap_start,
      reset_noise => reset_noise,
      s_axi_control_ARADDR(5 downto 0) => s_axi_control_ARADDR(5 downto 0),
      s_axi_control_ARVALID => s_axi_control_ARVALID,
      s_axi_control_AWADDR(3 downto 0) => s_axi_control_AWADDR(5 downto 2),
      s_axi_control_AWVALID => s_axi_control_AWVALID,
      s_axi_control_BREADY => s_axi_control_BREADY,
      s_axi_control_BVALID => s_axi_control_BVALID,
      s_axi_control_RDATA(23 downto 0) => \^s_axi_control_rdata\(23 downto 0),
      s_axi_control_RREADY => s_axi_control_RREADY,
      s_axi_control_RVALID => s_axi_control_RVALID,
      s_axi_control_WDATA(23 downto 0) => s_axi_control_WDATA(23 downto 0),
      s_axi_control_WSTRB(2 downto 0) => s_axi_control_WSTRB(2 downto 0),
      s_axi_control_WVALID => s_axi_control_WVALID,
      start_for_Block_entry_frame_counter_wr_proc_U0_full_n => start_for_Block_entry_frame_counter_wr_proc_U0_full_n,
      start_for_compute_magnitude_square_U0_full_n => start_for_compute_magnitude_square_U0_full_n,
      start_for_internal_to_axi_U0_full_n => start_for_internal_to_axi_U0_full_n,
      start_once_reg => start_once_reg,
      start_once_reg_0 => start_once_reg_7,
      start_once_reg_1 => start_once_reg_0
    );
entry_proc_U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_entry_proc
     port map (
      ap_clk => ap_clk,
      ap_rst_n_inv => ap_rst_n_inv,
      start_once_reg => start_once_reg,
      start_once_reg_reg_0 => start_for_Block_entry_frame_counter_wr_proc_U0_U_n_2
    );
internal_to_axi_U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_internal_to_axi
     port map (
      D(63 downto 0) => stream6_dout(63 downto 0),
      ap_block_pp0_stage0_11001 => ap_block_pp0_stage0_11001,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_loop_exit_ready_pp0_iter1_reg => ap_loop_exit_ready_pp0_iter1_reg,
      ap_loop_init => ap_loop_init,
      ap_ready_int => ap_ready_int,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      ap_sig_allocacmp_i1_load1 => ap_sig_allocacmp_i1_load1,
      auto_restart_status_reg => internal_to_axi_U0_n_8,
      clean_out_TDATA(63 downto 0) => clean_out_TDATA(63 downto 0),
      clean_out_TLAST(0) => clean_out_TLAST(0),
      clean_out_TREADY => clean_out_TREADY,
      clean_out_TSTRB(0) => \^clean_out_tstrb\(6),
      clean_out_TVALID => clean_out_TVALID,
      int_task_ap_done_reg => control_s_axi_U_n_1,
      internal_to_axi_U0_ap_ready => internal_to_axi_U0_ap_ready,
      internal_to_axi_U0_ap_start => internal_to_axi_U0_ap_start,
      stream6_empty_n => stream6_empty_n
    );
noise_frame_count_c_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w4_d8_S
     port map (
      Block_entry_frame_counter_wr_proc_U0_ap_start => Block_entry_frame_counter_wr_proc_U0_ap_start,
      \addr_reg[0]_0\ => Block_entry_frame_counter_wr_proc_U0_n_0,
      alpha_c_empty_n => alpha_c_empty_n,
      ap_clk => ap_clk,
      ap_rst_n_inv => ap_rst_n_inv,
      beta_c_empty_n => beta_c_empty_n,
      cmp_i97_loc_empty_n => cmp_i97_loc_empty_n,
      empty_n_reg_0 => noise_frame_count_c_U_n_1,
      entry_proc_U0_noise_frame_count_c_write => entry_proc_U0_noise_frame_count_c_write,
      \in\(3 downto 0) => noise_frame_count(3 downto 0),
      noise_frame_count_c_full_n => noise_frame_count_c_full_n,
      \out\(3 downto 0) => noise_frame_count_c_dout(3 downto 0),
      reset_noise_c_empty_n => reset_noise_c_empty_n
    );
reconstruct_signal_U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_reconstruct_signal
     port map (
      E(0) => reconstruct_signal_U0_n_1,
      Q(1) => ap_CS_fsm_state2_3,
      Q(0) => reconstruct_signal_U0_n_7,
      ap_clk => ap_clk,
      ap_ready_int => ap_ready_int,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => reconstruct_signal_U0_n_11,
      ap_rst_n_inv => ap_rst_n_inv,
      dout_vld_reg => reconstruct_signal_U0_n_4,
      empty_n => empty_n_8,
      p_8_in => p_8_in_5,
      pop => pop_4,
      push => push_6,
      push_0 => push_1,
      reconstruct_signal_U0_ap_ready => reconstruct_signal_U0_ap_ready,
      reconstruct_signal_U0_ap_start => reconstruct_signal_U0_ap_start,
      reconstruct_signal_U0_stream6_write => reconstruct_signal_U0_stream6_write,
      start_for_internal_to_axi_U0_full_n => start_for_internal_to_axi_U0_full_n,
      start_once_reg => start_once_reg_7,
      start_once_reg_reg_0 => reconstruct_signal_U0_n_8,
      stream2_empty_n => stream2_empty_n,
      stream5_empty_n => stream5_empty_n,
      stream6_empty_n => stream6_empty_n,
      stream6_full_n => stream6_full_n
    );
reset_noise_c_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w1_d8_S_1
     port map (
      \addr_reg[0]_0\ => Block_entry_frame_counter_wr_proc_U0_n_0,
      ap_clk => ap_clk,
      ap_rst_n_inv => ap_rst_n_inv,
      entry_proc_U0_noise_frame_count_c_write => entry_proc_U0_noise_frame_count_c_write,
      reset_noise => reset_noise,
      reset_noise_c_dout => reset_noise_c_dout,
      reset_noise_c_empty_n => reset_noise_c_empty_n,
      reset_noise_c_full_n => reset_noise_c_full_n
    );
start_for_Block_entry_frame_counter_wr_proc_U0_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_start_for_Block_entry_frame_counter_wr_proc_U0
     port map (
      Block_entry_frame_counter_wr_proc_U0_ap_start => Block_entry_frame_counter_wr_proc_U0_ap_start,
      ap_clk => ap_clk,
      ap_rst_n_inv => ap_rst_n_inv,
      ap_start => ap_start,
      entry_proc_U0_noise_frame_count_c_write => entry_proc_U0_noise_frame_count_c_write,
      full_n_reg_0 => start_for_Block_entry_frame_counter_wr_proc_U0_U_n_2,
      \mOutPtr_reg[0]_0\ => Block_entry_frame_counter_wr_proc_U0_n_3,
      \mOutPtr_reg[0]_1\ => control_s_axi_U_n_6,
      start_for_Block_entry_frame_counter_wr_proc_U0_full_n => start_for_Block_entry_frame_counter_wr_proc_U0_full_n,
      start_once_reg => start_once_reg,
      start_once_reg_reg => ap_sync_reg_entry_proc_U0_ap_ready_reg_n_0
    );
start_for_compute_magnitude_square_U0_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_start_for_compute_magnitude_square_U0
     port map (
      ap_clk => ap_clk,
      ap_rst_n_inv => ap_rst_n_inv,
      ap_start => ap_start,
      ap_sync_reg_axi_to_internal_U0_ap_ready => ap_sync_reg_axi_to_internal_U0_ap_ready,
      compute_magnitude_square_U0_ap_ready => compute_magnitude_square_U0_ap_ready,
      compute_magnitude_square_U0_ap_start => compute_magnitude_square_U0_ap_start,
      start_for_compute_magnitude_square_U0_full_n => start_for_compute_magnitude_square_U0_full_n,
      start_once_reg => start_once_reg_0
    );
start_for_internal_to_axi_U0_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_start_for_internal_to_axi_U0
     port map (
      ap_clk => ap_clk,
      ap_loop_init => ap_loop_init,
      ap_rst_n_inv => ap_rst_n_inv,
      ap_sig_allocacmp_i1_load1 => ap_sig_allocacmp_i1_load1,
      internal_to_axi_U0_ap_ready => internal_to_axi_U0_ap_ready,
      internal_to_axi_U0_ap_start => internal_to_axi_U0_ap_start,
      \push__0\ => \push__0\,
      reconstruct_signal_U0_ap_start => reconstruct_signal_U0_ap_start,
      start_for_internal_to_axi_U0_full_n => start_for_internal_to_axi_U0_full_n,
      start_once_reg => start_once_reg_7
    );
start_for_reconstruct_signal_U0_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_start_for_reconstruct_signal_U0
     port map (
      ap_clk => ap_clk,
      ap_rst_n_inv => ap_rst_n_inv,
      compute_magnitude_square_U0_ap_start => compute_magnitude_square_U0_ap_start,
      \push__0\ => \push__0\,
      reconstruct_signal_U0_ap_ready => reconstruct_signal_U0_ap_ready,
      reconstruct_signal_U0_ap_start => reconstruct_signal_U0_ap_start,
      start_for_internal_to_axi_U0_full_n => start_for_internal_to_axi_U0_full_n,
      start_for_reconstruct_signal_U0_full_n => start_for_reconstruct_signal_U0_full_n,
      start_once_reg => start_once_reg_2,
      start_once_reg_0 => start_once_reg_7
    );
stream1_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d16_A
     port map (
      DIADI(10 downto 0) => stream1_dout(64 downto 54),
      E(0) => push,
      Q(0) => compute_magnitude_square_U0_n_3,
      ap_clk => ap_clk,
      ap_rst_n_inv => ap_rst_n_inv,
      axi_to_internal_U0_stream1_din(64 downto 0) => axi_to_internal_U0_stream1_din(64 downto 0),
      compute_magnitude_square_U0_stream2_write => compute_magnitude_square_U0_stream2_write,
      dout_vld_reg_0 => compute_magnitude_square_U0_n_6,
      empty_n => empty_n,
      mOutPtr111_out => mOutPtr111_out,
      \mOutPtr_reg[0]_0\(0) => compute_magnitude_square_U0_n_11,
      mem_reg => compute_magnitude_square_U0_n_27,
      \num_data_cnt_reg[0]_0\(0) => compute_magnitude_square_U0_n_9,
      p_8_in => p_8_in,
      pop => pop,
      stream1_empty_n => stream1_empty_n,
      stream1_full_n => stream1_full_n,
      stream2_full_n => stream2_full_n,
      stream3_full_n => stream3_full_n
    );
stream2_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d2048_A
     port map (
      DI(0) => compute_magnitude_square_U0_n_14,
      DIADI(10 downto 0) => stream1_dout(64 downto 54),
      DOBDO(0) => stream2_dout(64),
      E(0) => pop_4,
      O(3) => compute_magnitude_square_U0_n_15,
      O(2) => compute_magnitude_square_U0_n_16,
      O(1) => compute_magnitude_square_U0_n_17,
      O(0) => compute_magnitude_square_U0_n_18,
      Q(0) => reconstruct_signal_U0_n_7,
      ap_clk => ap_clk,
      ap_rst_n_inv => ap_rst_n_inv,
      dout_vld_reg_0 => reconstruct_signal_U0_n_8,
      empty_n => empty_n_8,
      mOutPtr_reg(11 downto 0) => mOutPtr_reg(11 downto 0),
      \mOutPtr_reg[0]_0\ => reconstruct_signal_U0_n_4,
      \mOutPtr_reg[11]_0\(3) => compute_magnitude_square_U0_n_23,
      \mOutPtr_reg[11]_0\(2) => compute_magnitude_square_U0_n_24,
      \mOutPtr_reg[11]_0\(1) => compute_magnitude_square_U0_n_25,
      \mOutPtr_reg[11]_0\(0) => compute_magnitude_square_U0_n_26,
      \mOutPtr_reg[7]_0\(3) => compute_magnitude_square_U0_n_19,
      \mOutPtr_reg[7]_0\(2) => compute_magnitude_square_U0_n_20,
      \mOutPtr_reg[7]_0\(1) => compute_magnitude_square_U0_n_21,
      \mOutPtr_reg[7]_0\(0) => compute_magnitude_square_U0_n_22,
      mem_reg_3 => reconstruct_signal_U0_n_11,
      \num_data_cnt_reg[0]_0\ => compute_magnitude_square_U0_n_7,
      \num_data_cnt_reg[3]_0\ => compute_magnitude_square_U0_n_28,
      push => push_1,
      reconstruct_signal_U0_stream6_write => reconstruct_signal_U0_stream6_write,
      stream2_empty_n => stream2_empty_n,
      stream2_full_n => stream2_full_n,
      stream5_empty_n => stream5_empty_n,
      stream6_full_n => stream6_full_n
    );
stream3_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w24_d16_S_x
     port map (
      E(0) => compute_magnitude_square_U0_n_1,
      Q(0) => ap_CS_fsm_state2,
      ap_clk => ap_clk,
      ap_rst_n_inv => ap_rst_n_inv,
      compute_magnitude_square_U0_stream2_write => compute_magnitude_square_U0_stream2_write,
      \mOutPtr_reg[4]_0\ => Block_entry_frame_counter_wr_proc_U0_n_6,
      p_6_in => p_6_in,
      stream3_empty_n => stream3_empty_n,
      stream3_full_n => stream3_full_n,
      stream4_i_full_n => stream4_i_full_n
    );
stream5_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w24_d16_S_x_2
     port map (
      Q(0) => ap_CS_fsm_state2_3,
      ap_block_pp0_stage0_11001 => \grp_spectral_subtract_fu_262/ap_block_pp0_stage0_11001\,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter4 => \grp_spectral_subtract_fu_262/ap_enable_reg_pp0_iter4\,
      ap_rst_n_inv => ap_rst_n_inv,
      p_9_in => p_9_in,
      reconstruct_signal_U0_stream6_write => reconstruct_signal_U0_stream6_write,
      stream5_empty_n => stream5_empty_n,
      stream5_full_n => stream5_full_n
    );
stream6_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d16_A_3
     port map (
      D(63 downto 0) => stream6_dout(63 downto 0),
      DOBDO(0) => stream2_dout(64),
      E(0) => reconstruct_signal_U0_n_1,
      ap_clk => ap_clk,
      ap_ready_int => ap_ready_int,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      p_8_in => p_8_in_5,
      push => push_6,
      stream6_empty_n => stream6_empty_n,
      stream6_full_n => stream6_full_n
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RREADY : in STD_LOGIC;
    s_axi_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WREADY : out STD_LOGIC;
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_WVALID : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    fft_in_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    fft_in_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    fft_in_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    fft_in_TREADY : out STD_LOGIC;
    fft_in_TSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    fft_in_TVALID : in STD_LOGIC;
    clean_out_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    clean_out_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clean_out_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    clean_out_TREADY : in STD_LOGIC;
    clean_out_TSTRB : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clean_out_TVALID : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "audio_system_denoise_top_0_0,denoise_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "denoise_top,Vivado 2024.2";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_control_rdata\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal NLW_inst_s_axi_control_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_control_RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal NLW_inst_s_axi_control_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_S_AXI_CONTROL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CONTROL_ADDR_WIDTH of inst : label is 6;
  attribute C_S_AXI_CONTROL_DATA_WIDTH : integer;
  attribute C_S_AXI_CONTROL_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_CONTROL_WSTRB_WIDTH : integer;
  attribute C_S_AXI_CONTROL_WSTRB_WIDTH of inst : label is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of inst : label is 4;
  attribute SDX_KERNEL : string;
  attribute SDX_KERNEL of inst : label is "true";
  attribute SDX_KERNEL_SYNTH_INST : string;
  attribute SDX_KERNEL_SYNTH_INST of inst : label is "inst";
  attribute SDX_KERNEL_TYPE : string;
  attribute SDX_KERNEL_TYPE of inst : label is "hls";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of ap_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control:fft_in:clean_out, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN audio_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_MODE of ap_rst_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clean_out_TREADY : signal is "xilinx.com:interface:axis:1.0 clean_out TREADY";
  attribute X_INTERFACE_INFO of clean_out_TVALID : signal is "xilinx.com:interface:axis:1.0 clean_out TVALID";
  attribute X_INTERFACE_INFO of fft_in_TREADY : signal is "xilinx.com:interface:axis:1.0 fft_in TREADY";
  attribute X_INTERFACE_INFO of fft_in_TVALID : signal is "xilinx.com:interface:axis:1.0 fft_in TVALID";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  attribute X_INTERFACE_MODE of interrupt : signal is "master";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of s_axi_control_ARREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY";
  attribute X_INTERFACE_INFO of s_axi_control_ARVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID";
  attribute X_INTERFACE_INFO of s_axi_control_AWREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY";
  attribute X_INTERFACE_INFO of s_axi_control_AWVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID";
  attribute X_INTERFACE_INFO of s_axi_control_BREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control BREADY";
  attribute X_INTERFACE_INFO of s_axi_control_BVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control BVALID";
  attribute X_INTERFACE_INFO of s_axi_control_RREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RREADY";
  attribute X_INTERFACE_INFO of s_axi_control_RVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RVALID";
  attribute X_INTERFACE_INFO of s_axi_control_WREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WREADY";
  attribute X_INTERFACE_INFO of s_axi_control_WVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WVALID";
  attribute X_INTERFACE_INFO of clean_out_TDATA : signal is "xilinx.com:interface:axis:1.0 clean_out TDATA";
  attribute X_INTERFACE_MODE of clean_out_TDATA : signal is "master";
  attribute X_INTERFACE_PARAMETER of clean_out_TDATA : signal is "XIL_INTERFACENAME clean_out, TUSER_WIDTH 0, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN audio_system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clean_out_TKEEP : signal is "xilinx.com:interface:axis:1.0 clean_out TKEEP";
  attribute X_INTERFACE_INFO of clean_out_TLAST : signal is "xilinx.com:interface:axis:1.0 clean_out TLAST";
  attribute X_INTERFACE_INFO of clean_out_TSTRB : signal is "xilinx.com:interface:axis:1.0 clean_out TSTRB";
  attribute X_INTERFACE_INFO of fft_in_TDATA : signal is "xilinx.com:interface:axis:1.0 fft_in TDATA";
  attribute X_INTERFACE_MODE of fft_in_TDATA : signal is "slave";
  attribute X_INTERFACE_PARAMETER of fft_in_TDATA : signal is "XIL_INTERFACENAME fft_in, TUSER_WIDTH 0, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN audio_system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of fft_in_TKEEP : signal is "xilinx.com:interface:axis:1.0 fft_in TKEEP";
  attribute X_INTERFACE_INFO of fft_in_TLAST : signal is "xilinx.com:interface:axis:1.0 fft_in TLAST";
  attribute X_INTERFACE_INFO of fft_in_TSTRB : signal is "xilinx.com:interface:axis:1.0 fft_in TSTRB";
  attribute X_INTERFACE_INFO of s_axi_control_ARADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR";
  attribute X_INTERFACE_MODE of s_axi_control_ARADDR : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_control_ARADDR : signal is "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 6, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN audio_system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_control_AWADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR";
  attribute X_INTERFACE_INFO of s_axi_control_BRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_control BRESP";
  attribute X_INTERFACE_INFO of s_axi_control_RDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RDATA";
  attribute X_INTERFACE_INFO of s_axi_control_RRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RRESP";
  attribute X_INTERFACE_INFO of s_axi_control_WDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WDATA";
  attribute X_INTERFACE_INFO of s_axi_control_WSTRB : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB";
begin
  s_axi_control_BRESP(1) <= \<const0>\;
  s_axi_control_BRESP(0) <= \<const0>\;
  s_axi_control_RDATA(31) <= \<const0>\;
  s_axi_control_RDATA(30) <= \<const0>\;
  s_axi_control_RDATA(29) <= \<const0>\;
  s_axi_control_RDATA(28) <= \<const0>\;
  s_axi_control_RDATA(27) <= \<const0>\;
  s_axi_control_RDATA(26) <= \<const0>\;
  s_axi_control_RDATA(25) <= \<const0>\;
  s_axi_control_RDATA(24) <= \<const0>\;
  s_axi_control_RDATA(23 downto 0) <= \^s_axi_control_rdata\(23 downto 0);
  s_axi_control_RRESP(1) <= \<const0>\;
  s_axi_control_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      clean_out_TDATA(63 downto 0) => clean_out_TDATA(63 downto 0),
      clean_out_TKEEP(7 downto 0) => clean_out_TKEEP(7 downto 0),
      clean_out_TLAST(0) => clean_out_TLAST(0),
      clean_out_TREADY => clean_out_TREADY,
      clean_out_TSTRB(7 downto 0) => clean_out_TSTRB(7 downto 0),
      clean_out_TVALID => clean_out_TVALID,
      fft_in_TDATA(63 downto 0) => fft_in_TDATA(63 downto 0),
      fft_in_TKEEP(7 downto 0) => B"00000000",
      fft_in_TLAST(0) => fft_in_TLAST(0),
      fft_in_TREADY => fft_in_TREADY,
      fft_in_TSTRB(7 downto 0) => B"00000000",
      fft_in_TVALID => fft_in_TVALID,
      interrupt => interrupt,
      s_axi_control_ARADDR(5 downto 0) => s_axi_control_ARADDR(5 downto 0),
      s_axi_control_ARREADY => s_axi_control_ARREADY,
      s_axi_control_ARVALID => s_axi_control_ARVALID,
      s_axi_control_AWADDR(5 downto 2) => s_axi_control_AWADDR(5 downto 2),
      s_axi_control_AWADDR(1 downto 0) => B"00",
      s_axi_control_AWREADY => s_axi_control_AWREADY,
      s_axi_control_AWVALID => s_axi_control_AWVALID,
      s_axi_control_BREADY => s_axi_control_BREADY,
      s_axi_control_BRESP(1 downto 0) => NLW_inst_s_axi_control_BRESP_UNCONNECTED(1 downto 0),
      s_axi_control_BVALID => s_axi_control_BVALID,
      s_axi_control_RDATA(31 downto 24) => NLW_inst_s_axi_control_RDATA_UNCONNECTED(31 downto 24),
      s_axi_control_RDATA(23 downto 0) => \^s_axi_control_rdata\(23 downto 0),
      s_axi_control_RREADY => s_axi_control_RREADY,
      s_axi_control_RRESP(1 downto 0) => NLW_inst_s_axi_control_RRESP_UNCONNECTED(1 downto 0),
      s_axi_control_RVALID => s_axi_control_RVALID,
      s_axi_control_WDATA(31 downto 24) => B"00000000",
      s_axi_control_WDATA(23 downto 0) => s_axi_control_WDATA(23 downto 0),
      s_axi_control_WREADY => s_axi_control_WREADY,
      s_axi_control_WSTRB(3) => '0',
      s_axi_control_WSTRB(2 downto 0) => s_axi_control_WSTRB(2 downto 0),
      s_axi_control_WVALID => s_axi_control_WVALID
    );
end STRUCTURE;
