# Modify item displays

data modify entity @e[type=armor_stand,distance=..8,tag=temp.entity.part.brain,tag=nexus.entity.target,limit=1] ArmorItems[3].tag.CustomModelData set value 999901
execute as @e[type=armor_stand,distance=..8,tag=temp.entity.part.leg,tag=nexus.entity.target] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 999902







# Remove tag

tag @s remove temp.entity.animate.damage