# Revoke advancement

advancement revoke @s only nexus:launch/post







# Manage gamemode

gamemode survival @s
gamemode survival @s[ scores={nexus.gamemode=0}]
gamemode creative @s[ scores={nexus.gamemode=1}]
gamemode adventure @s[scores={nexus.gamemode=2}]
gamemode spectator @s[scores={nexus.gamemode=3}]

execute as @a[tag=nexus.player.launch.gamemode] run function nexus:player/launch/post/gamemode







# Manage entities

execute as @e[type=#nexus:family/mob,distance=..16,tag=nexus.entity.launch.invulnerable] run function nexus:player/launch/post/entity







# Stop sound

scoreboard players set @s nexus.stop_launch_sound 3
stopsound @a[distance=..32] block minecraft:entity.generic.explode