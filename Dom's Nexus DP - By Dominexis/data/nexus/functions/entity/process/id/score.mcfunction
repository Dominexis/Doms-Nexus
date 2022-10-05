# Assign ID

execute unless score @s nexus.id = @s nexus.id store result score @s nexus.id run scoreboard players add #global nexus.id 1
execute unless score @s nexus.entity_id = @s nexus.entity_id store result score @s nexus.entity_id run scoreboard players add #global nexus.entity_id 1







# Remove tags

tag @s remove nexus.id.00
tag @s remove nexus.id.01
tag @s remove nexus.id.02
tag @s remove nexus.id.03
tag @s remove nexus.id.04
tag @s remove nexus.id.05
tag @s remove nexus.id.06
tag @s remove nexus.id.07
tag @s remove nexus.id.08
tag @s remove nexus.id.09
tag @s remove nexus.id.10
tag @s remove nexus.id.11
tag @s remove nexus.id.12
tag @s remove nexus.id.13
tag @s remove nexus.id.14
tag @s remove nexus.id.15
tag @s remove nexus.id.16
tag @s remove nexus.id.17
tag @s remove nexus.id.18
tag @s remove nexus.id.19
tag @s remove nexus.id.20
tag @s remove nexus.id.21
tag @s remove nexus.id.22
tag @s remove nexus.id.23
tag @s remove nexus.id.24
tag @s remove nexus.id.25
tag @s remove nexus.id.26
tag @s remove nexus.id.27
tag @s remove nexus.id.28
tag @s remove nexus.id.29
tag @s remove nexus.id.30
tag @s remove nexus.id.31

tag @s remove nexus.eid.00.0
tag @s remove nexus.eid.01.0
tag @s remove nexus.eid.02.0
tag @s remove nexus.eid.03.0
tag @s remove nexus.eid.04.0
tag @s remove nexus.eid.05.0
tag @s remove nexus.eid.06.0
tag @s remove nexus.eid.07.0
tag @s remove nexus.eid.08.0
tag @s remove nexus.eid.09.0
tag @s remove nexus.eid.10.0
tag @s remove nexus.eid.11.0
tag @s remove nexus.eid.12.0
tag @s remove nexus.eid.13.0
tag @s remove nexus.eid.14.0
tag @s remove nexus.eid.15.0
tag @s remove nexus.eid.16.0
tag @s remove nexus.eid.17.0
tag @s remove nexus.eid.18.0
tag @s remove nexus.eid.19.0
tag @s remove nexus.eid.20.0
tag @s remove nexus.eid.21.0
tag @s remove nexus.eid.22.0
tag @s remove nexus.eid.23.0
tag @s remove nexus.eid.24.0
tag @s remove nexus.eid.25.0
tag @s remove nexus.eid.26.0
tag @s remove nexus.eid.27.0
tag @s remove nexus.eid.28.0
tag @s remove nexus.eid.29.0
tag @s remove nexus.eid.30.0
tag @s remove nexus.eid.31.0

tag @s remove nexus.eid.00.1
tag @s remove nexus.eid.01.1
tag @s remove nexus.eid.02.1
tag @s remove nexus.eid.03.1
tag @s remove nexus.eid.04.1
tag @s remove nexus.eid.05.1
tag @s remove nexus.eid.06.1
tag @s remove nexus.eid.07.1
tag @s remove nexus.eid.08.1
tag @s remove nexus.eid.09.1
tag @s remove nexus.eid.10.1
tag @s remove nexus.eid.11.1
tag @s remove nexus.eid.12.1
tag @s remove nexus.eid.13.1
tag @s remove nexus.eid.14.1
tag @s remove nexus.eid.15.1
tag @s remove nexus.eid.16.1
tag @s remove nexus.eid.17.1
tag @s remove nexus.eid.18.1
tag @s remove nexus.eid.19.1
tag @s remove nexus.eid.20.1
tag @s remove nexus.eid.21.1
tag @s remove nexus.eid.22.1
tag @s remove nexus.eid.23.1
tag @s remove nexus.eid.24.1
tag @s remove nexus.eid.25.1
tag @s remove nexus.eid.26.1
tag @s remove nexus.eid.27.1
tag @s remove nexus.eid.28.1
tag @s remove nexus.eid.29.1
tag @s remove nexus.eid.30.1
tag @s remove nexus.eid.31.1







# Assign ID bit tags

scoreboard players operation #local nexus.id = @s nexus.id
execute if score #local nexus.id matches ..-000000001 run tag @s add nexus.id.31
execute if score #local nexus.id matches ..-000000001 run scoreboard players operation #local nexus.id -= #-2147483648 nexus.value
execute if score #local nexus.id matches 1073741824.. run tag @s add nexus.id.30
execute if score #local nexus.id matches 1073741824.. run scoreboard players remove #local nexus.id 1073741824
execute if score #local nexus.id matches 0536870912.. run tag @s add nexus.id.29
execute if score #local nexus.id matches 0536870912.. run scoreboard players remove #local nexus.id 536870912
execute if score #local nexus.id matches 0268435456.. run tag @s add nexus.id.28
execute if score #local nexus.id matches 0268435456.. run scoreboard players remove #local nexus.id 268435456
execute if score #local nexus.id matches 0134217728.. run tag @s add nexus.id.27
execute if score #local nexus.id matches 0134217728.. run scoreboard players remove #local nexus.id 134217728
execute if score #local nexus.id matches 0067108864.. run tag @s add nexus.id.26
execute if score #local nexus.id matches 0067108864.. run scoreboard players remove #local nexus.id 67108864
execute if score #local nexus.id matches 0033554432.. run tag @s add nexus.id.25
execute if score #local nexus.id matches 0033554432.. run scoreboard players remove #local nexus.id 33554432
execute if score #local nexus.id matches 0016777216.. run tag @s add nexus.id.24
execute if score #local nexus.id matches 0016777216.. run scoreboard players remove #local nexus.id 16777216
execute if score #local nexus.id matches 0008388608.. run tag @s add nexus.id.23
execute if score #local nexus.id matches 0008388608.. run scoreboard players remove #local nexus.id 8388608
execute if score #local nexus.id matches 0004194304.. run tag @s add nexus.id.22
execute if score #local nexus.id matches 0004194304.. run scoreboard players remove #local nexus.id 4194304
execute if score #local nexus.id matches 0002097152.. run tag @s add nexus.id.21
execute if score #local nexus.id matches 0002097152.. run scoreboard players remove #local nexus.id 2097152
execute if score #local nexus.id matches 0001048576.. run tag @s add nexus.id.20
execute if score #local nexus.id matches 0001048576.. run scoreboard players remove #local nexus.id 1048576
execute if score #local nexus.id matches 0000524288.. run tag @s add nexus.id.19
execute if score #local nexus.id matches 0000524288.. run scoreboard players remove #local nexus.id 524288
execute if score #local nexus.id matches 0000262144.. run tag @s add nexus.id.18
execute if score #local nexus.id matches 0000262144.. run scoreboard players remove #local nexus.id 262144
execute if score #local nexus.id matches 0000131072.. run tag @s add nexus.id.17
execute if score #local nexus.id matches 0000131072.. run scoreboard players remove #local nexus.id 131072
execute if score #local nexus.id matches 0000065536.. run tag @s add nexus.id.16
execute if score #local nexus.id matches 0000065536.. run scoreboard players remove #local nexus.id 65536
execute if score #local nexus.id matches 0000032768.. run tag @s add nexus.id.15
execute if score #local nexus.id matches 0000032768.. run scoreboard players remove #local nexus.id 32768
execute if score #local nexus.id matches 0000016384.. run tag @s add nexus.id.14
execute if score #local nexus.id matches 0000016384.. run scoreboard players remove #local nexus.id 16384
execute if score #local nexus.id matches 0000008192.. run tag @s add nexus.id.13
execute if score #local nexus.id matches 0000008192.. run scoreboard players remove #local nexus.id 8192
execute if score #local nexus.id matches 0000004096.. run tag @s add nexus.id.12
execute if score #local nexus.id matches 0000004096.. run scoreboard players remove #local nexus.id 4096
execute if score #local nexus.id matches 0000002048.. run tag @s add nexus.id.11
execute if score #local nexus.id matches 0000002048.. run scoreboard players remove #local nexus.id 2048
execute if score #local nexus.id matches 0000001024.. run tag @s add nexus.id.10
execute if score #local nexus.id matches 0000001024.. run scoreboard players remove #local nexus.id 1024
execute if score #local nexus.id matches 0000000512.. run tag @s add nexus.id.09
execute if score #local nexus.id matches 0000000512.. run scoreboard players remove #local nexus.id 512
execute if score #local nexus.id matches 0000000256.. run tag @s add nexus.id.08
execute if score #local nexus.id matches 0000000256.. run scoreboard players remove #local nexus.id 256
execute if score #local nexus.id matches 0000000128.. run tag @s add nexus.id.07
execute if score #local nexus.id matches 0000000128.. run scoreboard players remove #local nexus.id 128
execute if score #local nexus.id matches 0000000064.. run tag @s add nexus.id.06
execute if score #local nexus.id matches 0000000064.. run scoreboard players remove #local nexus.id 64
execute if score #local nexus.id matches 0000000032.. run tag @s add nexus.id.05
execute if score #local nexus.id matches 0000000032.. run scoreboard players remove #local nexus.id 32
execute if score #local nexus.id matches 0000000016.. run tag @s add nexus.id.04
execute if score #local nexus.id matches 0000000016.. run scoreboard players remove #local nexus.id 16
execute if score #local nexus.id matches 0000000008.. run tag @s add nexus.id.03
execute if score #local nexus.id matches 0000000008.. run scoreboard players remove #local nexus.id 8
execute if score #local nexus.id matches 0000000004.. run tag @s add nexus.id.02
execute if score #local nexus.id matches 0000000004.. run scoreboard players remove #local nexus.id 4
execute if score #local nexus.id matches 0000000002.. run tag @s add nexus.id.01
execute if score #local nexus.id matches 0000000002.. run scoreboard players remove #local nexus.id 2
execute if score #local nexus.id matches 0000000001.. run tag @s add nexus.id.00
execute if score #local nexus.id matches 0000000001.. run scoreboard players remove #local nexus.id 1







# Assign entity ID bit tags

scoreboard players operation #local nexus.entity_id = @s nexus.entity_id
execute if score #local nexus.entity_id matches ..-000000001 run tag @s add nexus.eid.31.1
execute if score #local nexus.entity_id matches ..-000000001 run scoreboard players operation #local nexus.entity_id -= #-2147483648 nexus.value
execute if score #local nexus.entity_id matches 1073741824.. run tag @s add nexus.eid.30.1
execute if score #local nexus.entity_id matches 1073741824.. run scoreboard players remove #local nexus.entity_id 1073741824
execute if score #local nexus.entity_id matches 0536870912.. run tag @s add nexus.eid.29.1
execute if score #local nexus.entity_id matches 0536870912.. run scoreboard players remove #local nexus.entity_id 536870912
execute if score #local nexus.entity_id matches 0268435456.. run tag @s add nexus.eid.28.1
execute if score #local nexus.entity_id matches 0268435456.. run scoreboard players remove #local nexus.entity_id 268435456
execute if score #local nexus.entity_id matches 0134217728.. run tag @s add nexus.eid.27.1
execute if score #local nexus.entity_id matches 0134217728.. run scoreboard players remove #local nexus.entity_id 134217728
execute if score #local nexus.entity_id matches 0067108864.. run tag @s add nexus.eid.26.1
execute if score #local nexus.entity_id matches 0067108864.. run scoreboard players remove #local nexus.entity_id 67108864
execute if score #local nexus.entity_id matches 0033554432.. run tag @s add nexus.eid.25.1
execute if score #local nexus.entity_id matches 0033554432.. run scoreboard players remove #local nexus.entity_id 33554432
execute if score #local nexus.entity_id matches 0016777216.. run tag @s add nexus.eid.24.1
execute if score #local nexus.entity_id matches 0016777216.. run scoreboard players remove #local nexus.entity_id 16777216
execute if score #local nexus.entity_id matches 0008388608.. run tag @s add nexus.eid.23.1
execute if score #local nexus.entity_id matches 0008388608.. run scoreboard players remove #local nexus.entity_id 8388608
execute if score #local nexus.entity_id matches 0004194304.. run tag @s add nexus.eid.22.1
execute if score #local nexus.entity_id matches 0004194304.. run scoreboard players remove #local nexus.entity_id 4194304
execute if score #local nexus.entity_id matches 0002097152.. run tag @s add nexus.eid.21.1
execute if score #local nexus.entity_id matches 0002097152.. run scoreboard players remove #local nexus.entity_id 2097152
execute if score #local nexus.entity_id matches 0001048576.. run tag @s add nexus.eid.20.1
execute if score #local nexus.entity_id matches 0001048576.. run scoreboard players remove #local nexus.entity_id 1048576
execute if score #local nexus.entity_id matches 0000524288.. run tag @s add nexus.eid.19.1
execute if score #local nexus.entity_id matches 0000524288.. run scoreboard players remove #local nexus.entity_id 524288
execute if score #local nexus.entity_id matches 0000262144.. run tag @s add nexus.eid.18.1
execute if score #local nexus.entity_id matches 0000262144.. run scoreboard players remove #local nexus.entity_id 262144
execute if score #local nexus.entity_id matches 0000131072.. run tag @s add nexus.eid.17.1
execute if score #local nexus.entity_id matches 0000131072.. run scoreboard players remove #local nexus.entity_id 131072
execute if score #local nexus.entity_id matches 0000065536.. run tag @s add nexus.eid.16.1
execute if score #local nexus.entity_id matches 0000065536.. run scoreboard players remove #local nexus.entity_id 65536
execute if score #local nexus.entity_id matches 0000032768.. run tag @s add nexus.eid.15.1
execute if score #local nexus.entity_id matches 0000032768.. run scoreboard players remove #local nexus.entity_id 32768
execute if score #local nexus.entity_id matches 0000016384.. run tag @s add nexus.eid.14.1
execute if score #local nexus.entity_id matches 0000016384.. run scoreboard players remove #local nexus.entity_id 16384
execute if score #local nexus.entity_id matches 0000008192.. run tag @s add nexus.eid.13.1
execute if score #local nexus.entity_id matches 0000008192.. run scoreboard players remove #local nexus.entity_id 8192
execute if score #local nexus.entity_id matches 0000004096.. run tag @s add nexus.eid.12.1
execute if score #local nexus.entity_id matches 0000004096.. run scoreboard players remove #local nexus.entity_id 4096
execute if score #local nexus.entity_id matches 0000002048.. run tag @s add nexus.eid.11.1
execute if score #local nexus.entity_id matches 0000002048.. run scoreboard players remove #local nexus.entity_id 2048
execute if score #local nexus.entity_id matches 0000001024.. run tag @s add nexus.eid.10.1
execute if score #local nexus.entity_id matches 0000001024.. run scoreboard players remove #local nexus.entity_id 1024
execute if score #local nexus.entity_id matches 0000000512.. run tag @s add nexus.eid.09.1
execute if score #local nexus.entity_id matches 0000000512.. run scoreboard players remove #local nexus.entity_id 512
execute if score #local nexus.entity_id matches 0000000256.. run tag @s add nexus.eid.08.1
execute if score #local nexus.entity_id matches 0000000256.. run scoreboard players remove #local nexus.entity_id 256
execute if score #local nexus.entity_id matches 0000000128.. run tag @s add nexus.eid.07.1
execute if score #local nexus.entity_id matches 0000000128.. run scoreboard players remove #local nexus.entity_id 128
execute if score #local nexus.entity_id matches 0000000064.. run tag @s add nexus.eid.06.1
execute if score #local nexus.entity_id matches 0000000064.. run scoreboard players remove #local nexus.entity_id 64
execute if score #local nexus.entity_id matches 0000000032.. run tag @s add nexus.eid.05.1
execute if score #local nexus.entity_id matches 0000000032.. run scoreboard players remove #local nexus.entity_id 32
execute if score #local nexus.entity_id matches 0000000016.. run tag @s add nexus.eid.04.1
execute if score #local nexus.entity_id matches 0000000016.. run scoreboard players remove #local nexus.entity_id 16
execute if score #local nexus.entity_id matches 0000000008.. run tag @s add nexus.eid.03.1
execute if score #local nexus.entity_id matches 0000000008.. run scoreboard players remove #local nexus.entity_id 8
execute if score #local nexus.entity_id matches 0000000004.. run tag @s add nexus.eid.02.1
execute if score #local nexus.entity_id matches 0000000004.. run scoreboard players remove #local nexus.entity_id 4
execute if score #local nexus.entity_id matches 0000000002.. run tag @s add nexus.eid.01.1
execute if score #local nexus.entity_id matches 0000000002.. run scoreboard players remove #local nexus.entity_id 2
execute if score #local nexus.entity_id matches 0000000001.. run tag @s add nexus.eid.00.1
execute if score #local nexus.entity_id matches 0000000001.. run scoreboard players remove #local nexus.entity_id 1







# Add null tags

tag @s[tag=!nexus.eid.00.1] add nexus.eid.00.0
tag @s[tag=!nexus.eid.01.1] add nexus.eid.01.0
tag @s[tag=!nexus.eid.02.1] add nexus.eid.02.0
tag @s[tag=!nexus.eid.03.1] add nexus.eid.03.0
tag @s[tag=!nexus.eid.04.1] add nexus.eid.04.0
tag @s[tag=!nexus.eid.05.1] add nexus.eid.05.0
tag @s[tag=!nexus.eid.06.1] add nexus.eid.06.0
tag @s[tag=!nexus.eid.07.1] add nexus.eid.07.0
tag @s[tag=!nexus.eid.08.1] add nexus.eid.08.0
tag @s[tag=!nexus.eid.09.1] add nexus.eid.09.0
tag @s[tag=!nexus.eid.10.1] add nexus.eid.10.0
tag @s[tag=!nexus.eid.11.1] add nexus.eid.11.0
tag @s[tag=!nexus.eid.12.1] add nexus.eid.12.0
tag @s[tag=!nexus.eid.13.1] add nexus.eid.13.0
tag @s[tag=!nexus.eid.14.1] add nexus.eid.14.0
tag @s[tag=!nexus.eid.15.1] add nexus.eid.15.0
tag @s[tag=!nexus.eid.16.1] add nexus.eid.16.0
tag @s[tag=!nexus.eid.17.1] add nexus.eid.17.0
tag @s[tag=!nexus.eid.18.1] add nexus.eid.18.0
tag @s[tag=!nexus.eid.19.1] add nexus.eid.19.0
tag @s[tag=!nexus.eid.20.1] add nexus.eid.20.0
tag @s[tag=!nexus.eid.21.1] add nexus.eid.21.0
tag @s[tag=!nexus.eid.22.1] add nexus.eid.22.0
tag @s[tag=!nexus.eid.23.1] add nexus.eid.23.0
tag @s[tag=!nexus.eid.24.1] add nexus.eid.24.0
tag @s[tag=!nexus.eid.25.1] add nexus.eid.25.0
tag @s[tag=!nexus.eid.26.1] add nexus.eid.26.0
tag @s[tag=!nexus.eid.27.1] add nexus.eid.27.0
tag @s[tag=!nexus.eid.28.1] add nexus.eid.28.0
tag @s[tag=!nexus.eid.29.1] add nexus.eid.29.0
tag @s[tag=!nexus.eid.30.1] add nexus.eid.30.0
tag @s[tag=!nexus.eid.31.1] add nexus.eid.31.0







# Add ID tag

tag @s add nexus.id