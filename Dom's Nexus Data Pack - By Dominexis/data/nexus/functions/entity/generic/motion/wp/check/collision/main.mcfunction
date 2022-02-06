# Run function based on nearest axis

execute if score #nearest_axis nexus.value matches 0 run function nexus:entity/generic/motion/wp/check/collision/x
execute if score #nearest_axis nexus.value matches 1 run function nexus:entity/generic/motion/wp/check/collision/y
execute if score #nearest_axis nexus.value matches 2 run function nexus:entity/generic/motion/wp/check/collision/z