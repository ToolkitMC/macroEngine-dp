# Do not call directly — use macro:dialog/load
# Requires $(cooldown) to be provided via macro:input
$scoreboard players set @s macro.dialog_load $(cooldown)
tag @s remove macro.dialog_opened
tag @s add macro.dialog_opened
dialog show @s macro:loading
tag @s add macro.dialog_closed
