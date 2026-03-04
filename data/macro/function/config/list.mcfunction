# ============================================
# macro:config/list
# ============================================
# Shows all config values on the debug channel.
# INPUT: —
# OUTPUT: — (debug ciktisi)
# ============================================

tellraw @a[tag=macro.debug] {"text":"[Config] -- All Values --","color":"yellow"}
tellraw @a[tag=macro.debug] {"nbt":"config","storage":"macro:engine","interpret":false,"color":"white"}
tellraw @a[tag=macro.debug] {"text":"[Config] -----------------","color":"yellow"}
