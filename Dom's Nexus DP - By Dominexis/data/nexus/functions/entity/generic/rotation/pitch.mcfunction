# Rotate toward target along pitch

scoreboard players operation #interpolation_location nexus.value = @s nexus.pitch
scoreboard players operation #interpolation_destination nexus.value = #pitch nexus.value
scoreboard players operation #interpolation_velocity nexus.value = @s nexus.mot_pitch
scoreboard players operation #interpolation_acceleration nexus.value = #rotation_acceleration nexus.value

function nexus:generic/interpolation/floating_point/1d

scoreboard players operation @s nexus.pitch = #interpolation_location nexus.value
scoreboard players operation @s nexus.mot_pitch = #interpolation_velocity nexus.value