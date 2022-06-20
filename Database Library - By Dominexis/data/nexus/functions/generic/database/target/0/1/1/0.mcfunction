# Execute function

execute if score #math_database_01 nexus.value matches 080 if data storage nexus:data database.list[{id:{b0:80b}}] run data modify storage nexus:data database.list[{id:{b0:80b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 081 if data storage nexus:data database.list[{id:{b0:81b}}] run data modify storage nexus:data database.list[{id:{b0:81b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 082 if data storage nexus:data database.list[{id:{b0:82b}}] run data modify storage nexus:data database.list[{id:{b0:82b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 083 if data storage nexus:data database.list[{id:{b0:83b}}] run data modify storage nexus:data database.list[{id:{b0:83b}}].target.b0 set value 1b