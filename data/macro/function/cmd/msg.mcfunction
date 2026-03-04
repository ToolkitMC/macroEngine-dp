# ============================================
# macro:cmd/msg
# ============================================
# Belirtvian playerya ozel (whisper) mesaj sends.
# Only the target player can see this.
#
# INPUT: macro:input { player:"<target>", message:"<mesaj>" }
#
# EXAMPLE:
# data modify storage macro:input player set value "Steve"
# data modify storage macro:input message set value "Gizli bilgi!"
# function macro:cmd/msg with storage macro:input {}
# ============================================

$tellraw @a[name=$(player),limit=1] {"text":"$(message)","color":"gray","italic":true}
