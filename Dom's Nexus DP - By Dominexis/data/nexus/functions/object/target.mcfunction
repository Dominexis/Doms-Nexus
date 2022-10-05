# Reset scores

scoreboard players set #active_object_initialized_boolean nexus.value 0
scoreboard players set #active_object_finished_boolean nexus.value 0







# Target object with highest priority value

scoreboard players set #active_object_priority nexus.value -2147483648
scoreboard players operation #active_object_priority nexus.value > @e[type=marker,tag=nexus.object] nexus.priority
execute as @e[type=marker,tag=nexus.object,sort=random] if score @s nexus.priority = #active_object_priority nexus.value run scoreboard players operation #active_object_id nexus.value = @s nexus.id







# Execute function as targeted object

execute as @e[type=marker,tag=nexus.object] if score @s nexus.id = #active_object_id nexus.value at @s run function nexus:object/activate