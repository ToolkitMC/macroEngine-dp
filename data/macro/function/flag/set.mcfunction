# ============================================
# macro:flag/set
# ============================================
# Sets a global boolean flag.
# INPUT: macro:input { key:"<flag_name>" }
# ============================================

$data modify storage macro:engine flags.$(key) set value 1b
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"flag/set ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(key)","color":"aqua"}]
