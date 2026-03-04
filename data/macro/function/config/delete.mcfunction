# ============================================
# macro:config/delete
# ============================================
# Config'den belirli bir key'i removes.
# INPUT: macro:input { key:"<key>" }
# OUTPUT: —
# ============================================

$data remove storage macro:engine config.$(key)
$tellraw @a[tag=macro.debug] [{"text":"[Config] Deleted: ","color":"red"},{"text":"$(key)","color":"white"}]
