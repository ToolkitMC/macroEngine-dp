# ============================================
# macro:cmd/other/multi_cmd/from_input_as
# ============================================
# macro:input.list'teki komut listesini okuyup
# belirtilen oyuncu olarak çalıştırır.
#
# INPUT (makro): macro:input { list:[...], player:"<oyuncu>" }
#
# KULLANIM:
# data modify storage macro:input list set value ["say Hi", "give @s apple 1"]
# data modify storage macro:input player set value "Steve"
# function macro:cmd/other/multi_cmd/from_input_as with storage macro:input {}
# ============================================

data modify storage macro:engine _mcmd_list set from storage macro:input list
$execute as @a[name=$(player),limit=1] at @s run function macro:cmd/other/multi_cmd/run
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/other/multi_cmd/from_input_as ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" ▶ list → run","color":"dark_gray"}]
