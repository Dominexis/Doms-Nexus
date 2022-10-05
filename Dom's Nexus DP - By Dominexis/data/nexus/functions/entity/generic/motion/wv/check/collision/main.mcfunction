# Climb functionality

scoreboard players set #climb_amount nexus.value 0
execute if score #motion_climb_boolean nexus.value matches 1.. unless score #nearest_axis nexus.value matches 1 run function nexus:entity/generic/motion/wv/check/climb/main







# Run function based on nearest axis

execute if score #climb_amount nexus.value matches 0 if score #nearest_axis nexus.value matches 0 run function nexus:entity/generic/motion/wv/check/collision/x
execute if score #climb_amount nexus.value matches 0 if score #nearest_axis nexus.value matches 1 run function nexus:entity/generic/motion/wv/check/collision/y
execute if score #climb_amount nexus.value matches 0 if score #nearest_axis nexus.value matches 2 run function nexus:entity/generic/motion/wv/check/collision/z