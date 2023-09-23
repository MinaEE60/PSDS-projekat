library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ip_mlp_v1_0 is
	generic (
		-- Users to add parameters here
		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXI
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 6
	);
	port (
		-- Users to add ports here

		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S00_AXI
		s00_axi_aclk	: in std_logic;
		s00_axi_aresetn	: in std_logic;
		s00_axi_awaddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_awprot	: in std_logic_vector(2 downto 0);
		s00_axi_awvalid	: in std_logic;
		s00_axi_awready	: out std_logic;
		s00_axi_wdata	: in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_wstrb	: in std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
		s00_axi_wvalid	: in std_logic;
		s00_axi_wready	: out std_logic;
		s00_axi_bresp	: out std_logic_vector(1 downto 0);
		s00_axi_bvalid	: out std_logic;
		s00_axi_bready	: in std_logic;
		s00_axi_araddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_arprot	: in std_logic_vector(2 downto 0);
		s00_axi_arvalid	: in std_logic;
		s00_axi_arready	: out std_logic;
		s00_axi_rdata	: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_rresp	: out std_logic_vector(1 downto 0);
		s00_axi_rvalid	: out std_logic;
		s00_axi_rready	: in std_logic
	);
end ip_mlp_v1_0;

architecture arch_imp of ip_mlp_v1_0 is

    component MLP is
          Port (
          clk: in std_logic;
          reset_mlp: in std_logic;
          start_mlp: in std_logic;
          done_mlp: out std_logic;
          out0_mlp: out std_logic_vector(15 downto 0);
          out1_mlp: out std_logic_vector(15 downto 0); 
          out2_mlp: out std_logic_vector(15 downto 0); 
          out3_mlp: out std_logic_vector(15 downto 0); 
          out4_mlp: out std_logic_vector(15 downto 0); 
          out5_mlp: out std_logic_vector(15 downto 0); 
          out6_mlp: out std_logic_vector(15 downto 0); 
          out7_mlp: out std_logic_vector(15 downto 0);
          out8_mlp: out std_logic_vector(15 downto 0); 
          out9_mlp: out std_logic_vector(15 downto 0)  
           );
    end component;
	-- component declaration
	component ip_mlp_v1_0_S00_AXI is
		generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 6
		);
		port (
        start_axi_o : out std_logic;
        reset_axi_o : out std_logic;
        done_axi_i : in std_logic;
        out0_axi_i : in std_logic_vector(C_S00_AXI_DATA_WIDTH/2-1 downto 0);
        out1_axi_i : in std_logic_vector(C_S00_AXI_DATA_WIDTH/2-1 downto 0);
        out2_axi_i : in std_logic_vector(C_S00_AXI_DATA_WIDTH/2-1 downto 0);
        out3_axi_i : in std_logic_vector(C_S00_AXI_DATA_WIDTH/2-1 downto 0);
        out4_axi_i : in std_logic_vector(C_S00_AXI_DATA_WIDTH/2-1 downto 0);
        out5_axi_i : in std_logic_vector(C_S00_AXI_DATA_WIDTH/2-1 downto 0);
        out6_axi_i : in std_logic_vector(C_S00_AXI_DATA_WIDTH/2-1 downto 0);
        out7_axi_i : in std_logic_vector(C_S00_AXI_DATA_WIDTH/2-1 downto 0);
        out8_axi_i : in std_logic_vector(C_S00_AXI_DATA_WIDTH/2-1 downto 0);
        out9_axi_i : in std_logic_vector(C_S00_AXI_DATA_WIDTH/2-1 downto 0);
		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic
		);
	end component ip_mlp_v1_0_S00_AXI;

        signal start_axi_s : std_logic;
        signal reset_axi_s : std_logic;
        signal done_axi_s : std_logic;
        signal out0_axi_s : std_logic_vector(C_S00_AXI_DATA_WIDTH/2-1 downto 0);
        signal out1_axi_s : std_logic_vector(C_S00_AXI_DATA_WIDTH/2-1 downto 0);
        signal out2_axi_s : std_logic_vector(C_S00_AXI_DATA_WIDTH/2-1 downto 0);
        signal out3_axi_s : std_logic_vector(C_S00_AXI_DATA_WIDTH/2-1 downto 0);
        signal out4_axi_s : std_logic_vector(C_S00_AXI_DATA_WIDTH/2-1 downto 0);
        signal out5_axi_s : std_logic_vector(C_S00_AXI_DATA_WIDTH/2-1 downto 0);
        signal out6_axi_s : std_logic_vector(C_S00_AXI_DATA_WIDTH/2-1 downto 0);
        signal out7_axi_s : std_logic_vector(C_S00_AXI_DATA_WIDTH/2-1 downto 0);
        signal out8_axi_s : std_logic_vector(C_S00_AXI_DATA_WIDTH/2-1 downto 0);
        signal out9_axi_s : std_logic_vector(C_S00_AXI_DATA_WIDTH/2-1 downto 0);

begin

-- Instantiation of Axi Bus Interface S00_AXI
ip_mlp_v1_0_S00_AXI_inst : ip_mlp_v1_0_S00_AXI
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S00_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_ADDR_WIDTH
	)
	port map (
	    start_axi_o => start_axi_s,
        reset_axi_o => reset_axi_s,
        done_axi_i => done_axi_s,
        out0_axi_i => out0_axi_s,
        out1_axi_i => out1_axi_s,
        out2_axi_i => out2_axi_s,
        out3_axi_i => out3_axi_s,
        out4_axi_i => out4_axi_s,
        out5_axi_i => out5_axi_s,
        out6_axi_i => out6_axi_s, 
        out7_axi_i => out7_axi_s,
        out8_axi_i => out8_axi_s, 
        out9_axi_i => out9_axi_s,
		S_AXI_ACLK	=> s00_axi_aclk,
		S_AXI_ARESETN	=> s00_axi_aresetn,
		S_AXI_AWADDR	=> s00_axi_awaddr,
		S_AXI_AWPROT	=> s00_axi_awprot,
		S_AXI_AWVALID	=> s00_axi_awvalid,
		S_AXI_AWREADY	=> s00_axi_awready,
		S_AXI_WDATA	=> s00_axi_wdata,
		S_AXI_WSTRB	=> s00_axi_wstrb,
		S_AXI_WVALID	=> s00_axi_wvalid,
		S_AXI_WREADY	=> s00_axi_wready,
		S_AXI_BRESP	=> s00_axi_bresp,
		S_AXI_BVALID	=> s00_axi_bvalid,
		S_AXI_BREADY	=> s00_axi_bready,
		S_AXI_ARADDR	=> s00_axi_araddr,
		S_AXI_ARPROT	=> s00_axi_arprot,
		S_AXI_ARVALID	=> s00_axi_arvalid,
		S_AXI_ARREADY	=> s00_axi_arready,
		S_AXI_RDATA	=> s00_axi_rdata,
		S_AXI_RRESP	=> s00_axi_rresp,
		S_AXI_RVALID	=> s00_axi_rvalid,
		S_AXI_RREADY	=> s00_axi_rready
	);

	-- Add user logic here
    MLP_ins : MLP
    port map (
          clk => s00_axi_aclk,
          reset_mlp => reset_axi_s,
          start_mlp => start_axi_s,
          done_mlp => done_axi_s,
          out0_mlp => out0_axi_s,
          out1_mlp => out1_axi_s,
          out2_mlp => out2_axi_s,
          out3_mlp => out3_axi_s,
          out4_mlp => out4_axi_s,
          out5_mlp => out5_axi_s,
          out6_mlp => out6_axi_s,
          out7_mlp => out7_axi_s,
          out8_mlp => out8_axi_s,
          out9_mlp => out9_axi_s
     );  
       	-- User logic ends
       	
end arch_imp;
