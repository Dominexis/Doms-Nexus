# Set influence value

scoreboard players set @s nexus.anim_i_01 1000







# Reset timer

scoreboard players set @s nexus.anim_t_01 10







# Modify item displays

data modify entity @e[type=armor_stand,distance=..8,tag=temp.entity.part.main,tag=nexus.entity.target,limit=1] ArmorItems[3].id set value "minecraft:wither_skeleton_skull"







# Add tag

tag @s add temp.entity.animate.death