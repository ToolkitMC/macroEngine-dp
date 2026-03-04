# ============================================
# macro:config/get
# ============================================
# Config'den value readr.
# INPUT: macro:input { key:"<key>" }
# OUTPUT: macro:output { result: <value> | "" (if absent) }
# ============================================

# Varsayilan bos string (key bulunamazsa)
data modify storage macro:output result set value ""

$execute if data storage macro:engine config.$(key) run data modify storage macro:output result set from storage macro:engine config.$(key)
