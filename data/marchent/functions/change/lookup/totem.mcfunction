#> marchent:change/lookup/totem
#execute if score Slot trader matches 0..8 run data modify storage trader: get.sell set from storage trader: what
#execute if score Slot trader matches 0..8 run data remove storage trader: get.sell.Slot
#execute if score Slot trader matches 9..17 run data modify storage trader: get.buy set from storage trader: what
#execute if score Slot trader matches 9..17 run data remove storage trader: get.buy.Slot
#execute if score Slot trader matches 18..26 run data modify storage trader: get.buyB set from storage trader: what
#execute if score Slot trader matches 18..26 run data remove storage trader: get.buyB.Slot


execute run data modify storage trader: get.sell set from storage trader: cont.what.up
execute run data remove storage trader: get.sell.Slot
execute run data modify storage trader: get.buy set from storage trader: cont.what.cent
execute run data remove storage trader: get.buy.Slot
execute run data modify storage trader: get.buyB set from storage trader: cont.what.down
execute run data remove storage trader: get.buyB.Slot
#function marchent:change/lookup/next
data modify storage trader: temp insert -1 from storage trader: get
data modify storage trader: temp[-1].maxUses set value 25565
#tellraw @a [{"nbt":"temp[-1]","storage": "trader:"},{"text":"....."}]
#data remove storage trader: temp
data remove storage trader: get
#data remove storage trader: what
#data remove storage trader: whe
data remove storage trader: cont.up[0]
data remove storage trader: cont.cent[0]
data remove storage trader: cont.down[0]
#function chenbr_array_utility:api/revert
#execute if score Slot trader matches 35 run data modify entity @s Offers.Recipes set from storage trader: temp
function marchent:change/lookup/check





#tellraw @a [{"nbt":"what","storage": "trader:"}]
#tellraw @a [{"text": "||||||||||||"},{"score":{"objective": "ArrayUtilInput","name": "$Move"}},{"text": "+++"},{"score":{"objective": "ArrayUtilInput","name": "$Move"}},{"text": "|"},{"score":{"objective": "ArrayUtilInput","name": "cost"}},{"text": "~~~~"},{"nbt":"get","storage": "chenbr_array_utility:"}]


