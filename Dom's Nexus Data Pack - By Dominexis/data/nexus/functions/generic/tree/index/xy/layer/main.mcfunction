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

scoreboard players operation #index_tree_range nexus.value = #index_tree_x_range nexus.value
scoreboard players operation #index_tree_range nexus.value > #index_tree_y_range nexus.value
scoreboard players operation #index_tree_range nexus.value %= #1024 nexus.value

execute if score #index_tree_range nexus.value matches 0000..0004 run function nexus:generic/tree/index/xy/layer/y/0
execute if score #index_tree_range nexus.value matches 0005..0016 run function nexus:generic/tree/index/xy/layer/y/1
execute if score #index_tree_range nexus.value matches 0017..0064 run function nexus:generic/tree/index/xy/layer/y/2
execute if score #index_tree_range nexus.value matches 0065..0256 run function nexus:generic/tree/index/xy/layer/y/3
execute if score #index_tree_range nexus.value matches 0257..1024 run function nexus:generic/tree/index/xy/layer/y/4