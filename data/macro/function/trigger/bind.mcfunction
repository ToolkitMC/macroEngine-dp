# ============================================
# macro:trigger/bind
# ============================================
# macro_action trigger objective'ine deger-fonksiyon baglantisi ekler.
# Bir oyuncu /trigger macro_action set <value> yazdiginda
# bagli fonksiyon otomatik olarak @s olarak calisir.
#
# Sadece fonksiyon baglantisi icin kullanin.
# Komut baglantisi icin: macro:trigger/bind_cmd
#
# INPUT: macro:input { value:<int>, func:"<namespace:path>" }
#
# EXAMPLE:
# data modify storage macro:input value set value 1
# data modify storage macro:input func set value "mypack:menu/open"
# function macro:trigger/bind with storage macro:input {}
#
# data modify storage macro:input value set value 2
# data modify storage macro:input func set value "mypack:shop/open"
# function macro:trigger/bind with storage macro:input {}
#
# Player kullanimi:
# /trigger macro_action set 1 → mypack:menu/open runs as @s
# /trigger macro_action set 2 → mypack:shop/open runs as @s
#
# NOT: Ayni value icin birden fazla bind eklenebilir; hepsi calisir.
# Yeni bind oncekini silmez. Silmek icin: macro:trigger/unbind
# ============================================

execute unless data storage macro:engine trigger_binds run data modify storage macro:engine trigger_binds set value []

$data modify storage macro:engine trigger_binds append value {value:$(value), func:"$(func)"}
