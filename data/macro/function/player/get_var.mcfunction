# ============================================
# macro:player/get_var
# ============================================
# Writes a player's variable to macro:output.result
# INPUT: macro:input { player:"<name>", key:"<variable>" }
# OUTPUT: macro:output { result: <value> }
# ============================================

$data modify storage macro:output result set from storage macro:engine players.$(player).$(key)
