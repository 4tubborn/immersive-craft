scoreboard players set #v imui.tmp 1
scoreboard players operation #v imui.tmp -= #billboard_vertical imui.config
scoreboard players operation #billboard_vertical imui.config = #v imui.tmp

function imui:config/panel