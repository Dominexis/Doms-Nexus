# Remove tags

effect clear @s[tag=nexus.player.motion] slow_falling
tag @s remove nexus.player.motion







# Reset deaths score

scoreboard players reset @s nexus.death







# Set hp time to 3 and 1/4 seconds

scoreboard players set @s nexus.hp_time 65







# Execute respawn functions

function #nexus:player/respawn