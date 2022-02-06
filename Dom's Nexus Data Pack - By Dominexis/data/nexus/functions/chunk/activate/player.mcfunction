# Perform action based on activation status

execute if score #chunk_tick_boolean nexus.value matches 1 if entity @s[tag=!nexus.chunk.activated] run scoreboard players set #chunk_tick_complete_boolean nexus.value 0
execute if score #chunk_tick_boolean nexus.value matches 0 if entity @s[tag=!nexus.chunk.activated] run function nexus:chunk/activate/tick







# Set boolean

scoreboard players set #chunk_boolean nexus.value 1