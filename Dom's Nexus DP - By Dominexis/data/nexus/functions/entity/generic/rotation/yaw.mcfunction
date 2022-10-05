# Rotate toward target along yaw

scoreboard players set #interpolation_location nexus.value 0

scoreboard players operation #interpolation_destination nexus.value = #yaw nexus.value
scoreboard players operation #interpolation_destination nexus.value -= @s nexus.yaw
scoreboard players operation #interpolation_destination nexus.value %= #3600 nexus.value
execute if score #interpolation_destination nexus.value matches 1801.. run scoreboard players remove #interpolation_destination nexus.value 3600

scoreboard players operation #interpolation_velocity nexus.value = @s nexus.mot_yaw
scoreboard players operation #interpolation_acceleration nexus.value = #rotation_acceleration nexus.value

function nexus:generic/interpolation/floating_point/1d

scoreboard players operation @s nexus.yaw += #interpolation_location nexus.value
scoreboard players operation @s nexus.yaw %= #3600 nexus.value
scoreboard players operation @s nexus.mot_yaw = #interpolation_velocity nexus.value