# Spawn entity

summon marker ~ ~ ~ {Tags:["nexus.entity","nexus.entity.target.rng"]}







# Extract UUID

execute store result score #output nexus.value run data get entity @e[type=marker,tag=nexus.entity.target.rng,limit=1] UUID[0]







# Apply range to value

execute if score #input nexus.value matches 1.. run scoreboard players operation #output nexus.value %= #input nexus.value







# Terminate entity

kill @e[type=marker,tag=nexus.entity.target.rng,limit=1]