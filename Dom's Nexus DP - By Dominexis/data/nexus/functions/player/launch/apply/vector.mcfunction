# Compute parameters

scoreboard players set #scale_factor nexus.value 1

scoreboard players operation #input_vector_x nexus.value = #entity_mot_x nexus.value
scoreboard players operation #input_vector_y nexus.value = #entity_mot_y nexus.value
scoreboard players operation #input_vector_z nexus.value = #entity_mot_z nexus.value
function nexus:generic/vector/normalize/3d
scoreboard players operation #motion_vector_magnitude nexus.value = #output nexus.value
scoreboard players operation #motion_vector_x nexus.value = #output_vector_x nexus.value
scoreboard players operation #motion_vector_y nexus.value = #output_vector_y nexus.value
scoreboard players operation #motion_vector_z nexus.value = #output_vector_z nexus.value
execute if score #motion_vector_magnitude nexus.value matches 0 run scoreboard players set #motion_vector_y nexus.value 1000

scoreboard players operation #input_vector_x nexus.value = #entity_mot_x nexus.value
scoreboard players operation #input_vector_y nexus.value = #entity_mot_z nexus.value
function nexus:generic/vector/normalize/2d
scoreboard players operation #horizontal_magnitude nexus.value = #output nexus.value
scoreboard players operation #horizontal_x nexus.value = #output_vector_x nexus.value
scoreboard players operation #horizontal_z nexus.value = #output_vector_y nexus.value
execute if score #horizontal_magnitude nexus.value matches 0 run scoreboard players set #horizontal_x nexus.value 1000







# Perform launch

function nexus:player/launch/main