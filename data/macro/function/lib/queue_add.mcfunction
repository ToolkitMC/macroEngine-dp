# ============================================
# macro:lib/queue_add
# ============================================
# Makroyu belirli tick sonra runmak for add to queue.
# BUG FIX: context is now read from macro:input.context.
#
# INPUT: macro:input { func:"<namespace:path>", delay:<int> }
# EXAMPLE:
# data modify storage macro:input func set value "mypack:event/end"
# data modify storage macro:input delay set value 100
# function macro:lib/queue_add with storage macro:input {}
# ============================================

$data modify storage macro:engine queue append value {func:"$(func)", delay:$(delay)}
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"lib/queue_add ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(func)","color":"aqua"}]
