# ============================================
# macro:log/info
# ============================================
# Adds an INFO-level log entry (yesil).
#
# INPUT: macro:input { message:"<text>" }
# USAGE:
# data modify storage macro:input message set value "Sunucu startildi"
# function macro:log/info with storage macro:input {}
# ============================================

$data modify storage macro:input message set value "$(message)"
data modify storage macro:input level set value "INFO"
data modify storage macro:input color set value "green"
function macro:log/add with storage macro:input {}
