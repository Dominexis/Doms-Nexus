# Append entry

data modify storage nexus:data database.list append value {id:0,b00:0b,b01:0b,b02:0b,b03:0b,b04:0b,b05:0b,b06:0b,b07:0b,b08:0b,b09:0b,b10:0b,b11:0b,b12:0b,b13:0b,b14:0b,b15:0b,b16:0b,b17:0b,b18:0b,b19:0b,b20:0b,b21:0b,b22:0b,b23:0b,b24:0b,b25:0b,b26:0b,b27:0b,b28:0b,b29:0b,b30:0b,b31:0b,target:1b,tag:{}}







# Assign ID

scoreboard players operation #math_00 nexus.value = #input nexus.value

execute if score #math_00 nexus.value matches ..-000000001 run data modify storage nexus:data database.list[-1].b31 set value 1b
execute if score #math_00 nexus.value matches ..-000000001 run scoreboard players operation #math_00 nexus.value -= #-2147483648 nexus.value
execute if score #math_00 nexus.value matches 1073741824.. run data modify storage nexus:data database.list[-1].b30 set value 1b
execute if score #math_00 nexus.value matches 1073741824.. run scoreboard players remove #math_00 nexus.value 1073741824
execute if score #math_00 nexus.value matches 0536870912.. run data modify storage nexus:data database.list[-1].b29 set value 1b
execute if score #math_00 nexus.value matches 0536870912.. run scoreboard players remove #math_00 nexus.value 536870912
execute if score #math_00 nexus.value matches 0268435456.. run data modify storage nexus:data database.list[-1].b28 set value 1b
execute if score #math_00 nexus.value matches 0268435456.. run scoreboard players remove #math_00 nexus.value 268435456
execute if score #math_00 nexus.value matches 0134217728.. run data modify storage nexus:data database.list[-1].b27 set value 1b
execute if score #math_00 nexus.value matches 0134217728.. run scoreboard players remove #math_00 nexus.value 134217728
execute if score #math_00 nexus.value matches 0067108864.. run data modify storage nexus:data database.list[-1].b26 set value 1b
execute if score #math_00 nexus.value matches 0067108864.. run scoreboard players remove #math_00 nexus.value 67108864
execute if score #math_00 nexus.value matches 0033554432.. run data modify storage nexus:data database.list[-1].b25 set value 1b
execute if score #math_00 nexus.value matches 0033554432.. run scoreboard players remove #math_00 nexus.value 33554432
execute if score #math_00 nexus.value matches 0016777216.. run data modify storage nexus:data database.list[-1].b24 set value 1b
execute if score #math_00 nexus.value matches 0016777216.. run scoreboard players remove #math_00 nexus.value 16777216
execute if score #math_00 nexus.value matches 0008388608.. run data modify storage nexus:data database.list[-1].b23 set value 1b
execute if score #math_00 nexus.value matches 0008388608.. run scoreboard players remove #math_00 nexus.value 8388608
execute if score #math_00 nexus.value matches 0004194304.. run data modify storage nexus:data database.list[-1].b22 set value 1b
execute if score #math_00 nexus.value matches 0004194304.. run scoreboard players remove #math_00 nexus.value 4194304
execute if score #math_00 nexus.value matches 0002097152.. run data modify storage nexus:data database.list[-1].b21 set value 1b
execute if score #math_00 nexus.value matches 0002097152.. run scoreboard players remove #math_00 nexus.value 2097152
execute if score #math_00 nexus.value matches 0001048576.. run data modify storage nexus:data database.list[-1].b20 set value 1b
execute if score #math_00 nexus.value matches 0001048576.. run scoreboard players remove #math_00 nexus.value 1048576
execute if score #math_00 nexus.value matches 0000524288.. run data modify storage nexus:data database.list[-1].b19 set value 1b
execute if score #math_00 nexus.value matches 0000524288.. run scoreboard players remove #math_00 nexus.value 524288
execute if score #math_00 nexus.value matches 0000262144.. run data modify storage nexus:data database.list[-1].b18 set value 1b
execute if score #math_00 nexus.value matches 0000262144.. run scoreboard players remove #math_00 nexus.value 262144
execute if score #math_00 nexus.value matches 0000131072.. run data modify storage nexus:data database.list[-1].b17 set value 1b
execute if score #math_00 nexus.value matches 0000131072.. run scoreboard players remove #math_00 nexus.value 131072
execute if score #math_00 nexus.value matches 0000065536.. run data modify storage nexus:data database.list[-1].b16 set value 1b
execute if score #math_00 nexus.value matches 0000065536.. run scoreboard players remove #math_00 nexus.value 65536
execute if score #math_00 nexus.value matches 0000032768.. run data modify storage nexus:data database.list[-1].b15 set value 1b
execute if score #math_00 nexus.value matches 0000032768.. run scoreboard players remove #math_00 nexus.value 32768
execute if score #math_00 nexus.value matches 0000016384.. run data modify storage nexus:data database.list[-1].b14 set value 1b
execute if score #math_00 nexus.value matches 0000016384.. run scoreboard players remove #math_00 nexus.value 16384
execute if score #math_00 nexus.value matches 0000008192.. run data modify storage nexus:data database.list[-1].b13 set value 1b
execute if score #math_00 nexus.value matches 0000008192.. run scoreboard players remove #math_00 nexus.value 8192
execute if score #math_00 nexus.value matches 0000004096.. run data modify storage nexus:data database.list[-1].b12 set value 1b
execute if score #math_00 nexus.value matches 0000004096.. run scoreboard players remove #math_00 nexus.value 4096
execute if score #math_00 nexus.value matches 0000002048.. run data modify storage nexus:data database.list[-1].b11 set value 1b
execute if score #math_00 nexus.value matches 0000002048.. run scoreboard players remove #math_00 nexus.value 2048
execute if score #math_00 nexus.value matches 0000001024.. run data modify storage nexus:data database.list[-1].b10 set value 1b
execute if score #math_00 nexus.value matches 0000001024.. run scoreboard players remove #math_00 nexus.value 1024
execute if score #math_00 nexus.value matches 0000000512.. run data modify storage nexus:data database.list[-1].b09 set value 1b
execute if score #math_00 nexus.value matches 0000000512.. run scoreboard players remove #math_00 nexus.value 512
execute if score #math_00 nexus.value matches 0000000256.. run data modify storage nexus:data database.list[-1].b08 set value 1b
execute if score #math_00 nexus.value matches 0000000256.. run scoreboard players remove #math_00 nexus.value 256
execute if score #math_00 nexus.value matches 0000000128.. run data modify storage nexus:data database.list[-1].b07 set value 1b
execute if score #math_00 nexus.value matches 0000000128.. run scoreboard players remove #math_00 nexus.value 128
execute if score #math_00 nexus.value matches 0000000064.. run data modify storage nexus:data database.list[-1].b06 set value 1b
execute if score #math_00 nexus.value matches 0000000064.. run scoreboard players remove #math_00 nexus.value 64
execute if score #math_00 nexus.value matches 0000000032.. run data modify storage nexus:data database.list[-1].b05 set value 1b
execute if score #math_00 nexus.value matches 0000000032.. run scoreboard players remove #math_00 nexus.value 32
execute if score #math_00 nexus.value matches 0000000016.. run data modify storage nexus:data database.list[-1].b04 set value 1b
execute if score #math_00 nexus.value matches 0000000016.. run scoreboard players remove #math_00 nexus.value 16
execute if score #math_00 nexus.value matches 0000000008.. run data modify storage nexus:data database.list[-1].b03 set value 1b
execute if score #math_00 nexus.value matches 0000000008.. run scoreboard players remove #math_00 nexus.value 8
execute if score #math_00 nexus.value matches 0000000004.. run data modify storage nexus:data database.list[-1].b02 set value 1b
execute if score #math_00 nexus.value matches 0000000004.. run scoreboard players remove #math_00 nexus.value 4
execute if score #math_00 nexus.value matches 0000000002.. run data modify storage nexus:data database.list[-1].b01 set value 1b
execute if score #math_00 nexus.value matches 0000000002.. run scoreboard players remove #math_00 nexus.value 2
execute if score #math_00 nexus.value matches 0000000001.. run data modify storage nexus:data database.list[-1].b00 set value 1b
execute if score #math_00 nexus.value matches 0000000001.. run scoreboard players remove #math_00 nexus.value 1







# Write to ID

execute store result storage nexus:data database.list[-1].id int 1 run scoreboard players get #input nexus.value