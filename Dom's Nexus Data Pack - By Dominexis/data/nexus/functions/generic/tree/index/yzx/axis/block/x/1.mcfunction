# Iterate through space

scoreboard players set #index_tree_x_layer_1 nexus.value 0
scoreboard players add #index_tree_x_layer_2 nexus.value 1

execute if score #index_tree_x_layer_2 nexus.value matches 4.. run function nexus:generic/tree/index/yzx/axis/block/x/2