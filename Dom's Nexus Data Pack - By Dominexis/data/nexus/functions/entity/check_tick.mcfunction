# Get world border diameter

execute store result score #world_border_diameter nexus.value run worldborder get







# Set boolean if diameter is beyond allotted range

execute if score #world_border_diameter nexus.value >= #entity_tick_time_limit nexus.value run scoreboard players set #terminate_entity_tick nexus.value 1