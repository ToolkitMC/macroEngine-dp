# ============================================
# macro:config/set
# ============================================
# Config'e string value writear.
# Tam sayilar for macro:config/set_int kullanin.
# INPUT: macro:input { key:"<key>", value:"<value>" }
# OUTPUT: —
# ============================================

$data modify storage macro:engine config.$(key) set value "$(value)"
$tellraw @a[tag=macro.debug] [{"text":"[Config] ","color":"yellow"},{"text":"$(key)","color":"white"},{"text":" = "},{"text":"$(value)","color":"green"}]
