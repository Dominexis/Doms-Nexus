# Execute function tree

execute if score #index_tree_y_layer_1 nexus.value matches 0 if score #terminate_object_tick nexus.value matches 0 positioned ~000 ~000 ~000 run function nexus:generic/tree/index/zxy/layer/x/1
execute if score #index_tree_y_layer_1 nexus.value matches 1 if score #terminate_object_tick nexus.value matches 0 positioned ~000 ~004 ~000 run function nexus:generic/tree/index/zxy/layer/x/1
execute if score #index_tree_y_layer_1 nexus.value matches 2 if score #terminate_object_tick nexus.value matches 0 positioned ~000 ~008 ~000 run function nexus:generic/tree/index/zxy/layer/x/1
execute if score #index_tree_y_layer_1 nexus.value matches 3 if score #terminate_object_tick nexus.value matches 0 positioned ~000 ~012 ~000 run function nexus:generic/tree/index/zxy/layer/x/1