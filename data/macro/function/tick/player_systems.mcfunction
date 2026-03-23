execute as @a run function macro:lib/tick_guard_clear

execute as @a[scores={macro_menu=1..}] run function macro:menu
scoreboard players set @a[scores={macro_menu=1..}] macro_menu 0
scoreboard players enable @a[scores={macro_menu=-1..}] macro_menu

execute as @a[scores={macro_run=1..}] run function #macro:run
scoreboard players set @a[scores={macro_run=1..}] macro_run 0
scoreboard players enable @a[scores={macro_run=-1..}] macro_run

execute as @a[scores={macro_dialog=1..}] run function macro:dialog/close
execute as @a[scores={macro_dialog=1..}] run function macro:dialog/load
scoreboard players set @a[scores={macro_dialog=1..}] macro_dialog 0
scoreboard players enable @a[scores={macro_dialog=-1..}] macro_dialog

execute as @a[scores={macro_reload=1..}] run say Reloading...
execute as @a[scores={macro_reload=1..}] run function macro:disable/main
execute as @a[scores={macro_reload=1..}] run execute as @a[scores={macro_reload=1..}] run function macro:load
execute as @a[scores={macro_reload=1..}] run say Reload successful...
scoreboard players set @a[scores={macro_reload=1..}] macro_reload 0
scoreboard players enable @a[scores={macro_reload=-1..}] macro_reload

execute as @a[scores={macro_action=1..}] run function macro:trigger/internal/dispatch

function macro:interaction/internal/tick_scan

function macro:perm/trigger/internal/tick_start

function macro:wand/internal/tick_scan

function macro:hook/internal/tick_scan

function macro:geo/region_watch/internal/tick_scan
