# Interpolation motion vector toward direction vector

scoreboard players operation #interpolation_location_x nexus.value = @s nexus.mot_x
scoreboard players operation #interpolation_location_y nexus.value = @s nexus.mot_z
scoreboard players operation #interpolation_destination_x nexus.value = #vector_x temp.value
scoreboard players operation #interpolation_destination_y nexus.value = #vector_z temp.value
scoreboard players operation #interpolation_destination_x nexus.value *= #speed temp.value
scoreboard players operation #interpolation_destination_y nexus.value *= #speed temp.value
scoreboard players operation #interpolation_destination_x nexus.value /= #1000 nexus.value
scoreboard players operation #interpolation_destination_y nexus.value /= #1000 nexus.value
execute if entity @s[tag=temp.entity.animate.attack] run scoreboard players operation #interpolation_destination_x nexus.value /= #2 nexus.value
execute if entity @s[tag=temp.entity.animate.attack] run scoreboard players operation #interpolation_destination_y nexus.value /= #2 nexus.value
scoreboard players set #interpolation_velocity_x nexus.value 0
scoreboard players set #interpolation_velocity_y nexus.value 0
scoreboard players set #interpolation_acceleration nexus.value 100
scoreboard players operation #interpolation_acceleration nexus.value *= #missed_ticks nexus.value
scoreboard players set #scale_factor nexus.value 1

function nexus:generic/interpolation/floating_point/2d

scoreboard players operation @s nexus.mot_x = #interpolation_location_x nexus.value
scoreboard players operation @s nexus.mot_z = #interpolation_location_y nexus.value