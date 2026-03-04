# ============================================
# macro:log/debug
# ============================================
# Adds a DEBUG-level log entry (gri).
# Intended to be seen only by players with the macro.debug tag
# but log/show still shows all entries.
#
# INPUT: macro:input { message:"<text>" }
# USAGE:
# data modify storage macro:input message set value "tick: 12345"
# function macro:log/debug with storage macro:input {}
# ============================================

$data modify storage macro:input message set value "$(message)"
data modify storage macro:input level set value "DEBUG"
data modify storage macro:input color set value "gray"
function macro:log/add with storage macro:input {}
