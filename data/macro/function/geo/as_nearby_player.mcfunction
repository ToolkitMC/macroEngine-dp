# ============================================
# macro:geo/as_nearby_player
# ============================================
# Belirtilen tag'e sahip entity'nin yakinindaki (distance..limit=1)
# bir oyuncuyu OLARAK ve KONUMUNDA fonksiyonu calistirir.
# NPC'lerin, turret'lerin veya tetikleyici objelerinin
# en yakin oyuncuya tepki vermesi icin idealdir.
#
# INPUT: macro:input
# distance : <float> — Arama yaricapi (blok)
# func : <string> — Run edilecek fonksiyon (namespace:path)
#
# Cagiran context:
# @s = entity (NPC, armor_stand vs.)
# Ornek: execute as @e[tag=my_npc] run function macro:geo/as_nearby_player
#
# EXAMPLE:
# data modify storage macro:input distance set value 5
# data modify storage macro:input func set value "mymap:npc/greet"
# execute as @e[tag=my_npc] run function macro:geo/as_nearby_player with storage macro:input {}
# ============================================

$execute as @a[distance=..$(distance),limit=1,sort=nearest] at @s run function $(func)
