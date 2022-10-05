# Process bits

scoreboard players operation #cbrng_z nexus.value = #input_z nexus.value

execute if score #cbrng_z nexus.value matches ..-1 run scoreboard players operation #output nexus.value *= #cbrng_z_multiplier_31 nexus.value
execute if score #cbrng_z nexus.value matches ..-1 run scoreboard players operation #output nexus.value += #cbrng_z_increment_31 nexus.value
execute if score #cbrng_z nexus.value matches ..-1 run scoreboard players operation #cbrng_z nexus.value -= #-2147483648 nexus.value

execute if score #cbrng_z nexus.value matches 1073741824.. run scoreboard players operation #output nexus.value *= #cbrng_z_multiplier_30 nexus.value
execute if score #cbrng_z nexus.value matches 1073741824.. run scoreboard players operation #output nexus.value += #cbrng_z_increment_30 nexus.value
execute if score #cbrng_z nexus.value matches 1073741824.. run scoreboard players remove #cbrng_z nexus.value 1073741824

execute if score #cbrng_z nexus.value matches 536870912.. run scoreboard players operation #output nexus.value *= #cbrng_z_multiplier_29 nexus.value
execute if score #cbrng_z nexus.value matches 536870912.. run scoreboard players operation #output nexus.value += #cbrng_z_increment_29 nexus.value
execute if score #cbrng_z nexus.value matches 536870912.. run scoreboard players remove #cbrng_z nexus.value 536870912

execute if score #cbrng_z nexus.value matches 268435456.. run scoreboard players operation #output nexus.value *= #cbrng_z_multiplier_28 nexus.value
execute if score #cbrng_z nexus.value matches 268435456.. run scoreboard players operation #output nexus.value += #cbrng_z_increment_28 nexus.value
execute if score #cbrng_z nexus.value matches 268435456.. run scoreboard players remove #cbrng_z nexus.value 268435456

scoreboard players operation #rng_bit_swap nexus.value = #output nexus.value
scoreboard players operation #rng_bit_swap nexus.value /= #65536 nexus.value
scoreboard players operation #output nexus.value *= #65536 nexus.value
scoreboard players operation #output nexus.value += #rng_bit_swap nexus.value

execute if score #cbrng_z nexus.value matches 134217728.. run scoreboard players operation #output nexus.value *= #cbrng_z_multiplier_27 nexus.value
execute if score #cbrng_z nexus.value matches 134217728.. run scoreboard players operation #output nexus.value += #cbrng_z_increment_27 nexus.value
execute if score #cbrng_z nexus.value matches 134217728.. run scoreboard players remove #cbrng_z nexus.value 134217728

execute if score #cbrng_z nexus.value matches 67108864.. run scoreboard players operation #output nexus.value *= #cbrng_z_multiplier_26 nexus.value
execute if score #cbrng_z nexus.value matches 67108864.. run scoreboard players operation #output nexus.value += #cbrng_z_increment_26 nexus.value
execute if score #cbrng_z nexus.value matches 67108864.. run scoreboard players remove #cbrng_z nexus.value 67108864

execute if score #cbrng_z nexus.value matches 33554432.. run scoreboard players operation #output nexus.value *= #cbrng_z_multiplier_25 nexus.value
execute if score #cbrng_z nexus.value matches 33554432.. run scoreboard players operation #output nexus.value += #cbrng_z_increment_25 nexus.value
execute if score #cbrng_z nexus.value matches 33554432.. run scoreboard players remove #cbrng_z nexus.value 33554432

execute if score #cbrng_z nexus.value matches 16777216.. run scoreboard players operation #output nexus.value *= #cbrng_z_multiplier_24 nexus.value
execute if score #cbrng_z nexus.value matches 16777216.. run scoreboard players operation #output nexus.value += #cbrng_z_increment_24 nexus.value
execute if score #cbrng_z nexus.value matches 16777216.. run scoreboard players remove #cbrng_z nexus.value 16777216

scoreboard players operation #rng_bit_swap nexus.value = #output nexus.value
scoreboard players operation #rng_bit_swap nexus.value /= #65536 nexus.value
scoreboard players operation #output nexus.value *= #65536 nexus.value
scoreboard players operation #output nexus.value += #rng_bit_swap nexus.value

execute if score #cbrng_z nexus.value matches 8388608.. run scoreboard players operation #output nexus.value *= #cbrng_z_multiplier_23 nexus.value
execute if score #cbrng_z nexus.value matches 8388608.. run scoreboard players operation #output nexus.value += #cbrng_z_increment_23 nexus.value
execute if score #cbrng_z nexus.value matches 8388608.. run scoreboard players remove #cbrng_z nexus.value 8388608

execute if score #cbrng_z nexus.value matches 4194304.. run scoreboard players operation #output nexus.value *= #cbrng_z_multiplier_22 nexus.value
execute if score #cbrng_z nexus.value matches 4194304.. run scoreboard players operation #output nexus.value += #cbrng_z_increment_22 nexus.value
execute if score #cbrng_z nexus.value matches 4194304.. run scoreboard players remove #cbrng_z nexus.value 4194304

execute if score #cbrng_z nexus.value matches 2097152.. run scoreboard players operation #output nexus.value *= #cbrng_z_multiplier_21 nexus.value
execute if score #cbrng_z nexus.value matches 2097152.. run scoreboard players operation #output nexus.value += #cbrng_z_increment_21 nexus.value
execute if score #cbrng_z nexus.value matches 2097152.. run scoreboard players remove #cbrng_z nexus.value 2097152

execute if score #cbrng_z nexus.value matches 1048576.. run scoreboard players operation #output nexus.value *= #cbrng_z_multiplier_20 nexus.value
execute if score #cbrng_z nexus.value matches 1048576.. run scoreboard players operation #output nexus.value += #cbrng_z_increment_20 nexus.value
execute if score #cbrng_z nexus.value matches 1048576.. run scoreboard players remove #cbrng_z nexus.value 1048576

scoreboard players operation #rng_bit_swap nexus.value = #output nexus.value
scoreboard players operation #rng_bit_swap nexus.value /= #65536 nexus.value
scoreboard players operation #output nexus.value *= #65536 nexus.value
scoreboard players operation #output nexus.value += #rng_bit_swap nexus.value

execute if score #cbrng_z nexus.value matches 524288.. run scoreboard players operation #output nexus.value *= #cbrng_z_multiplier_19 nexus.value
execute if score #cbrng_z nexus.value matches 524288.. run scoreboard players operation #output nexus.value += #cbrng_z_increment_19 nexus.value
execute if score #cbrng_z nexus.value matches 524288.. run scoreboard players remove #cbrng_z nexus.value 524288

execute if score #cbrng_z nexus.value matches 262144.. run scoreboard players operation #output nexus.value *= #cbrng_z_multiplier_18 nexus.value
execute if score #cbrng_z nexus.value matches 262144.. run scoreboard players operation #output nexus.value += #cbrng_z_increment_18 nexus.value
execute if score #cbrng_z nexus.value matches 262144.. run scoreboard players remove #cbrng_z nexus.value 262144

execute if score #cbrng_z nexus.value matches 131072.. run scoreboard players operation #output nexus.value *= #cbrng_z_multiplier_17 nexus.value
execute if score #cbrng_z nexus.value matches 131072.. run scoreboard players operation #output nexus.value += #cbrng_z_increment_17 nexus.value
execute if score #cbrng_z nexus.value matches 131072.. run scoreboard players remove #cbrng_z nexus.value 131072

execute if score #cbrng_z nexus.value matches 65536.. run scoreboard players operation #output nexus.value *= #cbrng_z_multiplier_16 nexus.value
execute if score #cbrng_z nexus.value matches 65536.. run scoreboard players operation #output nexus.value += #cbrng_z_increment_16 nexus.value
execute if score #cbrng_z nexus.value matches 65536.. run scoreboard players remove #cbrng_z nexus.value 65536

scoreboard players operation #rng_bit_swap nexus.value = #output nexus.value
scoreboard players operation #rng_bit_swap nexus.value /= #65536 nexus.value
scoreboard players operation #output nexus.value *= #65536 nexus.value
scoreboard players operation #output nexus.value += #rng_bit_swap nexus.value

execute if score #cbrng_z nexus.value matches 32768.. run scoreboard players operation #output nexus.value *= #cbrng_z_multiplier_15 nexus.value
execute if score #cbrng_z nexus.value matches 32768.. run scoreboard players operation #output nexus.value += #cbrng_z_increment_15 nexus.value
execute if score #cbrng_z nexus.value matches 32768.. run scoreboard players remove #cbrng_z nexus.value 32768

execute if score #cbrng_z nexus.value matches 16384.. run scoreboard players operation #output nexus.value *= #cbrng_z_multiplier_14 nexus.value
execute if score #cbrng_z nexus.value matches 16384.. run scoreboard players operation #output nexus.value += #cbrng_z_increment_14 nexus.value
execute if score #cbrng_z nexus.value matches 16384.. run scoreboard players remove #cbrng_z nexus.value 16384

execute if score #cbrng_z nexus.value matches 8192.. run scoreboard players operation #output nexus.value *= #cbrng_z_multiplier_13 nexus.value
execute if score #cbrng_z nexus.value matches 8192.. run scoreboard players operation #output nexus.value += #cbrng_z_increment_13 nexus.value
execute if score #cbrng_z nexus.value matches 8192.. run scoreboard players remove #cbrng_z nexus.value 8192

execute if score #cbrng_z nexus.value matches 4096.. run scoreboard players operation #output nexus.value *= #cbrng_z_multiplier_12 nexus.value
execute if score #cbrng_z nexus.value matches 4096.. run scoreboard players operation #output nexus.value += #cbrng_z_increment_12 nexus.value
execute if score #cbrng_z nexus.value matches 4096.. run scoreboard players remove #cbrng_z nexus.value 4096

scoreboard players operation #rng_bit_swap nexus.value = #output nexus.value
scoreboard players operation #rng_bit_swap nexus.value /= #65536 nexus.value
scoreboard players operation #output nexus.value *= #65536 nexus.value
scoreboard players operation #output nexus.value += #rng_bit_swap nexus.value

execute if score #cbrng_z nexus.value matches 2048.. run scoreboard players operation #output nexus.value *= #cbrng_z_multiplier_11 nexus.value
execute if score #cbrng_z nexus.value matches 2048.. run scoreboard players operation #output nexus.value += #cbrng_z_increment_11 nexus.value
execute if score #cbrng_z nexus.value matches 2048.. run scoreboard players remove #cbrng_z nexus.value 2048

execute if score #cbrng_z nexus.value matches 1024.. run scoreboard players operation #output nexus.value *= #cbrng_z_multiplier_10 nexus.value
execute if score #cbrng_z nexus.value matches 1024.. run scoreboard players operation #output nexus.value += #cbrng_z_increment_10 nexus.value
execute if score #cbrng_z nexus.value matches 1024.. run scoreboard players remove #cbrng_z nexus.value 1024

execute if score #cbrng_z nexus.value matches 512.. run scoreboard players operation #output nexus.value *= #cbrng_z_multiplier_09 nexus.value
execute if score #cbrng_z nexus.value matches 512.. run scoreboard players operation #output nexus.value += #cbrng_z_increment_09 nexus.value
execute if score #cbrng_z nexus.value matches 512.. run scoreboard players remove #cbrng_z nexus.value 512

execute if score #cbrng_z nexus.value matches 256.. run scoreboard players operation #output nexus.value *= #cbrng_z_multiplier_08 nexus.value
execute if score #cbrng_z nexus.value matches 256.. run scoreboard players operation #output nexus.value += #cbrng_z_increment_08 nexus.value
execute if score #cbrng_z nexus.value matches 256.. run scoreboard players remove #cbrng_z nexus.value 256

scoreboard players operation #rng_bit_swap nexus.value = #output nexus.value
scoreboard players operation #rng_bit_swap nexus.value /= #65536 nexus.value
scoreboard players operation #output nexus.value *= #65536 nexus.value
scoreboard players operation #output nexus.value += #rng_bit_swap nexus.value

execute if score #cbrng_z nexus.value matches 128.. run scoreboard players operation #output nexus.value *= #cbrng_z_multiplier_07 nexus.value
execute if score #cbrng_z nexus.value matches 128.. run scoreboard players operation #output nexus.value += #cbrng_z_increment_07 nexus.value
execute if score #cbrng_z nexus.value matches 128.. run scoreboard players remove #cbrng_z nexus.value 128

execute if score #cbrng_z nexus.value matches 64.. run scoreboard players operation #output nexus.value *= #cbrng_z_multiplier_06 nexus.value
execute if score #cbrng_z nexus.value matches 64.. run scoreboard players operation #output nexus.value += #cbrng_z_increment_06 nexus.value
execute if score #cbrng_z nexus.value matches 64.. run scoreboard players remove #cbrng_z nexus.value 64

execute if score #cbrng_z nexus.value matches 32.. run scoreboard players operation #output nexus.value *= #cbrng_z_multiplier_05 nexus.value
execute if score #cbrng_z nexus.value matches 32.. run scoreboard players operation #output nexus.value += #cbrng_z_increment_05 nexus.value
execute if score #cbrng_z nexus.value matches 32.. run scoreboard players remove #cbrng_z nexus.value 32

execute if score #cbrng_z nexus.value matches 16.. run scoreboard players operation #output nexus.value *= #cbrng_z_multiplier_04 nexus.value
execute if score #cbrng_z nexus.value matches 16.. run scoreboard players operation #output nexus.value += #cbrng_z_increment_04 nexus.value
execute if score #cbrng_z nexus.value matches 16.. run scoreboard players remove #cbrng_z nexus.value 16

scoreboard players operation #rng_bit_swap nexus.value = #output nexus.value
scoreboard players operation #rng_bit_swap nexus.value /= #65536 nexus.value
scoreboard players operation #output nexus.value *= #65536 nexus.value
scoreboard players operation #output nexus.value += #rng_bit_swap nexus.value

execute if score #cbrng_z nexus.value matches 8.. run scoreboard players operation #output nexus.value *= #cbrng_z_multiplier_03 nexus.value
execute if score #cbrng_z nexus.value matches 8.. run scoreboard players operation #output nexus.value += #cbrng_z_increment_03 nexus.value
execute if score #cbrng_z nexus.value matches 8.. run scoreboard players remove #cbrng_z nexus.value 8

execute if score #cbrng_z nexus.value matches 4.. run scoreboard players operation #output nexus.value *= #cbrng_z_multiplier_02 nexus.value
execute if score #cbrng_z nexus.value matches 4.. run scoreboard players operation #output nexus.value += #cbrng_z_increment_02 nexus.value
execute if score #cbrng_z nexus.value matches 4.. run scoreboard players remove #cbrng_z nexus.value 4

execute if score #cbrng_z nexus.value matches 2.. run scoreboard players operation #output nexus.value *= #cbrng_z_multiplier_01 nexus.value
execute if score #cbrng_z nexus.value matches 2.. run scoreboard players operation #output nexus.value += #cbrng_z_increment_01 nexus.value
execute if score #cbrng_z nexus.value matches 2.. run scoreboard players remove #cbrng_z nexus.value 2

execute if score #cbrng_z nexus.value matches 1.. run scoreboard players operation #output nexus.value *= #cbrng_z_multiplier_00 nexus.value
execute if score #cbrng_z nexus.value matches 1.. run scoreboard players operation #output nexus.value += #cbrng_z_increment_00 nexus.value
execute if score #cbrng_z nexus.value matches 1.. run scoreboard players remove #cbrng_z nexus.value 1

scoreboard players operation #rng_bit_swap nexus.value = #output nexus.value
scoreboard players operation #rng_bit_swap nexus.value /= #65536 nexus.value
scoreboard players operation #output nexus.value *= #65536 nexus.value
scoreboard players operation #output nexus.value += #rng_bit_swap nexus.value