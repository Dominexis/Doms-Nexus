# Start idle mode if there is not a player nearby

execute unless entity @a[distance=..40,gamemode=!spectator] run function temp:entity/skull/mode/idle/start







# Manage damage sensor

execute unless entity @e[type=pig,distance=..4,tag=temp.entity.part.damage_sensor,tag=nexus.entity.target,scores={nexus.health=1024000},limit=1] run function temp:entity/skull/mode/generic/damage