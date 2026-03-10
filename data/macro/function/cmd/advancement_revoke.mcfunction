# ============================================
# macro:cmd/advancement_revoke
# ============================================
# Playerdan advancement alir.
#
# INPUT: macro:input { player:"<name>", advancement:"<namespace:id>" }
# ============================================

$advancement revoke @a[name=$(player),limit=1] only $(advancement)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/advancement_revoke ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" → ","color":"dark_gray"},{"text":"$(advancement)","color":"aqua"}]
