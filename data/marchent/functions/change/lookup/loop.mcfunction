
data modify storage trader: what set from storage array_util: Array[-1] 
#tellraw @a [{"nbt":"what","storage": "trader:"},{"text":"....."}]
#例外処理、バリアがある場合
    #sellにバリアがあったら終了
    execute if score $Move ArrayUtilInput matches 0..8 if data storage trader: {what:{id:"minecraft:totem_of_undying",tag:{dummy:1b}}} run function marchent:change/lookup/fin
    #buy1にバリアがあったらエラー
    #execute if score $Move ArrayUtilInput matches 9..17 if data storage trader: {what:{id:"minecraft:totem_of_undying",tag:{dummy:1b}}} run tellraw @a[tag=admin] [{"text":"売物の下には必ず 一つ以上の対価が必要です。"},{"score":{"objective": "ArrayUtilInput","name": "cost"}}]
    execute if score $Move ArrayUtilInput matches 9..17 if data storage trader: {what:{id:"minecraft:totem_of_undying",tag:{dummy:1b}}} run function marchent:change/lookup/fin
    #buy2にバリアがあったらスルーして次へ
    execute if score $Move ArrayUtilInput matches 18..26 if data storage trader: {what:{id:"minecraft:totem_of_undying",tag:{dummy:1b}}} run function marchent:change/lookup/next

#以下登録処理
    execute if score $Move ArrayUtilInput matches 0..26 unless data storage trader: {what:{id:"minecraft:totem_of_undying",tag:{dummy:1b}}} run function marchent:change/lookup/barrier

#data modify storage trader: what set from storage array_util: Array[-1] 
#execute if score $Move ArrayUtilInput matches 18..26 if data storage trader: {what:{id:"minecraft:totem_of_undying",tag:{dummy:1b}}} run data modify storage trader: what set value #{id:"minecraft:air"}
#
#execute if score $Move ArrayUtilInput matches 0..8 unless data storage trader: {what:{id:"minecraft:totem_of_undying",tag:{dummy:1b}}} run function marchent:change/lookup/totem_of_undying
#execute if score $Move ArrayUtilInput matches 18..26 run function marchent:change/lookup/totem_of_undying
#
##tellraw @a [{"nbt":"Array[-1]","storage": "array_util:"},{"text":"<<<<<<<<<<"}]
#
#scoreboard players add $Move ArrayUtilInput 9



