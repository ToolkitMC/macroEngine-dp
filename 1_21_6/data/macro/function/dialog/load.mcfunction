$scoreboard players set @s macro.dialog_load $(cooldown)

# BUG FIX v1.0.2: Minecraft dialog, buton tiklamasinda automatically kapanir ama
# macro:dialog/close cagrilmaz — macro.dialog_opened tag'i playerda kalir.
# Yeni bir loading initdan once tag'i clear; aksi halde
# open → show akisindaki guard "dialog zaten acik" sanip return 0 yapar
# and player sonsuza kadar loading ekraninda kalir.
tag @s remove macro.dialog_opened

tag @s add macro.dialog_opened
dialog show @s macro:loading
tag @s add macro.dialog_closed
