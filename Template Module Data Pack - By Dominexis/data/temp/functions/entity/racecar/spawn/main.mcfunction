# Summon racecar

summon area_effect_cloud ~ ~ ~ {Tags:["nexus.entity","temp.entity","temp.entity.type.racecar","temp.entity.part.body"                                                                              ,"nexus.entity.ticking","nexus.entity.target.spawn","nexus.entity.air_toggle","nexus.entity.push"],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Passengers:[{id:"minecraft:armor_stand",Tags:["nexus.entity","temp.entity","temp.entity.type.racecar","temp.entity.part.body"                                                                              ,"nexus.entity.target.spawn"],NoGravity:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:blue_concrete",Count:1b,tag:{CustomModelData:999902}}]}]}
summon area_effect_cloud ~ ~ ~ {Tags:["nexus.entity","temp.entity","temp.entity.type.racecar","temp.entity.part.wheel"         ,"temp.entity.part.wheel_front","temp.entity.part.wheel_front_left"                        ,"nexus.entity.target.spawn","nexus.entity.air_toggle"                    ],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Passengers:[{id:"minecraft:armor_stand",Tags:["nexus.entity","temp.entity","temp.entity.type.racecar","temp.entity.part.wheel"         ,"temp.entity.part.wheel_front","temp.entity.part.wheel_front_left" ,"nexus.entity.target.spawn"],NoGravity:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:blue_concrete",Count:1b,tag:{CustomModelData:999903}}]}]}
summon area_effect_cloud ~ ~ ~ {Tags:["nexus.entity","temp.entity","temp.entity.type.racecar","temp.entity.part.wheel"         ,"temp.entity.part.wheel_front","temp.entity.part.wheel_front_right"                       ,"nexus.entity.target.spawn","nexus.entity.air_toggle"                    ],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Passengers:[{id:"minecraft:armor_stand",Tags:["nexus.entity","temp.entity","temp.entity.type.racecar","temp.entity.part.wheel"         ,"temp.entity.part.wheel_front","temp.entity.part.wheel_front_right","nexus.entity.target.spawn"],NoGravity:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:blue_concrete",Count:1b,tag:{CustomModelData:999903}}]}]}
summon area_effect_cloud ~ ~ ~ {Tags:["nexus.entity","temp.entity","temp.entity.type.racecar","temp.entity.part.wheel"         ,"temp.entity.part.wheel_back" ,"temp.entity.part.wheel_back_left"                         ,"nexus.entity.target.spawn","nexus.entity.air_toggle"                    ],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Passengers:[{id:"minecraft:armor_stand",Tags:["nexus.entity","temp.entity","temp.entity.type.racecar","temp.entity.part.wheel"         ,"temp.entity.part.wheel_back" ,"temp.entity.part.wheel_back_left"  ,"nexus.entity.target.spawn"],NoGravity:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:blue_concrete",Count:1b,tag:{CustomModelData:999903}}]}]}
summon area_effect_cloud ~ ~ ~ {Tags:["nexus.entity","temp.entity","temp.entity.type.racecar","temp.entity.part.wheel"         ,"temp.entity.part.wheel_back" ,"temp.entity.part.wheel_back_right"                        ,"nexus.entity.target.spawn","nexus.entity.air_toggle"                    ],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Passengers:[{id:"minecraft:armor_stand",Tags:["nexus.entity","temp.entity","temp.entity.type.racecar","temp.entity.part.wheel"         ,"temp.entity.part.wheel_back" ,"temp.entity.part.wheel_back_right" ,"nexus.entity.target.spawn"],NoGravity:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:blue_concrete",Count:1b,tag:{CustomModelData:999903}}]}]}
summon area_effect_cloud ~ ~ ~ {Tags:["nexus.entity","temp.entity","temp.entity.type.racecar","temp.entity.part.steering_wheel"                                                                                           ,"nexus.entity.target.spawn","nexus.entity.air_toggle"                    ],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Passengers:[{id:"minecraft:armor_stand",Tags:["nexus.entity","temp.entity","temp.entity.type.racecar","temp.entity.part.steering_wheel"                                                                    ,"nexus.entity.target.spawn"],NoGravity:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:blue_concrete",Count:1b,tag:{CustomModelData:999904}}]}]}







# Assign IDs

scoreboard players add #global nexus.id 1
scoreboard players operation @e[type=#temp:generic/entity,distance=..8,tag=nexus.entity.target.spawn] nexus.id = #global nexus.id







# Assign scores

execute as @e[type=area_effect_cloud,distance=..8,tag=nexus.entity.target.spawn,limit=1] run function temp:entity/racecar/spawn/scores







# Process entities

execute as @e[type=#temp:generic/entity,distance=..8,tag=nexus.entity.target.spawn] run function nexus:entity/process/verify







# Remove target tag

tag @e[type=#temp:generic/entity,distance=..8,tag=temp.entity] remove nexus.entity.target.spawn