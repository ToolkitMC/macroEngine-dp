# ============================================
# macro:cmd/advancement_revoke
# ============================================
# Playerdan advancement alir.
#
# INPUT: macro:input { player:"<name>", advancement:"<namespace:id>" }
# ============================================

$advancement revoke @a[name=$(player),limit=1] only $(advancement)
