# Iterate through space

scoreboard players operation #index_tree_z_layer_4 nexus.value *= #256 nexus.value
scoreboard players operation #index_tree_z nexus.value -= #index_tree_z_layer_4 nexus.value
scoreboard players set #index_tree_z_layer_4 nexus.value 0

function nexus:generic/tree/index/xyz/layer/end