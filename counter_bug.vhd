```vhdl
ENTITY counter IS
  PORT (
    clk : IN  STD_LOGIC;
    rst : IN  STD_LOGIC;
    en  : IN  STD_LOGIC;
    count : OUT INTEGER RANGE 0 TO 15
  );
END ENTITY;

ARCHITECTURE behavioral OF counter IS
  SIGNAL count_reg : INTEGER RANGE 0 TO 15 := 0;
BEGIN
  PROCESS (clk, rst)
  BEGIN
    IF rst = '1' THEN
      count_reg <= 0;
    ELSIF rising_edge(clk) THEN
      IF en = '1' THEN
        count_reg <= count_reg + 1;
      END IF;
    END IF;
  END PROCESS;
  count <= count_reg;
END ARCHITECTURE;
```