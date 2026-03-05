# ============================================
# macro:state/list
# ============================================
# Shows all player states to players with the macro.debug tag.
#
# INPUT: (yok)
# OUTPUT: (none — displayed via tellraw)
# ============================================

tellraw @a[tag=macro.debug] [{"text":"--- Player States ---","color":"gold"}]
execute if data storage macro:engine states run tellraw @a[tag=macro.debug] [{"text":" ","color":"gray"},{"storage":"macro:engine","nbt":"states","interpret":false,"color":"white"}]
execute unless data storage macro:engine states run tellraw @a[tag=macro.debug] {"text":" [!] No registered states.","color":"red"}
tellraw @a[tag=macro.debug] [{"text":"------------------------","color":"gold"}]
