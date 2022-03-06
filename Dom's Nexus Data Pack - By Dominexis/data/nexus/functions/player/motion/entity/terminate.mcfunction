# Clear effect from player

effect clear @a[tag=nexus.player.target,limit=1] slow_falling







# Apply damage to player

scoreboard players operation #damage_amount nexus.value = @s nexus.velocity
scoreboard players remove #damage_amount nexus.value 3000
execute if score #damage_amount nexus.value matches ..999 run scoreboard players set #damage_amount nexus.value 0
scoreboard players set #damage_source nexus.value 000000001
scoreboard players set #damage_armor_boolean nexus.value 1
scoreboard players set #damage_burn_boolean nexus.value 0

execute if score @s nexus.collide_y matches -1 if score @s nexus.mot_y matches ..-1000 as @a[tag=nexus.player.target,limit=1] run function nexus:player/health/damage/verify







# Remove tag from player

tag @a[tag=nexus.player.target,limit=1] remove nexus.player.motion







# Terminate

kill @s