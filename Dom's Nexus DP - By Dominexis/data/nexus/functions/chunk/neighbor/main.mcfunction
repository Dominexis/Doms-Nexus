# Spawn a neighbor in each direction

execute if entity @s[tag=!nexus.chunk.neighbor.east ] positioned ~016 0 ~000 if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ all run function nexus:chunk/neighbor/east
execute if entity @s[tag=!nexus.chunk.neighbor.west ] positioned ~-16 0 ~000 if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ all run function nexus:chunk/neighbor/west
execute if entity @s[tag=!nexus.chunk.neighbor.south] positioned ~000 0 ~016 if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ all run function nexus:chunk/neighbor/south
execute if entity @s[tag=!nexus.chunk.neighbor.north] positioned ~000 0 ~-16 if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ all run function nexus:chunk/neighbor/north







# Add tag indicating that all neighbors have been spawned

tag @s[tag=nexus.chunk.neighbor.east,tag=nexus.chunk.neighbor.west,tag=nexus.chunk.neighbor.south,tag=nexus.chunk.neighbor.north] add nexus.chunk.neighbor