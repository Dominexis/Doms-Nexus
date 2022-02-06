# Reset positions and rotations of the bones

scoreboard players set #brain_position_x temp.value 0
scoreboard players set #brain_position_y temp.value 0
scoreboard players set #brain_position_z temp.value 0
scoreboard players set #brain_rotation_x temp.value 0
scoreboard players set #brain_rotation_y temp.value 0
scoreboard players set #brain_rotation_z temp.value 0

scoreboard players set #front_right_leg_position_x temp.value 0
scoreboard players set #front_right_leg_position_y temp.value 0
scoreboard players set #front_right_leg_position_z temp.value 0
scoreboard players set #front_right_leg_rotation_x temp.value 0
scoreboard players set #front_right_leg_rotation_y temp.value 450
scoreboard players set #front_right_leg_rotation_z temp.value 0

scoreboard players set #front_left_leg_position_x temp.value 0
scoreboard players set #front_left_leg_position_y temp.value 0
scoreboard players set #front_left_leg_position_z temp.value 0
scoreboard players set #front_left_leg_rotation_x temp.value 0
scoreboard players set #front_left_leg_rotation_y temp.value -450
scoreboard players set #front_left_leg_rotation_z temp.value 0

scoreboard players set #back_right_leg_position_x temp.value 0
scoreboard players set #back_right_leg_position_y temp.value 0
scoreboard players set #back_right_leg_position_z temp.value 0
scoreboard players set #back_right_leg_rotation_x temp.value 0
scoreboard players set #back_right_leg_rotation_y temp.value 1350
scoreboard players set #back_right_leg_rotation_z temp.value 0

scoreboard players set #back_left_leg_position_x temp.value 0
scoreboard players set #back_left_leg_position_y temp.value 0
scoreboard players set #back_left_leg_position_z temp.value 0
scoreboard players set #back_left_leg_rotation_x temp.value 0
scoreboard players set #back_left_leg_rotation_y temp.value -1350
scoreboard players set #back_left_leg_rotation_z temp.value 0







# Modify values based on rotation of entity

scoreboard players operation #brain_rotation_y temp.value += @s nexus.yaw
scoreboard players operation #brain_rotation_x temp.value += @s nexus.pitch
scoreboard players operation #front_right_leg_rotation_y temp.value += @s nexus.yaw
scoreboard players operation #front_left_leg_rotation_y temp.value += @s nexus.yaw
scoreboard players operation #back_right_leg_rotation_y temp.value += @s nexus.yaw
scoreboard players operation #back_left_leg_rotation_y temp.value += @s nexus.yaw







# Play animations

execute if entity @s[tag=temp.entity.animate.idle  ] run function temp:entity/spider_brain/animate/idle/main
execute if entity @s[tag=temp.entity.animate.walk  ] run function temp:entity/spider_brain/animate/walk/main
execute if entity @s[tag=temp.entity.animate.jump  ] run function temp:entity/spider_brain/animate/jump/main
execute if entity @s[tag=temp.entity.animate.land  ] run function temp:entity/spider_brain/animate/land/main
execute if entity @s[tag=temp.entity.animate.attack] run function temp:entity/spider_brain/animate/attack/main
execute if entity @s[tag=temp.entity.animate.damage] run function temp:entity/spider_brain/animate/damage/main
execute if entity @s[tag=temp.entity.animate.death ] run function temp:entity/spider_brain/animate/death/main