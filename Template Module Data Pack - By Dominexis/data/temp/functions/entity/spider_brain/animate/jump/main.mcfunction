# Increment timer

scoreboard players operation #previous nexus.anim_time_02 = @s nexus.anim_time_02
scoreboard players operation @s nexus.anim_time_02 += #missed_ticks nexus.value
execute if score @s nexus.anim_time_02 matches 20.. run scoreboard players set @s nexus.anim_time_02 20







# Apply sine waves to bones

scoreboard players operation #input nexus.value = @s nexus.anim_time_02
scoreboard players operation #input nexus.value *= #90 nexus.value

function nexus:generic/trigonometry/sine

scoreboard players operation #wave temp.value = #output nexus.value

scoreboard players operation #input nexus.value = @s nexus.anim_time_02
scoreboard players operation #input nexus.value *= #180 nexus.value

function nexus:generic/trigonometry/sine

scoreboard players operation #wave temp.value *= #output nexus.value
scoreboard players operation #wave temp.value /= #1000 nexus.value
scoreboard players operation #wave temp.value *= #-1 nexus.value

scoreboard players operation #animate_brain_position_y temp.value = #wave temp.value
scoreboard players operation #wave temp.value /= #4 nexus.value
scoreboard players operation #animate_front_right_leg_rotation_x temp.value = #wave temp.value
scoreboard players operation #animate_front_left_leg_rotation_x temp.value = #wave temp.value
scoreboard players operation #animate_back_right_leg_rotation_x temp.value = #wave temp.value
scoreboard players operation #animate_back_left_leg_rotation_x temp.value = #wave temp.value
scoreboard players operation #wave temp.value *= #-1 nexus.value
scoreboard players operation #animate_brain_rotation_x temp.value = #wave temp.value







# Merge animation with native values

scoreboard players operation #brain_position_y temp.value += #animate_brain_position_y temp.value
scoreboard players operation #brain_rotation_x temp.value += #animate_brain_rotation_x temp.value

scoreboard players operation #front_right_leg_rotation_x temp.value += #animate_front_right_leg_rotation_x temp.value
scoreboard players operation #front_left_leg_rotation_x temp.value += #animate_front_left_leg_rotation_x temp.value
scoreboard players operation #back_right_leg_rotation_x temp.value += #animate_back_right_leg_rotation_x temp.value
scoreboard players operation #back_left_leg_rotation_x temp.value += #animate_back_left_leg_rotation_x temp.value







# Temporal effects

execute if score #previous nexus.anim_time_02 matches ..5 if score @s nexus.anim_time_02 matches 6.. if score @s nexus.collide_y matches -1 run scoreboard players set @s nexus.mot_y 800







# Stop animation when timer hits the end

execute if score @s nexus.anim_time_02 matches 20.. run tag @s remove temp.entity.animate.jump