# ============================================
# macro:state/is
# ============================================
# Checks whether the player's state matches the expected value.
# Uses NBT string matching.
#
# INPUT: macro:input { player:"<player_name>", state:"<expected_state>" }
# OUTPUT: macro:output { result: 1b (match) / 0b (no match) }
#
# EXAMPLE:
# data modify storage macro:input player set value "Steve"
# data modify storage macro:input state set value "lobby"
# function macro:state/is with storage macro:input {}
# # macro:output.result → 1b veya 0b
# ============================================

data modify storage macro:output result set value 0b
$execute if data storage macro:engine states{$(player):"$(state)"} run data modify storage macro:output result set value 1b
