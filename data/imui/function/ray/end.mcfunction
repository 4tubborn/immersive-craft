execute if score #type imui.tmp matches -1 run return run function imui:init/_

#tellraw @a ["type: ",{score:{name:"#type",objective:"imui.tmp"}}]

execute if score #type imui.tmp matches 0 run return run function imui:interact/out0_
execute if score #type imui.tmp matches 1 run return run function imui:interact/out1_
execute if score #type imui.tmp matches 2 run return run function imui:interact/out2_
execute if score #type imui.tmp matches 3 run return run function imui:interact/in_
execute if score #type imui.tmp matches 4 run return run function imui:interact/fuel_