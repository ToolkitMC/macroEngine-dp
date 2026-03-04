# ============================================
# macro:lib/schedule_list
# ============================================
# Shows all active schedules to macro.debug-tagged players.
# Gelistirme and debug amaclidir.
#
# INPUT: (yok)
# OUTPUT: (none — displayed via tellraw)
#
# EXAMPLE:
# function macro:lib/schedule_list
# ============================================

tellraw @a[tag=macro.debug] [{"text":"--- Actiand Schedules ---","color":"dark_aqua"}]
execute if data storage macro:engine schedules run tellraw @a[tag=macro.debug] [{"text":" ","color":"gray"},{"storage":"macro:engine","nbt":"schedules","interpret":false,"color":"yellow"}]
execute unless data storage macro:engine schedules run tellraw @a[tag=macro.debug] {"text":" [!] No actiand schedules.","color":"red"}
tellraw @a[tag=macro.debug] [{"text":"--- Queue (","color":"dark_aqua"},{"score":{"name":"$pq_depth","objective":"macro.tmp"},"color":"white"},{"text":" item(s) ---","color":"dark_aqua"}]
execute if data storage macro:engine queue[0] run tellraw @a[tag=macro.debug] [{"text":" ","color":"gray"},{"storage":"macro:engine","nbt":"queue","interpret":false,"color":"aqua"}]
tellraw @a[tag=macro.debug] [{"text":"-------------------------","color":"dark_aqua"}]
