# ============================================
# macro:flag/set
# ============================================
# Sets a global boolean flag. Stored as 1b under the given key.
# Use player/set_var for per-player flags.
#
# INPUT: macro:input { key:"<flag_name>" }
#
# EXAMPLE:
# data modify storage macro:input key set value "game_started"
# function macro:flag/set with storage macro:input {}
# ============================================

$data modify storage macro:engine flags.$(key) set value 1b
