# ============================================
# macro:dialog/open  [base — 1.21.1 fallback]
# ============================================
# 1.21.6+ overlay overrides this with the native
# dialog API. Below pack_format 80 we fall back
# to a chat-based prompt so the engine does not
# crash with a missing-function error.
#
# Requires: macro:engine dialog.DIALOG to be set
#           (same contract as the 1.21.6 version).
# ============================================

# Guard: nothing to show
execute unless data storage macro:engine dialog.DIALOG run return 0

# Mark as opened (prevents double-trigger from tick)
scoreboard players set @s macro.dialog_load -1
tag @s remove macro.dialog_closed
tag @s remove macro.dialog_opened
tag @s add macro.dialog_opened

# Fallback: tellraw the dialog identifier as a clickable load prompt
tellraw @s ["",{"text":"[AME] ","color":"aqua","bold":true},{"text":"Dialog: ","color":"gray"},{"nbt":"dialog.DIALOG","storage":"macro:engine","color":"yellow"},{"text":" — ","color":"dark_gray"},{"text":"[Load]","color":"green","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/function macro:load"},"hover_event":{"action":"show_text","value":{"text":"Upgrade to 1.21.6+ for native dialog support","color":"gray"}}}]

return 1
