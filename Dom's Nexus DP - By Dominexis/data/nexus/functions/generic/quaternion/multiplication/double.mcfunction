# Multiply the second quaternion by the first quaternion twice from either side

function nexus:generic/quaternion/multiplication/single

scoreboard players operation #temp_quaternion_1_r nexus.value = #input_quaternion_1_r nexus.value
scoreboard players operation #temp_quaternion_1_i nexus.value = #input_quaternion_1_i nexus.value
scoreboard players operation #temp_quaternion_1_j nexus.value = #input_quaternion_1_j nexus.value
scoreboard players operation #temp_quaternion_1_k nexus.value = #input_quaternion_1_k nexus.value
scoreboard players operation #temp_quaternion_2_r nexus.value = #input_quaternion_2_r nexus.value
scoreboard players operation #temp_quaternion_2_i nexus.value = #input_quaternion_2_i nexus.value
scoreboard players operation #temp_quaternion_2_j nexus.value = #input_quaternion_2_j nexus.value
scoreboard players operation #temp_quaternion_2_k nexus.value = #input_quaternion_2_k nexus.value

scoreboard players operation #input_quaternion_2_r nexus.value = #input_quaternion_1_r nexus.value
scoreboard players operation #input_quaternion_2_i nexus.value = #input_quaternion_1_i nexus.value
scoreboard players operation #input_quaternion_2_j nexus.value = #input_quaternion_1_j nexus.value
scoreboard players operation #input_quaternion_2_k nexus.value = #input_quaternion_1_k nexus.value
scoreboard players operation #input_quaternion_2_i nexus.value *= #-1 nexus.value
scoreboard players operation #input_quaternion_2_j nexus.value *= #-1 nexus.value
scoreboard players operation #input_quaternion_2_k nexus.value *= #-1 nexus.value

scoreboard players operation #input_quaternion_1_r nexus.value = #output_quaternion_r nexus.value
scoreboard players operation #input_quaternion_1_i nexus.value = #output_quaternion_i nexus.value
scoreboard players operation #input_quaternion_1_j nexus.value = #output_quaternion_j nexus.value
scoreboard players operation #input_quaternion_1_k nexus.value = #output_quaternion_k nexus.value

function nexus:generic/quaternion/multiplication/single

scoreboard players operation #input_quaternion_1_r nexus.value = #temp_quaternion_1_r nexus.value
scoreboard players operation #input_quaternion_1_i nexus.value = #temp_quaternion_1_i nexus.value
scoreboard players operation #input_quaternion_1_j nexus.value = #temp_quaternion_1_j nexus.value
scoreboard players operation #input_quaternion_1_k nexus.value = #temp_quaternion_1_k nexus.value
scoreboard players operation #input_quaternion_2_r nexus.value = #temp_quaternion_2_r nexus.value
scoreboard players operation #input_quaternion_2_i nexus.value = #temp_quaternion_2_i nexus.value
scoreboard players operation #input_quaternion_2_j nexus.value = #temp_quaternion_2_j nexus.value
scoreboard players operation #input_quaternion_2_k nexus.value = #temp_quaternion_2_k nexus.value