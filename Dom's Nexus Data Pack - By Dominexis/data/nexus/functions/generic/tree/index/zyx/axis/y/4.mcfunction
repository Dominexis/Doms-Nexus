# Execute function tree

execute if score #index_tree_y_layer_4 nexus.value matches 0 if score #terminate_object_tick nexus.value matches 0 positioned ~000 ~000 ~000 run function nexus:generic/tree/index/zyx/axis/y/3
execute if score #index_tree_y_layer_4 nexus.value matches 1 if score #terminate_object_tick nexus.value matches 0 positioned ~000 ~256 ~000 run function nexus:generic/tree/index/zyx/axis/y/3
execute if score #index_tree_y_layer_4 nexus.value matches 2 if score #terminate_object_tick nexus.value matches 0 positioned ~000 ~512 ~000 run function nexus:generic/tree/index/zyx/axis/y/3
execute if score #index_tree_y_layer_4 nexus.value matches 3 if score #terminate_object_tick nexus.value matches 0 positioned ~000 ~768 ~000 run function nexus:generic/tree/index/zyx/axis/y/3