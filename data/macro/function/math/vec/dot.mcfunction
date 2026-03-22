# ─────────────────────────────────────────────────────────────────
# macro:math/vec/dot
# İki vektörün iç çarpımını hesaplar. (ax*bx + ay*by + az*bz)
# Sonuç integer — kesirsiz. Büyük vektörler için taşma olabilir.
#
# INPUT:  ax, ay, az, bx, by, bz
# OUTPUT: macro:output result (int)
# ─────────────────────────────────────────────────────────────────

function macro:math/vec/internal/dot_exec with storage macro:input {}
