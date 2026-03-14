# ============================================================
# macro:uuid/internal/has_check  [MACRO FONKSİYON]
# Önbellekte anahtar varlığını kontrol eder
#
# Çağırma: function macro:uuid/internal/has_check with storage macro:input
# $(key) = kontrol edilecek anahtar adı
# ============================================================
$execute if data storage macro:engine uuid_cache.$(key) run scoreboard players set $uuid.has macro.tmp 1
