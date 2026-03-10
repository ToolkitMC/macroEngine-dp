# ============================================
# macro:cmd/clone_masked
# ============================================
# Copies only non-air blocks (masked mode).
# Bina sablonlari and yapi yerlestirme for idealdir.
#
# INPUT: macro:input { x1, y1, z1, x2, y2, z2, dx, dy, dz }
# ============================================

$clone $(x1) $(y1) $(z1) $(x2) $(y2) $(z2) $(dx) $(dy) $(dz) masked
tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/clone_masked ","color":"aqua"}]
