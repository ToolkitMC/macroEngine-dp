# ============================================
# macro:entity/for_each
# ============================================
# Belirtilen type ve tag'e sahip her entity OLARAK ve
# o entity'nin KONUMUNDA istenen fonksiyonu calistirir.
# macro:lib/for_each_entity ile aynidir; entity/ modulu
# altinda erisilebilir alias.
#
# INPUT: macro:input
# type : <string> — Entity type
# tag : <string> — Entity tag
# func : <string> — Her entity icin run edilecek fonksiyon (namespace:path)
#
# EXAMPLE:
# data modify storage macro:input type set value "minecraft:armor_stand"
# data modify storage macro:input tag set value "display_stand"
# data modify storage macro:input func set value "mymap:stand/update"
# function macro:entity/for_each with storage macro:input {}
# ============================================

$execute as @e[type=$(type),tag=$(tag)] at @s run function $(func)
