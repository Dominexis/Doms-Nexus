# Iterate through space

scoreboard players operation #index_tree_z_layer_1 nexus.value *= #4 nexus.value
scoreboard players operation #index_tree_z nexus.value -= #index_tree_z_layer_1 nexus.value
scoreboard players set #index_tree_z_layer_1 nexus.value 0

scoreboard players add #index_tree_y nexus.value 4
scoreboard players add #index_tree_y_layer_1 nexus.value 1

scoreboard players set #index_tree_overflow_boolean nexus.value 0
execute if score #index_tree_z nexus.value < #index_tree_z_range nexus.value if score #index_tree_y nexus.value < #index_tree_y_range nexus.value run scoreboard players set #index_tree_overflow_boolean nexus.value 1
execute if score #index_tree_overflow_boolean nexus.value matches 0 run function nexus:generic/tree/index/zy/layer/block/y/1
execute if score #index_tree_y_layer_1 nexus.value matches 4.. run function nexus:generic/tree/index/zy/layer/block/y/1