# Split up layers of input

scoreboard players operation #index_tree_z_layer_0 nexus.value = #index_tree_z nexus.value
scoreboard players operation #index_tree_z_layer_0 nexus.value %= #4 nexus.value
scoreboard players operation #index_tree_z_layer_1 nexus.value = #index_tree_z nexus.value
scoreboard players operation #index_tree_z_layer_1 nexus.value /= #4 nexus.value
scoreboard players operation #index_tree_z_layer_1 nexus.value %= #4 nexus.value
scoreboard players operation #index_tree_z_layer_2 nexus.value = #index_tree_z nexus.value
scoreboard players operation #index_tree_z_layer_2 nexus.value /= #16 nexus.value
scoreboard players operation #index_tree_z_layer_2 nexus.value %= #4 nexus.value
scoreboard players operation #index_tree_z_layer_3 nexus.value = #index_tree_z nexus.value
scoreboard players operation #index_tree_z_layer_3 nexus.value /= #64 nexus.value
scoreboard players operation #index_tree_z_layer_3 nexus.value %= #4 nexus.value
scoreboard players operation #index_tree_z_layer_4 nexus.value = #index_tree_z nexus.value
scoreboard players operation #index_tree_z_layer_4 nexus.value /= #256 nexus.value
scoreboard players operation #index_tree_z_layer_4 nexus.value %= #4 nexus.value







# Set end boolean

scoreboard players set #index_tree_end nexus.value 0







# Execute function tree

function nexus:generic/tree/index/z/axis/z/4