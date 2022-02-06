# Get angle from matrix

scoreboard players operation #input_x nexus.value = #input_matrix_x_x nexus.value
scoreboard players operation #input_y nexus.value = #input_matrix_x_y nexus.value
function nexus:generic/trigonometry/arctangent
scoreboard players operation #output_angle nexus.value = #output nexus.value