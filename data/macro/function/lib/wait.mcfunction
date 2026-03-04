# ============================================
# macro:lib/wait
# ============================================
# queue_add for kisa alias — delay tick sonra function run.
# INPUT: macro:input { func:"<namespace:path>", delay:<tick> }
# EXAMPLE (5sn sonra):
# data modify storage macro:input func set value "mypack:events/end"
# data modify storage macro:input delay set value 100
# function macro:lib/wait with storage macro:input {}
# ============================================

function macro:lib/queue_add with storage macro:input {}
