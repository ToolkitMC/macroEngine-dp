# ============================================
# macro:dialog/show  [base — 1.21.1 fallback]
# ============================================
# 1.21.6+ overlay shows a native Minecraft dialog.
# Below pack_format 80 there is no dialog API;
# fall back to a tellraw with clickable commands.
# ============================================

execute unless data storage macro:engine dialog.DIALOG run return 0

tellraw @s ["",{"text":"[AME Dialog] ","color":"aqua","bold":true},{"nbt":"dialog.DIALOG","storage":"macro:engine","color":"yellow"},{"text":" (upgrade to 1.21.6+ for native UI)","color":"dark_gray","italic":true}]
