# ============================================
# macro:cmd/title_all
# ============================================
# Tum oyunculara ayni anda title gonderir.
# Bireysel macro:cmd/title'dan farki: oyuncu adi gerekmez.
#
# Kullanim senaryolari:
# - Round duyurusu (ROUND 2 basliyor!)
# - Oyun bitti ekrani
# - Global countdown gosterimi
#
# INPUT: macro:input
# title : <string> — Gosterilecek metin (renksiz veya JSON)
#
# EXAMPLE:
# data modify storage macro:input title set value "Round 1"
# function macro:cmd/title_all with storage macro:input {}
# ============================================

$title @a title {"text":"$(title)"}
tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/title_all ","color":"aqua"}]
