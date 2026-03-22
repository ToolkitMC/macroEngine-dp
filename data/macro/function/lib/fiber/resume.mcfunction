# ─────────────────────────────────────────────────────────────────
# macro:lib/fiber/resume
# Bir fiber'ı anında sürdürür (gecikme olmadan).
# yield kullanmadan dışarıdan bir fiber adımını tetiklemek için.
#
# INPUT (storage macro:input):
#   id   → fiber kimliği
#   func → çalıştırılacak fonksiyon
# ─────────────────────────────────────────────────────────────────

function macro:lib/fiber/internal/resume_exec with storage macro:input {}
