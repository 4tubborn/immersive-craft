#@s: player
#@@
execute if items entity @s weapon.mainhand #imui:fuel_allowed run return run function imui:interact/add_fuel
# brewing: fuel--, item: fuel++
execute positioned as @s run function imui:interact/item/summon
#item = brewing
#brewing = player
item replace entity @n[type=item,tag=imui.give,distance=..50] contents from block ~ ~ ~ container.4 imui:limit_count
#@@
execute as @n[type=item,tag=imui.give,distance=..50] run function imui:interact/item/end

item modify block ~ ~ ~ container.4 imui:decrease_count