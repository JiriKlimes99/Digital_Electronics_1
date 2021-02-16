## Labs Exercise no.1


#### 1. Task;
GitHub link to Digital-Electronics-1 repository:
https://github.com/JiriKlimes99/Digital_Electronics_1.git

#### 2. Task;
Verification of De Morgan's laws of function f(c,b,a);

_De Morgan's laws - functions (listed VHDL code)_
    f_o       <= ((not b_i) and a_i) or ((not c_i) and (not b_i));
    fnand_o   <= (((not b_i) nand (a_i)) nand ((not c_i) nand (not b_i)));
    fnor_o    <= (b_i nor (not a_i)) or (c_i nor b_i);

Screenshot - Simulated Time Waveforms
![Screenshot EDA Playground](01-gates/Time Waveforms Screenshot.PNG)


EDA Playground Link:
(includes the whole VHDL code)
https://www.edaplayground.com/x/wcD4


_Value chart_
| **c** | **b** |**a** | **f(c,b,a)** |
| :-: | :-: | :-: | :-: |
| 0 | 0 | 0 | 1 |
| 0 | 0 | 1 | 1 |
| 0 | 1 | 0 | 0 |
| 0 | 1 | 1 | 0 |
| 1 | 0 | 0 | 0 |
| 1 | 0 | 1 | 1 |
| 1 | 1 | 0 | 0 |
| 1 | 1 | 1 | 0 |



#### 3. Task;