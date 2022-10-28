#> marchent:main
#function array_util:api/force_delete_cache


scoreboard objectives add trader dummy
function marchent:change/storagego
scoreboard objectives remove trader
data remove storage trader: Items
data remove storage trader: cont


