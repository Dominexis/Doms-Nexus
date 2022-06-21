# Execute function

execute if score #math_database_01 nexus.value matches 020 if data storage nexus:data database.list[{id:{b1:20b}}] run data modify storage nexus:data database.list[{id:{b1:20b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 021 if data storage nexus:data database.list[{id:{b1:21b}}] run data modify storage nexus:data database.list[{id:{b1:21b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 022 if data storage nexus:data database.list[{id:{b1:22b}}] run data modify storage nexus:data database.list[{id:{b1:22b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 023 if data storage nexus:data database.list[{id:{b1:23b}}] run data modify storage nexus:data database.list[{id:{b1:23b}}].target.b1 set value 1b