## Labs Exercise no.1


### 1. Task
GitHub link to Digital-Electronics-1 repository:
https://github.com/JiriKlimes99/Digital_Electronics_1.git
--------------------------------------

### 2. Task
Verification of De Morgan's laws of function f(c,b,a)

_De Morgan's laws - functions (listed VHDL code)_


    architecture dataflow of gates is
    begin
        f_o       <= ((not b_i) and a_i) or ((not c_i) and (not b_i));
        fnand_o   <= (((not b_i) nand (a_i)) nand ((not c_i) nand (not b_i)));
        fnor_o    <= (b_i nor (not a_i)) or (c_i nor b_i);
    end architecture dataflow;


Screenshot - Simulated Time Waveforms
![Alt text](https://github.com/JiriKlimes99/Digital_Electronics_1/blob/main/Labs/01-gates/Time%20Waveforms%20Screenshot.PNG?raw=true "Optional Title")


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
--------------------------------------

### 3. Task
Verification of Distributive laws


    architecture dataflow of gates is
    begin
    
        f1_a       <= (x_i and y_i) or (x_i and z_i);
        f1_b       <= x_i and (y_i or z_i);
       
        f2_a       <= (x_i or y_i) and (x_i or z_i);
        f2_b       <= x_i or (y_i and z_i);

    end architecture dataflow;


Screenshot - Simulated Time Waveforms
![Alt text](https://github.com/JiriKlimes99/Digital_Electronics_1/blob/main/Labs/01-gates/Task%203%20-%20Time%20Waveforms%20Screenshot%20.PNG?raw=true "Optional Title")


EDA Playground Link:
(includes the whole VHDL code)
https://www.edaplayground.com/x/S_aS


_Value chart_
| **z** | **y** |**x** |
| :-: | :-: | :-: |
| 0 | 0 | 0 |
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 0 |
| 1 | 0 | 1 |
| 1 | 0 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 | 
| 1 | 1 | 1 |
