# Start next mode based on random chance

scoreboard players set #input nexus.value 100
function nexus:generic/rng/lcg
scoreboard players operation #random_chance temp.value = #output nexus.value
execute if score #random_chance temp.value matches ..49 run function temp:entity/spider_brain/mode/idle/start
execute if score #random_chance temp.value matches 50.. run function temp:entity/spider_brain/mode/walk/start