#@s: player
#@@
execute positioned as @s run function imui:interact/item/summon
#item = brewing
#brewing = player
item replace entity @n[type=item,tag=imui.give,distance=..50] contents from block ~ ~ ~ container.3
#@@
execute as @n[type=item,tag=imui.give,distance=..50] run function imui:interact/item/end

execute unless items entity @s weapon.mainhand #imui:input_allowed run return run item replace block ~ ~ ~ container.3 with air
#allow full stack
item replace block ~ ~ ~ container.3 from entity @s weapon.mainhand
#@@
item replace entity @s weapon.mainhand with air