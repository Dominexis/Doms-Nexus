# Get distance

scoreboard players operation #interpolation_distance nexus.value = #interpolation_destination nexus.value
scoreboard players operation #interpolation_distance nexus.value -= #interpolation_location nexus.value







# Apply acceleration to velocity

execute if score #interpolation_distance nexus.value matches ..-1 run scoreboard players operation #interpolation_velocity nexus.value -= #interpolation_acceleration nexus.value
execute if score #interpolation_distance nexus.value matches 01.. run scoreboard players operation #interpolation_velocity nexus.value += #interpolation_acceleration nexus.value







# Compute coefficient

scoreboard players operation #interpolation_numerator nexus.value = #interpolation_distance nexus.value
scoreboard players operation #interpolation_denominator nexus.value = #interpolation_velocity nexus.value

execute if score #interpolation_numerator nexus.value matches ..-1 run scoreboard players operation #interpolation_numerator nexus.value *= #-1 nexus.value
execute if score #interpolation_denominator nexus.value matches ..-1 run scoreboard players operation #interpolation_denominator nexus.value *= #-1 nexus.value

scoreboard players operation #interpolation_denominator nexus.value += #interpolation_numerator nexus.value







# Apply coefficient

scoreboard players operation #interpolation_velocity nexus.value *= #interpolation_numerator nexus.value
scoreboard players operation #interpolation_velocity nexus.value /= #interpolation_denominator nexus.value







# Apply motion

scoreboard players operation #interpolation_location nexus.value += #interpolation_velocity nexus.value