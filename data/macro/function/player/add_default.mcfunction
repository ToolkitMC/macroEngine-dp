# ============================================
# macro:player/add_default
# ============================================
# Write default value if player variable doesn't exist (preserand existing).
# Single-variable protection independent of init.
# INPUT: macro:input { player:"<name>", key:"<variable>", value:<value> }
# ============================================

$execute unless data storage macro:engine players.$(player).$(key) run data modify storage macro:engine players.$(player).$(key) set value $(value)
