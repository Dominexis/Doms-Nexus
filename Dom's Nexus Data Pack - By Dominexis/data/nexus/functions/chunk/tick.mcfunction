# Activate chunks

scoreboard players set #chunk_tick_boolean nexus.value 0
scoreboard players set #chunk_tick_overflow_boolean nexus.value 0
scoreboard players set #chunk_tick_complete_boolean nexus.value 1

execute as @e[type=marker,tag=nexus.chunk] at @s run function nexus:chunk/activate/main
execute if score #chunk_tick_boolean nexus.value matches 1 if score #chunk_tick_complete_boolean nexus.value matches 1 run tag @e[type=marker,tag=nexus.chunk] remove nexus.chunk.activated

execute if score #chunk_tick_overflow_boolean nexus.value matches 1 if score #chunk_tick_complete_boolean nexus.value matches 1 if score #terminate_chunk_tick nexus.value matches 0 as @e[type=marker,tag=nexus.chunk] at @s run function nexus:chunk/activate/main
execute if score #chunk_tick_overflow_boolean nexus.value matches 1 if score #chunk_tick_complete_boolean nexus.value matches 1 run tag @e[type=marker,tag=nexus.chunk] remove nexus.chunk.activated