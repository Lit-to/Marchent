#> marchent:change/lookup/fin
#tellraw @a [{"score":{"objective": "ArrayUtilInput","name": "$Move"}},{"text":"<<<<"}]

data modify entity @s Offers.Recipes set from storage trader: temp
#data modify entity @s Offers set from storage trader: temp
data remove storage trader: what
data remove storage trader: temp 
#tellraw @a [{"text":"fin"}]

