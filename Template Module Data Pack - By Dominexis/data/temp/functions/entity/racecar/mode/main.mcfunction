# Denullify mode value

execute unless score @s nexus.mode = @s nexus.mode run function temp:entity/racecar/mode/drive/start
execute unless score @s nexus.mode = @s nexus.mode run scoreboard players set @s nexus.mode 0







# Run function for specific mode

scoreboard players operation #mode nexus.value = @s nexus.mode

execute if score @s nexus.mode matches 00 run function temp:entity/racecar/mode/drive/main

scoreboard players operation @s nexus.mode = #mode nexus.value







# Set tick boolean

execute store result score @s nexus.tick_bool if score @s nexus.collide_y matches 0..