# Increment timer

scoreboard players operation #previous nexus.anim_time_03 = @s nexus.anim_time_03
scoreboard players operation @s nexus.anim_time_03 += #missed_ticks nexus.value
execute if score @s nexus.anim_time_03 matches 10.. run scoreboard players set @s nexus.anim_time_03 10







# Apply half-second cosine wave to bones

scoreboard players operation #input nexus.value = @s nexus.anim_time_03
scoreboard players operation #input nexus.value *= #360 nexus.value

function nexus:generic/trigonometry/cosine

scoreboard players operation #wave temp.value = #output nexus.value
scoreboard players remove #wave temp.value 1000
scoreboard players operation #wave temp.value /= #8 nexus.value

scoreboard players operation #animate_front_right_leg_rotation_x temp.value = #wave temp.value
scoreboard players operation #animate_front_left_leg_rotation_x temp.value = #wave temp.value
scoreboard players operation #animate_back_right_leg_rotation_x temp.value = #wave temp.value
scoreboard players operation #animate_back_left_leg_rotation_x temp.value = #wave temp.value
scoreboard players operation #wave temp.value *= #-1 nexus.value
scoreboard players operation #animate_brain_rotation_x temp.value = #wave temp.value

scoreboard players operation #wave temp.value = #output nexus.value
scoreboard players remove #wave temp.value 1000
scoreboard players operation #wave temp.value /= #3 nexus.value

scoreboard players operation #animate_brain_position_y temp.value = #wave temp.value







# Merge animation with native values

scoreboard players operation #brain_position_y temp.value += #animate_brain_position_y temp.value
scoreboard players operation #brain_rotation_x temp.value += #animate_brain_rotation_x temp.value

scoreboard players operation #front_right_leg_rotation_x temp.value += #animate_front_right_leg_rotation_x temp.value
scoreboard players operation #front_left_leg_rotation_x temp.value += #animate_front_left_leg_rotation_x temp.value
scoreboard players operation #back_right_leg_rotation_x temp.value += #animate_back_right_leg_rotation_x temp.value
scoreboard players operation #back_left_leg_rotation_x temp.value += #animate_back_left_leg_rotation_x temp.value







# Stop animation when timer hits the end

execute if score @s nexus.anim_time_03 matches 10.. run tag @s remove temp.entity.animate.land