# ============================================
# macro:trigger/bind_cmd
# ============================================
# macro_action trigger objective'ine deger-komut baglantisi ekler.
# Bir oyuncu /trigger macro_action set <value> yazdiginda
# bagli komut otomatik olarak @s olarak calisir.
#
# Fonksiyon baglantisi icin: macro:trigger/bind
#
# INPUT: macro:input { value:<int>, cmd:"<command>" }
#
# EXAMPLE:
# data modify storage macro:input value set value 10
# data modify storage macro:input cmd set value "say Merhaba!"
# function macro:trigger/bind_cmd with storage macro:input {}
#
# Player kullanimi:
# /trigger macro_action set 10 → "say Merhaba!" runs as @s
#
# NOT: Ayni value icin birden fazla bind eklenebilir; hepsi calisir.
# Hem bind hem bind_cmd eklenirse her ikisi de calisir.
# ============================================

execute unless data storage macro:engine trigger_binds run data modify storage macro:engine trigger_binds set value []

$data modify storage macro:engine trigger_binds append value {value:$(value), cmd:"$(cmd)"}
