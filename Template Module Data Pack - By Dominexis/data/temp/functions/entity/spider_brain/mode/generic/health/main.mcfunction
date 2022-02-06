# Damage

execute unless entity @e[type=slime,distance=..8,tag=temp.entity.part.damage_sensor,tag=nexus.entity.target,scores={nexus.health=1024000},limit=1] run function temp:entity/spider_brain/mode/generic/health/damage