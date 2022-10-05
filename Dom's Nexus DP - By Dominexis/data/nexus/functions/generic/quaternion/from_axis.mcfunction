# Compute quaternion

scoreboard players operation #input nexus.value = #input_angle nexus.value
scoreboard players operation #input nexus.value %= #3600 nexus.value
scoreboard players operation #input nexus.value /= #2 nexus.value

function nexus:generic/trigonometry/cosine

scoreboard players operation #output_quaternion_r nexus.value = #output nexus.value

function nexus:generic/trigonometry/sine

scoreboard players operation #output_quaternion_i nexus.value = #input_axis_x nexus.value
scoreboard players operation #output_quaternion_j nexus.value = #input_axis_y nexus.value
scoreboard players operation #output_quaternion_k nexus.value = #input_axis_z nexus.value
scoreboard players operation #output_quaternion_i nexus.value *= #output nexus.value
scoreboard players operation #output_quaternion_j nexus.value *= #output nexus.value
scoreboard players operation #output_quaternion_k nexus.value *= #output nexus.value
scoreboard players operation #output_quaternion_i nexus.value /= #1000 nexus.value
scoreboard players operation #output_quaternion_j nexus.value /= #1000 nexus.value
scoreboard players operation #output_quaternion_k nexus.value /= #1000 nexus.value