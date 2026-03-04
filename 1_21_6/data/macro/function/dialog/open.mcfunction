scoreboard players set @s macro.dialog_load -1
tag @s remove macro.dialog_closed

# BUG FIX v1.0.2: Buton tiklamasiyla kapanan dialog macro:dialog/close'u
# cagirmaz; macro.dialog_opened tag'i kalmis olabilir. show'dan once clear.
tag @s remove macro.dialog_opened

# Dialog'u ac
execute at @s run function macro:dialog/show

# Bitir
return 1