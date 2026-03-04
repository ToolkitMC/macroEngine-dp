# ============================================
# macro:cmd/spectate_stop
# ============================================
# Spectator playernun hedef izlemesini sonlandirir.
#
# INPUT: macro:input { player:"<spectator_player>" }
# ============================================

# BUG FIX v3.5: "execute as $(player)" → "@a[name=...]" selector
$execute as @a[name=$(player),limit=1] run spectate
