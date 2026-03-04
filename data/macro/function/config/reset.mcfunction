# ============================================
# macro:config/reset
# ============================================
# Removes ALL config values. ⚠️ Irreversible!
# INPUT: —
# OUTPUT: —
# ============================================

data remove storage macro:engine config
tellraw @a[tag=macro.debug] {"text":"[Config] [!] All config cleared!","color":"red"}
