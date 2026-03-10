# ============================================
# macro:perm/trigger/internal/unbind_reinsert
# ============================================
# unbind_filter tarafından çağrılır.
# Eşleşmeyen bind'i perm_triggers.$(name)'e geri ekler.
#
# INPUT (makro): storage macro:engine _pt_filter_ctx = {name:"<trigger_adi>"}
# ============================================

$data modify storage macro:engine perm_triggers.$(name) append from storage macro:engine _pt_unbind[0]
