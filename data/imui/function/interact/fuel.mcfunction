advancement revoke @s only imui:interact/fuel

#say fuel

scoreboard players set #type imui.tmp 4
#rot: player, @s: item
execute anchored eyes run function imui:ray/init
#tag @s add imui.interacting_player
#execute as @e[distance=..10,type=interaction,tag=imui.slot] if function imui:interact/return at @s run item replace entity @n[type=item,tag=imui.give] contents from block ~ ~ ~ container.0
#tag @s remove imui.interacting_player