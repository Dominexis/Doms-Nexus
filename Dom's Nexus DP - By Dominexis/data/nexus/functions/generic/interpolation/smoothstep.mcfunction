# Transform input

scoreboard players operation #math_smoothstep nexus.value = #input nexus.value
scoreboard players add #math_smoothstep nexus.value 1000
scoreboard players operation #math_smoothstep nexus.value %= #2000 nexus.value
scoreboard players remove #math_smoothstep nexus.value 1000
execute if score #math_smoothstep nexus.value matches ..-1 run scoreboard players operation #math_smoothstep nexus.value *= #-1 nexus.value







# Compute function

scoreboard players operation #output nexus.value = #math_smoothstep nexus.value
scoreboard players operation #output nexus.value *= #math_smoothstep nexus.value
scoreboard players operation #output nexus.value /= #1000 nexus.value
scoreboard players operation #math_smoothstep nexus.value *= #output nexus.value
scoreboard players operation #math_smoothstep nexus.value /= #1000 nexus.value
scoreboard players operation #output nexus.value *= #3 nexus.value
scoreboard players operation #math_smoothstep nexus.value *= #2 nexus.value
scoreboard players operation #output nexus.value -= #math_smoothstep nexus.value