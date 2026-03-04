# ============================================
# macro:player/list_vars
# ============================================
# Shows all player variables and cooldowns as debug output.
# INPUT: macro:input { player:"<name>" }
# ============================================

$tellraw @a[tag=macro.debug] [{"text":"----------------","color":"dark_gray"},{"text":" [VARS] ","color":"white"},{"text":"$(player)","color":"aqua","bold":true},{"text":" ----------------","color":"dark_gray"}]

$execute if data storage macro:engine players.$(player) run tellraw @a[tag=macro.debug] [{"text":" Variables: ","color":"gray"},{"storage":"macro:engine","nbt":"players.$(player)","interpret":false,"color":"yellow"}]
$execute unless data storage macro:engine players.$(player) run tellraw @a[tag=macro.debug] {"text":" [!] No data found.","color":"red"}

$execute if data storage macro:engine cooldowns.$(player) run tellraw @a[tag=macro.debug] [{"text":" Cooldowns: ","color":"gray"},{"storage":"macro:engine","nbt":"cooldowns.$(player)","interpret":false,"color":"aqua"}]
$execute unless data storage macro:engine cooldowns.$(player) run tellraw @a[tag=macro.debug] {"text":" [CD] No actiand cooldowns.","color":"dark_gray"}

tellraw @a[tag=macro.debug] {"text":"----------------------------------------","color":"dark_gray"}
