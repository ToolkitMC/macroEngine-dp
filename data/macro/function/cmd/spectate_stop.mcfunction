# ============================================
# macro:cmd/spectate_stop
# ============================================
# Spectator playernun hedef izlemesini sonlandirir.
#
# INPUT: macro:input { player:"<spectator_player>" }
# ============================================

# BUG FIX v3.5: "execute as $(player)" → "@a[name=...]" selector
$execute as @a[name=$(player),limit=1] run spectate
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/spectate_stop ","color":"aqua"},{"text":"$(player)","color":"white"}]
