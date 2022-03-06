# Calculate influence

scoreboard players operation #previous nexus.anim_infl_01 = @s nexus.anim_infl_01
scoreboard players operation @s nexus.anim_infl_01 += #missed_ticks nexus.value
execute if score #previous nexus.anim_infl_01 matches 1..10 run scoreboard players set @s[scores={nexus.anim_infl_01=10..}] nexus.anim_infl_01 10
execute if score #previous nexus.anim_infl_01 matches ..000 run scoreboard players set @s[scores={nexus.anim_infl_01=0.. }] nexus.anim_infl_01 0

scoreboard players operation #input nexus.value = @s nexus.anim_infl_01
execute if score #input nexus.value matches ..-1 run scoreboard players operation #input nexus.value *= #-1 nexus.value
scoreboard players operation #input nexus.value *= #100 nexus.value
function nexus:generic/interpolation/smoothstep
scoreboard players operation #influence temp.value = #output nexus.value







# Increment timer

scoreboard players operation #velocity temp.value = @s nexus.velocity
scoreboard players operation #velocity temp.value *= #missed_ticks nexus.value

scoreboard players operation #previous nexus.anim_time_01 = @s nexus.anim_time_01
scoreboard players operation @s nexus.anim_time_01 += #velocity temp.value

scoreboard players set #default_velocity temp.value 250







# Play sounds

scoreboard players operation #math_00 temp.value = @s nexus.anim_time_01
scoreboard players operation #math_01 temp.value = #previous nexus.anim_time_01
scoreboard players operation #math_00 temp.value /= #default_velocity temp.value
scoreboard players operation #math_01 temp.value /= #default_velocity temp.value
scoreboard players operation #math_00 temp.value /= #5 nexus.value
scoreboard players operation #math_01 temp.value /= #5 nexus.value

execute unless score #math_00 temp.value = #math_01 temp.value run playsound minecraft:entity.goat.ram_impact hostile @a







# Apply half-second sine wave to bones

scoreboard players operation #input nexus.value = @s nexus.anim_time_01
scoreboard players operation #input nexus.value *= #360 nexus.value
scoreboard players operation #input nexus.value /= #default_velocity temp.value
function nexus:generic/trigonometry/sine

scoreboard players operation #wave temp.value = #output nexus.value
scoreboard players set #amplitude nexus.value 450
scoreboard players set #rate nexus.value 450

scoreboard players operation #input nexus.value = #wave temp.value
scoreboard players operation #input nexus.value *= @s temp.right_speed
scoreboard players operation #input nexus.value /= #2 nexus.value
scoreboard players operation #input nexus.value /= #default_velocity temp.value
function nexus:generic/limiter
scoreboard players operation #animate_front_right_leg_rotation_y temp.value = #output nexus.value
scoreboard players operation #output nexus.value *= #-1 nexus.value
scoreboard players operation #animate_back_right_leg_rotation_y temp.value = #output nexus.value

scoreboard players operation #input nexus.value = #wave temp.value
scoreboard players operation #input nexus.value *= @s temp.left_speed
scoreboard players operation #input nexus.value /= #2 nexus.value
scoreboard players operation #input nexus.value /= #default_velocity temp.value
function nexus:generic/limiter
scoreboard players operation #animate_front_left_leg_rotation_y temp.value = #output nexus.value
scoreboard players operation #output nexus.value *= #-1 nexus.value
scoreboard players operation #animate_back_left_leg_rotation_y temp.value = #output nexus.value







# Apply half-second cosine wave to bones

scoreboard players operation #input nexus.value = @s nexus.anim_time_01
scoreboard players operation #input nexus.value *= #360 nexus.value
scoreboard players operation #input nexus.value /= #default_velocity temp.value
function nexus:generic/trigonometry/cosine

scoreboard players operation #input nexus.value = #output nexus.value
scoreboard players set #amplitude nexus.value 1000
scoreboard players set #rate nexus.value 1000
function nexus:generic/limiter
scoreboard players remove #output nexus.value 500

scoreboard players operation #animate_front_right_leg_rotation_x temp.value = #output nexus.value
scoreboard players operation #animate_front_right_leg_rotation_x temp.value /= #4 nexus.value
scoreboard players operation #animate_back_left_leg_rotation_x temp.value = #animate_front_right_leg_rotation_x temp.value

scoreboard players operation #output nexus.value *= #-1 nexus.value
scoreboard players remove #output nexus.value 1000

scoreboard players operation #animate_front_left_leg_rotation_x temp.value = #output nexus.value
scoreboard players operation #animate_front_left_leg_rotation_x temp.value /= #4 nexus.value
scoreboard players operation #animate_back_right_leg_rotation_x temp.value = #animate_front_left_leg_rotation_x temp.value

scoreboard players operation #animate_front_right_leg_rotation_x temp.value *= @s temp.right_speed
scoreboard players operation #animate_front_left_leg_rotation_x temp.value *= @s temp.left_speed
scoreboard players operation #animate_back_right_leg_rotation_x temp.value *= @s temp.right_speed
scoreboard players operation #animate_back_left_leg_rotation_x temp.value *= @s temp.left_speed
scoreboard players operation #animate_front_right_leg_rotation_x temp.value /= #default_velocity temp.value
scoreboard players operation #animate_front_left_leg_rotation_x temp.value /= #default_velocity temp.value
scoreboard players operation #animate_back_right_leg_rotation_x temp.value /= #default_velocity temp.value
scoreboard players operation #animate_back_left_leg_rotation_x temp.value /= #default_velocity temp.value







# Apply quarter-second cosine wave to bones

scoreboard players operation #input nexus.value = @s nexus.anim_time_01
scoreboard players operation #input nexus.value *= #720 nexus.value
scoreboard players operation #input nexus.value /= #default_velocity temp.value
function nexus:generic/trigonometry/cosine

scoreboard players set #input nexus.value 1000
scoreboard players operation #input nexus.value -= #output nexus.value
scoreboard players operation #input nexus.value *= @s nexus.velocity
scoreboard players operation #input nexus.value /= #default_velocity temp.value
scoreboard players set #amplitude nexus.value 1000
scoreboard players set #rate nexus.value 4000
function nexus:generic/limiter

scoreboard players operation #output nexus.value /= #4 nexus.value
scoreboard players operation #output nexus.value *= #-1 nexus.value
scoreboard players operation #animate_brain_position_y temp.value = #output nexus.value
scoreboard players operation #output nexus.value /= #4 nexus.value
scoreboard players operation #animate_brain_rotation_x temp.value = #output nexus.value







# Merge animation with native values

scoreboard players operation #animate_brain_position_y temp.value *= #influence temp.value
scoreboard players operation #animate_brain_position_y temp.value /= #1000 nexus.value
scoreboard players operation #brain_position_y temp.value += #animate_brain_position_y temp.value

scoreboard players operation #animate_brain_rotation_x temp.value *= #influence temp.value
scoreboard players operation #animate_brain_rotation_x temp.value /= #1000 nexus.value
scoreboard players operation #brain_rotation_x temp.value += #animate_brain_rotation_x temp.value

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

scoreboard players operation #animate_front_right_leg_rotation_y temp.value *= #influence temp.value
scoreboard players operation #animate_front_right_leg_rotation_y temp.value /= #1000 nexus.value
scoreboard players operation #front_right_leg_rotation_y temp.value += #animate_front_right_leg_rotation_y temp.value

scoreboard players operation #animate_front_left_leg_rotation_y temp.value *= #influence temp.value
scoreboard players operation #animate_front_left_leg_rotation_y temp.value /= #1000 nexus.value
scoreboard players operation #front_left_leg_rotation_y temp.value += #animate_front_left_leg_rotation_y temp.value

scoreboard players operation #animate_back_right_leg_rotation_y temp.value *= #influence temp.value
scoreboard players operation #animate_back_right_leg_rotation_y temp.value /= #1000 nexus.value
scoreboard players operation #back_right_leg_rotation_y temp.value += #animate_back_right_leg_rotation_y temp.value

scoreboard players operation #animate_back_left_leg_rotation_y temp.value *= #influence temp.value
scoreboard players operation #animate_back_left_leg_rotation_y temp.value /= #1000 nexus.value
scoreboard players operation #back_left_leg_rotation_y temp.value += #animate_back_left_leg_rotation_y temp.value







# Stop animation when influence timer is 0

execute if score #influence temp.value matches 0 run tag @s remove temp.entity.animate.walk