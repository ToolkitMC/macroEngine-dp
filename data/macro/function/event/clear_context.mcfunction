# ============================================
# macro:event/clear_context
# ============================================
# Clears the macro:engine event_context storage.
# Recommended to call before and after event fire —
# especially prevents context contamination in independent event chains.
#
# INPUT: (yok)
# OUTPUT: (yok)
#
# EXAMPLE:
# function macro:event/clear_context
# data modify storage macro:engine event_context.player set value "Steve"
# data modify storage macro:input event set value "on_join"
# function macro:event/fire with storage macro:input {}
# function macro:event/clear_context
# ============================================

data remove storage macro:engine event_context
