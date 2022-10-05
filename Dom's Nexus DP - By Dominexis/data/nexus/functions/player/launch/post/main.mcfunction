# Revoke advancement

advancement revoke @s only nexus:launch/post







# Manage gamemode

execute as @a[tag=nexus.player.launch.gamemode] run function nexus:player/launch/post/gamemode







# Manage entities

execute as @e[type=#nexus:family/mob,tag=nexus.entity.launch.invulnerable,distance=..16] run function nexus:player/launch/post/entity







# Stop sound

scoreboard players set @s nexus.stop_launch_sound 3
stopsound @a[distance=..32] block minecraft:entity.generic.explode