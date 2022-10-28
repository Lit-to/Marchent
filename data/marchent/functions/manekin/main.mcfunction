#> marchent:manekin/main
summon villager ~ ~ ~ {Invulnerable:1b,NoAI:1b,Tags:["trader","sp"],VillagerData:{level:99}}
execute as @e[type=villager,tag=sp] at @s run setblock ~ ~-3 ~ shulker_box

