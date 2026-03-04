# ============================================
# macro:cmd/ride_dismount
# ============================================
# Playeryu or entity'yi bindigi aractan indirir.
#
# INPUT: macro:input { player:"<binici>" }
# ============================================

# BUG FIX v3.5: @a[name=...] selector kullanilmali
$ride @a[name=$(player),limit=1] dismount
