# Assign variables

scoreboard players set #point_a_timestamp nexus.value 0
scoreboard players set #point_b_timestamp nexus.value 10
scoreboard players operation #input_timestamp nexus.value = @s nexus.anim_time_06

scoreboard players set #point_01_a_position nexus.value 0
scoreboard players set #point_01_b_position nexus.value -1500
scoreboard players set #point_01_a_velocity nexus.value 0
scoreboard players set #point_01_b_velocity nexus.value -200

scoreboard players set #point_02_a_position nexus.value 0
scoreboard players set #point_02_b_position nexus.value 200
scoreboard players set #point_02_a_velocity nexus.value 0
scoreboard players set #point_02_b_velocity nexus.value 20

function nexus:entity/generic/animate/keyframe/02

scoreboard players operation #animate_brain_position_y temp.value = #output_point_01 nexus.value
scoreboard players operation #animate_brain_rotation_x temp.value = #output_point_02 nexus.value