# ============================================
# macro:cmd/ride
# ============================================
# Bir playeryu or entity'yi belirtvian vehicle'a bindirir.
# Minecraft 1.21+ ride komutu kullanir.
#
# INPUT: macro:input { player:"<binici>", vehicle:"<arac_entity_UUID_or_selector>" }
#
# EXAMPLE — playeryu en yakin ata bindir:
# data modify storage macro:input player set value "Steve"
# data modify storage macro:input vehicle set value "@e[type=minecraft:horse,limit=1,sort=nearest]"
# function macro:cmd/ride with storage macro:input {}
# ============================================

# BUG FIX v3.5: "$(player)" adi direkt enjekte etmek yerine
# @a[name=...] selector kullanilmali — diger cmd/ functionlariyla tutarli.
$ride @a[name=$(player),limit=1] mount $(vehicle)
