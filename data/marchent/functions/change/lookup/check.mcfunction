#> marchent:change/lookup/check
#配列処理
##function chenbr_array_utility:api/move
#execute store result score cost ArrayUtilInput run data get storage chenbr_array_utility: Array[-1].Slot 1
##tellraw @a [{"score":{"objective": "ArrayUtilInput","name": "$Move"}},{"text": "|"},{"score":{"objective": "ArrayUtilInput","name": "cost"}}]
##execute unless score $Move ArrayUtilInput = cost ArrayUtilInput run tellraw @a[tag=admin] [{"text":"チェストに空きがあります。"},{"score":{"objective": "ArrayUtilInput","name": "cost"}}]
#execute if score $Move ArrayUtilInput = cost ArrayUtilInput run function marchent:change/lookup/loop
#execute if score $Move ArrayUtilInput matches 0.. unless score $Move ArrayUtilInput = cost ArrayUtilInput run function marchent:change/lookup/fin
#data remove storage trader: cont.what
data modify storage trader: cont.what.up set from storage trader: cont.up[0]
data modify storage trader: cont.what.cent set from storage trader: cont.cent[0]
data modify storage trader: cont.what.down set from storage trader: cont.down[0]

execute if data storage trader: {cont:{what:{up:{id:"minecraft:totem_of_undying",tag:{dummy:1b}}}}} run function marchent:change/lookup/fin
execute if data storage trader: {cont:{up:[]}} run function marchent:change/lookup/fin

execute unless data storage trader: {cont:{what:{up:{id:"minecraft:totem_of_undying",tag:{dummy:1b}}}}} unless data storage trader: {cont:{up:[]}} run function marchent:change/lookup/totem


