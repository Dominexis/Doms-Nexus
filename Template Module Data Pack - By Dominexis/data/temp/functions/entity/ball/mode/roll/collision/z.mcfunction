# Calculate surface motion

scoreboard players operation #input_vector_1_x nexus.value = @s nexus.ang_vel_x
scoreboard players operation #input_vector_1_y nexus.value = @s nexus.ang_vel_y
scoreboard players operation #input_vector_1_z nexus.value = @s nexus.ang_vel_z
scoreboard players set #input_vector_2_x nexus.value 0
scoreboard players set #input_vector_2_y nexus.value 0
scoreboard players set #input_vector_2_z nexus.value 375
execute if score @s nexus.collide_z matches -1 run scoreboard players set #input_vector_2_z nexus.value -375

function nexus:generic/vector/cross_product







# Apply angular force

scoreboard players operation #input_vector_2_x nexus.value = #output_vector_x nexus.value
scoreboard players operation #input_vector_2_y nexus.value = #output_vector_y nexus.value
scoreboard players operation #input_vector_2_z nexus.value = #output_vector_z nexus.value
scoreboard players operation #input_vector_2_x nexus.value += @s nexus.mot_x
scoreboard players operation #input_vector_2_y nexus.value += @s nexus.mot_y
scoreboard players operation #input_vector_2_z nexus.value += @s nexus.mot_z
scoreboard players operation #input_vector_2_x nexus.value *= #-1 nexus.value
scoreboard players operation #input_vector_2_y nexus.value *= #-1 nexus.value
scoreboard players operation #input_vector_2_z nexus.value *= #-1 nexus.value
scoreboard players operation #force_x temp.value = #input_vector_2_x nexus.value
scoreboard players operation #force_y temp.value = #input_vector_2_y nexus.value
scoreboard players operation #force_z temp.value = #input_vector_2_z nexus.value
scoreboard players operation #input_vector_2_x nexus.value *= #8 nexus.value
scoreboard players operation #input_vector_2_y nexus.value *= #8 nexus.value
scoreboard players operation #input_vector_2_z nexus.value *= #8 nexus.value

scoreboard players operation #input nexus.value = @s nexus.mot_z
execute if score #input nexus.value matches ..-1 run scoreboard players operation #input nexus.value *= #-1 nexus.value
scoreboard players set #amplitude nexus.value 1000
scoreboard players set #rate nexus.value 1500
function nexus:generic/limiter

scoreboard players operation #input_vector_2_x nexus.value *= #output nexus.value
scoreboard players operation #input_vector_2_y nexus.value *= #output nexus.value
scoreboard players operation #input_vector_2_z nexus.value *= #output nexus.value
scoreboard players operation #input_vector_2_x nexus.value /= #1000 nexus.value
scoreboard players operation #input_vector_2_y nexus.value /= #1000 nexus.value
scoreboard players operation #input_vector_2_z nexus.value /= #1000 nexus.value

scoreboard players set #input_vector_1_x nexus.value 0
scoreboard players set #input_vector_1_y nexus.value 0
scoreboard players set #input_vector_1_z nexus.value 375
execute if score @s nexus.collide_z matches -1 run scoreboard players set #input_vector_1_z nexus.value -375

function nexus:generic/vector/cross_product

scoreboard players operation @s nexus.ang_vel_x += #output_vector_x nexus.value
scoreboard players operation @s nexus.ang_vel_y += #output_vector_y nexus.value
scoreboard players operation @s nexus.ang_vel_z += #output_vector_z nexus.value







# Apply translational force

scoreboard players operation #force_x temp.value /= #20 nexus.value
scoreboard players operation #force_y temp.value /= #20 nexus.value
scoreboard players operation #force_z temp.value /= #20 nexus.value
execute if score #force_x temp.value matches ..-200 run scoreboard players set #temp temp.value -200
execute if score #force_y temp.value matches ..-200 run scoreboard players set #temp temp.value -200
execute if score #force_z temp.value matches ..-200 run scoreboard players set #temp temp.value -200
execute if score #force_x temp.value matches 0200.. run scoreboard players set #temp temp.value 200
execute if score #force_y temp.value matches 0200.. run scoreboard players set #temp temp.value 200
execute if score #force_z temp.value matches 0200.. run scoreboard players set #temp temp.value 200
scoreboard players operation @s nexus.mot_x += #force_x temp.value
scoreboard players operation @s nexus.mot_y += #force_y temp.value
scoreboard players operation @s nexus.mot_z += #force_z temp.value







# Apply friction to angular velocity

scoreboard players operation #friction_numerator nexus.value *= #collision_friction_numerator nexus.value
scoreboard players operation #friction_numerator nexus.value /= #friction_denominator nexus.value







# Play sound

execute if score @s nexus.mot_z matches 0500.. run playsound minecraft:entity.generic.small_fall neutral @a ~ ~ ~
execute if score @s nexus.mot_z matches ..-500 run playsound minecraft:entity.generic.small_fall neutral @a ~ ~ ~







# Invert axial motion

scoreboard players operation @s nexus.mot_z *= #-1 nexus.value