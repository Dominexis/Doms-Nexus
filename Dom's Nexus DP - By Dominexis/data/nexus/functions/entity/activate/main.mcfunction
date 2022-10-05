# Set boolean

scoreboard players set #entity_tick_boolean nexus.value 1







# Perform action based on activation status

execute if entity @s[tag= nexus.entity.activated] run scoreboard players set #entity_tick_overflow_boolean nexus.value 1
execute if entity @s[tag=!nexus.entity.activated] run function nexus:entity/activate/time