# Pick random direction given certain chance

scoreboard players set #input nexus.value 1000
function nexus:generic/rng/lcg
execute if score #output nexus.value matches 0..19 run function temp:entity/skull/mode/idle/random_direction

scoreboard players operation #yaw nexus.value = @s nexus.poi_yaw
scoreboard players operation #pitch nexus.value = @s nexus.poi_pitch







# Rotate entities towards respective targets

scoreboard players set #rotation_acceleration nexus.value 100
scoreboard players operation #rotation_acceleration nexus.value *= #missed_ticks nexus.value
function nexus:entity/generic/rotation/yaw_pitch







# Motion

function temp:entity/skull/mode/generic/motion







# Collisions

function temp:entity/skull/mode/generic/collision