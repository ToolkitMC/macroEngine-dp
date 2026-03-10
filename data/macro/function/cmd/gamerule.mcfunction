# macro:cmd/gamerule — Oyun kuralini degistir
# INPUT: macro:input { rule:"<kural_adi>", value:"<value>" }
# EXAMPLE: rule:"keepInventory", value:"true"
# EXAMPLE: rule:"randomTickSpeed", value:"3"

$gamerule $(rule) $(value)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/gamerule ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(rule)","color":"aqua"}]
