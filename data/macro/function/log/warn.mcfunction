# ============================================
# macro:log/warn
# ============================================
# Adds a WARN-level log entry (sari).
#
# INPUT: macro:input { message:"<text>" }
# USAGE:
# data modify storage macro:input message set value "Cooldown suresi dolmadi"
# function macro:log/warn with storage macro:input {}
# ============================================

$data modify storage macro:input message set value "$(message)"
data modify storage macro:input level set value "WARN"
data modify storage macro:input color set value "yellow"
function macro:log/add with storage macro:input {}
tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"log/warn ","color":"aqua"}]
