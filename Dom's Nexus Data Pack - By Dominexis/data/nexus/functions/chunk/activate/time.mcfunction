# Check tick

function nexus:chunk/check_tick







# Execute function

execute if score #terminate_chunk_tick nexus.value matches 1 run scoreboard players set #chunk_tick_complete_boolean nexus.value 0
execute if score #terminate_chunk_tick nexus.value matches 0 run function nexus:chunk/activate/activate