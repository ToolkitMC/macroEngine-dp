# ============================================
# macro:perm/trigger/bind_cmd
# ============================================
# İsimli trigger'e değer-komut bağlar (fonksiyon değil).
#
# INPUT: macro:input { name:"<trigger_adi>", value:<int>, cmd:"<komut>", perm:"<izin>" }
# ============================================

$scoreboard objectives add $(name) trigger

$execute unless data storage macro:engine perm_triggers.$(name) run data modify storage macro:engine perm_triggers.$(name) set value []
$data modify storage macro:engine perm_triggers.$(name) append value {value:$(value), cmd:"$(cmd)", perm:"$(perm)"}

execute unless data storage macro:engine perm_trigger_names run data modify storage macro:engine perm_trigger_names set value []
$execute unless data storage macro:engine perm_trigger_names[{name:"$(name)"}] run data modify storage macro:engine perm_trigger_names append value {name:"$(name)"}

$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"perm/trigger/bind_cmd ","color":"aqua"},{"text":"✔ ","color":"green"},{"text":"$(name)","color":"white"},{"text":":","color":"dark_gray"},{"text":"$(value)","color":"yellow"},{"text":" → ","color":"dark_gray"},{"text":"$(cmd)","color":"aqua"},{"text":" [","color":"dark_gray"},{"text":"$(perm)","color":"green"},{"text":"]","color":"dark_gray"}]
