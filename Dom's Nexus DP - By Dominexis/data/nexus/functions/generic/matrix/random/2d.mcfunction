# Get a random point on the unit circle

scoreboard players set #input nexus.value 3600
function nexus:generic/rng/lcg
scoreboard players operation #input nexus.value = #output nexus.value
function nexus:generic/trigonometry/cosine
scoreboard players operation #output_matrix_x_x nexus.value = #output nexus.value
function nexus:generic/trigonometry/sine
scoreboard players operation #output_matrix_x_y nexus.value = #output nexus.value







# Compute second vector

scoreboard players operation #output_matrix_y_y nexus.value = #output_matrix_x_x nexus.value
scoreboard players operation #output_matrix_y_x nexus.value = #output_matrix_x_y nexus.value
scoreboard players operation #output_matrix_y_x nexus.value *= #-1 nexus.value