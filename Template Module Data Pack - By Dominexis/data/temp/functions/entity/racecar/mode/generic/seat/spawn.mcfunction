# Terminate existing entities

kill @e[type=#temp:generic/entity,distance=..16,tag=temp.entity.part.seat,tag=nexus.entity.target]







# Spawn new seat

summon area_effect_cloud ~ ~ ~ {Tags:["nexus.entity","temp.entity","temp.entity.type.racecar","temp.entity.part.seat","nexus.entity.target","nexus.entity.air_toggle"],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Passengers:[{id:"minecraft:skeleton_horse",Tags:["nexus.entity","temp.entity","temp.entity.type.racecar","temp.entity.part.seat","nexus.entity.target","nexus.entity.vehicle","nexus.entity.vehicle.team"],Team:"nexus.vehicle",NoAI:1b,Silent:1b,PersistenceRequired:1b,Tame:1b,Invulnerable:1b,CustomName:'"Racecar"',DeathLootTable:"",Attributes:[{Base:20.0d,Name:"minecraft:generic.max_health"}],Health:20.0f,ActiveEffects:[{Id:14b,ShowParticles:0b,Duration:2147483647},{Id:11b,Amplifier:5b,ShowParticles:0b,Duration:2147483647}]}]}







# Assign ID

scoreboard players operation @e[type=#temp:generic/entity,distance=..8,tag=nexus.entity.target] nexus.id = @s nexus.id







# Process entities

execute as @e[type=#temp:generic/entity,distance=..8,tag=nexus.entity.target] run function nexus:entity/process/verify







# Set seat score

scoreboard players set @e[type=skeleton_horse,distance=..8,tag=nexus.entity.target,limit=1] nexus.seat 1