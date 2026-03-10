# ============================================
# macro:lib/for_each_entity
# ============================================
# Belirtilen type ve tag'e sahip her entity OLARAK
# istenen fonksiyonu run eder.
# Her iterasyonda @s o entity'ye esit olur.
#
# Kullanim senaryolari:
# - Tum arena dusmanlarina hasar ver
# - Her NPC'ye farkli efekt uygula
# - Her armor_stand icin custom veri isle
#
# INPUT: macro:input
# type : <string> — Entity type
# tag : <string> — Entity tag
# func : <string> — Her entity icin run edilecek fonksiyon (namespace:path)
#
# EXAMPLE:
# data modify storage macro:input type set value "minecraft:zombie"
# data modify storage macro:input tag set value "arena_mob"
# data modify storage macro:input func set value "mymap:mob/apply_buff"
# function macro:lib/for_each_entity with storage macro:input {}
# ============================================

$execute as @e[type=$(type),tag=$(tag)] run function $(func)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"lib/for_each_entity ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(func)","color":"aqua"}]
