# Add target tag

tag @s add nexus.player.target.inventory







# Execute function as entity

summon item_frame ~ 1024 ~ {Tags:["nexus.entity","nexus.entity.type.inventory","nexus.entity.target"],Invisible:1b,Invulnerable:1b,Fixed:1b}
execute positioned ~ 1024 ~ as @e[type=item_frame,distance=..2,tag=nexus.entity.type.inventory,tag=nexus.entity.target,limit=1] run function nexus:player/inventory/load/hand/entity







# Remove target tag

tag @s remove nexus.player.target.inventory