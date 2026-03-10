# ============================================
# macro:perm/trigger/internal/check_bind
# ============================================
# _ptd_binds listesini birer birer işler.
# $ptd_val == bind.value eşleşirse run_if_perm ile izin kontrolüne gider.
# ============================================

execute unless data storage macro:engine _ptd_binds[0] run return 0

data modify storage macro:engine _ptd_current set from storage macro:engine _ptd_binds[0]
data remove storage macro:engine _ptd_binds[0]

# value karşılaştır
execute store result score $ptd_entry_val macro.tmp run data get storage macro:engine _ptd_current.value
execute if score $ptd_val macro.tmp = $ptd_entry_val macro.tmp run function macro:perm/trigger/internal/run_if_perm with storage macro:engine _ptd_current

function macro:perm/trigger/internal/check_bind
