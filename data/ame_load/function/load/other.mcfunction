# ============================================
# ame_load:load/other
# ============================================
# Schedule, forceload and trigger enable operations.
# ============================================

# ─── 0 0 koordinatini forceload et ───────────────────────
# required for macro:player/get_name (shulker box trick)
forceload add 0 0

# ─── Set up sync_tick schedule (every 20 ticks = 1s) ───────
data modify storage macro:input func set value "macro:lib/sync_tick"
data modify storage macro:input interval set value 20
data modify storage macro:input key set value "sync_tick"
function macro:lib/schedule with storage macro:input {}
data remove storage macro:input func
data remove storage macro:input interval
data remove storage macro:input key

# ─── Enable admin triggers ────────────────────
scoreboard players enable @a[tag=macro.admin] macro_menu
scoreboard players enable @a[tag=macro.admin] macro_run
scoreboard players enable @a[tag=macro.admin] macro_action
