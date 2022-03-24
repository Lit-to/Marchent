
#配列処理
function array_util:api/move
execute store result score cost ArrayUtilInput run data get storage array_util: Array[-1].Slot 1
#tellraw @a [{"score":{"objective": "ArrayUtilInput","name": "$Move"}},{"text": "|"},{"score":{"objective": "ArrayUtilInput","name": "cost"}}]
execute unless score $Move ArrayUtilInput = cost ArrayUtilInput run tellraw @a[tag=admin] [{"text":"チェストに空きがあります。"},{"score":{"objective": "ArrayUtilInput","name": "cost"}}]
execute if score $Move ArrayUtilInput = cost ArrayUtilInput run function marchent:change/lookup/loop
execute if score $Move ArrayUtilInput matches 0.. unless score $Move ArrayUtilInput = cost ArrayUtilInput run function marchent:change/lookup/fin




