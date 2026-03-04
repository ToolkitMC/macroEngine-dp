# ============================================
# macro:cmd/other/storage_get
# ============================================
# INPUT (inline): { storage:"<storage>", nbt:["<path>"] | {} | [] }
#   nbt:["path"]  → belirli yol
#   nbt:{} / []   → entire root
#
# EXAMPLE (entire root):
#   /function macro:cmd/other/storage_get {storage:"macro:engine",nbt:{}}
# EXAMPLE (belirli yol):
#   /function macro:cmd/other/storage_get {storage:"macro:engine",nbt:["global"]}
# ============================================

$data modify storage macro:engine _sg set value {storage:"$(storage)"}
$data modify storage macro:engine _sg.nbt_raw set value $(nbt)

# Default path = "" (entire root)
data modify storage macro:engine _sg.nbt set value ""

# Liste ise and [0] mevcutsa path'i al; {} or [] ise sessizce atla
execute if data storage macro:engine _sg.nbt_raw[0] run data modify storage macro:engine _sg.nbt set from storage macro:engine _sg.nbt_raw[0]
data remove storage macro:engine _sg.nbt_raw

# cmd/storage_get'i ATLIYORUZ — $(copy) compound valueleri patlatir
# internal/display direkt tellraw yapar, nbt component via copies
function macro:cmd/other/internal/display with storage macro:engine _sg
data remove storage macro:engine _sg
