# ============================================
# macro:tick/player_systems — Oyuncu Tetikleyici Sistemleri
# ============================================
# Flag: #m_player macro.Flags
# - '/trigger macro_menu' tetikleyicisi
# - '/trigger macro_run' tetikleyicisi
# - '/trigger macro_action' → trigger/bind sistemi üzerinden dispatch edilir
# ============================================

# Menu trigger
execute as @a[scores={macro_menu=1..}] run function macro:menu
scoreboard players set @a[scores={macro_menu=1..}] macro_menu 0
scoreboard players enable @a[scores={macro_menu=-1..}] macro_menu

# Run trigger
execute as @a[scores={macro_run=1..}] run function #macro:run
scoreboard players set @a[scores={macro_run=1..}] macro_run 0
scoreboard players enable @a[scores={macro_run=-1..}] macro_run

# Advanced trigger dispatch (v1.0.3)
# scan trigger/bind list for any player with macro_action > 0.
# All matching bind functions run as @s.
# macro:input must never be touched (tick context safety).
execute as @a[scores={macro_action=1..}] run function macro:trigger/internal/dispatch

# BUG FIX v1.0.1: Only decrement positioned scores.
# Onceden "@a" decremented all player scores; score could go past 0 to -1, -2...
# oldugunda "=0" condition would never match again (race condition).
# Score no longer drops below 0; trigger always fires.
scoreboard players remove @a[scores={macro.dialog_load=1..}] macro.dialog_load 1
