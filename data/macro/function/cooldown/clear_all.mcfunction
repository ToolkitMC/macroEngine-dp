# ============================================
# macro:cooldown/clear_all
# ============================================
# Deletes all cooldowns for the player.
# INPUT: macro:input { player:"<name>" }
# ============================================

$data remove storage macro:engine cooldowns.$(player)
