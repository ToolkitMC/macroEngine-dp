# ============================================
# macro:flag/unset
# ============================================
# Removes a global flag.
#
# INPUT: macro:input { key:"<flag_name>" }
#
# EXAMPLE:
# data modify storage macro:input key set value "game_started"
# function macro:flag/unset with storage macro:input {}
# ============================================

$data remove storage macro:engine flags.$(key)
