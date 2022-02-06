# Denullify mode value

execute unless score @s nexus.mode = @s nexus.mode run function temp:entity/ball/mode/roll/start
execute unless score @s nexus.mode = @s nexus.mode run scoreboard players set @s nexus.mode 0







# Run function for specific mode

scoreboard players operation #mode nexus.value = @s nexus.mode

execute if score @s nexus.mode matches 00 run function temp:entity/ball/mode/roll/main

scoreboard players operation @s nexus.mode = #mode nexus.value







# Set tick boolean

scoreboard players set @s nexus.tick_bool 0
execute unless entity @s[scores={nexus.mot_x=0,nexus.mot_y=0..60,nexus.mot_z=0,nexus.ang_vel_x=0,nexus.ang_vel_y=0,nexus.ang_vel_z=0}] run scoreboard players set @s nexus.tick_bool 1