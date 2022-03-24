scoreboard players set $Move ArrayUtilInput 0
data modify storage trader: temp set value []
execute if block ~ ~-3 ~ shulker_box run data modify storage array_util: Array set from block ~ ~-3 ~ Items
function marchent:change/lookup/check

