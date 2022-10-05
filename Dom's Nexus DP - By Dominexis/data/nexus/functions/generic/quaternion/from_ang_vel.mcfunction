# Compute axis

scoreboard players operation #input_vector_x nexus.value = #input_ang_vel_x nexus.value
scoreboard players operation #input_vector_y nexus.value = #input_ang_vel_y nexus.value
scoreboard players operation #input_vector_z nexus.value = #input_ang_vel_z nexus.value

scoreboard players set #scale_factor nexus.value 1
function nexus:generic/vector/normalize/3d

scoreboard players operation #input_axis_x nexus.value = #output_vector_x nexus.value
scoreboard players operation #input_axis_y nexus.value = #output_vector_y nexus.value
scoreboard players operation #input_axis_z nexus.value = #output_vector_z nexus.value

scoreboard players operation #input_angle nexus.value = #output nexus.value
scoreboard players operation #input_angle nexus.value *= #1800 nexus.value
scoreboard players operation #input_angle nexus.value /= #3141 nexus.value







# Compute quaternion

function nexus:generic/quaternion/from_axis