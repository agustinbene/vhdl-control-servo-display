library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity contador_servo_pwm is
    PORT (
      clk   : IN  STD_LOGIC; -- Reloj de 90kHz.
      reset : IN  STD_LOGIC; -- Bt de reset.
		cnt_up: IN  STD_LOGIC; -- Bt de incremento.
		cnt_dn: IN  STD_LOGIC; -- Bt de decremento.
        pos   : OUT STD_LOGIC_VECTOR(7 downto 0) -- Salida al servomotor.
    );
end contador_servo_pwm;

architecture Behavioral of contador_servo_pwm is
	-- salida "pos".
	signal contador: UNSIGNED(7 downto 0) := (OTHERS => '0');
	signal counter : integer range 0 to 24999999 := 0;
begin
    proceso_contador: process (clk, reset, cnt_up, cnt_dn) begin
        if (reset = '0') then
            contador <= "01011010"; --90 en binario
        elsif rising_edge(clk) then
		  if (clk'event and clk = '1') then
					if (counter = 10000) then
						 counter <= 0;
            if (cnt_up = '0' AND contador < 180 ) then
                contador <= contador + 1;
            elsif (cnt_dn = '0' AND contador > 0) then
                contador <= contador - 1;
            end if;
				else
				counter <= counter + 1;
					end if;
			  end if;
        end if;
    end process;
	
	-- Asignacion del valor del contador a la salida del modulo.
	pos <= STD_LOGIC_VECTOR(contador);
end Behavioral;


