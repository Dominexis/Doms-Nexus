# Execute function

execute if score #math_database_01 nexus.value matches 128 if data storage nexus:data database.list[{id:{b1:-128b}}] run data modify storage nexus:data database.list[{id:{b1:-128b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 129 if data storage nexus:data database.list[{id:{b1:-127b}}] run data modify storage nexus:data database.list[{id:{b1:-127b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 130 if data storage nexus:data database.list[{id:{b1:-126b}}] run data modify storage nexus:data database.list[{id:{b1:-126b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 131 if data storage nexus:data database.list[{id:{b1:-125b}}] run data modify storage nexus:data database.list[{id:{b1:-125b}}].target.b1 set value 1b