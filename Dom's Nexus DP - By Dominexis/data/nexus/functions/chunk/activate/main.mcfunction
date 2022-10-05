# Set boolean

scoreboard players set #chunk_tick_boolean nexus.value 1







# Perform action based on activation status

execute if entity @s[tag= nexus.chunk.activated] run scoreboard players set #chunk_tick_overflow_boolean nexus.value 1
execute if entity @s[tag=!nexus.chunk.activated] run function nexus:chunk/activate/time