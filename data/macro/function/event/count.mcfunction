# ============================================
# macro:event/count
# ============================================
# Bir event'e kayitli handler sayisini dondurur.
#
# INPUT: macro:input { event:"<event_name>" }
# OUTPUT: macro:output { result:<int> } (0 = event yok or bos)
#
# EXAMPLE:
# data modify storage macro:input event set value "on_join"
# function macro:event/count with storage macro:input {}
# # macro:output.result → handler sayisi
# ============================================

data modify storage macro:output result set value 0
$execute if data storage macro:engine events.$(event) run execute store result storage macro:output result int 1 run data get storage macro:engine events.$(event)
