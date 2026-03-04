# ============================================
# Progress Bar Disablema
# ============================================
# Komut: /function macro:stop_progressbar
# ============================================

# Progress bar'i kapat
data remove storage macro:engine pb_obj
data remove storage macro:engine pb_max
data remove storage macro:engine pb_label

# Actionbar'i clear
title @a actionbar {"text":""}

tellraw @a {"text":"[Progress Bar] Disableildi.","color":"yellow"}
