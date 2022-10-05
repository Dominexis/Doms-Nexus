# Generate random number

scoreboard players operation #lcg nexus.value *= #lcg_multiplier nexus.value
scoreboard players operation #lcg nexus.value += #lcg_increment nexus.value







# Swap bits

scoreboard players operation #lcg_bit_swap nexus.value = #lcg nexus.value
scoreboard players operation #lcg_bit_swap nexus.value /= #65536 nexus.value
scoreboard players operation #lcg nexus.value *= #65536 nexus.value
scoreboard players operation #lcg nexus.value += #lcg_bit_swap nexus.value







# Return output

scoreboard players operation #output nexus.value = #lcg nexus.value
execute if score #input nexus.value matches 1.. run scoreboard players operation #output nexus.value %= #input nexus.value