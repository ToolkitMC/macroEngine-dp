# ============================================
# macro:cmd/spectate
# ============================================
# Bir spectator playernun bakis acisini hedef entity'ye baglar.
# Spectator moddaki player hedefin gozunden gorecektir.
#
# INPUT: macro:input { player:"<spectator_player>", target:"<hedef_selector>" }
#
# EXAMPLE:
# data modify storage macro:input player set value "Watcher"
# data modify storage macro:input target set value "@e[type=minecraft:creeper,limit=1,sort=nearest]"
# function macro:cmd/spectate with storage macro:input {}
# ============================================

# BUG FIX v3.5: "execute as $(player)" → "@a[name=...]" selector
$execute as @a[name=$(player),limit=1] run spectate $(target)
