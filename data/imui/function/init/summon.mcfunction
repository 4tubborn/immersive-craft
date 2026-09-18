summon marker ~ ~ ~ {Tags:[imui.marker]}
summon item_display ~0.75 ~ ~0.5 {Tags:[imui.out.0.item,imui.item],transformation:{scale:[0.6,0.6,0.6],translation:[0.115,0.385,0],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]},Passengers:[{id:interaction,Tags:[imui.out.0,imui.slot],width:0.3125,height:0.6875,response:true}]}
summon item_display ~0.25 ~ ~0.25 {Tags:[imui.out.1.item,imui.item],transformation:{scale:[0.6,0.6,0.6],translation:[0,0.385,0],left_rotation:[0f,-0.38268343f,0f,0.9238795f],right_rotation:[0,0,0,1]},Passengers:[{id:interaction,Tags:[imui.out.1,imui.slot],width:0.3125,height:0.6875,response:true}]}
summon item_display ~0.25 ~ ~0.75 {Tags:[imui.out.2.item,imui.item],transformation:{scale:[0.6,0.6,0.6],translation:[0,0.385,0],left_rotation:[0f,0.38268343f,0f,0.9238795f],right_rotation:[0,0,0,1]},Passengers:[{id:interaction,Tags:[imui.out.2,imui.slot],width:0.3125,height:0.6875,response:true}]}
summon item_display ~0.5 ~0.6875 ~0.5 {Tags:[imui.in.item,imui.item],transformation:{translation:[0f,0.1875f,0f],left_rotation:[0.7071068f,0f,0f,0.7071068f],scale:[0.375f,0.375f,0.375f],right_rotation:[0f,0f,0f,1f]},Passengers:[\
{id:interaction,Tags:[imui.in,imui.slot],width:0.375,height:0.2,response:true},\
{id:text_display,Tags:[imui.in.count,imui.text],shadow:true,background:0,transformation:{scale:[0.8,0.8,0.8],translation:[-0.0625f,0.25f,-0.25f],left_rotation:[0f,0.7071068f,0.7071068f,0f],right_rotation:[0,0,0,1]}},\
{id:text_display,Tags:[imui.fuel.count,imui.text],shadow:true,background:0,transformation:{scale:[0.8f,0.8f,0.8f],translation:[0f,-0.15f,-0.3125f],left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f]}},\
]}
summon interaction ~0.5 ~ ~0.5 {Tags:[imui.fuel,imui.slot],width:0.126,height:0.875,response:true}

execute if score #billboard_vertical imui.config matches 0 run return fail
data modify entity @n[type=text_display,tag=imui.fuel.count] {} merge value {transformation:{translation:[0f,-0.15f,0.3125f],left_rotation:[0,0,0,1]},billboard:"vertical",start_interpolation:0}
data modify entity @n[type=text_display,tag=imui.in.count] {} merge value {transformation:{translation:[0.0625f,0.25f,0.25f],left_rotation:[-0.7071068f,0f,0f,0.7071068f]},billboard:"vertical",start_interpolation:0}
data modify entity @n[type=item_display,tag=imui.in.item] {} merge value {transformation:{translation:[0f,0.1875f,0f],left_rotation:[0f,-0.7071068f,0.7071068f,0f]},billboard:"vertical",start_interpolation:0}
