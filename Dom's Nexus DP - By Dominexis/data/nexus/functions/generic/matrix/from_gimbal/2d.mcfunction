# Set vector from angle

scoreboard players operation #input nexus.value = #input_angle nexus.value

function nexus:generic/trigonometry/cosine
scoreboard players operation #output_matrix_x_x nexus.value = #output nexus.value
function nexus:generic/trigonometry/sine
scoreboard players operation #output_matrix_x_y nexus.value = #output nexus.value

function nexus:generic/trigonometry/sine
scoreboard players operation #output_matrix_y_x nexus.value = #output nexus.value
scoreboard players operation #output_matrix_y_x nexus.value *= #-1 nexus.value
function nexus:generic/trigonometry/cosine
scoreboard players operation #output_matrix_y_y nexus.value = #output nexus.value