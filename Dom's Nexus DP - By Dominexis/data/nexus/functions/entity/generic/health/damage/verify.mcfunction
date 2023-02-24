# Extract NBT

function nexus:entity/generic/data/extract/objective







# Damage mob if hp timer is 0 and not invulnerable

execute unless score @s nexus.hp_time matches 1.. if score @s nexus.invulnerable matches 0 run function nexus:entity/generic/health/damage/main