# Spawn creeper

summon creeper ~ ~8192 ~ {Tags:["nexus.launch","nexus.entity.target.launch","nexus.no_process"],Team:"nexus.no_collision",Silent:1b,Invulnerable:1b,ExplosionRadius:-1b,Fuse:0s,PersistenceRequired:1b}







# Execute function recursively

scoreboard players remove #creepers_left nexus.value 1
execute if score #creepers_left nexus.value matches 1.. run function nexus:player/launch/spawn/creeper