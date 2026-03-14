scoreboard players set @s macro.dialog_load -1
tag @s remove macro.dialog_closed

tag @s remove macro.dialog_opened

execute at @s run function macro:dialog/show

return 1
