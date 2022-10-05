# Reconstruct ID

scoreboard players set #local nexus.entity_id 0
execute if entity @s[advancements={nexus:event_id/player_killed_entity={bit_31.1=true}}] run scoreboard players set #local nexus.entity_id -2147483648
execute if entity @s[advancements={nexus:event_id/player_killed_entity={bit_30.1=true}}] run scoreboard players add #local nexus.entity_id 1073741824
execute if entity @s[advancements={nexus:event_id/player_killed_entity={bit_29.1=true}}] run scoreboard players add #local nexus.entity_id 536870912
execute if entity @s[advancements={nexus:event_id/player_killed_entity={bit_28.1=true}}] run scoreboard players add #local nexus.entity_id 268435456
execute if entity @s[advancements={nexus:event_id/player_killed_entity={bit_27.1=true}}] run scoreboard players add #local nexus.entity_id 134217728
execute if entity @s[advancements={nexus:event_id/player_killed_entity={bit_26.1=true}}] run scoreboard players add #local nexus.entity_id 67108864
execute if entity @s[advancements={nexus:event_id/player_killed_entity={bit_25.1=true}}] run scoreboard players add #local nexus.entity_id 33554432
execute if entity @s[advancements={nexus:event_id/player_killed_entity={bit_24.1=true}}] run scoreboard players add #local nexus.entity_id 16777216
execute if entity @s[advancements={nexus:event_id/player_killed_entity={bit_23.1=true}}] run scoreboard players add #local nexus.entity_id 8388608
execute if entity @s[advancements={nexus:event_id/player_killed_entity={bit_22.1=true}}] run scoreboard players add #local nexus.entity_id 4194304
execute if entity @s[advancements={nexus:event_id/player_killed_entity={bit_21.1=true}}] run scoreboard players add #local nexus.entity_id 2097152
execute if entity @s[advancements={nexus:event_id/player_killed_entity={bit_20.1=true}}] run scoreboard players add #local nexus.entity_id 1048576
execute if entity @s[advancements={nexus:event_id/player_killed_entity={bit_19.1=true}}] run scoreboard players add #local nexus.entity_id 524288
execute if entity @s[advancements={nexus:event_id/player_killed_entity={bit_18.1=true}}] run scoreboard players add #local nexus.entity_id 262144
execute if entity @s[advancements={nexus:event_id/player_killed_entity={bit_17.1=true}}] run scoreboard players add #local nexus.entity_id 131072
execute if entity @s[advancements={nexus:event_id/player_killed_entity={bit_16.1=true}}] run scoreboard players add #local nexus.entity_id 65536
execute if entity @s[advancements={nexus:event_id/player_killed_entity={bit_15.1=true}}] run scoreboard players add #local nexus.entity_id 32768
execute if entity @s[advancements={nexus:event_id/player_killed_entity={bit_14.1=true}}] run scoreboard players add #local nexus.entity_id 16384
execute if entity @s[advancements={nexus:event_id/player_killed_entity={bit_13.1=true}}] run scoreboard players add #local nexus.entity_id 8192
execute if entity @s[advancements={nexus:event_id/player_killed_entity={bit_12.1=true}}] run scoreboard players add #local nexus.entity_id 4096
execute if entity @s[advancements={nexus:event_id/player_killed_entity={bit_11.1=true}}] run scoreboard players add #local nexus.entity_id 2048
execute if entity @s[advancements={nexus:event_id/player_killed_entity={bit_10.1=true}}] run scoreboard players add #local nexus.entity_id 1024
execute if entity @s[advancements={nexus:event_id/player_killed_entity={bit_09.1=true}}] run scoreboard players add #local nexus.entity_id 512
execute if entity @s[advancements={nexus:event_id/player_killed_entity={bit_08.1=true}}] run scoreboard players add #local nexus.entity_id 256
execute if entity @s[advancements={nexus:event_id/player_killed_entity={bit_07.1=true}}] run scoreboard players add #local nexus.entity_id 128
execute if entity @s[advancements={nexus:event_id/player_killed_entity={bit_06.1=true}}] run scoreboard players add #local nexus.entity_id 64
execute if entity @s[advancements={nexus:event_id/player_killed_entity={bit_05.1=true}}] run scoreboard players add #local nexus.entity_id 32
execute if entity @s[advancements={nexus:event_id/player_killed_entity={bit_04.1=true}}] run scoreboard players add #local nexus.entity_id 16
execute if entity @s[advancements={nexus:event_id/player_killed_entity={bit_03.1=true}}] run scoreboard players add #local nexus.entity_id 8
execute if entity @s[advancements={nexus:event_id/player_killed_entity={bit_02.1=true}}] run scoreboard players add #local nexus.entity_id 4
execute if entity @s[advancements={nexus:event_id/player_killed_entity={bit_01.1=true}}] run scoreboard players add #local nexus.entity_id 2
execute if entity @s[advancements={nexus:event_id/player_killed_entity={bit_00.1=true}}] run scoreboard players add #local nexus.entity_id 1

scoreboard players operation @s nexus.event_pke = #local nexus.entity_id







# Revoke advancement

advancement revoke @s only nexus:event_id/player_killed_entity







# Execute functions

function #nexus:generic/event_id/player_killed_entity/player/pre
execute if score #feature_event_id_pke nexus.value matches 1 as @e if score @s nexus.entity_id = #local nexus.entity_id at @s run function #nexus:generic/event_id/player_killed_entity/entity
function #nexus:generic/event_id/player_killed_entity/player/post