# Extract NBT

execute unless score @s nexus.nbt_ticks = #global nexus.ticks run function nexus:entity/generic/data/extract/nbt
execute store result score #health nexus.value run data get storage nexus:data tag.Health 1000







# Extract values from cause variable

scoreboard players operation #heal nexus.value = @s nexus.heal
scoreboard players operation #heal nexus.value %= #100 nexus.value
scoreboard players operation #heal nexus.value *= #1000 nexus.value







# Apply health

execute store result score #max_health nexus.value run attribute @s generic.max_health get 1000
scoreboard players operation #health_offset nexus.value = #health nexus.value
scoreboard players operation #health_offset nexus.value += #heal nexus.value
scoreboard players operation #health_offset nexus.value < #max_health nexus.value
scoreboard players operation #health_offset nexus.value -= #health nexus.value







# Set delay timer

scoreboard players set @s nexus.hp_time 10







# Reset values

scoreboard players set @s nexus.heal 0