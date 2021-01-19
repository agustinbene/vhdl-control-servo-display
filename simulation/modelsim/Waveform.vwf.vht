-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/29/2019 20:53:45"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Servo-test2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Servo-test2_vhd_vec_tst IS
END Servo-test2_vhd_vec_tst;
ARCHITECTURE Servo-test2_arch OF Servo-test2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL GPIO_0 : STD_LOGIC_VECTOR(25 DOWNTO 25);
SIGNAL hex0 : STD_LOGIC_VECTOR(0 TO 20);
SIGNAL KEY : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC_VECTOR(0 TO 7);
COMPONENT Servo-test2
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	GPIO_0 : OUT STD_LOGIC_VECTOR(25 DOWNTO 25);
	hex0 : OUT STD_LOGIC_VECTOR(0 TO 20);
	KEY : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	LEDR : OUT STD_LOGIC_VECTOR(0 TO 7)
	);
END COMPONENT;
BEGIN
	i1 : Servo-test2
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	GPIO_0 => GPIO_0,
	hex0 => hex0,
	KEY => KEY,
	LEDR => LEDR
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
	FOR i IN 1 TO 9
	LOOP
		CLOCK_50 <= '0';
		WAIT FOR 5555556 ps;
		CLOCK_50 <= '1';
		WAIT FOR 5555555 ps;
	END LOOP;
	CLOCK_50 <= '0';
WAIT;
END PROCESS t_prcs_CLOCK_50;
-- KEY[2]
t_prcs_KEY_2: PROCESS
BEGIN
	KEY(2) <= '0';
	WAIT FOR 441695 ps;
	KEY(2) <= '1';
	WAIT FOR 20848004 ps;
	KEY(2) <= '0';
	WAIT FOR 24116547 ps;
	KEY(2) <= '1';
	WAIT FOR 21819733 ps;
	KEY(2) <= '0';
WAIT;
END PROCESS t_prcs_KEY_2;
-- KEY[1]
t_prcs_KEY_1: PROCESS
BEGIN
	KEY(1) <= '0';
	WAIT FOR 21378038 ps;
	KEY(1) <= '1';
	WAIT FOR 24028208 ps;
	KEY(1) <= '0';
WAIT;
END PROCESS t_prcs_KEY_1;
-- KEY[0]
t_prcs_KEY_0: PROCESS
BEGIN
	KEY(0) <= '0';
	WAIT FOR 59717163 ps;
	KEY(0) <= '1';
	WAIT FOR 25618311 ps;
	KEY(0) <= '0';
WAIT;
END PROCESS t_prcs_KEY_0;
END Servo-test2_arch;
