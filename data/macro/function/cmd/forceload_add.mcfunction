# ============================================
# macro:cmd/forceload_add
# ============================================
# Belirtvian blok koordinatlarindaki chunk'i zorla yuklu tutar.
# Uzak mesafede calisan redstone, komutlar or spawn for requireddir.
#
# INPUT: macro:input { x:<int>, z:<int> }
#
# EXAMPLE:
# data modify storage macro:input x set value 100
# data modify storage macro:input z set value 200
# function macro:cmd/forceload_add with storage macro:input {}
# ============================================

$forceload add $(x) $(z)
tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/forceload_add ","color":"aqua"}]
