# ============================================
# macro:event/has
# ============================================
# Event'in en az bir kayitli handler'i var mi check eder.
#
# INPUT: macro:input { event:"<event_name>" }
# OUTPUT: macro:output { result: 1b (kayitli) / 0b (yok) }
#
# EXAMPLE:
# data modify storage macro:input event set value "on_join"
# function macro:event/has with storage macro:input {}
# # macro:output.result → 1b or 0b
# ============================================

data modify storage macro:output result set value 0b
$execute if data storage macro:engine events.$(event) run data modify storage macro:output result set value 1b
