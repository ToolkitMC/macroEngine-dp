# ============================================
# macro:player/reset
# ============================================
# Deletes all player data and restores defaults.
# ⚠️ IRREVERSIBLE — USE WITH CARE!
# INPUT: macro:input { player:"<name>" }
# ============================================

# Delete all data
$data remove storage macro:engine players.$(player)
# Also clear cooldowns
$data remove storage macro:engine cooldowns.$(player)

# Re-apply defaults
function macro:player/init with storage macro:input {}
