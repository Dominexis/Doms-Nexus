# Calculate amount to deduct

scoreboard players operation #durability_modifier nexus.value = #damage_amount nexus.value
execute if score #durability_modifier nexus.value matches ..2999 run scoreboard players set #durability_modifier nexus.value 0
scoreboard players add #durability_modifier nexus.value 999
scoreboard players operation #durability_modifier nexus.value /= #1000 nexus.value
scoreboard players operation #durability_modifier nexus.value *= #-1 nexus.value







# Determine which slot to apply the damage to

scoreboard players set #slot nexus.value 2
execute if predicate nexus:equipment/mainhand/shield run scoreboard players set #slot nexus.value 1

execute if score #slot nexus.value matches 1 run function nexus:player/durability/mainhand
execute if score #slot nexus.value matches 2 run function nexus:player/durability/offhand