# ============================================
# macro:log/show [1.21.6+ overlay]
# ============================================
# Same behaviour as log/show base — tellraw + for_each_list.
# In 1.21.6 dialog body list compounds cannot directly
# render them, so the tellraw approach is retained.
# ============================================

execute unless data storage macro:engine log_display[0] run tellraw @s {"text":"[Log] No entries.","color":"gray","italic":false}
execute unless data storage macro:engine log_display[0] run return 0

function macro:lib/input_push
data modify storage macro:engine _felist_input set from storage macro:engine log_display
data modify storage macro:input func set value "macro:log/internal/print_entry"
function macro:lib/for_each_list with storage macro:input {}
function macro:lib/input_pop
