# ============================================
# macro:state/set
# ============================================
# Assigns a state to a player.
# Overwrites the previous state for the same player.
# Ideal for state machines, game phases, and NPC behaviors.
#
# INPUT: macro:input { player:"<player_name>", state:"<state>" }
#
# EXAMPLE:
# data modify storage macro:input player set value "Steve"
# data modify storage macro:input state set value "combat"
# function macro:state/set with storage macro:input {}
# ============================================

$data modify storage macro:engine states.$(player) set value "$(state)"
