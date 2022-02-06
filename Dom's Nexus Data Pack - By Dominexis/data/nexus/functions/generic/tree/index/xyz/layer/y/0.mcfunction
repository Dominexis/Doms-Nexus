# Execute function tree

execute if score #index_tree_y_layer_0 nexus.value matches 0 if score #terminate_object_tick nexus.value matches 0 positioned ~000 ~000 ~000 run function nexus:generic/tree/index/xyz/layer/x/0
execute if score #index_tree_y_layer_0 nexus.value matches 1 if score #terminate_object_tick nexus.value matches 0 positioned ~000 ~001 ~000 run function nexus:generic/tree/index/xyz/layer/x/0
execute if score #index_tree_y_layer_0 nexus.value matches 2 if score #terminate_object_tick nexus.value matches 0 positioned ~000 ~002 ~000 run function nexus:generic/tree/index/xyz/layer/x/0
execute if score #index_tree_y_layer_0 nexus.value matches 3 if score #terminate_object_tick nexus.value matches 0 positioned ~000 ~003 ~000 run function nexus:generic/tree/index/xyz/layer/x/0