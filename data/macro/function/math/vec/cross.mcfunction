# ─────────────────────────────────────────────────────────────────
# macro:math/vec/cross
# İki vektörün çapraz çarpımını hesaplar.
# cx = ay*bz - az*by
# cy = az*bx - ax*bz
# cz = ax*by - ay*bx
#
# INPUT:  ax, ay, az, bx, by, bz
# OUTPUT: macro:output {x, y, z}
# ─────────────────────────────────────────────────────────────────

function macro:math/vec/internal/cross_exec with storage macro:input {}
