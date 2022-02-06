# Extract data

execute if entity @s[tag=!nexus.entity] run function nexus:entity/generic/data/extract/fakeplayer/pos







# Test forces

scoreboard players set #offset temp.value 100
execute if entity @s[tag=temp.entity.type.ball] run scoreboard players set #offset temp.value 0
function temp:entity/ball/mode/roll/kick/test
scoreboard players set #offset temp.value 1600
execute if entity @s[type=player] run function temp:entity/ball/mode/roll/kick/test