#> marchent:change/lookup
#scoreboard players set $Move ArrayUtilInput 0

data modify storage trader: temp set value []
data modify storage trader: cont set value {up:[],cent:[],down:[]}
execute if block ~ ~-3 ~ shulker_box run data modify storage trader: Items set from block ~ ~-3 ~ Items
function marchent:change/setup/loop
function marchent:change/lookup/check
scoreboard players reset count trader
