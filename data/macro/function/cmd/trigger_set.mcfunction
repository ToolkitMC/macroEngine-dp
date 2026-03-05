# ============================================
# macro:cmd/trigger_set
# ============================================
# Bir playernun trigger objective valueini setr.
# Playerlarin /trigger komutuyla etkilesimi icin scoreboard trigger
# objective'ine value atar.
#
# INPUT: macro:input { player:"<player>", objective:"<trigger_adi>", value:<int> }
#
# EXAMPLE:
# data modify storage macro:input player set value "Steve"
# data modify storage macro:input objective set value "macro_menu"
# data modify storage macro:input value set value 0
# function macro:cmd/trigger_set with storage macro:input {}
# ============================================

$scoreboard players set $(player) $(objective) $(value)
