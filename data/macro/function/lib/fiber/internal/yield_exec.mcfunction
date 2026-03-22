# macro:lib/fiber/internal/yield_exec [MACRO]
# INPUT: $(id), $(resume), $(delay)

# Fiber ölüyse devam etme
$execute unless data storage macro:engine fibers.$(id){alive:1b} run return 0

# Sürdürme noktasını fiber kaydına yaz (is_alive/resume için okunabilir)
$data modify storage macro:engine fibers.$(id).resume set value "$(resume)"

# _pending kuyruğuna bu fiber'ın resume isteğini ekle.
# resume_dispatch her çağrıda _pending[0]'ı tüketir → yield/dispatch 1:1 eşleşir.
$data modify storage macro:engine fibers._pending append value {id:"$(id)", func:"$(resume)"}

# process_queue'ya dispatch entry ekle — delay kadar sonra çalışır
$data modify storage macro:engine queue append value {func:"macro:lib/fiber/internal/resume_dispatch", delay:$(delay)}

$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"lib/fiber/yield ","color":"aqua"},{"text":"$(id)","color":"white"},{"text":" → ","color":"#555555"},{"text":"$(resume)","color":"aqua"},{"text":" in $(delay)t","color":"#555555"}]
