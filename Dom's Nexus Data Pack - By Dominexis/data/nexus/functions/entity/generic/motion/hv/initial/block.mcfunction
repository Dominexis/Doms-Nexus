# Check if hitbox intersects fluids or fire

execute if block ~ ~ ~ #nexus:generic/fluid run scoreboard players set #motion_fluid_boolean nexus.value 1
execute if block ~ ~ ~ #nexus:generic/fire run scoreboard players set #motion_fire_boolean nexus.value 1