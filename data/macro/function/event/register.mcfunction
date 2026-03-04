# ============================================
# macro:event/register
# ============================================
# Adds a handler function to an event.
# INPUT: macro:input { event:"<event_name>", func:"<namespace:path>" }
# ============================================

$data modify storage macro:engine events.$(event) append value {func:"$(func)"}
