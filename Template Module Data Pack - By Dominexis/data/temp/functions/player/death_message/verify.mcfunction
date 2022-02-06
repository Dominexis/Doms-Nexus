# Check that the damage source is within the module's range

execute if score @s nexus.source matches 999900..999999 run function temp:player/death_message/main