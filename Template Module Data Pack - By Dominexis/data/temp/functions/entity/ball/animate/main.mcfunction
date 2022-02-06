# Rotate ball if angular velocity is not 0

execute unless entity @s[scores={nexus.ang_vel_x=0,nexus.ang_vel_y=0,nexus.ang_vel_z=0}] run function temp:entity/ball/animate/rotate