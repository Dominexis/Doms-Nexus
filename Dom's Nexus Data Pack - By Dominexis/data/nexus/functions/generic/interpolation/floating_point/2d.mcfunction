# Get distance

scoreboard players operation #interpolation_distance_x nexus.value = #interpolation_destination_x nexus.value
scoreboard players operation #interpolation_distance_y nexus.value = #interpolation_destination_y nexus.value
scoreboard players operation #interpolation_distance_x nexus.value -= #interpolation_location_x nexus.value
scoreboard players operation #interpolation_distance_y nexus.value -= #interpolation_location_y nexus.value

scoreboard players operation #math_interpolation_0 nexus.value = #interpolation_distance_x nexus.value
scoreboard players operation #math_interpolation_1 nexus.value = #interpolation_distance_y nexus.value
scoreboard players operation #math_interpolation_0 nexus.value /= #scale_factor nexus.value
scoreboard players operation #math_interpolation_1 nexus.value /= #scale_factor nexus.value
scoreboard players operation #math_interpolation_0 nexus.value *= #math_interpolation_0 nexus.value
scoreboard players operation #math_interpolation_1 nexus.value *= #math_interpolation_1 nexus.value

scoreboard players operation #input nexus.value = #math_interpolation_0 nexus.value
scoreboard players operation #input nexus.value += #math_interpolation_1 nexus.value
function nexus:generic/root/radical/square

scoreboard players operation #interpolation_distance nexus.value = #output nexus.value
scoreboard players operation #interpolation_distance nexus.value *= #scale_factor nexus.value







# Apply acceleration to velocity

scoreboard players operation #interpolation_acceleration_x nexus.value = #interpolation_distance_x nexus.value
scoreboard players operation #interpolation_acceleration_y nexus.value = #interpolation_distance_y nexus.value
scoreboard players operation #interpolation_acceleration_x nexus.value *= #interpolation_acceleration nexus.value
scoreboard players operation #interpolation_acceleration_y nexus.value *= #interpolation_acceleration nexus.value
scoreboard players operation #interpolation_acceleration_x nexus.value /= #interpolation_distance nexus.value
scoreboard players operation #interpolation_acceleration_y nexus.value /= #interpolation_distance nexus.value

scoreboard players operation #interpolation_velocity_x nexus.value += #interpolation_acceleration_x nexus.value
scoreboard players operation #interpolation_velocity_y nexus.value += #interpolation_acceleration_y nexus.value







# Compute absolute value of velocity

scoreboard players operation #math_interpolation_0 nexus.value = #interpolation_velocity_x nexus.value
scoreboard players operation #math_interpolation_1 nexus.value = #interpolation_velocity_y nexus.value
scoreboard players operation #math_interpolation_0 nexus.value /= #scale_factor nexus.value
scoreboard players operation #math_interpolation_1 nexus.value /= #scale_factor nexus.value
scoreboard players operation #math_interpolation_0 nexus.value *= #math_interpolation_0 nexus.value
scoreboard players operation #math_interpolation_1 nexus.value *= #math_interpolation_1 nexus.value

scoreboard players operation #input nexus.value = #math_interpolation_0 nexus.value
scoreboard players operation #input nexus.value += #math_interpolation_1 nexus.value
function nexus:generic/root/radical/square

scoreboard players operation #interpolation_velocity nexus.value = #output nexus.value
scoreboard players operation #interpolation_velocity nexus.value *= #scale_factor nexus.value







# Compute coefficient

scoreboard players operation #interpolation_numerator nexus.value = #interpolation_distance nexus.value
scoreboard players operation #interpolation_denominator nexus.value = #interpolation_velocity nexus.value

scoreboard players operation #interpolation_denominator nexus.value += #interpolation_numerator nexus.value







# Apply coefficient

scoreboard players operation #interpolation_velocity_x nexus.value *= #interpolation_numerator nexus.value
scoreboard players operation #interpolation_velocity_y nexus.value *= #interpolation_numerator nexus.value
scoreboard players operation #interpolation_velocity_x nexus.value /= #interpolation_denominator nexus.value
scoreboard players operation #interpolation_velocity_y nexus.value /= #interpolation_denominator nexus.value







# Apply motion

scoreboard players operation #interpolation_location_x nexus.value += #interpolation_velocity_x nexus.value
scoreboard players operation #interpolation_location_y nexus.value += #interpolation_velocity_y nexus.value