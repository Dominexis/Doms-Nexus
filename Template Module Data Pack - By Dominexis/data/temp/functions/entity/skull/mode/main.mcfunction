# Denullify mode value

execute unless score @s nexus.mode = @s nexus.mode run function temp:entity/skull/mode/idle/start
execute unless score @s nexus.mode = @s nexus.mode run scoreboard players set @s nexus.mode 0







# Change mode based on preexisting conditions

scoreboard players operation #mode nexus.value = @s nexus.mode

execute if score @s nexus.mode matches 00 run function temp:entity/skull/mode/idle/mode
execute if score @s nexus.mode matches 01 run function temp:entity/skull/mode/pursue/mode

scoreboard players operation @s nexus.mode = #mode nexus.value







# Run function for specific mode

execute if score @s nexus.mode matches 00 run function temp:entity/skull/mode/idle/main
execute if score @s nexus.mode matches 01 run function temp:entity/skull/mode/pursue/main
execute if score @s nexus.mode matches 02 run function temp:entity/skull/mode/death/main

scoreboard players operation @s nexus.mode = #mode nexus.value