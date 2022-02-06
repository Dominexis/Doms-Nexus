# Shift previous position based on NBT delay

scoreboard players operation #previous_x temp.value = @s nexus.prev_x
scoreboard players operation #previous_y temp.value = @s nexus.prev_y
scoreboard players operation #previous_z temp.value = @s nexus.prev_z
scoreboard players operation #previous_x temp.value -= @s nexus.x
scoreboard players operation #previous_y temp.value -= @s nexus.y
scoreboard players operation #previous_z temp.value -= @s nexus.z
scoreboard players operation #previous_x temp.value /= @s nexus.nbt_delay
scoreboard players operation #previous_y temp.value /= @s nexus.nbt_delay
scoreboard players operation #previous_z temp.value /= @s nexus.nbt_delay
scoreboard players operation #previous_x temp.value += @s nexus.x
scoreboard players operation #previous_y temp.value += @s nexus.y
scoreboard players operation #previous_z temp.value += @s nexus.z







# Compute terms

scoreboard players operation #term_x_1 temp.value = #previous_x temp.value
scoreboard players operation #term_y_1 temp.value = #previous_y temp.value
scoreboard players operation #term_z_1 temp.value = #previous_z temp.value
scoreboard players operation #term_x_1 temp.value -= #ball_prev_x temp.value
scoreboard players operation #term_y_1 temp.value -= #ball_prev_y temp.value
scoreboard players operation #term_z_1 temp.value -= #ball_prev_z temp.value

scoreboard players operation #term_x_2 temp.value = #ball_x temp.value
scoreboard players operation #term_y_2 temp.value = #ball_y temp.value
scoreboard players operation #term_z_2 temp.value = #ball_z temp.value
scoreboard players operation #term_x_2 temp.value -= @s nexus.x
scoreboard players operation #term_y_2 temp.value -= @s nexus.y
scoreboard players operation #term_z_2 temp.value -= @s nexus.z

scoreboard players operation #term_y_1 temp.value += #offset temp.value
scoreboard players operation #term_y_2 temp.value -= #offset temp.value







# Compute coefficients

scoreboard players operation #input_coefficient_a nexus.value = #term_x_1 temp.value
scoreboard players operation #input_coefficient_a nexus.value += #term_x_2 temp.value
scoreboard players operation #input_coefficient_a nexus.value *= #input_coefficient_a nexus.value
scoreboard players operation #math_00 temp.value = #term_y_1 temp.value
scoreboard players operation #math_00 temp.value += #term_y_2 temp.value
scoreboard players operation #math_00 temp.value *= #math_00 temp.value
scoreboard players operation #input_coefficient_a nexus.value += #math_00 temp.value
scoreboard players operation #math_00 temp.value = #term_z_1 temp.value
scoreboard players operation #math_00 temp.value += #term_z_2 temp.value
scoreboard players operation #math_00 temp.value *= #math_00 temp.value
scoreboard players operation #input_coefficient_a nexus.value += #math_00 temp.value
scoreboard players operation #input_coefficient_a nexus.value /= #1000 nexus.value

scoreboard players operation #input_coefficient_b nexus.value = #term_x_1 temp.value
scoreboard players operation #input_coefficient_b nexus.value *= #input_coefficient_b nexus.value
scoreboard players operation #math_00 temp.value = #term_y_1 temp.value
scoreboard players operation #math_00 temp.value *= #math_00 temp.value
scoreboard players operation #input_coefficient_b nexus.value += #math_00 temp.value
scoreboard players operation #math_00 temp.value = #term_z_1 temp.value
scoreboard players operation #math_00 temp.value *= #math_00 temp.value
scoreboard players operation #input_coefficient_b nexus.value += #math_00 temp.value
scoreboard players operation #input_coefficient_c nexus.value = #input_coefficient_b nexus.value

scoreboard players operation #math_00 temp.value = #term_x_1 temp.value
scoreboard players operation #math_00 temp.value *= #term_x_2 temp.value
scoreboard players operation #input_coefficient_b nexus.value += #math_00 temp.value
scoreboard players operation #math_00 temp.value = #term_y_1 temp.value
scoreboard players operation #math_00 temp.value *= #term_y_2 temp.value
scoreboard players operation #input_coefficient_b nexus.value += #math_00 temp.value
scoreboard players operation #math_00 temp.value = #term_z_1 temp.value
scoreboard players operation #math_00 temp.value *= #term_z_2 temp.value
scoreboard players operation #input_coefficient_b nexus.value += #math_00 temp.value
scoreboard players operation #input_coefficient_b nexus.value *= #2 nexus.value
scoreboard players operation #input_coefficient_b nexus.value *= #-1 nexus.value
scoreboard players operation #input_coefficient_b nexus.value /= #1000 nexus.value

scoreboard players operation #distance temp.value = @s nexus.size
scoreboard players operation #distance temp.value += #ball_size temp.value
scoreboard players operation #math_00 temp.value = #distance temp.value
scoreboard players operation #math_00 temp.value *= #math_00 temp.value

scoreboard players operation #input_coefficient_c nexus.value -= #math_00 temp.value
scoreboard players operation #input_coefficient_c nexus.value /= #1000 nexus.value







# Compute roots

scoreboard players set #scale_factor nexus.value 1000
function nexus:generic/root/polynomial/quadratic







# Apply force

scoreboard players operation #time temp.value = #output_root_1 nexus.value
scoreboard players operation #time temp.value < #output_root_2 nexus.value
execute if score #time temp.value matches 0..1000 if score #output_root_1_boolean nexus.value matches 1 run function temp:entity/ball/mode/roll/kick/force