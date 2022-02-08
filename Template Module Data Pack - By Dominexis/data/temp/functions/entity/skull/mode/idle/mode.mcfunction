# Start pursue mode if there is a player nearby

execute if entity @a[distance=..32,gamemode=!spectator] run function temp:entity/skull/mode/pursue/start







# Manage damage sensor

execute unless entity @e[type=pig,distance=..4,tag=temp.entity.part.damage_sensor,tag=nexus.entity.target,scores={nexus.health=1024000},limit=1] run function temp:entity/skull/mode/generic/damage