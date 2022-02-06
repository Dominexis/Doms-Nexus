# Get random angles

scoreboard players set #input nexus.value 901
function nexus:generic/rng/lcg
scoreboard players remove #output nexus.value 450
scoreboard players operation @s nexus.poi_yaw += #output nexus.value
scoreboard players operation @s nexus.poi_yaw %= #3600 nexus.value

scoreboard players set #input nexus.value 601
function nexus:generic/rng/lcg
scoreboard players remove #output nexus.value 300
scoreboard players operation @s nexus.poi_pitch = #output nexus.value