# ============================================
# macro:event/fire
# ============================================
# Executes all registered handlers in order.
# INPUT: macro:input { event:"<event_name>" }
# Context for: macro:engine event_context.<alan>
# ============================================

$execute unless data storage macro:engine events.$(event) run return 0

# Copy handler list to temporary buffer (handlers may register during fire)
$data modify storage macro:engine _event_tmp set from storage macro:engine events.$(event)
execute if data storage macro:engine _event_tmp[0] run function macro:event/internal/fire_next
data remove storage macro:engine _event_tmp
