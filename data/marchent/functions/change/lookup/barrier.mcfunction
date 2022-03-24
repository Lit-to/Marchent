
execute if score $Move ArrayUtilInput matches 0..8 run data modify storage trader: get.sell set from storage trader: what
execute if score $Move ArrayUtilInput matches 0..8 run data remove storage trader: get.sell.Slot
execute if score $Move ArrayUtilInput matches 9..17 run data modify storage trader: get.buy set from storage trader: what
execute if score $Move ArrayUtilInput matches 9..17 run data remove storage trader: get.buy.Slot
execute if score $Move ArrayUtilInput matches 18..26 run data modify storage trader: get.buyB set from storage trader: what
execute if score $Move ArrayUtilInput matches 18..26 run data remove storage trader: get.buyB.Slot


function marchent:change/lookup/next

#tellraw @a [{"nbt":"what","storage": "trader:"}]
#tellraw @a [{"text": "||||||||||||"},{"score":{"objective": "ArrayUtilInput","name": "$Move"}},{"text": "+++"},{"score":{"objective": "ArrayUtilInput","name": "$Move"}},{"text": "|"},{"score":{"objective": "ArrayUtilInput","name": "cost"}},{"text": "~~~~"},{"nbt":"get","storage": "array_util:"}]


