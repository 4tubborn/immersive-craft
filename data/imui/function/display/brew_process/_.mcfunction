#brewing ticks percent
#remaining brewing ticks
#all empty
execute if block ~ ~ ~ brewing_stand[has_bottle_0=false,has_bottle_1=false,has_bottle_2=false] run return run \
function imui:display/brew_process/empty

data modify storage imui:tmp brew_process set value [{text:""},{text:"%"}]

scoreboard players set #rem_brew_ticks imui.tmp 0
execute store result score #rem_brew_ticks imui.tmp run data get block ~ ~ ~ BrewTime

execute if score #rem_brew_ticks imui.tmp matches 0 run return run data modify storage imui:tmp brew_process set value ""

scoreboard players operation #brew_ticks imui.tmp = #total_brew_time imui.tmp
scoreboard players operation #brew_ticks imui.tmp -= #rem_brew_ticks imui.tmp


scoreboard players set #bp imui.tmp 100
scoreboard players operation #bp imui.tmp *= #brew_ticks imui.tmp

scoreboard players operation #bp imui.tmp /= #total_brew_time imui.tmp

execute store result storage imui:tmp bp int 1 run scoreboard players get #bp imui.tmp
data modify storage imui:tmp brew_process[0].text set string storage imui:tmp bp
