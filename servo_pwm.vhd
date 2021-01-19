library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


 
entity servo_pwm is
    PORT (
        clk   : IN  STD_LOGIC;
        reset : IN  STD_LOGIC;
        pos   : IN  STD_LOGIC_VECTOR(7 downto 0);
        servo : OUT STD_LOGIC
    );
end servo_pwm;
 
architecture Behavioral of servo_pwm is
    -- Contador de 0 a 1799.
    signal cnt : unsigned(11 downto 0);
    -- Señal temporal para generar el PWM.
    signal pwmi: unsigned(7 downto 0);
begin
    -- Valor mínimo debe ser de 0.5ms.
    pwmi <= unsigned(pos) + 45; --45*11.11us=0.5ms Valor minimo para que el servo este en 0º
    -- Proceso del contador, de 0 a 1799.
    contador: process (reset, clk) begin
        if (reset = '0') then
            cnt <= (others => '0');

        elsif rising_edge(clk) then
            if (cnt = 1799) then
                cnt <= (others => '0');
            else
                cnt <= cnt + 1;
            end if;
        end if;
    end process;
    -- Señal de salida para el servomotor.
    servo <= '1' when (cnt < pwmi) else '0';
end Behavioral;