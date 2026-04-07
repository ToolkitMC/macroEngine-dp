# ─────────────────────────────────────────────────────────────────
# macro:wand/cooldown_set
# Wand kullanımına cooldown uygular.
# NOT: Wand cooldown'ları macro:engine wand_cooldowns altında saklanır;
#      bu sayede macro:cooldown modülünün "$(player).$(key)" yoluyla
#      çakışma riski tamamen ortadan kalkar.
#
# INPUT:
#   $(player)   → player name
#   $(tag)      → wand tag
#   $(duration) → cooldown süresi (tick cinsinden)
# ─────────────────────────────────────────────────────────────────

$scoreboard players set $wcd_dur macro.tmp $(duration)
execute store result score $wcd_now macro.tmp run scoreboard players get $epoch macro.time
scoreboard players operation $wcd_now macro.tmp += $wcd_dur macro.tmp
$execute store result storage macro:engine wand_cooldowns.$(player).$(tag) int 1 run scoreboard players get $wcd_now macro.tmp
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"wand/cooldown_set ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" [$(tag)] ","color":"#555555"},{"text":"$(duration)t","color":"green"}]
