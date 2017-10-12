var/global/list/datum/stack_recipe/hay_recipes = list ( \
	new/datum/stack_recipe("Bedroll", /obj/item/roller/bedroll, 10, time = 10, one_per_turf = 0, on_floor = 0), \
	new/datum/stack_recipe("Rice Hat", /obj/item/clothing/head/rice_hat, 4, time = 5, one_per_turf = 0, on_floor = 0), \
	new/datum/stack_recipe("Wicker Basket", /obj/structure/closet/crate/wicker, 15, time = 15, one_per_turf = 0, on_floor = 0), \
	new/datum/stack_recipe("Broom", /obj/item/weapon/mop/broom, 15, time = 15, one_per_turf = 0, on_floor = 0), \
	)
//TODO - Thread/Rope for tailoring from hay fibres
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
	
	
	
	
//Wicker Basket

/obj/structure/closet/crate/wicker
	name = "basket"
	desc = "A handmade wicker basket. How artisan! GMO FREE ORGANIC FREE RANGE ARTISAN VEGAN AND PALEO FRIENDLY."
	icon = 'icons/obj/crates.dmi'
	var/icon_crate = "basket"
	icon_state = "basket"
	burn_state = FLAMMABLE

//Broom (A buggered mop that uses no water)
/obj/item/weapon/mop/broom
	desc = "Sweep all your problems under the rug."
	name = "broom"
	icon_state = "broom" //todo
	attack_verb = list("tickled", "swept", "dusted", "smacked")

/obj/item/weapon/mop/broom/New()
	create_reagents(mopcap)


/obj/item/weapon/mop/broom/proc/clean(turf/A)
	A.clean_blood()
	for(var/obj/effect/O in A)
		if(is_cleanable(O))
			qdel(O)


/obj/item/weapon/mop/broom/afterattack(atom/A, mob/user, proximity)
	if(!proximity) return

	var/turf/turf = A
	if(is_cleanable(A))
		turf = A.loc
	A = null

	if(istype(turf) && !istype(turf, /turf/ground/desert))
		user.visible_message("[user] begins to clean \the [turf] with [src].", "<span class='notice'>You begin to clean \the [turf] with [src]...</span>")

		if(do_after(user, src.mopspeed, target = turf))
			user << "<span class='notice'>You finish sweeping.</span>"
			clean(turf)
	
	
	
	
	
	
