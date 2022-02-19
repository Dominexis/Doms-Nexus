# Push ID

scoreboard players operation #local nexus.id = @s nexus.id







# Spawn motion entity if it doesn't exist

execute at @s[tag=!nexus.player.motion] run function nexus:player/motion/entity/spawn/verify







# Execute function as motion entity

execute at @s as @e[type=marker,distance=..1,tag=nexus.entity.type.motion] if score @s nexus.id = #local nexus.id run function nexus:player/motion/entity/apply