# Heal player if they are alive, in the right gamemode, and the hp timer is 0

execute unless entity @s[gamemode=!survival,gamemode=!adventure] unless score @s nexus.hp_time matches 1.. unless score @s nexus.death matches 1.. run function nexus:player/health/heal/main