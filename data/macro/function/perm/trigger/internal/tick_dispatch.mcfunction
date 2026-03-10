# ============================================
# macro:perm/trigger/internal/tick_dispatch
# ============================================
# perm_trigger_names listesindeki her trigger için tick_step_loop'tan çağrılır.
# O trigger'da aktif skoru olan tüm oyuncular için player_dispatch çalıştırır.
#
# INPUT (makro): storage macro:engine _pt_tick_ctx = {name:"<trigger_adi>"}
# Çağrı: as @a[scores={$(name)=1..}]
# ============================================

$execute as @a[scores={$(name)=1..}] run function macro:perm/trigger/internal/player_dispatch with storage macro:engine _pt_tick_ctx
