execute if score $Move ArrayUtilInput matches 18..26 run data modify storage trader: temp insert -1 from storage trader: get
execute if score $Move ArrayUtilInput matches 18..26 run data modify storage trader: temp[-1].maxUses set value 25565
#execute if score $Move ArrayUtilInput matches 18..26 run tellraw @a [{"nbt":"temp[-1]","storage": "trader:"},{"text":"....."}]
execute if score $Move ArrayUtilInput matches 26 run function marchent:change/lookup/fin
#data remove storage trader: temp
execute if score $Move ArrayUtilInput matches 18..26 run data remove storage trader: get
data remove storage trader: what
function array_util:api/revert
#execute if score $Move ArrayUtilInput matches 35 run data modify entity @s Offers.Recipes set from storage trader: temp
scoreboard players add $Move ArrayUtilInput 9
execute if score $Move ArrayUtilInput matches 27..34 run scoreboard players remove $Move ArrayUtilInput 26
execute if score $Move ArrayUtilInput matches ..26 run function marchent:change/lookup/check

