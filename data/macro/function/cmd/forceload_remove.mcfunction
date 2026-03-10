# ============================================
# macro:cmd/forceload_remove
# ============================================
# Bir chunk'in zorla loadnmesini removes.
#
# INPUT: macro:input { x:<int>, z:<int> }
# ============================================

$forceload remove $(x) $(z)
tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/forceload_remove ","color":"aqua"}]
