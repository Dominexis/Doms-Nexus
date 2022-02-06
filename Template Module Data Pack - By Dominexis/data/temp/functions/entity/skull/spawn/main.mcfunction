# Summon Mean Block

summon area_effect_cloud ~ ~ ~ {    Tags:["nexus.entity","temp.entity","temp.entity.type.skull","temp.entity.part.main"         ,"nexus.entity.ticking","nexus.entity.target.spawn","nexus.entity.air_toggle","nexus.entity.push"],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Passengers:[{id:"minecraft:armor_stand",Tags:["nexus.entity","temp.entity","temp.entity.type.skull","temp.entity.part.main"         ,"nexus.entity.target.spawn"                                   ],NoGravity:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:skeleton_skull",Count:1b}]}]}
summon area_effect_cloud ~ ~1024 ~ {Tags:["nexus.entity","temp.entity","temp.entity.type.skull","temp.entity.part.damage_sensor"                       ,"nexus.entity.target.spawn","nexus.entity.air_toggle"                    ],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Passengers:[{id:"minecraft:pig"        ,Tags:["nexus.entity","temp.entity","temp.entity.type.skull","temp.entity.part.damage_sensor","nexus.entity.target.spawn","nexus.entity.damage_sensor.event"],DeathLootTable:"",NoAI:1b,Silent:1b,PersistenceRequired:1b,Attributes:[{Base:1024.0d,Name:"minecraft:generic.max_health"}],Health:1024.0f,ActiveEffects:[{Id:14b,ShowParticles:0b,Duration:2147483647}]}]}







# Teleport offset entities

execute positioned ~ ~1024 ~ run teleport @e[type=area_effect_cloud,distance=..4,tag=temp.entity.part.damage_sensor,tag=nexus.entity.target.spawn,limit=1] ~ ~-1024 ~
execute positioned ~ ~1024 ~ run teleport @e[type=pig              ,distance=..4,tag=temp.entity.part.damage_sensor,tag=nexus.entity.target.spawn,limit=1] ~ ~-1024 ~







# Assign IDs

scoreboard players add #global nexus.id 1
scoreboard players operation @e[type=#temp:generic/entity,distance=..4,tag=nexus.entity.target.spawn] nexus.id = #global nexus.id







# Assign scores

execute as @e[type=area_effect_cloud,distance=..4,tag=temp.entity.part.main,tag=nexus.entity.target.spawn,limit=1] run function temp:entity/skull/spawn/scores

scoreboard players set @e[type=pig,distance=..4,tag=temp.entity.part.damage_sensor,tag=nexus.entity.target.spawn,limit=1] nexus.health 1024000







# Process entities

execute as @e[type=#temp:generic/entity,distance=..4,tag=nexus.entity.target.spawn] run function nexus:entity/process/verify







# Remove target tag

tag @e[type=#temp:generic/entity,distance=..4,tag=temp.entity] remove nexus.entity.target.spawn