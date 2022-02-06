# Count entities

execute store result score #debug_loaded_entity_count nexus.value if entity @e[type=#nexus:generic/system,tag=nexus.entity.ticking]
execute store result score #debug_loaded_unconditional_entity_count nexus.value if entity @e[type=#nexus:generic/system,tag=nexus.entity.ticking.unconditional]
scoreboard players operation #debug_total_loaded_entity_count nexus.value = #debug_loaded_entity_count nexus.value
scoreboard players operation #debug_total_loaded_entity_count nexus.value += #debug_loaded_unconditional_entity_count nexus.value







# Display number

title @a[tag=nexus.player.operator] actionbar ["",{"text":"Standard Entities: ","color":"gray"},{"score":{"name":"#debug_loaded_entity_count","objective":"nexus.value"}},{"text":", Unconditional Entities: ","color":"gray"},{"score":{"name":"#debug_loaded_unconditional_entity_count","objective":"nexus.value"}},{"text":", Total Entities: ","color":"gray"},{"score":{"name":"#debug_total_loaded_entity_count","objective":"nexus.value"}}]