# ============================================
# macro:cmd/attribute_get_modifier
# ============================================
# Belirli bir modifier'in valueini dondurur.
#
# INPUT: macro:input { player:"<name>", attribute:"<attribute_id>", id:"<modifier_id>" }
# OUTPUT: macro:output { result:<float> }
# ============================================

$execute store result storage macro:output result double 1 run attribute @a[name=$(player),limit=1] $(attribute) modifier value get $(id)
