# Run function at position

function #nexus:generic/tree/index







# Iterate through space

scoreboard players add #index_tree_z nexus.value 1
scoreboard players add #index_tree_z_layer_0 nexus.value 1

execute if score #index_tree_z nexus.value < #index_tree_z_range nexus.value if score #index_tree_z_layer_0 nexus.value matches 4.. run function nexus:generic/tree/index/zy/axis/block/z/0
execute if score #index_tree_z nexus.value >= #index_tree_z_range nexus.value run function nexus:generic/tree/index/zy/axis/block/z/main







# Check tick

function nexus:object/check_tick