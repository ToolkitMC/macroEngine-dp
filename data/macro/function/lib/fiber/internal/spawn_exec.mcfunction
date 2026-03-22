# macro:lib/fiber/internal/spawn_exec [MACRO]
# INPUT: $(id), $(func)

# Aynı id varsa sil
$data remove storage macro:engine fibers.$(id)

# Fiber kaydını oluştur
$data modify storage macro:engine fibers.$(id) set value {alive:1b}

# İlk adımı hemen çalıştır
$function $(func)

$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"lib/fiber/spawn ","color":"aqua"},{"text":"[start] ","color":"green"},{"text":"$(id)","color":"white"},{"text":" → ","color":"#555555"},{"text":"$(func)","color":"aqua"}]
