# Activate chunks

scoreboard players set #chunk_boolean nexus.value 0
scoreboard players set #chunk_tick_boolean nexus.value 0
scoreboard players set #chunk_tick_complete_boolean nexus.value 1

execute as @e[type=marker,dx=0255,dy=1,dz=0255,tag=nexus.chunk] at @s run function nexus:chunk/activate/player
execute if score #chunk_boolean nexus.value matches 1 if score #chunk_tick_complete_boolean nexus.value matches 1 run tag @e[type=marker,dx=0255,dy=1,dz=0255,tag=nexus.chunk] remove nexus.chunk.activated