# macro:lib/fiber/internal/resume_dispatch
# process_queue tarafından çağrılır.
# _pending[0]'ı çeker, fiber alive kontrolü yapar, fonksiyonu çalıştırır.

execute unless data storage macro:engine fibers._pending[0] run return 0

data modify storage macro:engine _fib_cur set from storage macro:engine fibers._pending[0]
data remove storage macro:engine fibers._pending[0]

function macro:lib/fiber/internal/resume_exec with storage macro:engine _fib_cur {}
data remove storage macro:engine _fib_cur
