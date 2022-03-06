# Increment timer

scoreboard players operation #previous nexus.anim_time_06 = @s nexus.anim_time_06
scoreboard players operation @s nexus.anim_time_06 += #missed_ticks nexus.value
execute if score @s nexus.anim_time_06 matches 20.. run scoreboard players set @s nexus.anim_time_06 20







# Play sounds

execute if score #previous nexus.anim_time_06 matches ..09 if score @s nexus.anim_time_06 matches 10.. run playsound minecraft:entity.slime.squish hostile @a
execute if score #previous nexus.anim_time_06 matches ..19 if score @s nexus.anim_time_06 matches 20.. run playsound minecraft:entity.slime.squish hostile @a







# Initialize values

scoreboard players set #brain_position_y temp.value 0
scoreboard players set #brain_rotation_x temp.value 0

scoreboard players set #front_right_leg_rotation_x temp.value 0
scoreboard players set #front_left_leg_rotation_x temp.value 0
scoreboard players set #back_right_leg_rotation_x temp.value 0
scoreboard players set #back_left_leg_rotation_x temp.value 0







# Apply keyframes

execute if score @s nexus.anim_time_06 matches 00..10 run function temp:entity/spider_brain/animate/death/keyframe/brain/fall
execute if score @s nexus.anim_time_06 matches 11..15 run function temp:entity/spider_brain/animate/death/keyframe/brain/bounce
execute if score @s nexus.anim_time_06 matches 16..20 run function temp:entity/spider_brain/animate/death/keyframe/brain/settle

execute if score @s nexus.anim_time_06 matches 00..13 run function temp:entity/spider_brain/animate/death/keyframe/leg/collapse
execute if score @s nexus.anim_time_06 matches 14..17 run function temp:entity/spider_brain/animate/death/keyframe/leg/fall
execute if score @s nexus.anim_time_06 matches 18..20 run function temp:entity/spider_brain/animate/death/keyframe/leg/settle









# Merge animation with native values

scoreboard players operation #brain_position_y temp.value += #animate_brain_position_y temp.value
scoreboard players operation #brain_rotation_x temp.value += #animate_brain_rotation_x temp.value

scoreboard players operation #front_right_leg_rotation_x temp.value += #animate_front_right_leg_rotation_x temp.value
scoreboard players operation #front_left_leg_rotation_x temp.value += #animate_front_left_leg_rotation_x temp.value
scoreboard players operation #back_right_leg_rotation_x temp.value += #animate_back_right_leg_rotation_x temp.value
scoreboard players operation #back_left_leg_rotation_x temp.value += #animate_back_left_leg_rotation_x temp.value