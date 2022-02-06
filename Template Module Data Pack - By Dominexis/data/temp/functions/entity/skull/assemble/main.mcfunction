# Assemble entities

teleport @s ~ ~-1.7 ~
execute at @s run teleport @e[type=area_effect_cloud,distance=..8,tag=temp.entity.part.damage_sensor,tag=nexus.entity.target,limit=1] ~ ~1.2 ~

function nexus:entity/generic/score/get/rot
execute as @e[type=armor_stand,distance=..8,tag=temp.entity.part.main,tag=nexus.entity.target,limit=1] run function nexus:entity/generic/data/set/fakeplayer/rot_head