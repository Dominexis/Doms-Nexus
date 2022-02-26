# Execute function

execute if score #math_database_01 nexus.value matches 000..015 run function nexus:generic/database/target/0/0/0
execute if score #math_database_01 nexus.value matches 016..031 run function nexus:generic/database/target/0/0/1
execute if score #math_database_01 nexus.value matches 032..047 run function nexus:generic/database/target/0/0/2
execute if score #math_database_01 nexus.value matches 048..063 run function nexus:generic/database/target/0/0/3