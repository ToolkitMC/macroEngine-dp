# ============================================
# macro:cmd/place_feature
# ============================================
# Belirtvian konuma Minecraft feature (agac, mineral vb.) yerlestirir.
# Minecraft 1.19+ place feature komutu kullanir.
#
# INPUT: macro:input { feature:"<namespace:feature>", x:<int>, y:<int>, z:<int> }
#
# EXAMPLE — buyuk mese agaci:
# data modify storage macro:input feature set value "minecraft:fancy_oak"
# data modify storage macro:input x set value 100
# data modify storage macro:input y set value 64
# data modify storage macro:input z set value 100
# function macro:cmd/place_feature with storage macro:input {}
# ============================================

$place feature $(feature) $(x) $(y) $(z)
