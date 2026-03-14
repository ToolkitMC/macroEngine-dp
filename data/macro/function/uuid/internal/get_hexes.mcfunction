# ============================================================
# macro:uuid/internal/get_hexes  [MACRO FONKSİYON]
# macro:uuid _tmp'deki 16 byte int'ini 2-karakterli hex string'lere çevirir
#
# Çağırma: function macro:uuid/internal/get_hexes with storage macro:uuid _tmp
# Alanlar 0..f hex arama tablosuna indeks olarak kullanılır.
# Aynı alanlar hex string sonuçlarıyla üzerine yazılır.
# ============================================================
$data modify storage macro:uuid _tmp 0 set from storage macro:uuid hex_chars[$(0)]
$data modify storage macro:uuid _tmp 1 set from storage macro:uuid hex_chars[$(1)]
$data modify storage macro:uuid _tmp 2 set from storage macro:uuid hex_chars[$(2)]
$data modify storage macro:uuid _tmp 3 set from storage macro:uuid hex_chars[$(3)]
$data modify storage macro:uuid _tmp 4 set from storage macro:uuid hex_chars[$(4)]
$data modify storage macro:uuid _tmp 5 set from storage macro:uuid hex_chars[$(5)]
$data modify storage macro:uuid _tmp 6 set from storage macro:uuid hex_chars[$(6)]
$data modify storage macro:uuid _tmp 7 set from storage macro:uuid hex_chars[$(7)]
$data modify storage macro:uuid _tmp 8 set from storage macro:uuid hex_chars[$(8)]
$data modify storage macro:uuid _tmp 9 set from storage macro:uuid hex_chars[$(9)]
$data modify storage macro:uuid _tmp a set from storage macro:uuid hex_chars[$(a)]
$data modify storage macro:uuid _tmp b set from storage macro:uuid hex_chars[$(b)]
$data modify storage macro:uuid _tmp c set from storage macro:uuid hex_chars[$(c)]
$data modify storage macro:uuid _tmp d set from storage macro:uuid hex_chars[$(d)]
$data modify storage macro:uuid _tmp e set from storage macro:uuid hex_chars[$(e)]
$data modify storage macro:uuid _tmp f set from storage macro:uuid hex_chars[$(f)]
