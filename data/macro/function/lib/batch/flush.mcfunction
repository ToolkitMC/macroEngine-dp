# ─────────────────────────────────────────────────────────────────
# macro:lib/batch/flush
# Batch'teki işleri spread_over tick'e bölerek process_queue'ya ekler.
# Her tick'e düşen iş sayısı: ceil(items / spread_over).
# flush sonrası batch kaydı silinir.
#
# INPUT (storage macro:input):
#   id → batch kimliği
# ─────────────────────────────────────────────────────────────────

function macro:lib/batch/internal/flush_exec with storage macro:input {}
