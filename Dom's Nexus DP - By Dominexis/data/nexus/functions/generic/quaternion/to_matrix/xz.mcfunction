# Formula

# x_x = ii + rr - kk - jj
# x_y = ij + rk + kr + ji
# x_z = ik - rj + ki - jr

# y_x = ji - kr - rk + ij
# y_y = jj - kk + rr - ii
# y_z = jk + kj + ri + ir

# z_x = ki + jr + ik + rj
# z_y = kj + jk - ir - ri
# z_z = kk - jj - ii + rr







# Compute matrix

scoreboard players operation #math_quaternion_r nexus.value = #input_quaternion_i nexus.value
scoreboard players operation #math_quaternion_r nexus.value *= #input_quaternion_i nexus.value
scoreboard players operation #math_quaternion_i nexus.value = #input_quaternion_r nexus.value
scoreboard players operation #math_quaternion_i nexus.value *= #input_quaternion_r nexus.value
scoreboard players operation #math_quaternion_j nexus.value = #input_quaternion_k nexus.value
scoreboard players operation #math_quaternion_j nexus.value *= #input_quaternion_k nexus.value
scoreboard players operation #math_quaternion_k nexus.value = #input_quaternion_j nexus.value
scoreboard players operation #math_quaternion_k nexus.value *= #input_quaternion_j nexus.value

scoreboard players operation #output_matrix_x_x nexus.value = #math_quaternion_r nexus.value
scoreboard players operation #output_matrix_x_x nexus.value += #math_quaternion_i nexus.value
scoreboard players operation #output_matrix_x_x nexus.value -= #math_quaternion_j nexus.value
scoreboard players operation #output_matrix_x_x nexus.value -= #math_quaternion_k nexus.value
scoreboard players operation #output_matrix_x_x nexus.value /= #1000 nexus.value



scoreboard players operation #math_quaternion_r nexus.value = #input_quaternion_i nexus.value
scoreboard players operation #math_quaternion_r nexus.value *= #input_quaternion_j nexus.value
scoreboard players operation #math_quaternion_i nexus.value = #input_quaternion_r nexus.value
scoreboard players operation #math_quaternion_i nexus.value *= #input_quaternion_k nexus.value
scoreboard players operation #math_quaternion_j nexus.value = #input_quaternion_k nexus.value
scoreboard players operation #math_quaternion_j nexus.value *= #input_quaternion_r nexus.value
scoreboard players operation #math_quaternion_k nexus.value = #input_quaternion_j nexus.value
scoreboard players operation #math_quaternion_k nexus.value *= #input_quaternion_i nexus.value

scoreboard players operation #output_matrix_x_y nexus.value = #math_quaternion_r nexus.value
scoreboard players operation #output_matrix_x_y nexus.value += #math_quaternion_i nexus.value
scoreboard players operation #output_matrix_x_y nexus.value += #math_quaternion_j nexus.value
scoreboard players operation #output_matrix_x_y nexus.value += #math_quaternion_k nexus.value
scoreboard players operation #output_matrix_x_y nexus.value /= #1000 nexus.value



scoreboard players operation #math_quaternion_r nexus.value = #input_quaternion_i nexus.value
scoreboard players operation #math_quaternion_r nexus.value *= #input_quaternion_k nexus.value
scoreboard players operation #math_quaternion_i nexus.value = #input_quaternion_r nexus.value
scoreboard players operation #math_quaternion_i nexus.value *= #input_quaternion_j nexus.value
scoreboard players operation #math_quaternion_j nexus.value = #input_quaternion_k nexus.value
scoreboard players operation #math_quaternion_j nexus.value *= #input_quaternion_i nexus.value
scoreboard players operation #math_quaternion_k nexus.value = #input_quaternion_j nexus.value
scoreboard players operation #math_quaternion_k nexus.value *= #input_quaternion_r nexus.value

scoreboard players operation #output_matrix_x_z nexus.value = #math_quaternion_r nexus.value
scoreboard players operation #output_matrix_x_z nexus.value -= #math_quaternion_i nexus.value
scoreboard players operation #output_matrix_x_z nexus.value += #math_quaternion_j nexus.value
scoreboard players operation #output_matrix_x_z nexus.value -= #math_quaternion_k nexus.value
scoreboard players operation #output_matrix_x_z nexus.value /= #1000 nexus.value



scoreboard players operation #math_quaternion_r nexus.value = #input_quaternion_k nexus.value
scoreboard players operation #math_quaternion_r nexus.value *= #input_quaternion_i nexus.value
scoreboard players operation #math_quaternion_i nexus.value = #input_quaternion_j nexus.value
scoreboard players operation #math_quaternion_i nexus.value *= #input_quaternion_r nexus.value
scoreboard players operation #math_quaternion_j nexus.value = #input_quaternion_i nexus.value
scoreboard players operation #math_quaternion_j nexus.value *= #input_quaternion_k nexus.value
scoreboard players operation #math_quaternion_k nexus.value = #input_quaternion_r nexus.value
scoreboard players operation #math_quaternion_k nexus.value *= #input_quaternion_j nexus.value

scoreboard players operation #output_matrix_z_x nexus.value = #math_quaternion_r nexus.value
scoreboard players operation #output_matrix_z_x nexus.value += #math_quaternion_i nexus.value
scoreboard players operation #output_matrix_z_x nexus.value += #math_quaternion_j nexus.value
scoreboard players operation #output_matrix_z_x nexus.value += #math_quaternion_k nexus.value
scoreboard players operation #output_matrix_z_x nexus.value /= #1000 nexus.value



scoreboard players operation #math_quaternion_r nexus.value = #input_quaternion_k nexus.value
scoreboard players operation #math_quaternion_r nexus.value *= #input_quaternion_j nexus.value
scoreboard players operation #math_quaternion_i nexus.value = #input_quaternion_j nexus.value
scoreboard players operation #math_quaternion_i nexus.value *= #input_quaternion_k nexus.value
scoreboard players operation #math_quaternion_j nexus.value = #input_quaternion_i nexus.value
scoreboard players operation #math_quaternion_j nexus.value *= #input_quaternion_r nexus.value
scoreboard players operation #math_quaternion_k nexus.value = #input_quaternion_r nexus.value
scoreboard players operation #math_quaternion_k nexus.value *= #input_quaternion_i nexus.value

scoreboard players operation #output_matrix_z_y nexus.value = #math_quaternion_r nexus.value
scoreboard players operation #output_matrix_z_y nexus.value += #math_quaternion_i nexus.value
scoreboard players operation #output_matrix_z_y nexus.value -= #math_quaternion_j nexus.value
scoreboard players operation #output_matrix_z_y nexus.value -= #math_quaternion_k nexus.value
scoreboard players operation #output_matrix_z_y nexus.value /= #1000 nexus.value



scoreboard players operation #math_quaternion_r nexus.value = #input_quaternion_k nexus.value
scoreboard players operation #math_quaternion_r nexus.value *= #input_quaternion_k nexus.value
scoreboard players operation #math_quaternion_i nexus.value = #input_quaternion_j nexus.value
scoreboard players operation #math_quaternion_i nexus.value *= #input_quaternion_j nexus.value
scoreboard players operation #math_quaternion_j nexus.value = #input_quaternion_i nexus.value
scoreboard players operation #math_quaternion_j nexus.value *= #input_quaternion_i nexus.value
scoreboard players operation #math_quaternion_k nexus.value = #input_quaternion_r nexus.value
scoreboard players operation #math_quaternion_k nexus.value *= #input_quaternion_r nexus.value

scoreboard players operation #output_matrix_z_z nexus.value = #math_quaternion_r nexus.value
scoreboard players operation #output_matrix_z_z nexus.value -= #math_quaternion_i nexus.value
scoreboard players operation #output_matrix_z_z nexus.value -= #math_quaternion_j nexus.value
scoreboard players operation #output_matrix_z_z nexus.value += #math_quaternion_k nexus.value
scoreboard players operation #output_matrix_z_z nexus.value /= #1000 nexus.value