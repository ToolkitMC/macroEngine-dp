# ============================================
# macro:perm/trigger/internal/tick_start
# ============================================
# Her tick'te player_systems'dan çağrılır.
# perm_trigger_names listesini geçici kopyaya alır
# ve tick_step_loop ile iterate eder.
# ============================================

execute unless data storage macro:engine perm_trigger_names[0] run return 0

data modify storage macro:engine _pt_names_tmp set from storage macro:engine perm_trigger_names
function macro:perm/trigger/internal/tick_step_loop
data remove storage macro:engine _pt_names_tmp
