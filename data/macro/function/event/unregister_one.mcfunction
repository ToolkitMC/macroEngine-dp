# ============================================
# macro:event/unregister_one
# ============================================
# Removes ONLY the specified handler function from the event list.
# Other handlers are preserved. Use event/unregister to remove the entire event.
#
# INPUT: macro:input { event:"<event_name>", func:"<namespace:path>" }
#
# EXAMPLE:
# data modify storage macro:input event set value "on_join"
# data modify storage macro:input func set value "mypack:handlers/welcome"
# function macro:event/unregister_one with storage macro:input {}
#
# NOT: If the same function is registered multiple times ALL are removed.
# ============================================

# Event hic if absent, cik
$execute unless data storage macro:engine events.$(event) run return 0

# Read the filter data
$data modify storage macro:engine _uro.event set value "$(event)"
$data modify storage macro:engine _uro.func set value "$(func)"
$data modify storage macro:engine _uro.src set from storage macro:engine events.$(event)

# Clear event list — will be repopulated with filtered entries
$data remove storage macro:engine events.$(event)

# Start loop
execute if data storage macro:engine _uro.src[0] run function macro:event/internal/uro_loop

# Cleanup
data remove storage macro:engine _uro
