# ============================================
# macro:player/set_var
# ============================================
# USAGE:
# function macro:player/set_var with storage macro:input {}
# Required input storage fields:
# macro:input { player:"<playerName>", key:"<degiskenAdi>", value:<value> }
#
# EXAMPLE:
# data modify storage macro:input player set value "Steve"
# data modify storage macro:input key set value "coins"
# data modify storage macro:input value set value 100
# function macro:player/set_var with storage macro:input {}
# ============================================

$data modify storage macro:engine players.$(player).$(key) set value $(value)
