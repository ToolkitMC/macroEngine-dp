# ============================================
# macro:cmd/tp_to_entity
# ============================================
# Oyuncuyu, belirtilen type ve tag'e sahip entity'nin
# konumuna isinlar.
#
# Kullanim senaryolari:
# - NPC'ye hizla don
# - Checkpoint entity'sine isinla
# - Boss spawn noktasina get
#
# INPUT: macro:input
# player : <string> — Oyuncu adi
# type : <string> — Entity type
# tag : <string> — Entity tag
#
# EXAMPLE:
# data modify storage macro:input player set value "Steve"
# data modify storage macro:input type set value "minecraft:armor_stand"
# data modify storage macro:input tag set value "checkpoint_1"
# function macro:cmd/tp_to_entity with storage macro:input {}
# ============================================

$execute as @a[name=$(player),limit=1] run tp @s @e[type=$(type),tag=$(tag),limit=1]
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/tp_to_entity ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" → ","color":"dark_gray"},{"text":"$(type)","color":"aqua"}]
