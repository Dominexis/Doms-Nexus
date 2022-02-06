# Spawn seat if none or multiple exist

execute store result score #entity_count temp.value if entity @e[type=skeleton_horse,distance=..8,tag=temp.entity.part.seat,tag=nexus.entity.target]
execute unless score #entity_count temp.value matches 1 run function temp:entity/racecar/mode/generic/seat/spawn