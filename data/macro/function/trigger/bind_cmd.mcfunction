# ============================================
# macro:trigger/bind_cmd
# ============================================
# macro_action trigger'ine deger-komut baglantisi ekler.
# INPUT: macro:input { value:<int>, cmd:"<command>" }
# ============================================

execute unless data storage macro:engine trigger_binds run data modify storage macro:engine trigger_binds set value []

$data modify storage macro:engine trigger_binds append value {value:$(value), cmd:"$(cmd)"}
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"trigger/bind_cmd ","color":"aqua"},{"text":"✔ ","color":"green"},{"text":"$(value)","color":"white"},{"text":" → ","color":"dark_gray"},{"text":"$(cmd)","color":"aqua"}]
