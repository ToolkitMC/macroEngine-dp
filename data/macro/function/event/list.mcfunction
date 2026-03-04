# ============================================
# macro:event/list
# ============================================
# Shows all registered events and handlers on the debug channel.
# INPUT: (yok)
# ============================================

tellraw @a[tag=macro.debug] [{"text":"--- Registered Events ---","color":"dark_aqua"}]
execute if data storage macro:engine events run tellraw @a[tag=macro.debug] [{"text":" ","color":"gray"},{"storage":"macro:engine","nbt":"events","interpret":false,"color":"yellow"}]
execute unless data storage macro:engine events run tellraw @a[tag=macro.debug] {"text":" [!] No registered events.","color":"red"}
tellraw @a[tag=macro.debug] [{"text":"-------------------------","color":"dark_aqua"}]
