# ============================================
# macro:entity/count
# ============================================
# Belirtilen type ve tag'e sahip entitylerin sayisini
# macro:output'a yazar.
#
# Kullanim senaryolari:
# - Dalgadaki kalan dusman sayisini say
# - Kaç NPC aktif oldugunu oge
# - Entity limiti kontrol et (max 10 vs)
#
# INPUT: macro:input
# type : <string> — Entity type (minecraft:zombie vb.)
# tag : <string> — Entity tag (bos birakmak icin \"!nonexistent\" kullan)
#
# OUTPUT: macro:output { count:<int> }
#
# EXAMPLE:
# data modify storage macro:input type set value "minecraft:zombie"
# data modify storage macro:input tag set value "wave_1"
# function macro:entity/count with storage macro:input {}
# # → macro:output count okunabilir
# data get storage macro:output count
# ============================================

scoreboard players set $ent_count macro.tmp 0
$execute as @e[type=$(type),tag=$(tag)] run scoreboard players add $ent_count macro.tmp 1
execute store result storage macro:output count int 1 run scoreboard players get $ent_count macro.tmp
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"entity/count ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(type)","color":"aqua"}]
