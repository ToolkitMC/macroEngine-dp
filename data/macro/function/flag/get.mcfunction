# ============================================
# macro:flag/get
# ============================================
# Checks the state of a global flag.
# INPUT: macro:input { key:"<flag_name>" }
# OUTPUT: macro:output { result: 1b (set) / 0b (unset) }
# ============================================

data modify storage macro:output result set value 0b
$execute if data storage macro:engine flags.$(key) run data modify storage macro:output result set value 1b
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"flag/get ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(key)","color":"aqua"},{"text":" → ","color":"dark_gray"},{"storage":"macro:output","nbt":"result","color":"green"}]
