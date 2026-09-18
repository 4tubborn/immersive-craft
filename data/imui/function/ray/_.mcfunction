#amazing
execute if score #range imui.tmp > #max_range imui.tmp run return fail
scoreboard players add #range imui.tmp 10

#particle angry_villager

execute if block ~ ~ ~ brewing_stand run return run function imui:ray/end
execute positioned ^ ^ ^0.01 run function imui:ray/_