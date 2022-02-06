# Particles and sound

particle cloud ~ ~0.5 ~ 0.5 0.4 0.5 0.05 100







# Terminate entities

execute as @e[type=#temp:generic/entity,type=!#nexus:generic/system,distance=..16,tag=nexus.entity.target] run function nexus:entity/generic/terminate/main
kill @e[type=#temp:generic/entity,type=!#temp:generic/damage_sensor,distance=..16,tag=nexus.entity.target]