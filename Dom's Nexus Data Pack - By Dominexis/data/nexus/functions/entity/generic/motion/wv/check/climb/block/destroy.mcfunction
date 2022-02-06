# Random chance to destroy block

scoreboard players set #input nexus.value 1000
function nexus:generic/rng/lcg
execute if score #output nexus.value <= #block_destroy_probability nexus.value run setblock ~ ~ ~ air destroy
execute if score #output nexus.value <= #block_destroy_probability nexus.value run kill @e[type=item,distance=..1,sort=nearest,limit=1]
execute if score #output nexus.value > #block_destroy_probability nexus.value run setblock ~ ~ ~ air







# Set boolean

scoreboard players set #motion_destroyed_boolean nexus.value 1