execute align xyz positioned ~0.5 ~ ~0.5 run function marchent:manekin/
execute as @e[type=villager,tag=sp] run data modify entity @s VillagerData.profession set value "minecraft:armorer"


tag @e remove sp
