# ============================================
# macro:cooldown/clear
# ============================================
# Deletes the specified cooldown.
# INPUT: macro:input { player:"<name>", key:"<cooldown>" }
# ============================================

$data remove storage macro:engine cooldowns.$(player).$(key)
