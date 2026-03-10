# ============================================
# macro:perm/trigger/bind
# ============================================
# İsimli trigger'e değer-fonksiyon bağlar.
# Scoreboard objective yoksa otomatik oluşturur.
# perm_trigger_names listesine {name:"..."} olarak kaydeder.
#
# INPUT: macro:input { name:"<trigger_adi>", value:<int>, func:"<namespace:path>", perm:"<izin>" }
#
# EXAMPLE:
# data modify storage macro:input name set value "test"
# data modify storage macro:input value set value 1
# data modify storage macro:input func set value "mypack:shop/open"
# data modify storage macro:input perm set value "player"
# function macro:perm/trigger/bind with storage macro:input {}
# → Player types: /trigger test set 1
# ============================================

$scoreboard objectives add $(name) trigger

$execute unless data storage macro:engine perm_triggers.$(name) run data modify storage macro:engine perm_triggers.$(name) set value []
$data modify storage macro:engine perm_triggers.$(name) append value {value:$(value), func:"$(func)", perm:"$(perm)"}

# perm_trigger_names'e ekle (duplicate önleme — object formatı)
execute unless data storage macro:engine perm_trigger_names run data modify storage macro:engine perm_trigger_names set value []
$execute unless data storage macro:engine perm_trigger_names[{name:"$(name)"}] run data modify storage macro:engine perm_trigger_names append value {name:"$(name)"}

$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"perm/trigger/bind ","color":"aqua"},{"text":"✔ ","color":"green"},{"text":"$(name)","color":"white"},{"text":":","color":"dark_gray"},{"text":"$(value)","color":"yellow"},{"text":" → ","color":"dark_gray"},{"text":"$(func)","color":"aqua"},{"text":" [","color":"dark_gray"},{"text":"$(perm)","color":"green"},{"text":"]","color":"dark_gray"}]
