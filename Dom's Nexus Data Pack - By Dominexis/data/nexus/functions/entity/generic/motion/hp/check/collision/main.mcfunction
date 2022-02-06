# Run function based on nearest axis

execute if score #nearest_axis nexus.value matches 0 run function nexus:entity/generic/motion/hp/check/collision/x
execute if score #nearest_axis nexus.value matches 1 run function nexus:entity/generic/motion/hp/check/collision/y
execute if score #nearest_axis nexus.value matches 2 run function nexus:entity/generic/motion/hp/check/collision/z