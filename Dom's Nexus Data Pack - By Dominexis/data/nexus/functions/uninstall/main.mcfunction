# Add operator tag

tag @s[type=player] add nexus.player.operator







# Uninstall modules

function #nexus:uninstall/modules







# Send message to chat

execute if score #debug_system_messages nexus.value matches 1 run tellraw @a[tag=nexus.player.operator] ["",{"text":"[","color":"gray"},{"text":"Dom's Nexus","color":"blue","bold":true},{"text":"]","color":"gray"}," ",{"text":"Nexus and modules were successfully uninstalled.","color":"gray"}]







# Remove scoreboard objectives

scoreboard objectives remove nexus.value
scoreboard objectives remove nexus.id
scoreboard objectives remove nexus.entity_id
scoreboard objectives remove nexus.ticks
scoreboard objectives remove nexus.modified



scoreboard objectives remove nexus.tick_dist
scoreboard objectives remove nexus.tick_bool

scoreboard objectives remove nexus.id_bool
scoreboard objectives remove nexus.id_range
scoreboard objectives remove nexus.v_id_bool
scoreboard objectives remove nexus.air_t_bool
scoreboard objectives remove nexus.dmg_s_bool



scoreboard objectives remove nexus.health
scoreboard objectives remove nexus.size
scoreboard objectives remove nexus.mass
scoreboard objectives remove nexus.target
scoreboard objectives remove nexus.vehicle
scoreboard objectives remove nexus.seat
scoreboard objectives remove nexus.nbt_ticks
scoreboard objectives remove nexus.nbt_delay
scoreboard objectives remove nexus.priority

scoreboard objectives remove nexus.mode
scoreboard objectives remove nexus.animation
scoreboard objectives remove nexus.velocity

scoreboard objectives remove nexus.damage
scoreboard objectives remove nexus.heal
scoreboard objectives remove nexus.source
scoreboard objectives remove nexus.hp_time
scoreboard objectives remove nexus.hp_shift

scoreboard objectives remove nexus.abs_amount
scoreboard objectives remove nexus.abs_level
scoreboard objectives remove nexus.abs_timer



scoreboard objectives remove nexus.use_item
scoreboard objectives remove nexus.milk
scoreboard objectives remove nexus.death



scoreboard objectives remove nexus.x
scoreboard objectives remove nexus.y
scoreboard objectives remove nexus.z

scoreboard objectives remove nexus.mot_x
scoreboard objectives remove nexus.mot_y
scoreboard objectives remove nexus.mot_z

scoreboard objectives remove nexus.poi_x
scoreboard objectives remove nexus.poi_y
scoreboard objectives remove nexus.poi_z

scoreboard objectives remove nexus.collide
scoreboard objectives remove nexus.collide_x
scoreboard objectives remove nexus.collide_y
scoreboard objectives remove nexus.collide_z

scoreboard objectives remove nexus.head_x
scoreboard objectives remove nexus.head_y
scoreboard objectives remove nexus.head_z

scoreboard objectives remove nexus.ang_vel_x
scoreboard objectives remove nexus.ang_vel_y
scoreboard objectives remove nexus.ang_vel_z

scoreboard objectives remove nexus.prev_x
scoreboard objectives remove nexus.prev_y
scoreboard objectives remove nexus.prev_z

scoreboard objectives remove nexus.prev_mot_x
scoreboard objectives remove nexus.prev_mot_y
scoreboard objectives remove nexus.prev_mot_z

scoreboard objectives remove nexus.yaw
scoreboard objectives remove nexus.pitch
scoreboard objectives remove nexus.roll

scoreboard objectives remove nexus.mot_yaw
scoreboard objectives remove nexus.mot_pitch
scoreboard objectives remove nexus.mot_roll

scoreboard objectives remove nexus.poi_yaw
scoreboard objectives remove nexus.poi_pitch
scoreboard objectives remove nexus.poi_roll

scoreboard objectives remove nexus.prev_yaw
scoreboard objectives remove nexus.prev_pitch
scoreboard objectives remove nexus.prev_roll



scoreboard objectives remove nexus.matrix_x_x
scoreboard objectives remove nexus.matrix_x_y
scoreboard objectives remove nexus.matrix_x_z
scoreboard objectives remove nexus.matrix_y_x
scoreboard objectives remove nexus.matrix_y_y
scoreboard objectives remove nexus.matrix_y_z
scoreboard objectives remove nexus.matrix_z_x
scoreboard objectives remove nexus.matrix_z_y
scoreboard objectives remove nexus.matrix_z_z

scoreboard objectives remove nexus.vector_x_x
scoreboard objectives remove nexus.vector_x_y
scoreboard objectives remove nexus.vector_x_z
scoreboard objectives remove nexus.vector_y_x
scoreboard objectives remove nexus.vector_y_y
scoreboard objectives remove nexus.vector_y_z
scoreboard objectives remove nexus.vector_z_x
scoreboard objectives remove nexus.vector_z_y
scoreboard objectives remove nexus.vector_z_z

scoreboard objectives remove nexus.vector_x
scoreboard objectives remove nexus.vector_y
scoreboard objectives remove nexus.vector_z

scoreboard objectives remove nexus.axis_x
scoreboard objectives remove nexus.axis_y
scoreboard objectives remove nexus.axis_z



scoreboard objectives remove nexus.wasd_w
scoreboard objectives remove nexus.wasd_a
scoreboard objectives remove nexus.wasd_s
scoreboard objectives remove nexus.wasd_d



scoreboard objectives remove nexus.uuid_0
scoreboard objectives remove nexus.uuid_1
scoreboard objectives remove nexus.uuid_2
scoreboard objectives remove nexus.uuid_3



scoreboard objectives remove nexus.event_phe
scoreboard objectives remove nexus.event_pke
scoreboard objectives remove nexus.event_ehp
scoreboard objectives remove nexus.event_ekp
scoreboard objectives remove nexus.event_piwe



scoreboard objectives remove nexus.pathfinder
scoreboard objectives remove nexus.threshold
scoreboard objectives remove nexus.threshold1
scoreboard objectives remove nexus.threshold2



scoreboard objectives remove nexus.anim_t_00
scoreboard objectives remove nexus.anim_t_01
scoreboard objectives remove nexus.anim_t_02
scoreboard objectives remove nexus.anim_t_03
scoreboard objectives remove nexus.anim_t_04
scoreboard objectives remove nexus.anim_t_05
scoreboard objectives remove nexus.anim_t_06
scoreboard objectives remove nexus.anim_t_07
scoreboard objectives remove nexus.anim_t_08
scoreboard objectives remove nexus.anim_t_09
scoreboard objectives remove nexus.anim_t_10
scoreboard objectives remove nexus.anim_t_11
scoreboard objectives remove nexus.anim_t_12
scoreboard objectives remove nexus.anim_t_13
scoreboard objectives remove nexus.anim_t_14
scoreboard objectives remove nexus.anim_t_15
scoreboard objectives remove nexus.anim_t_16
scoreboard objectives remove nexus.anim_t_17
scoreboard objectives remove nexus.anim_t_18
scoreboard objectives remove nexus.anim_t_19

scoreboard objectives remove nexus.anim_i_00
scoreboard objectives remove nexus.anim_i_01
scoreboard objectives remove nexus.anim_i_02
scoreboard objectives remove nexus.anim_i_03
scoreboard objectives remove nexus.anim_i_04
scoreboard objectives remove nexus.anim_i_05
scoreboard objectives remove nexus.anim_i_06
scoreboard objectives remove nexus.anim_i_07
scoreboard objectives remove nexus.anim_i_08
scoreboard objectives remove nexus.anim_i_09
scoreboard objectives remove nexus.anim_i_10
scoreboard objectives remove nexus.anim_i_11
scoreboard objectives remove nexus.anim_i_12
scoreboard objectives remove nexus.anim_i_13
scoreboard objectives remove nexus.anim_i_14
scoreboard objectives remove nexus.anim_i_15
scoreboard objectives remove nexus.anim_i_16
scoreboard objectives remove nexus.anim_i_17
scoreboard objectives remove nexus.anim_i_18
scoreboard objectives remove nexus.anim_i_19







# Set gamerules

gamerule maxCommandChainLength 65536
gamerule showDeathMessages true







# Remove teams

team remove nexus.vehicle







# Remove bossbars

bossbar remove nexus:object_count







# Kill custom entities

kill @e[type=#nexus:generic/entity,tag=nexus.entity]
kill @e[type=marker,tag=nexus.chunk]
kill @e[type=marker,tag=nexus.object]







# Remove tags

execute as @e run function nexus:uninstall/tag/entity
execute as @a run function nexus:uninstall/tag/player







# Clear storage

data remove storage nexus:data tag
data remove storage nexus:data database