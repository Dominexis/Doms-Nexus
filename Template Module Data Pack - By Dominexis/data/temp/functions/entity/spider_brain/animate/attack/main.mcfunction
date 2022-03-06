# Increment timer

scoreboard players operation #previous nexus.anim_time_04 = @s nexus.anim_time_04
scoreboard players operation @s nexus.anim_time_04 += #missed_ticks nexus.value
execute if score @s nexus.anim_time_04 matches 20.. run scoreboard players set @s nexus.anim_time_04 20







# Apply 1-second cosine wave to bones

scoreboard players operation #input nexus.value = @s nexus.anim_time_04
scoreboard players operation #input nexus.value *= #180 nexus.value
scoreboard players operation #input nexus.value *= #input nexus.value
scoreboard players operation #input nexus.value /= #2500 nexus.value
scoreboard players operation #input nexus.value *= #3600 nexus.value
scoreboard players operation #input nexus.value /= #2500 nexus.value
execute if score #input nexus.value matches 3600.. run scoreboard players set #input nexus.value 3600

function nexus:generic/trigonometry/cosine

scoreboard players operation #wave temp.value = #output nexus.value
scoreboard players remove #wave temp.value 1000
scoreboard players operation #wave temp.value /= #2 nexus.value

scoreboard players operation #animate_front_right_leg_rotation_x temp.value = #wave temp.value
scoreboard players operation #animate_front_left_leg_rotation_x temp.value = #wave temp.value







# Apply sine waves to bones

scoreboard players operation #input nexus.value = @s nexus.anim_time_04
scoreboard players operation #input nexus.value *= #90 nexus.value

function nexus:generic/trigonometry/sine

scoreboard players operation #wave temp.value = #output nexus.value

scoreboard players operation #input nexus.value = @s nexus.anim_time_04
scoreboard players operation #input nexus.value *= #180 nexus.value

function nexus:generic/trigonometry/sine

scoreboard players operation #wave temp.value *= #output nexus.value
scoreboard players operation #wave temp.value /= #1000 nexus.value
scoreboard players operation #wave temp.value /= #2 nexus.value

scoreboard players operation #animate_front_right_leg_rotation_y temp.value = #wave temp.value
scoreboard players operation #wave temp.value *= #-1 nexus.value
scoreboard players operation #animate_front_left_leg_rotation_y temp.value = #wave temp.value

scoreboard players operation #wave temp.value /= #2 nexus.value
scoreboard players operation #animate_brain_rotation_x temp.value = #wave temp.value
scoreboard players operation #wave temp.value *= #-1 nexus.value
scoreboard players operation #animate_brain_position_y temp.value = #wave temp.value







# Merge animation with native values

scoreboard players operation #brain_position_y temp.value += #animate_brain_position_y temp.value
scoreboard players operation #brain_rotation_x temp.value += #animate_brain_rotation_x temp.value

scoreboard players operation #front_right_leg_rotation_x temp.value += #animate_front_right_leg_rotation_x temp.value
scoreboard players operation #front_left_leg_rotation_x temp.value += #animate_front_left_leg_rotation_x temp.value
scoreboard players operation #back_right_leg_rotation_x temp.value += #animate_back_right_leg_rotation_x temp.value
scoreboard players operation #back_left_leg_rotation_x temp.value += #animate_back_left_leg_rotation_x temp.value
scoreboard players operation #front_right_leg_rotation_y temp.value += #animate_front_right_leg_rotation_y temp.value
scoreboard players operation #front_left_leg_rotation_y temp.value += #animate_front_left_leg_rotation_y temp.value
scoreboard players operation #back_right_leg_rotation_y temp.value += #animate_back_right_leg_rotation_y temp.value
scoreboard players operation #back_left_leg_rotation_y temp.value += #animate_back_left_leg_rotation_y temp.value







# Temporal effects

scoreboard players set #damage_amount nexus.value 4000
scoreboard players set #damage_source nexus.value 999900002
scoreboard players set #damage_armor_boolean nexus.value 1
scoreboard players set #damage_burn_boolean nexus.value 0

execute if score #previous nexus.anim_time_04 matches ..12 if score @s nexus.anim_time_04 matches 13.. as @a[distance=..3] run function nexus:player/health/damage/verify
execute if score #previous nexus.anim_time_04 matches ..12 if score @s nexus.anim_time_04 matches 13.. run playsound minecraft:entity.blaze.hurt hostile @a







# Stop animation when timer hits the end

execute if score @s nexus.anim_time_04 matches 20.. run tag @s remove temp.entity.animate.attack