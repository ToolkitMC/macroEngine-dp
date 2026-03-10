# ============================================
# macro:config/set_int
# ============================================
# Config'e tam sayi value writear.
# String valueler for macro:config/set kullanin.
# INPUT: macro:input { key:"<key>", value:<int> }
# OUTPUT: —
# ============================================

$execute store result storage macro:engine config.$(key) int 1 run scoreboard players set $cfg_tmp macro.tmp $(value)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"config/set_int ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(key)","color":"aqua"}]
