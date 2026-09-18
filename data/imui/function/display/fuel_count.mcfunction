scoreboard players set #p imui.tmp 0
scoreboard players set #fuel imui.tmp 0
execute store result score #p imui.tmp run data get block ~ ~ ~ Items[{Slot:4b}].count 20
execute store result score #fuel imui.tmp run data get block ~ ~ ~ Fuel
scoreboard players operation #p imui.tmp += #fuel imui.tmp
execute store result storage imui:tmp fuel int 1 run scoreboard players get #p imui.tmp

data remove storage imui:tmp buffer
data modify storage imui:tmp buffer set value [{translate:"Times: %s\n%s",with:[{text:""},]}]
data modify storage imui:tmp buffer[0].with[0].text set string storage imui:tmp fuel

function imui:display/brew_process/_

data modify storage imui:tmp buffer[0].with append from storage imui:tmp brew_process

data modify entity @s text set from storage imui:tmp buffer