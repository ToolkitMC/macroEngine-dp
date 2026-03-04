# ============================================
# macro:lib/tick_guard
# ============================================
# @s for bu tick'te zaten calisip calismadigini check eder.
# Ayni entity'nin ayni tick forde bir functionu iki kez runmasini engeller.
#
# Donen value:
# return 0 → Bu tick'te zaten calismis (tekrar fireme). Dur.
# return 1 → Ilk kez calisiyor. Guard set edildi, devam et.
#
# HOW IT WORKS:
# @s'nin macro.tick_guard scoreboard valuei, $epoch macro.time via compareilir.
# Esitse → bu tick zaten islendi → return 0.
# If different → ilk kez → epoch valueini write → return 1.
#
# EXAMPLE — tick'te cift firenmeyi onle:
# execute as @a run function macro:my_func
# # my_func.mcfunction forde:
# execute run function macro:lib/tick_guard
# # return 0 gelirse calismaz; 1 gelirse devam eder
#
# EXAMPLE — execute as @a dongusunde guvenli kullanim:
# execute as @a run function macro:lib/tick_guard
# # Entities that pass the guard receive the action only once
#
# NOTE: Guard automatically expires at end of tick ($epoch increments each tick).
# To clear manually use macro:lib/tick_guard_clear kullanin.
# ============================================

# Stop if guard is already set this tick
execute if score @s macro.tick_guard = $epoch macro.time run return 0

# First time: guard'i bu tick'in epoch valueine esitle
scoreboard players operation @s macro.tick_guard = $epoch macro.time

return 1
