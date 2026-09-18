#execute as @a at @s anchored eyes run function imui:init/ray
#sync display
#execute as @e[type=item_display,tag=imui.out.0.item] at @s run item replace entity @s contents from block ~ ~ ~ container.0
#execute as @e[type=item_display,tag=imui.out.1.item] at @s run item replace entity @s contents from block ~ ~ ~ container.1
#execute as @e[type=item_display,tag=imui.out.2.item] at @s run item replace entity @s contents from block ~ ~ ~ container.2
#execute as @e[type=item_display,tag=imui.in.item] at @s run item replace entity @s contents from block ~ ~ ~ container.3

execute as @e[type=item_display,tag=imui.item] at @s run function imui:tick/dispatch/item

#execute as @e[type=text_display,tag=imui.in.count] at @s run function imui:display/in_count
#execute as @e[type=text_display,tag=imui.fuel.count] at @s run function imui:display/fuel_count

execute as @e[type=text_display,tag=imui.text] at @s run function imui:tick/dispatch/text

execute as @e[type=marker,tag=imui.marker] at @s unless block ~ ~ ~ brewing_stand align xyz run function imui:remove/_