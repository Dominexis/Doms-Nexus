# Modify health score from current health

scoreboard players operation #previous nexus.health = @s nexus.health
function nexus:entity/generic/data/extract/objective
scoreboard players operation @s nexus.health < #previous nexus.health







# Reassign max health

effect give @s[type=!#nexus:family/undead] instant_health 1 124 true
effect give @s[type= #nexus:family/undead] instant_damage 1 124 true