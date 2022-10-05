# Send Nexus death messages

execute if score @s nexus.source matches 000000000..000099999 run function nexus:player/death_message/main







# Send death message

execute unless score @s nexus.source matches 000000000..000099999 run function #nexus:player/death_message