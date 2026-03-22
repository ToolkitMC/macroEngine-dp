# ─────────────────────────────────────────────────────────────────
# macro:lib/fiber/is_alive
# Bir fiber'ın aktif olup olmadığını kontrol eder.
#
# INPUT (storage macro:input):
#   id → fiber kimliği
#
# OUTPUT (storage macro:output):
#   result → 1b (aktif) | 0b (ölü veya hiç başlamamış)
# ─────────────────────────────────────────────────────────────────

function macro:lib/fiber/internal/is_alive_exec with storage macro:input {}
