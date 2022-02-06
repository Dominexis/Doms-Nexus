# Split up layers of input

scoreboard players operation #index_tree_x_layer_0 nexus.value = #index_tree_x nexus.value
scoreboard players operation #index_tree_x_layer_0 nexus.value %= #4 nexus.value
scoreboard players operation #index_tree_x_layer_1 nexus.value = #index_tree_x nexus.value
scoreboard players operation #index_tree_x_layer_1 nexus.value /= #4 nexus.value
scoreboard players operation #index_tree_x_layer_1 nexus.value %= #4 nexus.value
scoreboard players operation #index_tree_x_layer_2 nexus.value = #index_tree_x nexus.value
scoreboard players operation #index_tree_x_layer_2 nexus.value /= #16 nexus.value
scoreboard players operation #index_tree_x_layer_2 nexus.value %= #4 nexus.value
scoreboard players operation #index_tree_x_layer_3 nexus.value = #index_tree_x nexus.value
scoreboard players operation #index_tree_x_layer_3 nexus.value /= #64 nexus.value
scoreboard players operation #index_tree_x_layer_3 nexus.value %= #4 nexus.value
scoreboard players operation #index_tree_x_layer_4 nexus.value = #index_tree_x nexus.value
scoreboard players operation #index_tree_x_layer_4 nexus.value /= #256 nexus.value
scoreboard players operation #index_tree_x_layer_4 nexus.value %= #4 nexus.value

scoreboard players operation #index_tree_y_layer_0 nexus.value = #index_tree_y nexus.value
scoreboard players operation #index_tree_y_layer_0 nexus.value %= #4 nexus.value
scoreboard players operation #index_tree_y_layer_1 nexus.value = #index_tree_y nexus.value
scoreboard players operation #index_tree_y_layer_1 nexus.value /= #4 nexus.value
scoreboard players operation #index_tree_y_layer_1 nexus.value %= #4 nexus.value
scoreboard players operation #index_tree_y_layer_2 nexus.value = #index_tree_y nexus.value
scoreboard players operation #index_tree_y_layer_2 nexus.value /= #16 nexus.value
scoreboard players operation #index_tree_y_layer_2 nexus.value %= #4 nexus.value
scoreboard players operation #index_tree_y_layer_3 nexus.value = #index_tree_y nexus.value
scoreboard players operation #index_tree_y_layer_3 nexus.value /= #64 nexus.value
scoreboard players operation #index_tree_y_layer_3 nexus.value %= #4 nexus.value
scoreboard players operation #index_tree_y_layer_4 nexus.value = #index_tree_y nexus.value
scoreboard players operation #index_tree_y_layer_4 nexus.value /= #256 nexus.value
scoreboard players operation #index_tree_y_layer_4 nexus.value %= #4 nexus.value







# Set end boolean

scoreboard players set #index_tree_end nexus.value 0







# Execute function tree

function nexus:generic/tree/index/xy/axis/y/4