# Display visible objects

execute store result score #visible_object_count nexus.value if entity @e[type=marker,tag=nexus.object,tag=nexus.object.visible]
scoreboard players operation #visible_object_count_maximum nexus.value > #visible_object_count nexus.value
execute if score #visible_object_count nexus.value matches 0 run scoreboard players set #visible_object_count_maximum nexus.value 1
execute store result bossbar nexus:object_count max run scoreboard players get #visible_object_count_maximum nexus.value
execute store result bossbar nexus:object_count value run scoreboard players get #visible_object_count nexus.value
execute if score #visible_object_count nexus.value matches 1 run bossbar set nexus:object_count name [{"text":"Object Remaining: ","color":"gold","bold":true},{"score":{"name":"#visible_object_count","objective":"nexus.value"},"color":"dark_red","bold":true}]
execute unless score #visible_object_count nexus.value matches 1 run bossbar set nexus:object_count name [{"text":"Objects Remaining: ","color":"gold","bold":true},{"score":{"name":"#visible_object_count","objective":"nexus.value"},"color":"dark_red","bold":true}]
execute if score #visible_object_count nexus.value matches 1.. run bossbar set nexus:object_count players @a
execute if score #visible_object_count nexus.value matches 0 run bossbar set nexus:object_count players







# Activate current object

scoreboard players set #object_activation_boolean nexus.value 0
execute as @e[type=marker,tag=nexus.object] if score @s nexus.id = #active_object_id nexus.value at @s run function nexus:object/activate







# Target object if none are active

execute if score #object_activation_boolean nexus.value matches 0 run function nexus:object/target