# Extract values

function nexus:entity/generic/data/extract/objective
execute store result score #armor nexus.value run attribute @s generic.armor get 1000
execute store result score #armor_toughness nexus.value run attribute @s generic.armor_toughness get 1000







# Get effect values

scoreboard players operation #resistance nexus.value = @s nexus.resistance
scoreboard players operation #resistance nexus.value *= #-1 nexus.value
scoreboard players add #resistance nexus.value 4
execute if score #resistance nexus.value matches ..-1 run scoreboard players set #resistance nexus.value 0







# Play burn sound

execute if score #damage_burn_boolean nexus.value matches 1 run playsound minecraft:entity.generic.burn neutral @a







# Modify damage value

scoreboard players operation #damage nexus.value = #damage_amount nexus.value
execute if score #damage_armor_boolean nexus.value matches 1 run function nexus:player/health/damage/armor
scoreboard players operation #damage nexus.value *= #resistance nexus.value
scoreboard players operation #damage nexus.value /= #5 nexus.value







# Manage values

scoreboard players operation @s nexus.hp_offset -= #damage nexus.value
scoreboard players operation @s nexus.source = #damage_source nexus.value
scoreboard players set @s nexus.hp_time 10







# Give tag to indicate damage

tag @s add nexus.player.damage