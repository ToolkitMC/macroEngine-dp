# ============================================
# macro:flag/get
# ============================================
# Checks the state of a global flag.
#
# INPUT: macro:input { key:"<flag_name>" }
# OUTPUT: macro:output { result: 1b (set) / 0b (unset) }
#
# EXAMPLE:
# data modify storage macro:input key set value "game_started"
# function macro:flag/get with storage macro:input {}
# # macro:output.result → 1b or 0b
# ============================================

data modify storage macro:output result set value 0b
$execute if data storage macro:engine flags.$(key) run data modify storage macro:output result set value 1b
