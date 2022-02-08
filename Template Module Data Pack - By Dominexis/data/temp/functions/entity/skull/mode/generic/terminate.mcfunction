# Particles and sound

particle block skeleton_skull ~ ~2 ~ 0.1 0.1 0.1 0 25
particle cloud ~ ~2 ~ 0.2 0.2 0.2 0.1 20
playsound minecraft:block.stone.break hostile @a ~ ~ ~







# Terminate entities

kill @e[type=#temp:generic/entity,type=!pig,distance=..4,tag=nexus.entity.target]
execute as @e[type=pig,distance=..4,tag=temp.entity.part.damage_sensor,tag=nexus.entity.target,limit=1] run function nexus:entity/generic/terminate/main







# Set mode value

scoreboard players set #mode nexus.value -1
scoreboard players set @s nexus.mode -1