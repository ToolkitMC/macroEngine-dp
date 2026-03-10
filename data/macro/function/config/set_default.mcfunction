# ============================================
# macro:config/set_default
# ============================================
# Write string value only if key is absent.
# If already present, hicbir sey yapmaz.
# INPUT: macro:input { key:"<key>", value:"<value>" }
# OUTPUT: macro:output { result: 1b (yeni rewritten) | 0b (zaten vardi) }
# ============================================

# Varsayilan: yeni writeilacak (1b)
data modify storage macro:output result set value 1b

# If already present, result = 0b, islem yapma
$execute if data storage macro:engine config.$(key) run data modify storage macro:output result set value 0b
$execute if data storage macro:engine config.$(key) run return 0

# If absent, write
$data modify storage macro:engine config.$(key) set value "$(value)"
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"config/set_default ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(key)","color":"aqua"},{"text":" → ","color":"dark_gray"},{"storage":"macro:output","nbt":"result","color":"green"}]
