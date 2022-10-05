# Compute axis

function nexus:generic/quaternion/to_axis







# Compute angular velocity

scoreboard players operation #output_angle nexus.value *= #3141 nexus.value
scoreboard players operation #output_angle nexus.value /= #1800 nexus.value

scoreboard players operation #output_ang_vel_x nexus.value = #output_axis_x nexus.value
scoreboard players operation #output_ang_vel_y nexus.value = #output_axis_y nexus.value
scoreboard players operation #output_ang_vel_z nexus.value = #output_axis_z nexus.value
scoreboard players operation #output_ang_vel_x nexus.value *= #output_angle nexus.value
scoreboard players operation #output_ang_vel_y nexus.value *= #output_angle nexus.value
scoreboard players operation #output_ang_vel_z nexus.value *= #output_angle nexus.value
scoreboard players operation #output_ang_vel_x nexus.value /= #1000 nexus.value
scoreboard players operation #output_ang_vel_y nexus.value /= #1000 nexus.value
scoreboard players operation #output_ang_vel_z nexus.value /= #1000 nexus.value