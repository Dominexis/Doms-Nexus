# Summon spider brain

summon marker ~ ~ ~ {               Tags:["nexus.entity","temp.entity","temp.entity.type.spider_brain","temp.entity.part.main"                                  ,"nexus.entity.ticking","nexus.entity.target.spawn","nexus.entity.push"]}
summon area_effect_cloud ~ ~ ~ {    Tags:["nexus.entity","temp.entity","temp.entity.type.spider_brain","temp.entity.part.brain"                                                        ,"nexus.entity.target.spawn","nexus.entity.air_toggle"],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Passengers:[{id:"minecraft:armor_stand",Tags:["nexus.entity","temp.entity","temp.entity.type.spider_brain","temp.entity.part.brain"                                 ,"nexus.entity.target.spawn"],NoGravity:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:magenta_terracotta",Count:1b,tag:{CustomModelData:999901}}]}]}
summon area_effect_cloud ~ ~ ~ {    Tags:["nexus.entity","temp.entity","temp.entity.type.spider_brain","temp.entity.part.front_right_leg","temp.entity.part.leg"                       ,"nexus.entity.target.spawn","nexus.entity.air_toggle"],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Passengers:[{id:"minecraft:armor_stand",Tags:["nexus.entity","temp.entity","temp.entity.type.spider_brain","temp.entity.part.front_right_leg","temp.entity.part.leg","nexus.entity.target.spawn"],NoGravity:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:magenta_terracotta",Count:1b,tag:{CustomModelData:999902}}]}]}
summon area_effect_cloud ~ ~ ~ {    Tags:["nexus.entity","temp.entity","temp.entity.type.spider_brain","temp.entity.part.front_left_leg" ,"temp.entity.part.leg"                       ,"nexus.entity.target.spawn","nexus.entity.air_toggle"],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Passengers:[{id:"minecraft:armor_stand",Tags:["nexus.entity","temp.entity","temp.entity.type.spider_brain","temp.entity.part.front_left_leg" ,"temp.entity.part.leg","nexus.entity.target.spawn"],NoGravity:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:magenta_terracotta",Count:1b,tag:{CustomModelData:999902}}]}]}
summon area_effect_cloud ~ ~ ~ {    Tags:["nexus.entity","temp.entity","temp.entity.type.spider_brain","temp.entity.part.back_right_leg" ,"temp.entity.part.leg"                       ,"nexus.entity.target.spawn","nexus.entity.air_toggle"],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Passengers:[{id:"minecraft:armor_stand",Tags:["nexus.entity","temp.entity","temp.entity.type.spider_brain","temp.entity.part.back_right_leg" ,"temp.entity.part.leg","nexus.entity.target.spawn"],NoGravity:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:magenta_terracotta",Count:1b,tag:{CustomModelData:999902}}]}]}
summon area_effect_cloud ~ ~ ~ {    Tags:["nexus.entity","temp.entity","temp.entity.type.spider_brain","temp.entity.part.back_left_leg"  ,"temp.entity.part.leg"                       ,"nexus.entity.target.spawn","nexus.entity.air_toggle"],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Passengers:[{id:"minecraft:armor_stand",Tags:["nexus.entity","temp.entity","temp.entity.type.spider_brain","temp.entity.part.back_left_leg"  ,"temp.entity.part.leg","nexus.entity.target.spawn"],NoGravity:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:magenta_terracotta",Count:1b,tag:{CustomModelData:999902}}]}]}
summon area_effect_cloud ~ ~1024 ~ {Tags:["nexus.entity","temp.entity","temp.entity.type.spider_brain","temp.entity.part.damage_sensor"                                                ,"nexus.entity.target.spawn","nexus.entity.air_toggle"],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Passengers:[{id:"minecraft:slime"      ,Tags:["nexus.entity","temp.entity","temp.entity.type.spider_brain","temp.entity.part.damage_sensor"                         ,"nexus.entity.target.spawn","nexus.entity.damage_sensor.event","nexus.entity.foe"],NoAI:1b,Silent:1b,PersistenceRequired:1b,Size:3,DeathLootTable:"",Attributes:[{Base:1024.0d,Name:"minecraft:generic.max_health"}],Health:1024.0f,ActiveEffects:[{Id:14b,ShowParticles:0b,Duration:2147483647}]}]}







# Teleport offset entities

execute positioned ~ ~1024 ~ run teleport @e[type=area_effect_cloud,distance=..8,tag=temp.entity.part.damage_sensor,tag=nexus.entity.target.spawn,limit=1] ~ ~-1024 ~
execute positioned ~ ~1024 ~ run teleport @e[type=slime            ,distance=..8,tag=temp.entity.part.damage_sensor,tag=nexus.entity.target.spawn,limit=1] ~ ~-1024 ~







# Assign IDs

scoreboard players add #global nexus.id 1
scoreboard players operation @e[type=#temp:generic/entity,distance=..8,tag=nexus.entity.target.spawn] nexus.id = #global nexus.id







# Assign scores

execute as @e[type=marker,distance=..8,tag=nexus.entity.target.spawn,limit=1] run function temp:entity/spider_brain/spawn/scores

scoreboard players set @e[type=slime,distance=..8,tag=temp.entity.part.damage_sensor,tag=nexus.entity.target.spawn,limit=1] nexus.health 1024000







# Process entities

execute as @e[type=#temp:generic/entity,distance=..8,tag=nexus.entity.target.spawn] run function nexus:entity/process/verify







# Remove target tag

tag @e[type=#temp:generic/entity,distance=..8,tag=temp.entity] remove nexus.entity.target.spawn