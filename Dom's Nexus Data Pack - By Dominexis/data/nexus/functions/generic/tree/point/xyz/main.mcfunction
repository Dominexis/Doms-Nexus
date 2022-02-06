# Split up layers of input

scoreboard players operation #point_tree_x_layer_0 nexus.value = #point_tree_x nexus.value
scoreboard players operation #point_tree_x_layer_0 nexus.value %= #4 nexus.value
scoreboard players operation #point_tree_x_layer_1 nexus.value = #point_tree_x nexus.value
scoreboard players operation #point_tree_x_layer_1 nexus.value /= #4 nexus.value
scoreboard players operation #point_tree_x_layer_1 nexus.value %= #4 nexus.value
scoreboard players operation #point_tree_x_layer_2 nexus.value = #point_tree_x nexus.value
scoreboard players operation #point_tree_x_layer_2 nexus.value /= #16 nexus.value
scoreboard players operation #point_tree_x_layer_2 nexus.value %= #4 nexus.value
scoreboard players operation #point_tree_x_layer_3 nexus.value = #point_tree_x nexus.value
scoreboard players operation #point_tree_x_layer_3 nexus.value /= #64 nexus.value
scoreboard players operation #point_tree_x_layer_3 nexus.value %= #4 nexus.value
scoreboard players operation #point_tree_x_layer_4 nexus.value = #point_tree_x nexus.value
scoreboard players operation #point_tree_x_layer_4 nexus.value /= #256 nexus.value
scoreboard players operation #point_tree_x_layer_4 nexus.value %= #4 nexus.value

scoreboard players operation #point_tree_y_layer_0 nexus.value = #point_tree_y nexus.value
scoreboard players operation #point_tree_y_layer_0 nexus.value %= #4 nexus.value
scoreboard players operation #point_tree_y_layer_1 nexus.value = #point_tree_y nexus.value
scoreboard players operation #point_tree_y_layer_1 nexus.value /= #4 nexus.value
scoreboard players operation #point_tree_y_layer_1 nexus.value %= #4 nexus.value
scoreboard players operation #point_tree_y_layer_2 nexus.value = #point_tree_y nexus.value
scoreboard players operation #point_tree_y_layer_2 nexus.value /= #16 nexus.value
scoreboard players operation #point_tree_y_layer_2 nexus.value %= #4 nexus.value
scoreboard players operation #point_tree_y_layer_3 nexus.value = #point_tree_y nexus.value
scoreboard players operation #point_tree_y_layer_3 nexus.value /= #64 nexus.value
scoreboard players operation #point_tree_y_layer_3 nexus.value %= #4 nexus.value
scoreboard players operation #point_tree_y_layer_4 nexus.value = #point_tree_y nexus.value
scoreboard players operation #point_tree_y_layer_4 nexus.value /= #256 nexus.value
scoreboard players operation #point_tree_y_layer_4 nexus.value %= #4 nexus.value

scoreboard players operation #point_tree_z_layer_0 nexus.value = #point_tree_z nexus.value
scoreboard players operation #point_tree_z_layer_0 nexus.value %= #4 nexus.value
scoreboard players operation #point_tree_z_layer_1 nexus.value = #point_tree_z nexus.value
scoreboard players operation #point_tree_z_layer_1 nexus.value /= #4 nexus.value
scoreboard players operation #point_tree_z_layer_1 nexus.value %= #4 nexus.value
scoreboard players operation #point_tree_z_layer_2 nexus.value = #point_tree_z nexus.value
scoreboard players operation #point_tree_z_layer_2 nexus.value /= #16 nexus.value
scoreboard players operation #point_tree_z_layer_2 nexus.value %= #4 nexus.value
scoreboard players operation #point_tree_z_layer_3 nexus.value = #point_tree_z nexus.value
scoreboard players operation #point_tree_z_layer_3 nexus.value /= #64 nexus.value
scoreboard players operation #point_tree_z_layer_3 nexus.value %= #4 nexus.value
scoreboard players operation #point_tree_z_layer_4 nexus.value = #point_tree_z nexus.value
scoreboard players operation #point_tree_z_layer_4 nexus.value /= #256 nexus.value
scoreboard players operation #point_tree_z_layer_4 nexus.value %= #4 nexus.value







# Execute function tree

scoreboard players operation #point_tree_range nexus.value = #point_tree_x nexus.value
scoreboard players operation #point_tree_range nexus.value > #point_tree_y nexus.value
scoreboard players operation #point_tree_range nexus.value > #point_tree_z nexus.value
scoreboard players operation #point_tree_range nexus.value %= #1024 nexus.value

execute if score #point_tree_range nexus.value matches 0000..0003 run function nexus:generic/tree/point/xyz/z/0
execute if score #point_tree_range nexus.value matches 0004..0015 run function nexus:generic/tree/point/xyz/z/1
execute if score #point_tree_range nexus.value matches 0016..0063 run function nexus:generic/tree/point/xyz/z/2
execute if score #point_tree_range nexus.value matches 0064..0255 run function nexus:generic/tree/point/xyz/z/3
execute if score #point_tree_range nexus.value matches 0256..1023 run function nexus:generic/tree/point/xyz/z/4