#> marchent:change/lookup/loop
#data modify storage trader: what set from storage trader: Items[0]
#execute store result score Slot trader run data get storage trader: Items[0].Slot
#tellraw @a [{"nbt":"what","storage": "trader:"},{"text":"....."}]
#例外処理、バリアがある場合
    #sellにバリアがあったら終了
    #execute if score Slot trader matches 0..8 if data storage trader: {what:{id:"minecraft:totem_of_undying",tag:{dummy:1b}}} run function marchent:change/lookup/fin
    #execute if data storage trader: 
    ##buy1にバリアがあったらエラー
    ##execute if score Slot trader matches 9..17 if data storage trader: {what:{id:"minecraft:totem_of_undying",tag:{dummy:1b}}} run tellraw @a[tag=admin] [{"text":"売物の下には必ず 一つ以上#の対価が必要です。"},{"score":{"objective": "ArrayUtilInput","name": "cost"}}]
    #execute if score Slot trader matches 9..17 if data storage trader: {what:{id:"minecraft:totem_of_undying",tag:{dummy:1b}}} run function marchent:change/lookup/fin
    ##buy2にバリアがあったらスルーして次へ
    #execute if score Slot trader matches 18..26 if data storage trader: {what:{id:"minecraft:totem_of_undying",tag:{dummy:1b}}} run function marchent:change/lookup/next

#以下登録処理
    #execute if score Slot trader matches 0..26 unless data storage trader: {what:{id:"minecraft:totem_of_undying",tag:{dummy:1b}}} run function marchent:change/lookup/barrier

#data modify storage trader: what set from storage array_util: Array[-1] 
#execute if score Slot trader matches 18..26 if data storage trader: {what:{id:"minecraft:totem_of_undying",tag:{dummy:1b}}} run data modify storage trader: what set value #{id:"minecraft:air"}
#
#execute if score Slot trader matches 0..8 unless data storage trader: {what:{id:"minecraft:totem_of_undying",tag:{dummy:1b}}} run function marchent:change/lookup/totem_of_undying
#execute if score Slot trader matches 18..26 run function marchent:change/lookup/totem_of_undying
#
##tellraw @a [{"nbt":"Array[-1]","storage": "array_util:"},{"text":"<<<<<<<<<<"}]
#
#scoreboard players add Slot trader 9



