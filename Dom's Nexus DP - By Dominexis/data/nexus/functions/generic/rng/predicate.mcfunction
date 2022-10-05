# Generate random number

scoreboard players set #output nexus.value 0
execute if predicate nexus:random/5 run scoreboard players set #output nexus.value -2147483648
execute if predicate nexus:random/5 run scoreboard players add #output nexus.value 1073741824
execute if predicate nexus:random/5 run scoreboard players add #output nexus.value 536870912
execute if predicate nexus:random/5 run scoreboard players add #output nexus.value 268435456
execute if predicate nexus:random/5 run scoreboard players add #output nexus.value 134217728
execute if predicate nexus:random/5 run scoreboard players add #output nexus.value 67108864
execute if predicate nexus:random/5 run scoreboard players add #output nexus.value 33554432
execute if predicate nexus:random/5 run scoreboard players add #output nexus.value 16777216
execute if predicate nexus:random/5 run scoreboard players add #output nexus.value 8388608
execute if predicate nexus:random/5 run scoreboard players add #output nexus.value 4194304
execute if predicate nexus:random/5 run scoreboard players add #output nexus.value 2097152
execute if predicate nexus:random/5 run scoreboard players add #output nexus.value 1048576
execute if predicate nexus:random/5 run scoreboard players add #output nexus.value 524288
execute if predicate nexus:random/5 run scoreboard players add #output nexus.value 262144
execute if predicate nexus:random/5 run scoreboard players add #output nexus.value 131072
execute if predicate nexus:random/5 run scoreboard players add #output nexus.value 65536
execute if predicate nexus:random/5 run scoreboard players add #output nexus.value 32768
execute if predicate nexus:random/5 run scoreboard players add #output nexus.value 16384
execute if predicate nexus:random/5 run scoreboard players add #output nexus.value 8192
execute if predicate nexus:random/5 run scoreboard players add #output nexus.value 4096
execute if predicate nexus:random/5 run scoreboard players add #output nexus.value 2048
execute if predicate nexus:random/5 run scoreboard players add #output nexus.value 1024
execute if predicate nexus:random/5 run scoreboard players add #output nexus.value 512
execute if predicate nexus:random/5 run scoreboard players add #output nexus.value 256
execute if predicate nexus:random/5 run scoreboard players add #output nexus.value 128
execute if predicate nexus:random/5 run scoreboard players add #output nexus.value 64
execute if predicate nexus:random/5 run scoreboard players add #output nexus.value 32
execute if predicate nexus:random/5 run scoreboard players add #output nexus.value 16
execute if predicate nexus:random/5 run scoreboard players add #output nexus.value 8
execute if predicate nexus:random/5 run scoreboard players add #output nexus.value 4
execute if predicate nexus:random/5 run scoreboard players add #output nexus.value 2
execute if predicate nexus:random/5 run scoreboard players add #output nexus.value 1

execute if score #input nexus.value matches 1.. run scoreboard players operation #output nexus.value %= #input nexus.value