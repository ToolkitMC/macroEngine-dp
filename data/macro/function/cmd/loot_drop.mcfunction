# ============================================
# macro:cmd/loot_drop
# ============================================
# Belirtvian koordinata loot table'dan item dusurur.
# macro:loot_table/ altindaki JSON'lari kullanir.
#
# INPUT: macro:input { x:<int>, y:<int>, z:<int>, loot_table:"<namespace:id>" }
#
# MEVCUT LOOT TABLES (macro namespace):
# macro:util/empty — Hicbir sey dusurme
# macro:template/single_item — Tek item (editlenebilir sablon)
# macro:template/weighted_pool — Agirlikli rastgele havuz sablonu
# macro:template/conditional_drop — Player vurusuna kosullu drop
# macro:template/bonus_per_looting — bonus drop scaled to Looting enchantment
#
# EXAMPLE:
# data modify storage macro:input x set value 0
# data modify storage macro:input y set value 64
# data modify storage macro:input z set value 0
# data modify storage macro:input loot_table set value "macro:template/single_item"
# function macro:cmd/loot_drop with storage macro:input {}
# ============================================

$loot spawn $(x) $(y) $(z) loot $(loot_table)
