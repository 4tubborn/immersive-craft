data modify storage imui:tmp text set value ""
data modify storage imui:tmp text set string block ~ ~ ~ Items[{Slot:3b}].count
data modify entity @s text set from storage imui:tmp text