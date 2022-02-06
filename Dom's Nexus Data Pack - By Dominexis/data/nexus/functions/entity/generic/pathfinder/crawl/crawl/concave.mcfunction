# Compare angles

execute if score #corner_x nexus.value matches -1 if score #corner_z nexus.value matches 01 run scoreboard players set #test_yaw nexus.value 450
execute if score #corner_x nexus.value matches -1 if score #corner_z nexus.value matches -1 run scoreboard players set #test_yaw nexus.value 1350
execute if score #corner_x nexus.value matches 01 if score #corner_z nexus.value matches -1 run scoreboard players set #test_yaw nexus.value 2250
execute if score #corner_x nexus.value matches 01 if score #corner_z nexus.value matches 01 run scoreboard players set #test_yaw nexus.value 3150

scoreboard players operation #test_yaw nexus.value -= #yaw nexus.value
scoreboard players operation #test_yaw nexus.value %= #3600 nexus.value







# Perform action based on angle difference and expected axis

execute store result score #boolean nexus.value if score #test_yaw nexus.value matches 901..2699

execute if score #boolean nexus.value matches 0 if score #axial_slant nexus.value matches 300 run scoreboard players remove @s nexus.poi_yaw 900
execute if score #boolean nexus.value matches 0 if score #axial_slant nexus.value matches 600 run scoreboard players add @s nexus.poi_yaw 900
execute if score #boolean nexus.value matches 1 if score #axial_slant nexus.value matches 300 run scoreboard players add @s nexus.poi_yaw 1200
execute if score #boolean nexus.value matches 1 if score #axial_slant nexus.value matches 600 run scoreboard players remove @s nexus.poi_yaw 1200