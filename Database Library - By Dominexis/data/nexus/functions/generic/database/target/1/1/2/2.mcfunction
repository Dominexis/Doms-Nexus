# Execute function

execute if score #math_database_01 nexus.value matches 104 if data storage nexus:data database.list[{id:{b1:104b}}] run data modify storage nexus:data database.list[{id:{b1:104b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 105 if data storage nexus:data database.list[{id:{b1:105b}}] run data modify storage nexus:data database.list[{id:{b1:105b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 106 if data storage nexus:data database.list[{id:{b1:106b}}] run data modify storage nexus:data database.list[{id:{b1:106b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 107 if data storage nexus:data database.list[{id:{b1:107b}}] run data modify storage nexus:data database.list[{id:{b1:107b}}].target.b1 set value 1b