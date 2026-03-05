# ============================================
# macro:trigger/internal/check_next
# ============================================
# _tc_binds listesini birer birer isler.
# For each element: if value == $tc_player, run its function.
# macro:input'e hic preserand existingz — tick context guvenlidir.
# ============================================

execute unless data storage macro:engine _tc_binds[0] run return 0

# Mevcut bind'i al
data modify storage macro:engine _tc_current set from storage macro:engine _tc_binds[0]
data remove storage macro:engine _tc_binds[0]

# Read value and compare
execute store result score $tc_val macro.tmp run data get storage macro:engine _tc_current.value

# Match: run this bind's function
execute if score $tc_player macro.tmp = $tc_val macro.tmp run function macro:trigger/internal/call with storage macro:engine _tc_current

# Match: run this bind's command
execute if score $tc_player macro.tmp = $tc_val macro.tmp run function macro:trigger/internal/call2 with storage macro:engine _tc_current

# Sonraki bind
function macro:trigger/internal/check_next
