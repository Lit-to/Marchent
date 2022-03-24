#tellraw @a [{"score":{"objective": "ArrayUtilInput","name": "$Move"}},{"text":"<<<<"}]

data modify entity @s Offers.Recipes set from storage trader: temp
#data modify entity @s Offers set from storage trader: temp

scoreboard players reset $Move ArrayUtilInput
scoreboard players reset cost ArrayUtilInput
scoreboard players reset count ArrayUtilInput
data remove storage array_util: Array
data remove storage trader: what

#tellraw @a [{"text":"fin"}]

