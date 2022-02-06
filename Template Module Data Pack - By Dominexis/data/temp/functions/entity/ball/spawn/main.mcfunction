# Summon ball

summon area_effect_cloud ~ ~0.5 ~ {Tags:["nexus.entity","temp.entity","temp.entity.type.ball","nexus.entity.ticking","nexus.entity.target.spawn","nexus.entity.air_toggle","nexus.entity.push"],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Passengers:[{id:"minecraft:armor_stand",Tags:["nexus.entity","temp.entity","temp.entity.type.ball","nexus.entity.target.spawn"],NoGravity:1b,Marker:1b,Invisible:1b,Small:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:white_concrete",Count:1b,tag:{CustomModelData:999901}}]}]}







# Assign IDs

scoreboard players add #global nexus.id 1
scoreboard players operation @e[type=#temp:generic/entity,distance=..4,tag=nexus.entity.target.spawn] nexus.id = #global nexus.id







# Assign scores

execute as @e[type=area_effect_cloud,distance=..4,tag=nexus.entity.target.spawn,limit=1] run function temp:entity/ball/spawn/scores







# Process entities

execute as @e[type=#temp:generic/entity,distance=..4,tag=nexus.entity.target.spawn] run function nexus:entity/process/verify







# Remove target tag

tag @e[type=#temp:generic/entity,distance=..4,tag=temp.entity] remove nexus.entity.target.spawn