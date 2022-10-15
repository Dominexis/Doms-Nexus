# Set owner

data modify entity @s Owner set from storage nexus:data tag.Owner







# Set random Y coordinate

scoreboard players set #input nexus.value 10000
function nexus:generic/rng/lcg
scoreboard players add #output nexus.value 10000
execute store result entity @s Pos[1] double 1 run scoreboard players get #output nexus.value







# Spawn bat

execute at @s run summon bat ~ ~ ~ {Tags:["nexus.launch.pre"],DeathLootTable:"",NoAI:1b,Silent:1b,Health:1.0f,PersistenceRequired:1b}







# Remove tag

tag @s remove nexus.launch