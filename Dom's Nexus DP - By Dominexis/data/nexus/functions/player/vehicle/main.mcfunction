# Enter/exit vehicle functionality

execute if entity @s[predicate= nexus:player/vehicle/unoccupied,tag=!nexus.player.vehicle] run function nexus:player/vehicle/enter/main
execute if entity @s[predicate=!nexus:player/vehicle/occupied  ,tag= nexus.player.vehicle] run function nexus:player/vehicle/exit







# Run vehicle function

execute if entity @s[tag=nexus.player.vehicle] run function #nexus:player/vehicle/main