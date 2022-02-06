# Execute function at layer

scoreboard players add #subblock_y nexus.value 1
execute if score #climb_amount nexus.value matches 1.. positioned ~ ~0.5 ~ run function nexus:entity/generic/motion/hv/check/climb/x
scoreboard players add #subblock_y nexus.value 1
execute if score #climb_amount nexus.value matches 2.. positioned ~ ~1.0 ~ run function nexus:entity/generic/motion/hv/check/climb/x