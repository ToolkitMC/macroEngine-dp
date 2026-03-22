# ─────────────────────────────────────────────────────────────────
# macro:lib/fiber/yield
# Bir fiber adımından çıkar ve bir sonraki adımı kuyruğa ekler.
# Fiberin ölü olup olmadığını kontrol eder — kill sonrası resume olmaz.
#
# INPUT (storage macro:input):
#   id     → fiber kimliği
#   resume → bir sonraki adımın fonksiyon adı
#   delay  → kaç tick sonra devam edileceği (varsayılan: 1)
#
# ÇAĞRI YERİ: fiber adımı fonksiyonunun sonunda çağrılır.
# ─────────────────────────────────────────────────────────────────

function macro:lib/fiber/internal/yield_exec with storage macro:input {}
