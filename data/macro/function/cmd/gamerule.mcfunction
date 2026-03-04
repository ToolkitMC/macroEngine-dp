# macro:cmd/gamerule — Oyun kuralini degistir
# INPUT: macro:input { rule:"<kural_adi>", value:"<value>" }
# EXAMPLE: rule:"keepInventory", value:"true"
# EXAMPLE: rule:"randomTickSpeed", value:"3"

$gamerule $(rule) $(value)
