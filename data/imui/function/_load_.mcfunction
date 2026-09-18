scoreboard objectives add imui.tmp dummy
scoreboard objectives add imui.config dummy
#hardcoded
scoreboard players set #total_brew_time imui.tmp 400

execute unless score #billboard_vertical imui.config matches 0..1 run scoreboard players set #billboard_vertical imui.config 1