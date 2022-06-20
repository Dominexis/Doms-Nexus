# Execute function

execute if score #math_database_01 nexus.value matches 000..063 run function nexus:generic/database/target/2/0
execute if score #math_database_01 nexus.value matches 064..127 run function nexus:generic/database/target/2/1
execute if score #math_database_01 nexus.value matches 128..191 run function nexus:generic/database/target/2/2
execute if score #math_database_01 nexus.value matches 192..255 run function nexus:generic/database/target/2/3