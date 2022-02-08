# Heal player if they are alive, in the right gamemode, and the hp timer is 0

execute unless entity @s[gamemode=!survival,gamemode=!adventure] unless score @s nexus.hp_time matches 1.. if entity @s[tag=!nexus.player.dead] run function nexus:player/health/heal/main