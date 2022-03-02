# Run installation function

execute if score #update_installation_boolean nexus.value matches 1 run function temp:setup/install







# Set feature booleans

scoreboard players set #feature_time_manager nexus.value 1
scoreboard players set #feature_player_health nexus.value 1
scoreboard players set #feature_player_respawn nexus.value 1
scoreboard players set #feature_entity_processing nexus.value 1
scoreboard players set #feature_custom_entity_ticking nexus.value 1
scoreboard players set #feature_vehicle nexus.value 1
scoreboard players set #feature_object_ticking nexus.value 1
execute if score #feature_maximum_entity_time nexus.value matches 45.. run scoreboard players set #feature_maximum_entity_time nexus.value 45



# List of feature booleans

scoreboard players add #feature_time_manager nexus.value 0
scoreboard players add #feature_external_time_measurement nexus.value 0
scoreboard players add #feature_player_nbt nexus.value 0
scoreboard players add #feature_player_health nexus.value 0
scoreboard players add #feature_player_respawn nexus.value 0
scoreboard players add #feature_player_motion nexus.value 0
scoreboard players add #feature_entity_processing nexus.value 0
scoreboard players add #feature_entity_health nexus.value 0
scoreboard players add #feature_custom_entity_ticking nexus.value 0
scoreboard players add #feature_unconditional_entity_ticking nexus.value 0
scoreboard players add #feature_damage_sensor_ticking nexus.value 0
scoreboard players add #feature_vehicle nexus.value 0
scoreboard players add #feature_event_id_phe nexus.value 0
scoreboard players add #feature_event_id_pke nexus.value 0
scoreboard players add #feature_event_id_ehp nexus.value 0
scoreboard players add #feature_event_id_ekp nexus.value 0
scoreboard players add #feature_event_id_piwe nexus.value 0
scoreboard players add #feature_object_ticking nexus.value 0
scoreboard players add #feature_chunk_processing nexus.value 0
scoreboard players add #feature_chunk_ticking nexus.value 0
scoreboard players add #feature_chunk_range nexus.value 0
scoreboard players add #feature_maximum_entity_time nexus.value 0
scoreboard players add #feature_maximum_object_time nexus.value 0
scoreboard players add #feature_maximum_chunk_time nexus.value 0
scoreboard players add #feature_minimum_entity_time nexus.value 0
scoreboard players add #feature_minimum_object_time nexus.value 0
scoreboard players add #feature_minimum_chunk_time nexus.value 0







# Set minimum difficulty

execute if score #minimum_difficulty nexus.value matches ..0 run scoreboard players set #minimum_difficulty nexus.value 1







# Increment module count

scoreboard players add #doms_nexus_module_count nexus.value 1