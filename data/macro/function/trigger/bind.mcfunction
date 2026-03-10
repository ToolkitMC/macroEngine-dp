# ============================================
# macro:trigger/bind
# ============================================
# macro_action trigger'ine deger-fonksiyon baglantisi ekler.
# INPUT: macro:input { value:<int>, func:"<namespace:path>" }
# ============================================

execute unless data storage macro:engine trigger_binds run data modify storage macro:engine trigger_binds set value []

$data modify storage macro:engine trigger_binds append value {value:$(value), func:"$(func)"}
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"trigger/bind ","color":"aqua"},{"text":"✔ ","color":"green"},{"text":"$(value)","color":"white"},{"text":" → ","color":"dark_gray"},{"text":"$(func)","color":"aqua"}]
