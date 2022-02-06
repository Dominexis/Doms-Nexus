# Compute common variables

scoreboard players operation #input nexus.value = #input_angle nexus.value
function nexus:generic/trigonometry/sine
scoreboard players operation #math_sine nexus.value = #output nexus.value
function nexus:generic/trigonometry/cosine
scoreboard players operation #math_cosine nexus.value = #output nexus.value
scoreboard players set #math_cosine_flipped nexus.value 1000
scoreboard players operation #math_cosine_flipped nexus.value -= #output nexus.value

scoreboard players operation #input_vector_1_x nexus.value = #input_axis_x nexus.value
scoreboard players operation #input_vector_1_y nexus.value = #input_axis_y nexus.value
scoreboard players operation #input_vector_1_z nexus.value = #input_axis_z nexus.value







# Compute vectors

scoreboard players operation #input_vector_2_x nexus.value = #input_matrix_y_x nexus.value
scoreboard players operation #input_vector_2_y nexus.value = #input_matrix_y_y nexus.value
scoreboard players operation #input_vector_2_z nexus.value = #input_matrix_y_z nexus.value
function nexus:generic/vector/cross_product
scoreboard players operation #output_vector_x nexus.value *= #math_sine nexus.value
scoreboard players operation #output_vector_y nexus.value *= #math_sine nexus.value
scoreboard players operation #output_vector_z nexus.value *= #math_sine nexus.value

scoreboard players operation #math_term_x nexus.value = #input_vector_2_x nexus.value
scoreboard players operation #math_term_y nexus.value = #input_vector_2_y nexus.value
scoreboard players operation #math_term_z nexus.value = #input_vector_2_z nexus.value
scoreboard players operation #math_term_x nexus.value *= #math_cosine nexus.value
scoreboard players operation #math_term_y nexus.value *= #math_cosine nexus.value
scoreboard players operation #math_term_z nexus.value *= #math_cosine nexus.value
scoreboard players operation #output_vector_x nexus.value += #math_term_x nexus.value
scoreboard players operation #output_vector_y nexus.value += #math_term_y nexus.value
scoreboard players operation #output_vector_z nexus.value += #math_term_z nexus.value

function nexus:generic/vector/dot_product/3d
scoreboard players operation #output nexus.value *= #math_cosine_flipped nexus.value
scoreboard players operation #output nexus.value /= #1000 nexus.value
scoreboard players operation #math_term_x nexus.value = #input_axis_x nexus.value
scoreboard players operation #math_term_y nexus.value = #input_axis_y nexus.value
scoreboard players operation #math_term_z nexus.value = #input_axis_z nexus.value
scoreboard players operation #math_term_x nexus.value *= #output nexus.value
scoreboard players operation #math_term_y nexus.value *= #output nexus.value
scoreboard players operation #math_term_z nexus.value *= #output nexus.value
scoreboard players operation #output_matrix_y_x nexus.value = #output_vector_x nexus.value
scoreboard players operation #output_matrix_y_y nexus.value = #output_vector_y nexus.value
scoreboard players operation #output_matrix_y_z nexus.value = #output_vector_z nexus.value
scoreboard players operation #output_matrix_y_x nexus.value += #math_term_x nexus.value
scoreboard players operation #output_matrix_y_y nexus.value += #math_term_y nexus.value
scoreboard players operation #output_matrix_y_z nexus.value += #math_term_z nexus.value
scoreboard players operation #output_matrix_y_x nexus.value /= #1000 nexus.value
scoreboard players operation #output_matrix_y_y nexus.value /= #1000 nexus.value
scoreboard players operation #output_matrix_y_z nexus.value /= #1000 nexus.value



scoreboard players operation #input_vector_2_x nexus.value = #input_matrix_z_x nexus.value
scoreboard players operation #input_vector_2_y nexus.value = #input_matrix_z_y nexus.value
scoreboard players operation #input_vector_2_z nexus.value = #input_matrix_z_z nexus.value
function nexus:generic/vector/cross_product
scoreboard players operation #output_vector_x nexus.value *= #math_sine nexus.value
scoreboard players operation #output_vector_y nexus.value *= #math_sine nexus.value
scoreboard players operation #output_vector_z nexus.value *= #math_sine nexus.value

scoreboard players operation #math_term_x nexus.value = #input_vector_2_x nexus.value
scoreboard players operation #math_term_y nexus.value = #input_vector_2_y nexus.value
scoreboard players operation #math_term_z nexus.value = #input_vector_2_z nexus.value
scoreboard players operation #math_term_x nexus.value *= #math_cosine nexus.value
scoreboard players operation #math_term_y nexus.value *= #math_cosine nexus.value
scoreboard players operation #math_term_z nexus.value *= #math_cosine nexus.value
scoreboard players operation #output_vector_x nexus.value += #math_term_x nexus.value
scoreboard players operation #output_vector_y nexus.value += #math_term_y nexus.value
scoreboard players operation #output_vector_z nexus.value += #math_term_z nexus.value

function nexus:generic/vector/dot_product/3d
scoreboard players operation #output nexus.value *= #math_cosine_flipped nexus.value
scoreboard players operation #output nexus.value /= #1000 nexus.value
scoreboard players operation #math_term_x nexus.value = #input_axis_x nexus.value
scoreboard players operation #math_term_y nexus.value = #input_axis_y nexus.value
scoreboard players operation #math_term_z nexus.value = #input_axis_z nexus.value
scoreboard players operation #math_term_x nexus.value *= #output nexus.value
scoreboard players operation #math_term_y nexus.value *= #output nexus.value
scoreboard players operation #math_term_z nexus.value *= #output nexus.value
scoreboard players operation #output_matrix_z_x nexus.value = #output_vector_x nexus.value
scoreboard players operation #output_matrix_z_y nexus.value = #output_vector_y nexus.value
scoreboard players operation #output_matrix_z_z nexus.value = #output_vector_z nexus.value
scoreboard players operation #output_matrix_z_x nexus.value += #math_term_x nexus.value
scoreboard players operation #output_matrix_z_y nexus.value += #math_term_y nexus.value
scoreboard players operation #output_matrix_z_z nexus.value += #math_term_z nexus.value
scoreboard players operation #output_matrix_z_x nexus.value /= #1000 nexus.value
scoreboard players operation #output_matrix_z_y nexus.value /= #1000 nexus.value
scoreboard players operation #output_matrix_z_z nexus.value /= #1000 nexus.value