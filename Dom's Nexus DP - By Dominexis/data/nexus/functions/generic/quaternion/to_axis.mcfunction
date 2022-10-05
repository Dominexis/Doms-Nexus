# Compute axis

scoreboard players operation #input_vector_x nexus.value = #input_quaternion_i nexus.value
scoreboard players operation #input_vector_y nexus.value = #input_quaternion_j nexus.value
scoreboard players operation #input_vector_z nexus.value = #input_quaternion_k nexus.value
scoreboard players set #scale_factor nexus.value 1
function nexus:generic/vector/normalize/3d
scoreboard players operation #output_axis_x nexus.value = #output_vector_x nexus.value
scoreboard players operation #output_axis_y nexus.value = #output_vector_y nexus.value
scoreboard players operation #output_axis_z nexus.value = #output_vector_z nexus.value
execute if score #output nexus.value matches 0 run scoreboard players set #output_axis_x nexus.value 1000







# Compute angle

scoreboard players operation #input_x nexus.value = #input_quaternion_r nexus.value
scoreboard players operation #input_y nexus.value = #output nexus.value
function nexus:generic/trigonometry/arctangent
scoreboard players operation #output_angle nexus.value = #output nexus.value
scoreboard players operation #output_angle nexus.value *= #2 nexus.value
scoreboard players add #output_angle nexus.value 1800
scoreboard players operation #output_angle nexus.value %= #3600 nexus.value
scoreboard players remove #output_angle nexus.value 1800