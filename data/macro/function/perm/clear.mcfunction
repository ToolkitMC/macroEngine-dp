# ============================================
# macro:perm/clear
# ============================================
# Playerin tüm izinlerini siler.
#
# INPUT: macro:input { player:"<n>" }
#
# EXAMPLE:
# data modify storage macro:input player set value "Steve"
# function macro:perm/clear with storage macro:input {}
# ============================================

execute unless entity @s[tag=macro.admin] run return run tellraw @s ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"✘ ","color":"red"},{"text":"Permission denied.","color":"red"}]

$data remove storage macro:engine permissions.$(player)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"perm/clear ","color":"aqua"},{"text":"⚠ ","color":"yellow"},{"text":"$(player)","color":"white"},{"text":" — tüm izinler silindi","color":"dark_gray"}]
