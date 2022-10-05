# Extract values

function nexus:entity/generic/data/extract/fakeplayer/mot_rot







# Disable detection if not moving

scoreboard players set #moving_boolean nexus.value 1
execute if score #entity_mot_x nexus.value matches -10..10 if score #entity_mot_z nexus.value matches -10..10 run scoreboard players set #moving_boolean nexus.value 0







# Compute angle of motion vector

scoreboard players operation #input_vector_x nexus.value = #entity_mot_x nexus.value
scoreboard players operation #input_vector_z nexus.value = #entity_mot_z nexus.value

execute if score #moving_boolean nexus.value matches 1 run function nexus:generic/vector/to_gimbal/2d/yaw

scoreboard players operation #output_yaw nexus.value -= #entity_yaw nexus.value
scoreboard players operation #output_yaw nexus.value %= #3600 nexus.value







# Set key values

scoreboard players set @s nexus.wasd_w 0
scoreboard players set @s nexus.wasd_a 0
scoreboard players set @s nexus.wasd_s 0
scoreboard players set @s nexus.wasd_d 0

execute if score #moving_boolean nexus.value matches 1 if score #output_yaw nexus.value matches 3000..3600 run scoreboard players set @s nexus.wasd_w 1
execute if score #moving_boolean nexus.value matches 1 if score #output_yaw nexus.value matches 0000..0600 run scoreboard players set @s nexus.wasd_w 1
execute if score #moving_boolean nexus.value matches 1 if score #output_yaw nexus.value matches 0300..1500 run scoreboard players set @s nexus.wasd_d 1
execute if score #moving_boolean nexus.value matches 1 if score #output_yaw nexus.value matches 1200..2400 run scoreboard players set @s nexus.wasd_s 1
execute if score #moving_boolean nexus.value matches 1 if score #output_yaw nexus.value matches 2100..3300 run scoreboard players set @s nexus.wasd_a 1

scoreboard players operation #wasd_control_w nexus.value = @s nexus.wasd_w
scoreboard players operation #wasd_control_a nexus.value = @s nexus.wasd_a
scoreboard players operation #wasd_control_s nexus.value = @s nexus.wasd_s
scoreboard players operation #wasd_control_d nexus.value = @s nexus.wasd_d