# ============================================
# macro:event/unregister
# ============================================
# Removes all handlers registered to an event.
# INPUT: macro:input { event:"<event_name>" }
# ============================================

$data remove storage macro:engine events.$(event)
