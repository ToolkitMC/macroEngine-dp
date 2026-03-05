# ============================================
# macro:state/get
# ============================================
# Returns the player's current state.
#
# INPUT: macro:input { player:"<player_name>" }
# OUTPUT: macro:output { result:"<state>" } (null if no state is set)
#
# EXAMPLE:
# data modify storage macro:input player set value "Steve"
# function macro:state/get with storage macro:input {}
# # macro:output.result → "combat" (or current state)
# ============================================

data remove storage macro:output result
$execute if data storage macro:engine states.$(player) run data modify storage macro:output result set from storage macro:engine states.$(player)
