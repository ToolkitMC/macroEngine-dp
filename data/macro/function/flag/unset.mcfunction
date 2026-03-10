# ============================================
# macro:flag/unset
# ============================================
# Removes a global flag.
# INPUT: macro:input { key:"<flag_name>" }
# ============================================

$data remove storage macro:engine flags.$(key)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"flag/unset ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(key)","color":"aqua"}]
