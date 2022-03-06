# Calculate influence

scoreboard players operation #previous nexus.anim_infl_00 = @s nexus.anim_infl_00
scoreboard players operation @s nexus.anim_infl_00 += #missed_ticks nexus.value
execute if score #previous nexus.anim_infl_00 matches 1..10 run scoreboard players set @s[scores={nexus.anim_infl_00=10..}] nexus.anim_infl_00 10
execute if score #previous nexus.anim_infl_00 matches ..000 run scoreboard players set @s[scores={nexus.anim_infl_00=0.. }] nexus.anim_infl_00 0

scoreboard players operation #input nexus.value = @s nexus.anim_infl_00
execute if score #input nexus.value matches ..-1 run scoreboard players operation #input nexus.value *= #-1 nexus.value
scoreboard players operation #input nexus.value *= #100 nexus.value
function nexus:generic/interpolation/smoothstep
scoreboard players operation #influence temp.value = #output nexus.value







# Increment timer

scoreboard players operation #previous nexus.anim_time_00 = @s nexus.anim_time_00
scoreboard players operation @s nexus.anim_time_00 += #missed_ticks nexus.value







# Apply 4-second sine wave to bones

scoreboard players operation #input nexus.value = @s nexus.anim_time_00
scoreboard players operation #input nexus.value *= #45 nexus.value
function nexus:generic/trigonometry/sine
scoreboard players remove #output nexus.value 1000

scoreboard players operation #output nexus.value /= #8 nexus.value
scoreboard players operation #animate_brain_position_y temp.value = #output nexus.value

scoreboard players operation #output nexus.value /= #2 nexus.value
scoreboard players operation #animate_front_right_leg_rotation_x temp.value = #output nexus.value
scoreboard players operation #animate_front_left_leg_rotation_x temp.value = #output nexus.value
scoreboard players operation #animate_back_right_leg_rotation_x temp.value = #output nexus.value
scoreboard players operation #animate_back_left_leg_rotation_x temp.value = #output nexus.value







# Merge animation with native values

scoreboard players operation #animate_brain_position_y temp.value *= #influence temp.value
scoreboard players operation #animate_brain_position_y temp.value /= #1000 nexus.value
scoreboard players operation #brain_position_y temp.value += #animate_brain_position_y temp.value

scoreboard players operation #animate_front_right_leg_rotation_x temp.value *= #influence temp.value
scoreboard players operation #animate_front_right_leg_rotation_x temp.value /= #1000 nexus.value
scoreboard players operation #front_right_leg_rotation_x temp.value += #animate_front_right_leg_rotation_x temp.value

scoreboard players operation #animate_front_left_leg_rotation_x temp.value *= #influence temp.value
scoreboard players operation #animate_front_left_leg_rotation_x temp.value /= #1000 nexus.value
scoreboard players operation #front_left_leg_rotation_x temp.value += #animate_front_left_leg_rotation_x temp.value

scoreboard players operation #animate_back_right_leg_rotation_x temp.value *= #influence temp.value
scoreboard players operation #animate_back_right_leg_rotation_x temp.value /= #1000 nexus.value
scoreboard players operation #back_right_leg_rotation_x temp.value += #animate_back_right_leg_rotation_x temp.value

scoreboard players operation #animate_back_left_leg_rotation_x temp.value *= #influence temp.value
scoreboard players operation #animate_back_left_leg_rotation_x temp.value /= #1000 nexus.value
scoreboard players operation #back_left_leg_rotation_x temp.value += #animate_back_left_leg_rotation_x temp.value







# Stop animation when influence timer is 0

execute if score #influence temp.value matches 0 run tag @s remove temp.entity.animate.idle