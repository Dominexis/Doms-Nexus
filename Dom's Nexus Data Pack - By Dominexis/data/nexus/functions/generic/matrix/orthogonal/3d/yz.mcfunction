# Make vectors perpendicular

scoreboard players operation #input_vector_1_x nexus.value = #input_matrix_y_x nexus.value
scoreboard players operation #input_vector_1_y nexus.value = #input_matrix_y_y nexus.value
scoreboard players operation #input_vector_1_z nexus.value = #input_matrix_y_z nexus.value
scoreboard players operation #input_vector_2_x nexus.value = #input_matrix_z_x nexus.value
scoreboard players operation #input_vector_2_y nexus.value = #input_matrix_z_y nexus.value
scoreboard players operation #input_vector_2_z nexus.value = #input_matrix_z_z nexus.value
function nexus:generic/vector/cross_product
scoreboard players operation #input_vector_1_x nexus.value = #output_vector_x nexus.value
scoreboard players operation #input_vector_1_y nexus.value = #output_vector_y nexus.value
scoreboard players operation #input_vector_1_z nexus.value = #output_vector_z nexus.value
scoreboard players operation #input_vector_2_x nexus.value = #input_matrix_y_x nexus.value
scoreboard players operation #input_vector_2_y nexus.value = #input_matrix_y_y nexus.value
scoreboard players operation #input_vector_2_z nexus.value = #input_matrix_y_z nexus.value
function nexus:generic/vector/cross_product







# Normalize vectors

scoreboard players set #scale_factor nexus.value 1

scoreboard players operation #input_vector_x nexus.value = #output_vector_x nexus.value
scoreboard players operation #input_vector_y nexus.value = #output_vector_y nexus.value
scoreboard players operation #input_vector_z nexus.value = #output_vector_z nexus.value
function nexus:generic/vector/normalize/3d
scoreboard players operation #output_matrix_z_x nexus.value = #output_vector_x nexus.value
scoreboard players operation #output_matrix_z_y nexus.value = #output_vector_y nexus.value
scoreboard players operation #output_matrix_z_z nexus.value = #output_vector_z nexus.value

scoreboard players operation #input_vector_x nexus.value = #input_matrix_y_x nexus.value
scoreboard players operation #input_vector_y nexus.value = #input_matrix_y_y nexus.value
scoreboard players operation #input_vector_z nexus.value = #input_matrix_y_z nexus.value
function nexus:generic/vector/normalize/3d
scoreboard players operation #output_matrix_y_x nexus.value = #output_vector_x nexus.value
scoreboard players operation #output_matrix_y_y nexus.value = #output_vector_y nexus.value
scoreboard players operation #output_matrix_y_z nexus.value = #output_vector_z nexus.value