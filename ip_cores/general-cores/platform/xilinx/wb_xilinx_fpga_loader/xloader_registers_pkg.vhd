---------------------------------------------------------------------------------------
-- Title          : Wishbone slave core for Xilinx FPGA loader
---------------------------------------------------------------------------------------
-- File           : xloader_registers_pkg.vhd
-- Author         : auto-generated by wbgen2 from xloader_wb.wb
-- Created        : Thu Feb 14 10:33:37 2013
-- Standard       : VHDL'87
---------------------------------------------------------------------------------------
-- THIS FILE WAS GENERATED BY wbgen2 FROM SOURCE FILE xloader_wb.wb
-- DO NOT HAND-EDIT UNLESS IT'S ABSOLUTELY NECESSARY!
---------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.wbgen2_pkg.all;

package xldr_wbgen2_pkg is
  
  
  -- Input registers (user design -> WB slave)
  
  type t_xldr_in_registers is record
    csr_done_i                               : std_logic;
    csr_error_i                              : std_logic;
    csr_busy_i                               : std_logic;
    idr_i                                    : std_logic_vector(31 downto 0);
    fifo_rd_req_i                            : std_logic;
    end record;
  
  constant c_xldr_in_registers_init_value: t_xldr_in_registers := (
    csr_done_i => '0',
    csr_error_i => '0',
    csr_busy_i => '0',
    idr_i => (others => '0'),
    fifo_rd_req_i => '0'
    );
    
    -- Output registers (WB slave -> user design)
    
    type t_xldr_out_registers is record
      csr_start_o                              : std_logic;
      csr_msbf_o                               : std_logic;
      csr_swrst_o                              : std_logic;
      csr_exit_o                               : std_logic;
      csr_clkdiv_o                             : std_logic_vector(5 downto 0);
      btrigr_o                                 : std_logic_vector(7 downto 0);
      btrigr_wr_o                              : std_logic;
      gpior_o                                  : std_logic_vector(7 downto 0);
      fifo_rd_full_o                           : std_logic;
      fifo_rd_empty_o                          : std_logic;
      fifo_xsize_o                             : std_logic_vector(1 downto 0);
      fifo_xlast_o                             : std_logic;
      fifo_xdata_o                             : std_logic_vector(31 downto 0);
      end record;
    
    constant c_xldr_out_registers_init_value: t_xldr_out_registers := (
      csr_start_o => '0',
      csr_msbf_o => '0',
      csr_swrst_o => '0',
      csr_exit_o => '0',
      csr_clkdiv_o => (others => '0'),
      btrigr_o => (others => '0'),
      btrigr_wr_o => '0',
      gpior_o => (others => '0'),
      fifo_rd_full_o => '0',
      fifo_rd_empty_o => '0',
      fifo_xsize_o => (others => '0'),
      fifo_xlast_o => '0',
      fifo_xdata_o => (others => '0')
      );
    function "or" (left, right: t_xldr_in_registers) return t_xldr_in_registers;
    function f_x_to_zero (x:std_logic) return std_logic;
    function f_x_to_zero (x:std_logic_vector) return std_logic_vector;
end package;

package body xldr_wbgen2_pkg is
function f_x_to_zero (x:std_logic) return std_logic is
begin
if(x = 'X' or x = 'U') then
return '0';
else
return x;
end if; 
end function;
function f_x_to_zero (x:std_logic_vector) return std_logic_vector is
variable tmp: std_logic_vector(x'length-1 downto 0);
begin
for i in 0 to x'length-1 loop
if(x(i) = 'X' or x(i) = 'U') then
tmp(i):= '0';
else
tmp(i):=x(i);
end if; 
end loop; 
return tmp;
end function;
function "or" (left, right: t_xldr_in_registers) return t_xldr_in_registers is
variable tmp: t_xldr_in_registers;
begin
tmp.csr_done_i := f_x_to_zero(left.csr_done_i) or f_x_to_zero(right.csr_done_i);
tmp.csr_error_i := f_x_to_zero(left.csr_error_i) or f_x_to_zero(right.csr_error_i);
tmp.csr_busy_i := f_x_to_zero(left.csr_busy_i) or f_x_to_zero(right.csr_busy_i);
tmp.idr_i := f_x_to_zero(left.idr_i) or f_x_to_zero(right.idr_i);
tmp.fifo_rd_req_i := f_x_to_zero(left.fifo_rd_req_i) or f_x_to_zero(right.fifo_rd_req_i);
return tmp;
end function;
end package body;
