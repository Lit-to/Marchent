#> marchent:change/lookup/next
data modify storage trader: temp insert -1 from storage trader: get
data modify storage trader: temp[-1].maxUses set value 25565
#tellraw @a [{"nbt":"temp[-1]","storage": "trader:"},{"text":"....."}]
#data remove storage trader: temp
data remove storage trader: get
data remove storage trader: what
data remove storage trader: whe
#function chenbr_array_utility:api/revert
#execute if score Slot trader matches 35 run data modify entity @s Offers.Recipes set from storage trader: temp
function marchent:change/lookup/check

