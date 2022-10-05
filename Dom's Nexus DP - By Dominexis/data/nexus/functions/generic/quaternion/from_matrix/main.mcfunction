# Compute type

scoreboard players set #matrix_type nexus.value 3
execute if score #input_matrix_y_y nexus.value > #input_matrix_z_z nexus.value run scoreboard players set #matrix_type nexus.value 2
execute if score #input_matrix_x_x nexus.value > #input_matrix_y_y nexus.value if score #input_matrix_x_x nexus.value > #input_matrix_z_z nexus.value run scoreboard players set #matrix_type nexus.value 1
scoreboard players operation #math_matrix nexus.value = #input_matrix_x_x nexus.value
scoreboard players operation #math_matrix nexus.value += #input_matrix_y_y nexus.value
scoreboard players operation #math_matrix nexus.value += #input_matrix_z_z nexus.value
execute if score #math_matrix nexus.value matches 0.. run scoreboard players set #matrix_type nexus.value 0







# Run function based on type

execute if score #matrix_type nexus.value matches 0 run function nexus:generic/quaternion/from_matrix/0
execute if score #matrix_type nexus.value matches 1 run function nexus:generic/quaternion/from_matrix/1
execute if score #matrix_type nexus.value matches 2 run function nexus:generic/quaternion/from_matrix/2
execute if score #matrix_type nexus.value matches 3 run function nexus:generic/quaternion/from_matrix/3