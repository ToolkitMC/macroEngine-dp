# ============================================================
# macro:uuid/match
# @s entity'sinin UUID'sini macro:input value ile karşılaştırır
# Eşleşirse macro:input func fonksiyonunu çalıştırır
#
# KULLANIM:
#   data modify storage macro:input value set value "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
#   data modify storage macro:input func set value "mynamespace:my_function"
#   execute as <entity> run function macro:uuid/match
#
# GİRİŞ:
#   macro:input value → karşılaştırılacak UUID string'i (beklenen)
#   macro:input func  → eşleşme durumunda çalıştırılacak fonksiyon
#
# NOT: func aynı entity context'inde çalıştırılır.
# ============================================================

# Beklenen UUID string'ini geçici alana kaydet
# (from_entity çağrısı macro:input value'yu üzerine yazar)
data modify storage macro:uuid _match_target set from storage macro:input value

# @s UUID'sini string'e çevir → macro:input value
function macro:uuid/from_entity

# Karşılaştır: eşleşirse func'ı çalıştır
# Mevcut UUID (macro:input value) beklenen ile eşit mi?
function macro:uuid/internal/match_check with storage macro:input
