# Align coordinates

data modify storage nexus:data tag set value {Pos:[0.0d,0.0d,0.0d]}
data modify storage nexus:data tag.Pos set from entity @s Pos
execute store result storage nexus:data tag.Pos[0] double 16 run data get storage nexus:data tag.Pos[0] 0.0625
execute store result storage nexus:data tag.Pos[2] double 16 run data get storage nexus:data tag.Pos[2] 0.0625
execute store result score @s nexus.x run data get storage nexus:data tag.Pos[0] 1000
execute store result score @s nexus.z run data get storage nexus:data tag.Pos[2] 1000
data modify entity @s Pos set from storage nexus:data tag.Pos
scoreboard players set @s nexus.y 0







# Check if chunk already has a marker

execute at @s store result score #chunk_boolean nexus.value if entity @e[type=marker,distance=..1,tag=nexus.chunk,tag=nexus.chunk.processed,limit=1]







# Terminate

execute if score #chunk_boolean nexus.value matches 1 run kill @s







# Add processed tag

execute if score #chunk_boolean nexus.value matches 0 run tag @s add nexus.chunk.processed







# Run process function

execute if score #chunk_boolean nexus.value matches 0 at @s run function #nexus:chunk/process