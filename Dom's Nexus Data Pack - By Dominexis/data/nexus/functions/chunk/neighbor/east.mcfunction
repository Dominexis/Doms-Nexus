# Check if a neighbor already exists

execute store result score #neighbor_boolean nexus.value if entity @e[type=marker,distance=..1,tag=nexus.chunk,limit=1]







# Spawn chunk marker

execute if score #neighbor_boolean nexus.value matches 0 run summon marker ~ ~ ~ {Tags:["nexus.chunk"]}







# Add tag

execute if score #neighbor_boolean nexus.value matches 1 run tag @s add nexus.chunk.neighbor.east