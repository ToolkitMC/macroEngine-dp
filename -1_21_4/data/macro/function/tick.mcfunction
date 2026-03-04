# ============================================
# macro:tick — Runs every tick
# ============================================
# - $epoch macro.time: absolute tick counter (for cooldown)
# - $tick macro.tmp: ticks elapsed since last sync_tick (1s reset interval)
# - Queue is processed
# - '/trigger macro_menu' runs
# - '/trigger macro_run' runs
# - Auto-HUD: if macro:engine pb_obj is set, progress_bar_self runs automatically
# Enable : data modify storage macro:engine pb_obj set value "health"
# data modify storage macro:engine pb_max set value 20
# data modify storage macro:engine pb_label set value "Health"
# Disable : data remove storage macro:engine pb_obj
# ============================================

execute unless entity @a run return 0

execute unless data storage macro:engine global{loaded:1b} run return 0

scoreboard players add $epoch macro.time 1
scoreboard players add $tick macro.tmp 1
# BUG FIX v3.0: Reset recursion counter every tick
scoreboard players set $pq_depth macro.tmp 0
function macro:lib/process_queue
execute as @a[scores={macro_menu=1..}] run function macro:menu
scoreboard players set @a[scores={macro_menu=1..}] macro_menu 0
scoreboard players enable @a[scores={macro_menu=-1..}] macro_menu

execute as @a[scores={macro_run=1..}] run function #macro:run
scoreboard players set @a[scores={macro_run=1..}] macro_run 0
scoreboard players enable @a[scores={macro_run=-1..}] macro_run

# ── Advanced trigger dispatch (v1.0.3) ───────────────────────────────
# BUG FIX v1.0.4: This line was missing — on 1.21.4 and earlier, macro_action
# trigger sistemi hic calismiyordu. Dialog kullanmadigi for buraya da required.
execute as @a[scores={macro_action=1..}] run function macro:trigger/internal/dispatch

# ── Auto-HUD: every 4 ticks, run progress_bar_self if pb_obj is set ──
# fires on ticks where $epoch % 4 = 0 — no separate counter, no reset error
execute if data storage macro:engine pb_obj run scoreboard players operation $pb_mod macro.tmp = $epoch macro.time
execute if data storage macro:engine pb_obj run scoreboard players operation $pb_mod macro.tmp %= $pb_four macro.tmp
execute if data storage macro:engine pb_obj run execute if score $pb_mod macro.tmp matches 0 run execute as @a run function macro:string/progress_bar_self with storage macro:engine {}

# Other
tag @a[tag=macro.admin] add macro.debug
scoreboard players enable @a[tag=macro.admin] macro_menu
scoreboard players enable @a[tag=macro.admin] macro_action
scoreboard players enable @a[tag=macro.admin] macro_run
