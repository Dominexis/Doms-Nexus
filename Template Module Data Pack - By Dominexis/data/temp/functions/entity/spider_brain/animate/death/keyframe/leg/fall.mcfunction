# Assign variables

scoreboard players set #point_a_timestamp nexus.value 13
scoreboard players set #point_b_timestamp nexus.value 17
scoreboard players operation #input_timestamp nexus.value = @s nexus.anim_time_06

scoreboard players set #point_01_a_position nexus.value -600
scoreboard players set #point_01_b_position nexus.value -400
scoreboard players set #point_01_a_velocity nexus.value 0
scoreboard players set #point_01_b_velocity nexus.value 0

function nexus:entity/generic/animate/keyframe/01

scoreboard players operation #animate_front_right_leg_rotation_x temp.value = #output_point_01 nexus.value
scoreboard players operation #animate_front_left_leg_rotation_x temp.value = #output_point_01 nexus.value
scoreboard players operation #animate_back_right_leg_rotation_x temp.value = #output_point_01 nexus.value
scoreboard players operation #animate_back_left_leg_rotation_x temp.value = #output_point_01 nexus.value