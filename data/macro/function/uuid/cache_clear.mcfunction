# ============================================================
# macro:uuid/cache_clear
# Tüm önbelleği temizler (uuid/store ile kaydedilen tüm girişler)
#
# KULLANIM:
#   function macro:uuid/cache_clear
#
# Uyarı: Bu işlem geri alınamaz. Tüm depolanmış UUID'ler silinir.
# Genellikle dünya sıfırlanırken veya oyuncu ayrılırken kullanılır.
# ============================================================
data modify storage macro:engine uuid_cache set value {}
