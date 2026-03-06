# ============================================
# macro:tick/player_systems — Oyuncu Tetikleyici Sistemleri
# ============================================
# overlay: 1_21_6 (pack_format 80–94)
# Base + dialog_load mantığı
# ============================================

# Menu trigger
execute as @a[scores={macro_menu=1..}] run function macro:menu
scoreboard players set @a[scores={macro_menu=1..}] macro_menu 0
scoreboard players enable @a[scores={macro_menu=-1..}] macro_menu

# Run trigger
execute as @a[scores={macro_run=1..}] run function #macro:run
scoreboard players set @a[scores={macro_run=1..}] macro_run 0
scoreboard players enable @a[scores={macro_run=-1..}] macro_run

# Advanced trigger dispatch
execute as @a[scores={macro_action=1..}] run function macro:trigger/internal/dispatch

# BUG FIX v1.0.1
scoreboard players remove @a[scores={macro.dialog_load=1..}] macro.dialog_load 1

# dialog_load: timer expired → open (1.21.6+ only)
execute as @a[scores={macro.dialog_load=0},tag=macro.dialog_closed] at @s run function macro:dialog/open
execute as @a[scores={macro.dialog_load=0},tag=!macro.dialog_closed,tag=!macro.dialog_opened] at @s run function macro:dialog/open
