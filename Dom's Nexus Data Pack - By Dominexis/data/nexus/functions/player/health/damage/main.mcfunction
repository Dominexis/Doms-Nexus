# Extract NBT

execute unless score @s nexus.nbt_ticks = #global nexus.ticks run function nexus:entity/generic/data/extract/nbt







# Get attributes

execute store result score #armor nexus.value run attribute @s generic.armor get 1000
execute store result score #armor_toughness nexus.value run attribute @s generic.armor_toughness get 1000







# Get effect values

execute store result score #boolean nexus.value if predicate nexus:player/resistance
execute if score #boolean nexus.value matches 0 run scoreboard players set #resistance nexus.value -1
execute if score #boolean nexus.value matches 1 store result score #resistance nexus.value run data get storage nexus:data tag.ActiveEffects[{Id:11b}].Amplifier
scoreboard players operation #resistance nexus.value *= #-1 nexus.value
scoreboard players add #resistance nexus.value 4
execute if score #resistance nexus.value matches ..-1 run scoreboard players set #resistance nexus.value 0







# Extract values from damage variable

scoreboard players operation #damage nexus.value = @s nexus.damage
scoreboard players operation #damage nexus.value %= #100 nexus.value
scoreboard players operation #damage nexus.value *= #1000 nexus.value

scoreboard players operation #armor_boolean nexus.value = @s nexus.damage
scoreboard players operation #armor_boolean nexus.value /= #100 nexus.value
scoreboard players operation #armor_boolean nexus.value %= #2 nexus.value

scoreboard players operation #burn_boolean nexus.value = @s nexus.damage
scoreboard players operation #burn_boolean nexus.value /= #100 nexus.value
scoreboard players operation #burn_boolean nexus.value %= #10 nexus.value
scoreboard players operation #burn_boolean nexus.value /= #2 nexus.value
scoreboard players operation #burn_boolean nexus.value %= #2 nexus.value

scoreboard players operation @s nexus.source = @s nexus.damage
scoreboard players operation @s nexus.source /= #1000 nexus.value
scoreboard players operation @s nexus.source %= #1000000 nexus.value







# Play burn sound

execute if score #burn_boolean nexus.value matches 1 run playsound minecraft:entity.generic.burn master @a







# Modify damage value

execute if score #armor_boolean nexus.value matches 1 run function nexus:player/health/damage/armor

scoreboard players operation #damage nexus.value *= #resistance nexus.value
scoreboard players operation #damage nexus.value /= #5 nexus.value







# Apply damage

scoreboard players operation #health_offset nexus.value -= #damage nexus.value







# Set hp timer

scoreboard players set @s nexus.hp_time 10







# Reset values

scoreboard players set @s nexus.damage 0







# Give tag to indicate damage

tag @s add nexus.player.damage