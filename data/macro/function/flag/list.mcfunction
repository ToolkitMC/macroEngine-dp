# ============================================
# macro:flag/list
# ============================================
# Shows all actiand global flags to macro.debug-tagged players.
#
# INPUT: (yok)
# OUTPUT: (none — displayed via tellraw)
# ============================================

tellraw @a[tag=macro.debug] [{"text":"--- Global Flags ---","color":"light_purple"}]
execute if data storage macro:engine flags run tellraw @a[tag=macro.debug] [{"text":" ","color":"gray"},{"storage":"macro:engine","nbt":"flags","interpret":false,"color":"white"}]
execute unless data storage macro:engine flags run tellraw @a[tag=macro.debug] {"text":" [!] No actiand flags.","color":"red"}
tellraw @a[tag=macro.debug] [{"text":"----------------------","color":"light_purple"}]
