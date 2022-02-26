# Spawn test object

summon marker ~ ~ ~ {Tags:["nexus.object","temp.object","temp.object.type.glass_dome","nexus.object.target.spawn","nexus.object.visible"]}







# Assign ID

scoreboard players add #global nexus.id 1
scoreboard players operation @e[type=marker,tag=nexus.object.target.spawn,limit=1] nexus.id = #global nexus.id







# Assign scores

execute as @e[type=marker,tag=nexus.object.target.spawn,limit=1] run function temp:object/glass_dome/spawn/scores







# Remove target tag

tag @e[type=marker,tag=temp.object] remove nexus.object.target.spawn