# Extract NBT

function nexus:entity/generic/data/extract/objective







# Get max health

execute store result score #max_health nexus.value run attribute @s generic.max_health get 1000







# Death or assignment

scoreboard players operation #goal_health nexus.value = @s nexus.health
scoreboard players operation #goal_health nexus.value += @s nexus.hp_offset

execute if score #goal_health nexus.value matches ..0 run function nexus:player/health/modify/death
execute if score #goal_health nexus.value matches 1.. run function nexus:player/health/modify/assign/main







# Reset health offset

scoreboard players set @s nexus.hp_offset 0








# Add tag for resynchronization

tag @s add nexus.player.resync_health
tag @s remove nexus.player.health_modify