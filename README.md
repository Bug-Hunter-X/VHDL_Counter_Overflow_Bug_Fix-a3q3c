# VHDL Counter Overflow Bug

This repository demonstrates a common, yet subtle, bug in VHDL code: counter overflow.  The provided `counter_bug.vhd` file contains a simple counter that lacks proper overflow handling. This can lead to unexpected behavior. The solution (`counter_solution.vhd`) demonstrates how to address this issue.

**Bug:** The `counter_bug.vhd` code does not prevent the counter from exceeding its maximum value (15). This will result in undefined behavior, commonly an overflow which wraps around to 0. 

**Solution:** The `counter_solution.vhd` demonstrates two ways to handle the counter overflow. First by using modulo operation (%) and second by adding condition to stop counting once it reaches the maximum value. 

This example highlights the importance of robust error handling in VHDL design.