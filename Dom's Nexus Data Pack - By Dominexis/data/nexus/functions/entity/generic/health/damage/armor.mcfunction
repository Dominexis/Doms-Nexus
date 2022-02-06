# Modify damage value with armor

scoreboard players operation #math_00 nexus.value = #armor nexus.value
scoreboard players operation #math_00 nexus.value /= #5 nexus.value

scoreboard players operation #math_01 nexus.value = #damage nexus.value
scoreboard players operation #math_01 nexus.value *= #4 nexus.value

scoreboard players operation #math_02 nexus.value = #armor_toughness nexus.value
scoreboard players add #math_02 nexus.value 8000

scoreboard players operation #math_01 nexus.value *= #1000 nexus.value
scoreboard players operation #math_01 nexus.value /= #math_02 nexus.value
scoreboard players operation #math_01 nexus.value *= #-1 nexus.value
scoreboard players operation #math_01 nexus.value += #armor nexus.value

scoreboard players operation #math_00 nexus.value > #math_01 nexus.value
execute if score #math_00 nexus.value matches 20000.. run scoreboard players set #math_00 nexus.value 20000

scoreboard players operation #math_00 nexus.value /= #25 nexus.value
scoreboard players operation #math_00 nexus.value *= #-1 nexus.value
scoreboard players add #math_00 nexus.value 1000

scoreboard players operation #damage nexus.value *= #math_00 nexus.value
scoreboard players operation #damage nexus.value /= #1000 nexus.value