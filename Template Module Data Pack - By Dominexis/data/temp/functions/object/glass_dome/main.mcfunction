# Initialize

execute if score #active_object_initialized_boolean nexus.value matches 0 run function temp:object/glass_dome/initialize/main







# Generate glass dome

scoreboard players set #index_tree_id nexus.value 999900000
function nexus:generic/tree/index/xyz/axis/main







# Terminate

execute if score #index_tree_end nexus.value matches 1 run function temp:object/glass_dome/generic/terminate