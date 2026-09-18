#@s: player
#@@
execute positioned as @s run function imui:interact/item/summon
#item = brewing
#brewing = player
item replace entity @n[type=item,tag=imui.give,distance=..50] contents from block ~ ~ ~ container.1
#@@
execute as @n[type=item,tag=imui.give,distance=..50] run function imui:interact/item/end

execute unless items entity @s weapon.mainhand #imui:output_allowed run return run item replace block ~ ~ ~ container.1 with air

item replace block ~ ~ ~ container.1 from entity @s weapon.mainhand imui:limit_count
#@@
item modify entity @s weapon.mainhand imui:decrease_count