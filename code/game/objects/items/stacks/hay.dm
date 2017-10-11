var/global/list/datum/stack_recipe/hay_recipes = list ( \
	new/datum/stack_recipe("bedroll", /obj/item/roller/bedroll, 10, time = 30, one_per_turf = 0, on_floor = 0), \
	)

/obj/item/stack/hay
	name = "hay"
	desc = "A bundle of hay. Food for livestock, and useful for weaving. Hail the Wickerman."
	singular_name = "strand of hay"
	icon_state = "hay"
	item_state = "hay"
	w_class = 2
	force = 1
	throwforce = 1
	throw_speed = 1
	throw_range = 2
	max_amount = 500
	attack_verb = list("tickled", "poked", "whipped")
	hitsound = 'sound/weapons/grenadelaunch.ogg'

/obj/item/stack/hay/New(var/loc, var/amount=null)
	..()

	recipes = hay_recipes
	update_icon()

/obj/item/stack/rods/update_icon()
	var/amount = get_amount()
	if((amount <= 4) && (amount > 0))
		icon_state = "hay[amount]"
	else
		icon_state = "hay"

//Bedroll

/obj/structure/bed/roller/bedroll
	name = "bedroll"
	desc = "=A bedroll for the wasteland camping enthusiast."
	icon = 'icons/obj/objects.dmi'
	icon_state = "bedroll_unrolled"
	anchored = 0
	density = 0
	foldabletype = /obj/item/roller/bedroll


/obj/item/roller/bedroll
	name = "bedroll"
	desc = "A rolled up sleeping mat. Unroll beside your cozy campfire."
	icon = 'icons/obj/objects.dmi'
	icon_state = "bedroll_rolled"
	w_class = 3


/obj/item/roller/bedroll/attack_self(mob/user)
	var/obj/structure/bed/roller/bedroll/R = new /obj/structure/bed/roller/bedroll(user.loc)
	R.add_fingerprint(user)
	qdel(src)
