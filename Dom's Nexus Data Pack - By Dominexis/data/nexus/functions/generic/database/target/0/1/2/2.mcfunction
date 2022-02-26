# Execute function

execute if score #math_database_01 nexus.value matches 104 if data storage nexus:data database.list[{id:{b0:104b}}] run data modify storage nexus:data database.list[{id:{b0:104b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 105 if data storage nexus:data database.list[{id:{b0:105b}}] run data modify storage nexus:data database.list[{id:{b0:105b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 106 if data storage nexus:data database.list[{id:{b0:106b}}] run data modify storage nexus:data database.list[{id:{b0:106b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 107 if data storage nexus:data database.list[{id:{b0:107b}}] run data modify storage nexus:data database.list[{id:{b0:107b}}].target.b0 set value 1b