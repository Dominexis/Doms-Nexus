# Compute force multiplier with masses

scoreboard players operation #force_cap temp.value = #ball_mass temp.value
scoreboard players operation #force_cap temp.value *= #4 nexus.value
scoreboard players operation #force_multiplier temp.value = @s nexus.mass
scoreboard players operation #force_multiplier temp.value < #force_cap temp.value







# Compute location of points

scoreboard players operation #kicker_point_x temp.value = @s nexus.x
scoreboard players operation #kicker_point_y temp.value = @s nexus.y
scoreboard players operation #kicker_point_z temp.value = @s nexus.z
scoreboard players operation #kicker_point_x temp.value -= #previous_x temp.value
scoreboard players operation #kicker_point_y temp.value -= #previous_y temp.value
scoreboard players operation #kicker_point_z temp.value -= #previous_z temp.value

scoreboard players operation #input_vector_x nexus.value = #kicker_point_x temp.value
scoreboard players operation #input_vector_y nexus.value = #kicker_point_y temp.value
scoreboard players operation #input_vector_z nexus.value = #kicker_point_z temp.value
scoreboard players operation #input_vector_x nexus.value *= #force_multiplier temp.value
scoreboard players operation #input_vector_y nexus.value *= #force_multiplier temp.value
scoreboard players operation #input_vector_z nexus.value *= #force_multiplier temp.value
scoreboard players operation #input_vector_x nexus.value *= #2 nexus.value
scoreboard players operation #input_vector_y nexus.value *= #2 nexus.value
scoreboard players operation #input_vector_z nexus.value *= #2 nexus.value
scoreboard players operation #input_vector_x nexus.value /= #ball_mass temp.value
scoreboard players operation #input_vector_y nexus.value /= #ball_mass temp.value
scoreboard players operation #input_vector_z nexus.value /= #ball_mass temp.value

scoreboard players operation #kicker_point_x temp.value *= #time temp.value
scoreboard players operation #kicker_point_y temp.value *= #time temp.value
scoreboard players operation #kicker_point_z temp.value *= #time temp.value
scoreboard players operation #kicker_point_x temp.value /= #1000 nexus.value
scoreboard players operation #kicker_point_y temp.value /= #1000 nexus.value
scoreboard players operation #kicker_point_z temp.value /= #1000 nexus.value
scoreboard players operation #kicker_point_x temp.value += #previous_x temp.value
scoreboard players operation #kicker_point_y temp.value += #previous_y temp.value
scoreboard players operation #kicker_point_z temp.value += #previous_z temp.value



scoreboard players operation #ball_point_x temp.value = #ball_x temp.value
scoreboard players operation #ball_point_y temp.value = #ball_y temp.value
scoreboard players operation #ball_point_z temp.value = #ball_z temp.value
scoreboard players operation #ball_point_x temp.value -= #ball_prev_x temp.value
scoreboard players operation #ball_point_y temp.value -= #ball_prev_y temp.value
scoreboard players operation #ball_point_z temp.value -= #ball_prev_z temp.value

scoreboard players operation #input_vector_x nexus.value -= #ball_point_x temp.value
scoreboard players operation #input_vector_y nexus.value -= #ball_point_y temp.value
scoreboard players operation #input_vector_z nexus.value -= #ball_point_z temp.value
scoreboard players operation #input_vector_x nexus.value -= #ball_point_x temp.value
scoreboard players operation #input_vector_y nexus.value -= #ball_point_y temp.value
scoreboard players operation #input_vector_z nexus.value -= #ball_point_z temp.value

scoreboard players operation #ball_point_x temp.value *= #time temp.value
scoreboard players operation #ball_point_y temp.value *= #time temp.value
scoreboard players operation #ball_point_z temp.value *= #time temp.value
scoreboard players operation #ball_point_x temp.value /= #1000 nexus.value
scoreboard players operation #ball_point_y temp.value /= #1000 nexus.value
scoreboard players operation #ball_point_z temp.value /= #1000 nexus.value
scoreboard players operation #ball_point_x temp.value += #ball_prev_x temp.value
scoreboard players operation #ball_point_y temp.value += #ball_prev_y temp.value
scoreboard players operation #ball_point_z temp.value += #ball_prev_z temp.value







# Apply translational force

scoreboard players set #scale_factor nexus.value 1
function nexus:generic/vector/length/3d

scoreboard players operation #force_x temp.value = #ball_point_x temp.value
scoreboard players operation #force_y temp.value = #ball_point_y temp.value
scoreboard players operation #force_z temp.value = #ball_point_z temp.value
scoreboard players operation #force_x temp.value -= #kicker_point_x temp.value
scoreboard players operation #force_y temp.value -= #kicker_point_y temp.value
scoreboard players operation #force_z temp.value -= #kicker_point_z temp.value
scoreboard players operation #force_x temp.value *= #output nexus.value
scoreboard players operation #force_y temp.value *= #output nexus.value
scoreboard players operation #force_z temp.value *= #output nexus.value
scoreboard players operation #force_x temp.value /= #distance temp.value
scoreboard players operation #force_y temp.value /= #distance temp.value
scoreboard players operation #force_z temp.value /= #distance temp.value

scoreboard players operation #input_vector_1_x nexus.value = #force_x temp.value
scoreboard players operation #input_vector_1_y nexus.value = #force_y temp.value
scoreboard players operation #input_vector_1_z nexus.value = #force_z temp.value

scoreboard players operation #ball_mot_x temp.value += #force_x temp.value
scoreboard players operation #ball_mot_y temp.value += #force_y temp.value
scoreboard players operation #ball_mot_z temp.value += #force_z temp.value







# Apply angular force

scoreboard players operation #input_vector_1_x nexus.value *= #-1 nexus.value
scoreboard players operation #input_vector_1_y nexus.value *= #-1 nexus.value
scoreboard players operation #input_vector_1_z nexus.value *= #-1 nexus.value
scoreboard players operation #input_vector_1_x nexus.value *= #ball_size temp.value
scoreboard players operation #input_vector_1_y nexus.value *= #ball_size temp.value
scoreboard players operation #input_vector_1_z nexus.value *= #ball_size temp.value
scoreboard players operation #input_vector_1_x nexus.value /= #1000 nexus.value
scoreboard players operation #input_vector_1_y nexus.value /= #1000 nexus.value
scoreboard players operation #input_vector_1_z nexus.value /= #1000 nexus.value
scoreboard players operation #input_vector_2_x nexus.value = #input_vector_x nexus.value
scoreboard players operation #input_vector_2_y nexus.value = #input_vector_y nexus.value
scoreboard players operation #input_vector_2_z nexus.value = #input_vector_z nexus.value

function nexus:generic/vector/cross_product

scoreboard players operation #output_vector_x nexus.value *= #3 nexus.value
scoreboard players operation #output_vector_y nexus.value *= #3 nexus.value
scoreboard players operation #output_vector_z nexus.value *= #3 nexus.value
scoreboard players operation #ball_ang_vel_x temp.value += #output_vector_x nexus.value
scoreboard players operation #ball_ang_vel_y temp.value += #output_vector_y nexus.value
scoreboard players operation #ball_ang_vel_z temp.value += #output_vector_z nexus.value







# Play sound

playsound minecraft:block.note_block.basedrum neutral @a ~ ~ ~