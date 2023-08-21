#define SCP_096 "096"

// SCP 914 defines
#define MODE_ROUGH "Rough"
#define MODE_COARSE "Coarse"
#define MODE_ONE_TO_ONE "1:1"
#define MODE_FINE "Fine"
#define MODE_VERY_FINE "Very Fine"

/mob/proc/is_scp012_affected()
	if (ishuman(src) && locate(/obj/item/paper/scp012) in view(2, src))
		for (var/obj/item/paper/scp012/scp012 in view(2, src))
			if (scp012.can_affect(src))
				return TRUE
	return FALSE
