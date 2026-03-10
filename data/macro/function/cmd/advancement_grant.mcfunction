# ============================================
# macro:cmd/advancement_grant
# ============================================
# Playerya advancement gives.
# macro:advancement/ altindaki JSON'lari kullanir.
#
# INPUT: macro:input { player:"<name>", advancement:"<namespace:id>" }
#
# MEVCUT ADVANCEMENT'LAR (sablon — kopyalayip duzenle):
# macro:template/task — Normal gorev cercevesi
# macro:template/goal — Yildiz cerceve, sohbet duyurusu
# macro:template/challenge — Altin cerceve, +100 XP odulu
#
# EXAMPLE:
# data modify storage macro:input player set value "Steve"
# data modify storage macro:input advancement set value "macro:template/goal"
# function macro:cmd/advancement_grant with storage macro:input {}
# ============================================

$advancement grant @a[name=$(player),limit=1] only $(advancement)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/advancement_grant ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" → ","color":"dark_gray"},{"text":"$(advancement)","color":"aqua"}]
