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

scoreboard players set @s macro.dialog_load -1
tag @s remove macro.dialog_closed
tag @s remove macro.dialog_opened
tag @s add macro.dialog_opened


return run tellraw @s {"text":"This feature requires 1.21.5 or higher!","color":"red","italic":false}
