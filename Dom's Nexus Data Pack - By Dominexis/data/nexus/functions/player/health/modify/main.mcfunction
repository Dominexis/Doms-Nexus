# Extract NBT

execute unless score @s nexus.nbt_ticks = #global nexus.ticks run function nexus:entity/generic/data/extract/nbt
execute store result score #health nexus.value run data get storage nexus:data tag.Health 1000







# Get max health

execute store result score #max_health nexus.value run attribute @s generic.max_health get 1000







# Death or assignment

scoreboard players operation #goal_health nexus.value = #health nexus.value
scoreboard players operation #goal_health nexus.value += #health_offset nexus.value

execute if score #goal_health nexus.value matches ..0 run function nexus:player/health/modify/death/main
execute if score #goal_health nexus.value matches 1.. run function nexus:player/health/modify/assign/main








# Add tag for resynchronization

tag @s add nexus.player.resync_health