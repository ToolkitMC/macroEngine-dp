# Do not call directly — event/fire_queued tarafindan queue'ya addnir.
# queue[0] is still present during queue_fire, so
# we can read the event name from queue[0].event and fire it.
# This approach completely eliminates the _fdeferred race condition.
function macro:event/fire with storage macro:engine queue[0]
