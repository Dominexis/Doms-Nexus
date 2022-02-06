# Initialize list if list is empty

execute unless data storage nexus:data database[0] run function nexus:generic/database/initialize







# Prepare list

data modify storage nexus:data database[].target set value 1b







# Target entry

scoreboard players operation #math_00 nexus.value = #input nexus.value

execute unless score #math_00 nexus.value matches ..-000000001 run data modify storage nexus:data database[{b31:1b}].target set value 0b
execute if score #math_00 nexus.value matches ..-0000000000001 run data modify storage nexus:data database[{b31:0b}].target set value 0b
execute if score #math_00 nexus.value matches ..-0000000000001 run scoreboard players operation #math_00 nexus.value -= #-2147483648 nexus.value
execute unless score #math_00 nexus.value matches 1073741824.. run data modify storage nexus:data database[{b30:1b}].target set value 0b
execute if score #math_00 nexus.value matches 00001073741824.. run data modify storage nexus:data database[{b30:0b}].target set value 0b
execute if score #math_00 nexus.value matches 00001073741824.. run scoreboard players remove #math_00 nexus.value 1073741824
execute unless score #math_00 nexus.value matches 0536870912.. run data modify storage nexus:data database[{b29:1b}].target set value 0b
execute if score #math_00 nexus.value matches 00000536870912.. run data modify storage nexus:data database[{b29:0b}].target set value 0b
execute if score #math_00 nexus.value matches 00000536870912.. run scoreboard players remove #math_00 nexus.value 536870912
execute unless score #math_00 nexus.value matches 0268435456.. run data modify storage nexus:data database[{b28:1b}].target set value 0b
execute if score #math_00 nexus.value matches 00000268435456.. run data modify storage nexus:data database[{b28:0b}].target set value 0b
execute if score #math_00 nexus.value matches 00000268435456.. run scoreboard players remove #math_00 nexus.value 268435456
execute unless score #math_00 nexus.value matches 0134217728.. run data modify storage nexus:data database[{b27:1b}].target set value 0b
execute if score #math_00 nexus.value matches 00000134217728.. run data modify storage nexus:data database[{b27:0b}].target set value 0b
execute if score #math_00 nexus.value matches 00000134217728.. run scoreboard players remove #math_00 nexus.value 134217728
execute unless score #math_00 nexus.value matches 0067108864.. run data modify storage nexus:data database[{b26:1b}].target set value 0b
execute if score #math_00 nexus.value matches 00000067108864.. run data modify storage nexus:data database[{b26:0b}].target set value 0b
execute if score #math_00 nexus.value matches 00000067108864.. run scoreboard players remove #math_00 nexus.value 67108864
execute unless score #math_00 nexus.value matches 0033554432.. run data modify storage nexus:data database[{b25:1b}].target set value 0b
execute if score #math_00 nexus.value matches 00000033554432.. run data modify storage nexus:data database[{b25:0b}].target set value 0b
execute if score #math_00 nexus.value matches 00000033554432.. run scoreboard players remove #math_00 nexus.value 33554432
execute unless score #math_00 nexus.value matches 0016777216.. run data modify storage nexus:data database[{b24:1b}].target set value 0b
execute if score #math_00 nexus.value matches 00000016777216.. run data modify storage nexus:data database[{b24:0b}].target set value 0b
execute if score #math_00 nexus.value matches 00000016777216.. run scoreboard players remove #math_00 nexus.value 16777216
execute unless score #math_00 nexus.value matches 0008388608.. run data modify storage nexus:data database[{b23:1b}].target set value 0b
execute if score #math_00 nexus.value matches 00000008388608.. run data modify storage nexus:data database[{b23:0b}].target set value 0b
execute if score #math_00 nexus.value matches 00000008388608.. run scoreboard players remove #math_00 nexus.value 8388608
execute unless score #math_00 nexus.value matches 0004194304.. run data modify storage nexus:data database[{b22:1b}].target set value 0b
execute if score #math_00 nexus.value matches 00000004194304.. run data modify storage nexus:data database[{b22:0b}].target set value 0b
execute if score #math_00 nexus.value matches 00000004194304.. run scoreboard players remove #math_00 nexus.value 4194304
execute unless score #math_00 nexus.value matches 0002097152.. run data modify storage nexus:data database[{b21:1b}].target set value 0b
execute if score #math_00 nexus.value matches 00000002097152.. run data modify storage nexus:data database[{b21:0b}].target set value 0b
execute if score #math_00 nexus.value matches 00000002097152.. run scoreboard players remove #math_00 nexus.value 2097152
execute unless score #math_00 nexus.value matches 0001048576.. run data modify storage nexus:data database[{b20:1b}].target set value 0b
execute if score #math_00 nexus.value matches 00000001048576.. run data modify storage nexus:data database[{b20:0b}].target set value 0b
execute if score #math_00 nexus.value matches 00000001048576.. run scoreboard players remove #math_00 nexus.value 1048576
execute unless score #math_00 nexus.value matches 0000524288.. run data modify storage nexus:data database[{b19:1b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000524288.. run data modify storage nexus:data database[{b19:0b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000524288.. run scoreboard players remove #math_00 nexus.value 524288
execute unless score #math_00 nexus.value matches 0000262144.. run data modify storage nexus:data database[{b18:1b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000262144.. run data modify storage nexus:data database[{b18:0b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000262144.. run scoreboard players remove #math_00 nexus.value 262144
execute unless score #math_00 nexus.value matches 0000131072.. run data modify storage nexus:data database[{b17:1b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000131072.. run data modify storage nexus:data database[{b17:0b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000131072.. run scoreboard players remove #math_00 nexus.value 131072
execute unless score #math_00 nexus.value matches 0000065536.. run data modify storage nexus:data database[{b16:1b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000065536.. run data modify storage nexus:data database[{b16:0b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000065536.. run scoreboard players remove #math_00 nexus.value 65536
execute unless score #math_00 nexus.value matches 0000032768.. run data modify storage nexus:data database[{b15:1b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000032768.. run data modify storage nexus:data database[{b15:0b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000032768.. run scoreboard players remove #math_00 nexus.value 32768
execute unless score #math_00 nexus.value matches 0000016384.. run data modify storage nexus:data database[{b14:1b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000016384.. run data modify storage nexus:data database[{b14:0b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000016384.. run scoreboard players remove #math_00 nexus.value 16384
execute unless score #math_00 nexus.value matches 0000008192.. run data modify storage nexus:data database[{b13:1b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000008192.. run data modify storage nexus:data database[{b13:0b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000008192.. run scoreboard players remove #math_00 nexus.value 8192
execute unless score #math_00 nexus.value matches 0000004096.. run data modify storage nexus:data database[{b12:1b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000004096.. run data modify storage nexus:data database[{b12:0b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000004096.. run scoreboard players remove #math_00 nexus.value 4096
execute unless score #math_00 nexus.value matches 0000002048.. run data modify storage nexus:data database[{b11:1b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000002048.. run data modify storage nexus:data database[{b11:0b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000002048.. run scoreboard players remove #math_00 nexus.value 2048
execute unless score #math_00 nexus.value matches 0000001024.. run data modify storage nexus:data database[{b10:1b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000001024.. run data modify storage nexus:data database[{b10:0b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000001024.. run scoreboard players remove #math_00 nexus.value 1024
execute unless score #math_00 nexus.value matches 0000000512.. run data modify storage nexus:data database[{b09:1b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000000512.. run data modify storage nexus:data database[{b09:0b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000000512.. run scoreboard players remove #math_00 nexus.value 512
execute unless score #math_00 nexus.value matches 0000000256.. run data modify storage nexus:data database[{b08:1b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000000256.. run data modify storage nexus:data database[{b08:0b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000000256.. run scoreboard players remove #math_00 nexus.value 256
execute unless score #math_00 nexus.value matches 0000000128.. run data modify storage nexus:data database[{b07:1b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000000128.. run data modify storage nexus:data database[{b07:0b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000000128.. run scoreboard players remove #math_00 nexus.value 128
execute unless score #math_00 nexus.value matches 0000000064.. run data modify storage nexus:data database[{b06:1b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000000064.. run data modify storage nexus:data database[{b06:0b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000000064.. run scoreboard players remove #math_00 nexus.value 64
execute unless score #math_00 nexus.value matches 0000000032.. run data modify storage nexus:data database[{b05:1b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000000032.. run data modify storage nexus:data database[{b05:0b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000000032.. run scoreboard players remove #math_00 nexus.value 32
execute unless score #math_00 nexus.value matches 0000000016.. run data modify storage nexus:data database[{b04:1b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000000016.. run data modify storage nexus:data database[{b04:0b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000000016.. run scoreboard players remove #math_00 nexus.value 16
execute unless score #math_00 nexus.value matches 0000000008.. run data modify storage nexus:data database[{b03:1b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000000008.. run data modify storage nexus:data database[{b03:0b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000000008.. run scoreboard players remove #math_00 nexus.value 8
execute unless score #math_00 nexus.value matches 0000000004.. run data modify storage nexus:data database[{b02:1b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000000004.. run data modify storage nexus:data database[{b02:0b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000000004.. run scoreboard players remove #math_00 nexus.value 4
execute unless score #math_00 nexus.value matches 0000000002.. run data modify storage nexus:data database[{b01:1b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000000002.. run data modify storage nexus:data database[{b01:0b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000000002.. run scoreboard players remove #math_00 nexus.value 2
execute unless score #math_00 nexus.value matches 0000000001.. run data modify storage nexus:data database[{b00:1b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000000001.. run data modify storage nexus:data database[{b00:0b}].target set value 0b
execute if score #math_00 nexus.value matches 00000000000001.. run scoreboard players remove #math_00 nexus.value 1







# Append to list if no target is found

execute unless data storage nexus:data database[{target:1b}] run function nexus:generic/database/append