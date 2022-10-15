# Compute parameters

scoreboard players operation #input_yaw nexus.value = #entity_yaw nexus.value
scoreboard players operation #input_pitch nexus.value = #entity_pitch nexus.value
scoreboard players operation #motion_vector_magnitude nexus.value = #entity_mot nexus.value

function nexus:generic/vector/from_gimbal/3d
scoreboard players operation #motion_vector_x nexus.value = #output_vector_x nexus.value
scoreboard players operation #motion_vector_y nexus.value = #output_vector_y nexus.value
scoreboard players operation #motion_vector_z nexus.value = #output_vector_z nexus.value

scoreboard players operation #horizontal_magnitude nexus.value = #output_vector_horizontal nexus.value
scoreboard players operation #horizontal_magnitude nexus.value *= #motion_vector_magnitude nexus.value
scoreboard players operation #horizontal_magnitude nexus.value /= #1000 nexus.value
function nexus:generic/vector/from_gimbal/2d/yaw
scoreboard players operation #horizontal_x nexus.value = #output_vector_x nexus.value
scoreboard players operation #horizontal_z nexus.value = #output_vector_z nexus.value







# Perform launch

execute at @s run function nexus:player/launch/main