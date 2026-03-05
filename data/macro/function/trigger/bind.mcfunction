# ============================================
# macro:trigger/bind
# ============================================
# Adds a value-to-function binding to the macro_action trigger objective.
# When a player types /trigger macro_action set <value>
# the function bound to that value runs automatically.
#
# INPUT: macro:input { value:<int>, func:"<namespace:path>" }
#
# EXAMPLE:
# data modify storage macro:input value set value 1
# data modify storage macro:input cmd set value "say hello"
# data modify storage macro:input func set value "mypack:menu/open"
# function macro:trigger/bind with storage macro:input {}
#
# data modify storage macro:input value set value 2
# data modify storage macro:input func set value "mypack:shop/open"
# function macro:trigger/bind with storage macro:input {}
#
# Player kullanimi:
# /trigger macro_action set 1 → mypack:menu/open runs
# /trigger macro_action set 2 → mypack:shop/open runs
#
# NOT: Adding a new bind for the same value does NOT overwrite the old one,
# both will run. Unbind first.
# ============================================

# initialise trigger_binds list if absent
execute unless data storage macro:engine trigger_binds run data modify storage macro:engine trigger_binds set value []

$data modify storage macro:engine trigger_binds append value {value:$(value), func:"$(func)", cmd:"$(cmd)"}
