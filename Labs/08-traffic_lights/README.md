# Lab 8: Traffic Lights


GitHub link to my Digital-Electronics-1 repository

https://github.com/JiriKlimes99/Digital_Electronics_1.git

--------------------------------------------------



## Task 1 (Pre-Task)

Completed state table

| **Input P** | `0` | `0` | `1` | `1` | `0` | `1` | `0` | `1` | `1` | `1` | `1` | `0` | `0` | `1` | `1` | `1` |
| :-- | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: |
| **Clock** | ![rising](Images/eq_uparrow.png) | ![rising](Images/eq_uparrow.png) | ![rising](Images/eq_uparrow.png) | ![rising](Images/eq_uparrow.png) | ![rising](Images/eq_uparrow.png) | ![rising](Images/eq_uparrow.png) | ![rising](Images/eq_uparrow.png) | ![rising](Images/eq_uparrow.png) | ![rising](Images/eq_uparrow.png) | ![rising](Images/eq_uparrow.png) | ![rising](Images/eq_uparrow.png) | ![rising](Images/eq_uparrow.png) | ![rising](Images/eq_uparrow.png) | ![rising](Images/eq_uparrow.png) | ![rising](Images/eq_uparrow.png) | ![rising](Images/eq_uparrow.png) |
| **State**   |  A  |  A  |  B  |  C  |  C  |  D  |  A  |  B  |  C  |  D  |  B  |  B  |  B  |  C  |  D  |  B  |
| **Output R** | `0` | `0` | `0` | `0` | `0` | `1` | `0` | `0` | `0` | `1` | `0` | `0` | `0` | `0` | `1` | `0` |


Figure with connection of RGB LEDs on Nexys A7 board

![Simulation1](Images/Nexys_Schematic.PNG)

Completed table with color settings.

| **RGB LED** | **Artix-7 pin names** | **Red** | **Yellow** | **Green** |
| :-: | :-: | :-: | :-: | :-: |
| LD16 | N15, M16, R12 | `1,0,0` | `1,0,1` | `0,0,1` |
| LD17 | N16, R11, G14 | `1,0,0` | `1,0,1` | `0,0,1` |

--------------------------------------------------




## Task 2 - Traffic Light Controller

A) State diagram



B) Listing of VHDL code of sequential process p_traffic_fsm

```vhdl


```

C) Listing of VHDL code of combinatorial process p_output_fsm

```vhdl


```

D) Screenshot(s) of the simulation, from which it is clear that controller works correctly.




--------------------------------------------------



## Task 3 - Smart controller


A) State Table


B) State Diagram


C) Listing of VHDL code of sequential process p_smart_traffic_fsm

```vhdl


```
