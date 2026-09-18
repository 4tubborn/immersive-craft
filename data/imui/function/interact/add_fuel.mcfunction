# This process assumes that fuels in brewing is the same as items in mainhand
# It works in 1.21-26.2
item modify block ~ ~ ~ container.4 imui:add_count
# If empty, set fuel. Last command will do nothing.
execute unless items block ~ ~ ~ container.4 * run item replace block ~ ~ ~ container.4 from entity @s weapon.mainhand imui:limit_count
#@@
item modify entity @s weapon.mainhand imui:decrease_count