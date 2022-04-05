# Stop motion if the ticks become desynchronized

execute unless score @s nexus.mot_ticks = #global nexus.ticks run effect clear @s[tag=nexus.player.motion] slow_falling
execute unless score @s nexus.mot_ticks = #global nexus.ticks run tag @s remove nexus.player.motion