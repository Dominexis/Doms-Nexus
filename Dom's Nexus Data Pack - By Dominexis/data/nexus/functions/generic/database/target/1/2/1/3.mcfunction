# Execute function

execute if score #math_database_01 nexus.value matches 156 if data storage nexus:data database.list[{id:{b1:-100b}}] run data modify storage nexus:data database.list[{id:{b1:-100b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 157 if data storage nexus:data database.list[{id:{b1:-99b}}] run data modify storage nexus:data database.list[{id:{b1:-99b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 158 if data storage nexus:data database.list[{id:{b1:-98b}}] run data modify storage nexus:data database.list[{id:{b1:-98b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 159 if data storage nexus:data database.list[{id:{b1:-97b}}] run data modify storage nexus:data database.list[{id:{b1:-97b}}].target.b1 set value 1b