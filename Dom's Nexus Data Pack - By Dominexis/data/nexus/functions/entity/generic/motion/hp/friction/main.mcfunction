# Compute friction

scoreboard players set #total_friction nexus.value 1000
scoreboard players operation #total_friction nexus.value *= #friction_numerator nexus.value
scoreboard players operation #total_friction nexus.value /= #friction_denominator nexus.value

execute if score @s nexus.collide matches 1 run function nexus:entity/generic/motion/hp/friction/collision
execute if score #motion_fluid_boolean nexus.value matches 1 run function nexus:entity/generic/motion/hp/friction/fluid
execute if score #motion_destroyed_boolean nexus.value matches 1 run function nexus:entity/generic/motion/hp/friction/destroy







# Apply friction

function nexus:entity/generic/motion/hp/friction/apply
execute if score #missed_ticks nexus.value matches 2.. if score #motion_missed_ticks_boolean nexus.value matches 1 run function nexus:entity/generic/motion/hp/friction/apply
execute if score #missed_ticks nexus.value matches 3.. if score #motion_missed_ticks_boolean nexus.value matches 1 run function nexus:entity/generic/motion/hp/friction/apply
execute if score #missed_ticks nexus.value matches 4.. if score #motion_missed_ticks_boolean nexus.value matches 1 run function nexus:entity/generic/motion/hp/friction/apply
execute if score #missed_ticks nexus.value matches 5.. if score #motion_missed_ticks_boolean nexus.value matches 1 run function nexus:entity/generic/motion/hp/friction/apply