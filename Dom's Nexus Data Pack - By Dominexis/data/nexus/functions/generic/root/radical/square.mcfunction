# Initialize output

scoreboard players set #output nexus.value 0







# Run iterations

scoreboard players operation #math_root nexus.value = #output nexus.value
scoreboard players add #math_root nexus.value 32768
scoreboard players operation #math_root nexus.value *= #math_root nexus.value
execute if score #math_root nexus.value <= #input nexus.value run scoreboard players add #output nexus.value 32768

scoreboard players operation #math_root nexus.value = #output nexus.value
scoreboard players add #math_root nexus.value 16384
scoreboard players operation #math_root nexus.value *= #math_root nexus.value
execute if score #math_root nexus.value <= #input nexus.value run scoreboard players add #output nexus.value 16384

scoreboard players operation #math_root nexus.value = #output nexus.value
scoreboard players add #math_root nexus.value 8192
scoreboard players operation #math_root nexus.value *= #math_root nexus.value
execute if score #math_root nexus.value <= #input nexus.value run scoreboard players add #output nexus.value 8192

scoreboard players operation #math_root nexus.value = #output nexus.value
scoreboard players add #math_root nexus.value 4096
scoreboard players operation #math_root nexus.value *= #math_root nexus.value
execute if score #math_root nexus.value <= #input nexus.value run scoreboard players add #output nexus.value 4096

scoreboard players operation #math_root nexus.value = #output nexus.value
scoreboard players add #math_root nexus.value 2048
scoreboard players operation #math_root nexus.value *= #math_root nexus.value
execute if score #math_root nexus.value <= #input nexus.value run scoreboard players add #output nexus.value 2048

scoreboard players operation #math_root nexus.value = #output nexus.value
scoreboard players add #math_root nexus.value 1024
scoreboard players operation #math_root nexus.value *= #math_root nexus.value
execute if score #math_root nexus.value <= #input nexus.value run scoreboard players add #output nexus.value 1024

scoreboard players operation #math_root nexus.value = #output nexus.value
scoreboard players add #math_root nexus.value 512
scoreboard players operation #math_root nexus.value *= #math_root nexus.value
execute if score #math_root nexus.value <= #input nexus.value run scoreboard players add #output nexus.value 512

scoreboard players operation #math_root nexus.value = #output nexus.value
scoreboard players add #math_root nexus.value 256
scoreboard players operation #math_root nexus.value *= #math_root nexus.value
execute if score #math_root nexus.value <= #input nexus.value run scoreboard players add #output nexus.value 256

scoreboard players operation #math_root nexus.value = #output nexus.value
scoreboard players add #math_root nexus.value 128
scoreboard players operation #math_root nexus.value *= #math_root nexus.value
execute if score #math_root nexus.value <= #input nexus.value run scoreboard players add #output nexus.value 128

scoreboard players operation #math_root nexus.value = #output nexus.value
scoreboard players add #math_root nexus.value 64
scoreboard players operation #math_root nexus.value *= #math_root nexus.value
execute if score #math_root nexus.value <= #input nexus.value run scoreboard players add #output nexus.value 64

scoreboard players operation #math_root nexus.value = #output nexus.value
scoreboard players add #math_root nexus.value 32
scoreboard players operation #math_root nexus.value *= #math_root nexus.value
execute if score #math_root nexus.value <= #input nexus.value run scoreboard players add #output nexus.value 32

scoreboard players operation #math_root nexus.value = #output nexus.value
scoreboard players add #math_root nexus.value 16
scoreboard players operation #math_root nexus.value *= #math_root nexus.value
execute if score #math_root nexus.value <= #input nexus.value run scoreboard players add #output nexus.value 16

scoreboard players operation #math_root nexus.value = #output nexus.value
scoreboard players add #math_root nexus.value 8
scoreboard players operation #math_root nexus.value *= #math_root nexus.value
execute if score #math_root nexus.value <= #input nexus.value run scoreboard players add #output nexus.value 8

scoreboard players operation #math_root nexus.value = #output nexus.value
scoreboard players add #math_root nexus.value 4
scoreboard players operation #math_root nexus.value *= #math_root nexus.value
execute if score #math_root nexus.value <= #input nexus.value run scoreboard players add #output nexus.value 4

scoreboard players operation #math_root nexus.value = #output nexus.value
scoreboard players add #math_root nexus.value 2
scoreboard players operation #math_root nexus.value *= #math_root nexus.value
execute if score #math_root nexus.value <= #input nexus.value run scoreboard players add #output nexus.value 2

scoreboard players operation #math_root nexus.value = #output nexus.value
scoreboard players add #math_root nexus.value 1
scoreboard players operation #math_root nexus.value *= #math_root nexus.value
execute if score #math_root nexus.value <= #input nexus.value run scoreboard players add #output nexus.value 1