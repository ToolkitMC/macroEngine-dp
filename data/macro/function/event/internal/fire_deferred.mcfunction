# Do not call directly — event/fire_queued tarafindan queue'ya addnir.
# queue_fire sirasinda queue[0] hala mevcuttur, bu yuzden
# queue[0].event'ten event adini readyarak fire edebiliriz.
# Bu yaklasim _fdeferred race condition'ini tamamen ortadan removes.
function macro:event/fire with storage macro:engine queue[0]
