# Send death message if player died

execute if score @s nexus.death matches 1 if score #debug_death_messages nexus.value matches 1 run function nexus:player/death_message/verify







# Remove tag

tag @s remove nexus.player.death_check