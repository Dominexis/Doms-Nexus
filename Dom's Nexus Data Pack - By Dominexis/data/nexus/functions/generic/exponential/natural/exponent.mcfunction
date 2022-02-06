# Transform input

scoreboard players operation #math_exponential nexus.value = #input nexus.value
execute if score #input nexus.value matches ..-1 run scoreboard players operation #math_exponential nexus.value *= #-1 nexus.value







# Compute function

scoreboard players set #output nexus.value 1000

execute if score #math_exponential nexus.value matches 4096.. run scoreboard players operation #output nexus.value *= #e_power_12 nexus.value
execute if score #math_exponential nexus.value matches 4096.. run scoreboard players operation #output nexus.value /= #1000 nexus.value
execute if score #math_exponential nexus.value matches 4096.. run scoreboard players remove #math_exponential nexus.value 4096
execute if score #math_exponential nexus.value matches 2048.. run scoreboard players operation #output nexus.value *= #e_power_11 nexus.value
execute if score #math_exponential nexus.value matches 2048.. run scoreboard players operation #output nexus.value /= #1000 nexus.value
execute if score #math_exponential nexus.value matches 2048.. run scoreboard players remove #math_exponential nexus.value 2048
execute if score #math_exponential nexus.value matches 1024.. run scoreboard players operation #output nexus.value *= #e_power_10 nexus.value
execute if score #math_exponential nexus.value matches 1024.. run scoreboard players operation #output nexus.value /= #1000 nexus.value
execute if score #math_exponential nexus.value matches 1024.. run scoreboard players remove #math_exponential nexus.value 1024
execute if score #math_exponential nexus.value matches 0512.. run scoreboard players operation #output nexus.value *= #e_power_09 nexus.value
execute if score #math_exponential nexus.value matches 0512.. run scoreboard players operation #output nexus.value /= #1000 nexus.value
execute if score #math_exponential nexus.value matches 0512.. run scoreboard players remove #math_exponential nexus.value 512
execute if score #math_exponential nexus.value matches 0256.. run scoreboard players operation #output nexus.value *= #e_power_08 nexus.value
execute if score #math_exponential nexus.value matches 0256.. run scoreboard players operation #output nexus.value /= #1000 nexus.value
execute if score #math_exponential nexus.value matches 0256.. run scoreboard players remove #math_exponential nexus.value 256
execute if score #math_exponential nexus.value matches 0128.. run scoreboard players operation #output nexus.value *= #e_power_07 nexus.value
execute if score #math_exponential nexus.value matches 0128.. run scoreboard players operation #output nexus.value /= #1000 nexus.value
execute if score #math_exponential nexus.value matches 0128.. run scoreboard players remove #math_exponential nexus.value 128
execute if score #math_exponential nexus.value matches 0064.. run scoreboard players operation #output nexus.value *= #e_power_06 nexus.value
execute if score #math_exponential nexus.value matches 0064.. run scoreboard players operation #output nexus.value /= #1000 nexus.value
execute if score #math_exponential nexus.value matches 0064.. run scoreboard players remove #math_exponential nexus.value 64
execute if score #math_exponential nexus.value matches 0032.. run scoreboard players operation #output nexus.value *= #e_power_05 nexus.value
execute if score #math_exponential nexus.value matches 0032.. run scoreboard players operation #output nexus.value /= #1000 nexus.value
execute if score #math_exponential nexus.value matches 0032.. run scoreboard players remove #math_exponential nexus.value 32
execute if score #math_exponential nexus.value matches 0016.. run scoreboard players operation #output nexus.value *= #e_power_04 nexus.value
execute if score #math_exponential nexus.value matches 0016.. run scoreboard players operation #output nexus.value /= #1000 nexus.value
execute if score #math_exponential nexus.value matches 0016.. run scoreboard players remove #math_exponential nexus.value 16
execute if score #math_exponential nexus.value matches 0008.. run scoreboard players operation #output nexus.value *= #e_power_03 nexus.value
execute if score #math_exponential nexus.value matches 0008.. run scoreboard players operation #output nexus.value /= #1000 nexus.value
execute if score #math_exponential nexus.value matches 0008.. run scoreboard players remove #math_exponential nexus.value 8
execute if score #math_exponential nexus.value matches 0004.. run scoreboard players operation #output nexus.value *= #e_power_02 nexus.value
execute if score #math_exponential nexus.value matches 0004.. run scoreboard players operation #output nexus.value /= #1000 nexus.value
execute if score #math_exponential nexus.value matches 0004.. run scoreboard players remove #math_exponential nexus.value 4
execute if score #math_exponential nexus.value matches 0002.. run scoreboard players operation #output nexus.value *= #e_power_01 nexus.value
execute if score #math_exponential nexus.value matches 0002.. run scoreboard players operation #output nexus.value /= #1000 nexus.value
execute if score #math_exponential nexus.value matches 0002.. run scoreboard players remove #math_exponential nexus.value 2
execute if score #math_exponential nexus.value matches 0001.. run scoreboard players operation #output nexus.value *= #e_power_00 nexus.value
execute if score #math_exponential nexus.value matches 0001.. run scoreboard players operation #output nexus.value /= #1000 nexus.value
execute if score #math_exponential nexus.value matches 0001.. run scoreboard players remove #math_exponential nexus.value 1







# Transform output

execute if score #input nexus.value matches ..-1 run scoreboard players set #math_exponential nexus.value 1000000 
execute if score #input nexus.value matches ..-1 run scoreboard players operation #math_exponential nexus.value /= #output nexus.value
execute if score #input nexus.value matches ..-1 run scoreboard players operation #output nexus.value = #math_exponential nexus.value