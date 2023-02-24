# Remove health boost

effect clear @s health_boost







# Apply effect if damaged

effect give @s[tag=nexus.player.damage] instant_damage 1 0 true
tag @s remove nexus.player.damage







# Remove health modifiers

attribute @s generic.max_health modifier remove 2718-0-0-0-19
attribute @s generic.max_health modifier remove 2718-0-0-0-18
attribute @s generic.max_health modifier remove 2718-0-0-0-17
attribute @s generic.max_health modifier remove 2718-0-0-0-16
attribute @s generic.max_health modifier remove 2718-0-0-0-15
attribute @s generic.max_health modifier remove 2718-0-0-0-14
attribute @s generic.max_health modifier remove 2718-0-0-0-13
attribute @s generic.max_health modifier remove 2718-0-0-0-12
attribute @s generic.max_health modifier remove 2718-0-0-0-11
attribute @s generic.max_health modifier remove 2718-0-0-0-10
attribute @s generic.max_health modifier remove 2718-0-0-0-09
attribute @s generic.max_health modifier remove 2718-0-0-0-08
attribute @s generic.max_health modifier remove 2718-0-0-0-07
attribute @s generic.max_health modifier remove 2718-0-0-0-06
attribute @s generic.max_health modifier remove 2718-0-0-0-05
attribute @s generic.max_health modifier remove 2718-0-0-0-04
attribute @s generic.max_health modifier remove 2718-0-0-0-03
attribute @s generic.max_health modifier remove 2718-0-0-0-02
attribute @s generic.max_health modifier remove 2718-0-0-0-01
attribute @s generic.max_health modifier remove 2718-0-0-0-00







# Send death message if player died

execute if score @s nexus.death matches 1 if score #debug_death_messages nexus.value matches 1 run function nexus:player/death_message/verify







# Reset source variable

scoreboard players set @s nexus.source 0







# Remove resync tag and add death check tag

tag @s remove nexus.player.resync_health
tag @s add nexus.player.death_check