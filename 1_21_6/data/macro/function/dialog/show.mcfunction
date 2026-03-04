# BUG FIX v1.0.1: Guard macro.dialog_CLOSED yerine macro.dialog_OPENED olmaliydi.
# Previous code: if show was called immediately after closing a dialog
# (macro.dialog_closed tag'i hala silinmemisse) yanlislikla return 0 yapiyordu.
# Dogru davranis: dialog zaten aciksa (macro.dialog_opened) engelle.
execute if entity @s[tag=macro.dialog_opened] at @s run return 0

# Gerekli: macro:engine dialog.DIALOG bir kaynak konumuna setnmis olmali
# Example: data modify storage macro:engine dialog.DIALOG set value "macro:loading"
execute unless data storage macro:engine dialog.DIALOG run return 0

# Player adini al
execute at @s run function macro:player/get_name

# Player adini storage'ye write
data modify storage macro:engine dialog.NAME set from storage macro:names temp.NAME

# Dialog'u ac
function macro:dialog/show_macro with storage macro:engine dialog

# Dialog acildi olarak isaretle (cift acilmayi onler)
tag @s add macro.dialog_opened

return 1
