# Revoke advancement

advancement revoke @s only nexus:launch/pre







# Manage gamemode

scoreboard players set @s[gamemode=survival ] nexus.gamemode 0
scoreboard players set @s[gamemode=creative ] nexus.gamemode 1
scoreboard players set @s[gamemode=adventure] nexus.gamemode 2
scoreboard players set @s[gamemode=spectator] nexus.gamemode 3

gamemode creative @s

tag @s add nexus.player.launch.target
execute as @a[tag=!nexus.player.launch.target,distance=..5] run function nexus:player/launch/pre/gamemode
tag @s remove nexus.player.launch.target







# Manage entities

execute as @e[type=#nexus:family/mob,distance=..5] run function nexus:player/launch/pre/entity







# Teleport down all the creepers

scoreboard players operation #local nexus.id = @s nexus.id
execute positioned ~ ~8192 ~ as @e[type=creeper,distance=..4,tag=nexus.launch] if score @s nexus.id = #local nexus.id at @s run tp @s ~ ~-8192 ~