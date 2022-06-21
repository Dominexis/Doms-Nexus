# Execute function

execute if score #math_database_01 nexus.value matches 156 if data storage nexus:data database.list[{id:{b0:-100b}}] run data modify storage nexus:data database.list[{id:{b0:-100b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 157 if data storage nexus:data database.list[{id:{b0:-99b}}] run data modify storage nexus:data database.list[{id:{b0:-99b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 158 if data storage nexus:data database.list[{id:{b0:-98b}}] run data modify storage nexus:data database.list[{id:{b0:-98b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 159 if data storage nexus:data database.list[{id:{b0:-97b}}] run data modify storage nexus:data database.list[{id:{b0:-97b}}].target.b0 set value 1b