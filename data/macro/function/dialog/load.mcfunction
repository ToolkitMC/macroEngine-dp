# ============================================
# macro:dialog/load  [base — 1.21.1 fallback]
# ============================================
# MACRO FUNCTION — INPUT: $(cooldown)
# 1.21.6+ overlay shows a native loading dialog.
# Below pack_format 80: set the score + tag so
# tick.mcfunction's timer logic still works.
# ============================================

$scoreboard players set @s macro.dialog_load $(cooldown)
tag @s remove macro.dialog_opened
tag @s add macro.dialog_opened
tag @s add macro.dialog_closed
