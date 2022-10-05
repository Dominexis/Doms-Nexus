# Modify goal health if damaged

scoreboard players set @s nexus.hp_buffer 6000

function nexus:player/generic/resistance
scoreboard players operation #resistance nexus.value = @s nexus.resistance
scoreboard players operation #resistance nexus.value *= #-1 nexus.value
scoreboard players add #resistance nexus.value 4
scoreboard players operation @s nexus.hp_buffer *= #resistance nexus.value
scoreboard players operation @s nexus.hp_buffer /= #5 nexus.value

function nexus:player/generic/protection
scoreboard players operation #protection nexus.value = @s nexus.protection
scoreboard players operation #protection nexus.value *= #-1 nexus.value
scoreboard players add #protection nexus.value 25
scoreboard players operation @s nexus.hp_buffer *= #protection nexus.value
scoreboard players operation @s nexus.hp_buffer /= #25 nexus.value

execute if entity @s[tag=nexus.player.damage] run scoreboard players operation #goal_health nexus.value += @s nexus.hp_buffer







# Modify max health

execute if score #max_health nexus.value < #goal_health nexus.value run function nexus:player/health/modify/assign/increase
execute if score #max_health nexus.value > #goal_health nexus.value run function nexus:player/health/modify/assign/decrease







# Apply effect if goal max health is greater than or less than current health

execute if score #goal_health nexus.value > @s nexus.health run effect give @s instant_health 1 124 true
execute if score #goal_health nexus.value < @s nexus.health run effect give @s health_boost 1 0 true