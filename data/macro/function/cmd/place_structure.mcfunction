# ============================================
# macro:cmd/place_structure
# ============================================
# Belirtvian konuma NBT yapisi (structure) yerlestirir.
# Minecraft 1.19+ place structure komutu kullanir.
#
# INPUT: macro:input { structure:"<namespace:yol>", x:<int>, y:<int>, z:<int> }
#
# EXAMPLE:
# data modify storage macro:input structure set value "mypack:arena/spawn_room"
# data modify storage macro:input x set value 0
# data modify storage macro:input y set value 64
# data modify storage macro:input z set value 0
# function macro:cmd/place_structure with storage macro:input {}
# ============================================

$place structure $(structure) $(x) $(y) $(z)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/place_structure ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(structure)","color":"aqua"}]
