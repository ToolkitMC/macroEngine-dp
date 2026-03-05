# ============================================
# Stops the progress bar
# ============================================
# Usage: /function macro:stop_progressbar
# ============================================

# Stop the progress bar objective
data remove storage macro:engine pb_obj
data remove storage macro:engine pb_max
data remove storage macro:engine pb_label

# Actionbar'i clear
title @a actionbar {"text":""}

tellraw @a {"text":"[Progress Bar] Disabled.","color":"yellow"}
