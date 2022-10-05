# Transform input

scoreboard players operation #math_exponential_goal nexus.value = #input nexus.value
execute if score #input nexus.value matches ..999 run scoreboard players set #math_exponential_goal nexus.value 1000000
execute if score #input nexus.value matches ..999 run scoreboard players operation #math_exponential_goal nexus.value /= #input nexus.value







# Compute function

scoreboard players set #output nexus.value 0
scoreboard players set #math_exponential nexus.value 1000

scoreboard players operation #math_exponential_test nexus.value = #math_exponential nexus.value
scoreboard players operation #math_exponential_test nexus.value *= #e_power_12 nexus.value
scoreboard players operation #math_exponential_test nexus.value /= #1000 nexus.value
execute if score #math_exponential_test nexus.value <= #math_exponential_goal nexus.value run scoreboard players add #output nexus.value 4096
execute if score #math_exponential_test nexus.value <= #math_exponential_goal nexus.value run scoreboard players operation #math_exponential nexus.value = #math_exponential_test nexus.value
scoreboard players operation #math_exponential_test nexus.value = #math_exponential nexus.value
scoreboard players operation #math_exponential_test nexus.value *= #e_power_11 nexus.value
scoreboard players operation #math_exponential_test nexus.value /= #1000 nexus.value
execute if score #math_exponential_test nexus.value <= #math_exponential_goal nexus.value run scoreboard players add #output nexus.value 2048
execute if score #math_exponential_test nexus.value <= #math_exponential_goal nexus.value run scoreboard players operation #math_exponential nexus.value = #math_exponential_test nexus.value
scoreboard players operation #math_exponential_test nexus.value = #math_exponential nexus.value
scoreboard players operation #math_exponential_test nexus.value *= #e_power_10 nexus.value
scoreboard players operation #math_exponential_test nexus.value /= #1000 nexus.value
execute if score #math_exponential_test nexus.value <= #math_exponential_goal nexus.value run scoreboard players add #output nexus.value 1024
execute if score #math_exponential_test nexus.value <= #math_exponential_goal nexus.value run scoreboard players operation #math_exponential nexus.value = #math_exponential_test nexus.value
scoreboard players operation #math_exponential_test nexus.value = #math_exponential nexus.value
scoreboard players operation #math_exponential_test nexus.value *= #e_power_09 nexus.value
scoreboard players operation #math_exponential_test nexus.value /= #1000 nexus.value
execute if score #math_exponential_test nexus.value <= #math_exponential_goal nexus.value run scoreboard players add #output nexus.value 512
execute if score #math_exponential_test nexus.value <= #math_exponential_goal nexus.value run scoreboard players operation #math_exponential nexus.value = #math_exponential_test nexus.value
scoreboard players operation #math_exponential_test nexus.value = #math_exponential nexus.value
scoreboard players operation #math_exponential_test nexus.value *= #e_power_08 nexus.value
scoreboard players operation #math_exponential_test nexus.value /= #1000 nexus.value
execute if score #math_exponential_test nexus.value <= #math_exponential_goal nexus.value run scoreboard players add #output nexus.value 256
execute if score #math_exponential_test nexus.value <= #math_exponential_goal nexus.value run scoreboard players operation #math_exponential nexus.value = #math_exponential_test nexus.value
scoreboard players operation #math_exponential_test nexus.value = #math_exponential nexus.value
scoreboard players operation #math_exponential_test nexus.value *= #e_power_07 nexus.value
scoreboard players operation #math_exponential_test nexus.value /= #1000 nexus.value
execute if score #math_exponential_test nexus.value <= #math_exponential_goal nexus.value run scoreboard players add #output nexus.value 128
execute if score #math_exponential_test nexus.value <= #math_exponential_goal nexus.value run scoreboard players operation #math_exponential nexus.value = #math_exponential_test nexus.value
scoreboard players operation #math_exponential_test nexus.value = #math_exponential nexus.value
scoreboard players operation #math_exponential_test nexus.value *= #e_power_06 nexus.value
scoreboard players operation #math_exponential_test nexus.value /= #1000 nexus.value
execute if score #math_exponential_test nexus.value <= #math_exponential_goal nexus.value run scoreboard players add #output nexus.value 64
execute if score #math_exponential_test nexus.value <= #math_exponential_goal nexus.value run scoreboard players operation #math_exponential nexus.value = #math_exponential_test nexus.value
scoreboard players operation #math_exponential_test nexus.value = #math_exponential nexus.value
scoreboard players operation #math_exponential_test nexus.value *= #e_power_05 nexus.value
scoreboard players operation #math_exponential_test nexus.value /= #1000 nexus.value
execute if score #math_exponential_test nexus.value <= #math_exponential_goal nexus.value run scoreboard players add #output nexus.value 32
execute if score #math_exponential_test nexus.value <= #math_exponential_goal nexus.value run scoreboard players operation #math_exponential nexus.value = #math_exponential_test nexus.value
scoreboard players operation #math_exponential_test nexus.value = #math_exponential nexus.value
scoreboard players operation #math_exponential_test nexus.value *= #e_power_04 nexus.value
scoreboard players operation #math_exponential_test nexus.value /= #1000 nexus.value
execute if score #math_exponential_test nexus.value <= #math_exponential_goal nexus.value run scoreboard players add #output nexus.value 16
execute if score #math_exponential_test nexus.value <= #math_exponential_goal nexus.value run scoreboard players operation #math_exponential nexus.value = #math_exponential_test nexus.value
scoreboard players operation #math_exponential_test nexus.value = #math_exponential nexus.value
scoreboard players operation #math_exponential_test nexus.value *= #e_power_03 nexus.value
scoreboard players operation #math_exponential_test nexus.value /= #1000 nexus.value
execute if score #math_exponential_test nexus.value <= #math_exponential_goal nexus.value run scoreboard players add #output nexus.value 8
execute if score #math_exponential_test nexus.value <= #math_exponential_goal nexus.value run scoreboard players operation #math_exponential nexus.value = #math_exponential_test nexus.value
scoreboard players operation #math_exponential_test nexus.value = #math_exponential nexus.value
scoreboard players operation #math_exponential_test nexus.value *= #e_power_02 nexus.value
scoreboard players operation #math_exponential_test nexus.value /= #1000 nexus.value
execute if score #math_exponential_test nexus.value <= #math_exponential_goal nexus.value run scoreboard players add #output nexus.value 4
execute if score #math_exponential_test nexus.value <= #math_exponential_goal nexus.value run scoreboard players operation #math_exponential nexus.value = #math_exponential_test nexus.value
scoreboard players operation #math_exponential_test nexus.value = #math_exponential nexus.value
scoreboard players operation #math_exponential_test nexus.value *= #e_power_01 nexus.value
scoreboard players operation #math_exponential_test nexus.value /= #1000 nexus.value
execute if score #math_exponential_test nexus.value <= #math_exponential_goal nexus.value run scoreboard players add #output nexus.value 2
execute if score #math_exponential_test nexus.value <= #math_exponential_goal nexus.value run scoreboard players operation #math_exponential nexus.value = #math_exponential_test nexus.value
scoreboard players operation #math_exponential_test nexus.value = #math_exponential nexus.value
scoreboard players operation #math_exponential_test nexus.value *= #e_power_00 nexus.value
scoreboard players operation #math_exponential_test nexus.value /= #1000 nexus.value
execute if score #math_exponential_test nexus.value <= #math_exponential_goal nexus.value run scoreboard players add #output nexus.value 1
execute if score #math_exponential_test nexus.value <= #math_exponential_goal nexus.value run scoreboard players operation #math_exponential nexus.value = #math_exponential_test nexus.value







# Transform output

execute if score #input nexus.value matches ..999 run scoreboard players operation #output nexus.value *= #-1 nexus.value