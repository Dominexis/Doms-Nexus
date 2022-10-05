# Execute function based on score

execute if score #offset_z nexus.value matches -5 positioned ~ ~ ~-2.50 run function nexus:entity/generic/motion/hv/position/align
execute if score #offset_z nexus.value matches -4 positioned ~ ~ ~-2.00 run function nexus:entity/generic/motion/hv/position/align
execute if score #offset_z nexus.value matches -3 positioned ~ ~ ~-1.50 run function nexus:entity/generic/motion/hv/position/align
execute if score #offset_z nexus.value matches -2 positioned ~ ~ ~-1.00 run function nexus:entity/generic/motion/hv/position/align
execute if score #offset_z nexus.value matches -1 positioned ~ ~ ~-0.50 run function nexus:entity/generic/motion/hv/position/align
execute if score #offset_z nexus.value matches 00 positioned ~ ~ ~00.00 run function nexus:entity/generic/motion/hv/position/align
execute if score #offset_z nexus.value matches 01 positioned ~ ~ ~00.50 run function nexus:entity/generic/motion/hv/position/align
execute if score #offset_z nexus.value matches 02 positioned ~ ~ ~01.00 run function nexus:entity/generic/motion/hv/position/align
execute if score #offset_z nexus.value matches 03 positioned ~ ~ ~01.50 run function nexus:entity/generic/motion/hv/position/align
execute if score #offset_z nexus.value matches 04 positioned ~ ~ ~02.00 run function nexus:entity/generic/motion/hv/position/align
execute if score #offset_z nexus.value matches 05 positioned ~ ~ ~02.50 run function nexus:entity/generic/motion/hv/position/align