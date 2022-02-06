# Tick unconditional entities

execute if score #feature_unconditional_entity_ticking nexus.value matches 1 as @e[type=#nexus:generic/system,tag=nexus.entity.ticking.unconditional] at @s run function nexus:entity/activate/tick/main







# Tick entities

scoreboard players set #entity_tick_boolean nexus.value 0
scoreboard players set #entity_tick_overflow_boolean nexus.value 0
scoreboard players set #entity_tick_complete_boolean nexus.value 1

execute as @e[type=#nexus:generic/system,tag=nexus.entity.ticking] at @s run function nexus:entity/activate/main
execute if score #entity_tick_boolean nexus.value matches 1 if score #entity_tick_complete_boolean nexus.value matches 1 run tag @e[type=#nexus:generic/system,tag=nexus.entity.ticking] remove nexus.entity.activated

execute if score #entity_tick_overflow_boolean nexus.value matches 1 if score #entity_tick_complete_boolean nexus.value matches 1 if score #terminate_entity_tick nexus.value matches 0 as @e[type=#nexus:generic/system,tag=nexus.entity.ticking] at @s run function nexus:entity/activate/main
execute if score #entity_tick_overflow_boolean nexus.value matches 1 if score #entity_tick_complete_boolean nexus.value matches 1 run tag @e[type=#nexus:generic/system,tag=nexus.entity.ticking] remove nexus.entity.activated