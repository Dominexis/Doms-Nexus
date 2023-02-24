# Modify goal health if damaged

execute if entity @s[tag=nexus.player.damage] run function nexus:player/health/modify/assign/buffer







# Modify max health

execute if score #max_health nexus.value < #goal_health nexus.value run function nexus:player/health/modify/assign/increase
execute if score #max_health nexus.value > #goal_health nexus.value run function nexus:player/health/modify/assign/decrease







# Apply effect if goal max health is greater than or less than current health

execute if score #goal_health nexus.value > @s nexus.health run effect give @s instant_health 1 124 true
execute if score #goal_health nexus.value < @s nexus.health run effect give @s health_boost 1 0 true