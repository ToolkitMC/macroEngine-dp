# ============================================
# macro:cmd/other/multi_cmd/from_input
# ============================================
# macro:input.list'teki komut listesini okuyup çalıştırır.
# Kolaylık wrapper'ı — _mcmd_list'i elle set etmek gerekmez.
#
# KULLANIM:
# data modify storage macro:input list set value ["say Merhaba", "give @s diamond 1"]
# function macro:cmd/other/multi_cmd/from_input
#
# NOTE: Liste macro:input.list içinde olmalı (list anahtarı).
# ============================================

data modify storage macro:engine _mcmd_list set from storage macro:input list
function macro:cmd/other/multi_cmd/run
tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/other/multi_cmd/from_input ","color":"aqua"},{"text":"▶ list → run","color":"dark_gray"}]
