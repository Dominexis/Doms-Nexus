# Execute function tree

execute if score #index_tree_z_layer_4 nexus.value matches 0 if score #terminate_object_tick nexus.value matches 0 positioned ~000 ~000 ~000 run function nexus:generic/tree/index/xyz/layer/y/4
execute if score #index_tree_z_layer_4 nexus.value matches 1 if score #terminate_object_tick nexus.value matches 0 positioned ~000 ~000 ~256 run function nexus:generic/tree/index/xyz/layer/y/4
execute if score #index_tree_z_layer_4 nexus.value matches 2 if score #terminate_object_tick nexus.value matches 0 positioned ~000 ~000 ~512 run function nexus:generic/tree/index/xyz/layer/y/4
execute if score #index_tree_z_layer_4 nexus.value matches 3 if score #terminate_object_tick nexus.value matches 0 positioned ~000 ~000 ~768 run function nexus:generic/tree/index/xyz/layer/y/4