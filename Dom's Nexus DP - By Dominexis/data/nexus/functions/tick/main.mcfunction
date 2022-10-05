# Run function based on if the time manager is in use

execute if score #feature_time_manager nexus.value matches 0 run function nexus:tick/time/disabled
execute if score #feature_time_manager nexus.value matches 1 run function nexus:tick/time/enabled