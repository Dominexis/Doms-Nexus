# Particles and sound

particle cloud ~ ~ ~ 0.5 0.3 0.5 0.05 70
playsound minecraft:entity.generic.burn neutral @a







# Teleport player beside racecar

execute at @s as @a[tag=nexus.player.target,limit=1] rotated as @s rotated ~ 0 run teleport @s ^1 ^ ^







# Terminate entities

execute as @e[type=#temp:generic/entity,type=!#nexus:generic/system,distance=..16,tag=nexus.entity.target] run function nexus:entity/generic/terminate/main
kill @e[type=#temp:generic/entity,distance=..16,tag=nexus.entity.target]