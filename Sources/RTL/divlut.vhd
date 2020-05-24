library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity divlut is
    Generic(
            OPERAND_WIDTH  : positive  := 16;
            DIVIDER        : positive := 3

    );
    Port (
          --------------------Input--------------------
          dividend : in STD_LOGIC_VECTOR (OPERAND_WIDTH  - 1 downto 0);  -- The number to divide
          ---------------------------------------------
          --------------------Output-------------------
          result :   out std_logic_vector (OPERAND_WIDTH - 1 downto 0)  -- Result of the LUT
          --------------------------------------------
    );
end divlut;

architecture Behavioral of divlut is

 ----------------------------- LUT Creation ---------------------------------------
 type myArray is array (0 to 2**OPERAND_WIDTH-1) of std_logic_vector (result'range); -- Array of 10 bit vectors to store the results

 function div_gen return myArray is
   variable res : myArray := (Others => (Others =>'0')); -- Variable to store the function result
     begin

       for I in 0 to 2**OPERAND_WIDTH-1 loop -- There are 765 possible divisions by 3 that we need the results for
         res (I) := std_logic_vector(to_unsigned(I,res'length)/DIVIDER); -- Compiling LUT results
       end loop;

       return res; -- The function (as a LUT) returns the result of any division by 3
  end function;
 ----------------------------------------------------------------------------------

 signal result_sig : myArray := div_gen; -- Signal with the result of the function

 begin

  result <= result_sig(to_integer(unsigned(dividend)));   -- The result of the function gets outputted

end Behavioral;
