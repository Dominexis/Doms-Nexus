# Rotate head toward target along yaw

scoreboard players set #interpolation_location nexus.value 0

scoreboard players operation #interpolation_destination nexus.value = #yaw nexus.value
scoreboard players operation #interpolation_destination nexus.value -= @s nexus.yaw
scoreboard players operation #interpolation_destination nexus.value %= #3600 nexus.value
execute if score #interpolation_destination nexus.value matches 1801.. run scoreboard players remove #interpolation_destination nexus.value 3600

scoreboard players operation #interpolation_velocity nexus.value = @s nexus.mot_yaw
scoreboard players operation #interpolation_acceleration nexus.value = #rotation_acceleration nexus.value

function nexus:generic/interpolation/floating_point/1d

scoreboard players operation @s nexus.yaw += #interpolation_location nexus.value
scoreboard players operation @s nexus.mot_yaw = #interpolation_velocity nexus.value







# Cap yaw at certain offset from anchor angle

scoreboard players operation @s nexus.yaw -= #yaw_anchor nexus.value
scoreboard players operation @s nexus.yaw %= #3600 nexus.value
execute if score @s nexus.yaw matches 1801.. run scoreboard players remove @s nexus.yaw 3600
execute if score @s nexus.yaw > #yaw_limit nexus.value run scoreboard players operation @s nexus.yaw = #yaw_limit nexus.value
scoreboard players operation #yaw_limit nexus.value *= #-1 nexus.value
execute if score @s nexus.yaw < #yaw_limit nexus.value run scoreboard players operation @s nexus.yaw = #yaw_limit nexus.value
scoreboard players operation #yaw_limit nexus.value *= #-1 nexus.value
scoreboard players operation @s nexus.yaw += #yaw_anchor nexus.value
scoreboard players operation @s nexus.yaw %= #3600 nexus.value







# Rotate head toward target along pitch

scoreboard players operation #interpolation_location nexus.value = @s nexus.pitch
scoreboard players operation #interpolation_destination nexus.value = #pitch nexus.value
scoreboard players operation #interpolation_velocity nexus.value = @s nexus.mot_pitch
scoreboard players operation #interpolation_acceleration nexus.value = #rotation_acceleration nexus.value

function nexus:generic/interpolation/floating_point/1d

scoreboard players operation @s nexus.pitch = #interpolation_location nexus.value
scoreboard players operation @s nexus.mot_pitch = #interpolation_velocity nexus.value