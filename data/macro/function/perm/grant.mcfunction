# ============================================
# macro:perm/grant
# ============================================
# Playerya izin verir.
# Storage kalıcı kayıt (offline dahil), entity tag runtime hızlı erişim.
# tag format: perm.<perm_adi>  (Java playerdata'ya kaydedilir — kalıcı)
#
# INPUT: macro:input { player:"<n>", perm:"<izin_adi>" }
#
# EXAMPLE:
# data modify storage macro:input player set value "Steve"
# data modify storage macro:input perm set value "builder"
# function macro:perm/grant with storage macro:input {}
# ============================================

execute unless entity @s[tag=macro.admin] run return run tellraw @s ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"✘ ","color":"red"},{"text":"Permission denied.","color":"red"}]

$data modify storage macro:engine permissions.$(player).$(perm) set value 1b
$tag @a[name=$(player),limit=1] add perm.$(perm)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"perm/grant ","color":"aqua"},{"text":"✔ ","color":"green"},{"text":"$(player)","color":"white"},{"text":" ← ","color":"dark_gray"},{"text":"$(perm)","color":"aqua"}]
