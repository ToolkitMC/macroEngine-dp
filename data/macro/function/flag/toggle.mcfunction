# ============================================
# macro:flag/toggle
# ============================================
# Toggles a global flag.
# Set becomes unset; unset becomes set.
#
# INPUT: macro:input { key:"<flag_name>" }
# OUTPUT: macro:output { result: 1b (newly set) / 0b (newly unset) }
#
# EXAMPLE:
# data modify storage macro:input key set value "pvp_enabled"
# function macro:flag/toggle with storage macro:input {}
# ============================================

# Load current state into scoreboard: var=1, yok=0
scoreboard players set $ftgl macro.tmp 0
$execute if data storage macro:engine flags.$(key) run scoreboard players set $ftgl macro.tmp 1

# If set, remove, output 0b
$execute if score $ftgl macro.tmp matches 1 run data remove storage macro:engine flags.$(key)
execute if score $ftgl macro.tmp matches 1 run data modify storage macro:output result set value 0b

# If absent, set, output 1b
$execute if score $ftgl macro.tmp matches 0 run data modify storage macro:engine flags.$(key) set value 1b
execute if score $ftgl macro.tmp matches 0 run data modify storage macro:output result set value 1b
