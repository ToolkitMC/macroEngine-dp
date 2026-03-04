# ============================================
# macro:player/del_var
# ============================================
# INPUT: macro:input { player:"<name>", key:"<variable>" }
# ============================================

$data remove storage macro:engine players.$(player).$(key)
