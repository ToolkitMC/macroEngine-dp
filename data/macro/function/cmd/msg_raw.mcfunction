# ============================================
# macro:cmd/msg_raw
# ============================================
# Belirtvian playerya ham JSON tellraw mesaji sends.
# Use instead of msg for colour, formatting and compound messages.
#
# INPUT: macro:input { player:"<target>", json:"<JSON_metin>" }
#
# EXAMPLE:
# data modify storage macro:input player set value "Steve"
# data modify storage macro:input json set value "[{\"text\":\"Merhaba \",\"color\":\"gold\"},{\"text\":\"Steve!\",\"bold\":true}]"
# function macro:cmd/msg_raw with storage macro:input {}
# ============================================

$tellraw $(player) $(json)
