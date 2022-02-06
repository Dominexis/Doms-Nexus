# Iterate through space

scoreboard players operation #index_tree_x_layer_1 nexus.value *= #4 nexus.value
scoreboard players operation #index_tree_x nexus.value -= #index_tree_x_layer_1 nexus.value
scoreboard players set #index_tree_x_layer_1 nexus.value 0

scoreboard players add #index_tree_y nexus.value 16
scoreboard players add #index_tree_y_layer_2 nexus.value 1

execute if score #index_tree_range nexus.value matches ..16 run function nexus:generic/tree/index/yx/layer/end

scoreboard players set #index_tree_overflow_boolean nexus.value 0
execute if score #index_tree_y nexus.value < #index_tree_y_range nexus.value if score #index_tree_x nexus.value < #index_tree_x_range nexus.value run scoreboard players set #index_tree_overflow_boolean nexus.value 1
execute if score #index_tree_overflow_boolean nexus.value matches 0 run function nexus:generic/tree/index/yx/layer/block/y/2
execute if score #index_tree_y_layer_2 nexus.value matches 4.. run function nexus:generic/tree/index/yx/layer/block/y/2