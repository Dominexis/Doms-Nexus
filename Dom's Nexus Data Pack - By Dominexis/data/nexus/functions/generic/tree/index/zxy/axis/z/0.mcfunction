# Execute function tree

execute if score #index_tree_z_layer_0 nexus.value matches 0 if score #terminate_object_tick nexus.value matches 0 positioned ~000 ~000 ~000 run function nexus:generic/tree/index/zxy/axis/block/main
execute if score #index_tree_z_layer_0 nexus.value matches 1 if score #terminate_object_tick nexus.value matches 0 positioned ~000 ~000 ~001 run function nexus:generic/tree/index/zxy/axis/block/main
execute if score #index_tree_z_layer_0 nexus.value matches 2 if score #terminate_object_tick nexus.value matches 0 positioned ~000 ~000 ~002 run function nexus:generic/tree/index/zxy/axis/block/main
execute if score #index_tree_z_layer_0 nexus.value matches 3 if score #terminate_object_tick nexus.value matches 0 positioned ~000 ~000 ~003 run function nexus:generic/tree/index/zxy/axis/block/main