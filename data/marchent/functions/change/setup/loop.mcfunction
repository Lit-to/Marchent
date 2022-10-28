#> marchent:change/setup/loop
scoreboard players add count trader 1
execute if score count trader matches 1..9 run data modify storage trader: cont.up append from storage trader: Items[0]
execute if score count trader matches 10..18 run data modify storage trader: cont.cent append from storage trader: Items[0]
execute if score count trader matches 19..27 run data modify storage trader: cont.down append from storage trader: Items[0]
data remove storage trader: Items[0]
execute unless data storage trader: {Items:[]} run function marchent:change/setup/loop

