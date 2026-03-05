# ============================================
# macro:state/clear
# ============================================
# Clears a player's state (sets it to "none").
#
# INPUT: macro:input { player:"<player_name>" }
#
# EXAMPLE:
# data modify storage macro:input player set value "Steve"
# function macro:state/clear with storage macro:input {}
# ============================================

$data remove storage macro:engine states.$(player)
