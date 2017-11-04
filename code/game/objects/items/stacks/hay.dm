//Contains new hay craftable objects, will be moved into their relevant files eventually
//For now these are collated here for ease of my lazyness times -Gomble

var/global/list/datum/stack_recipe/hay_recipes = list ( \
	new/datum/stack_recipe("Bedroll", /obj/item/roller/bedroll, 10, time = 10, one_per_turf = 0, on_floor = 0), \
	new/datum/stack_recipe("Rope", /obj/item/weapon/restraints/handcuffs/rope, 4, time = 5, one_per_turf = 0, on_floor = 0), \
	new/datum/stack_recipe("Rice Hat", /obj/item/clothing/head/rice_hat, 4, time = 5, one_per_turf = 0, on_floor = 0), \
	new/datum/stack_recipe("Wicker Basket", /obj/structure/closet/crate/wicker, 15, time = 15, one_per_turf = 1, on_floor = 1), \
	new/datum/stack_recipe("Broom", /obj/item/weapon/mop/broom, 15, time = 15, one_per_turf = 0, on_floor = 0), \
	)
//TODO - Thread/Rope for tailoring from hay fibres
/obj/item/stack/hay
	name = "hay"
	desc = "A bundle of hay. Food for livestock, and useful for weaving. Hail the Wickerman."
	singular_name = "hay stalk"
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

/obj/item/stack/hay/update_icon()
	var/amount = get_amount()
	if((amount <= 4) && (amount > 0))
		icon_state = "hay[amount]"
	else
		icon_state = "hay"

//Bedroll

/obj/structure/bed/roller/bedroll
	name = "bedroll"
	desc = "A breadroll for the wasteland camping enthusiast."
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
/obj/structure/bed/roller/post_buckle_mob(mob/living/M)
	icon_state = "bedroll_rolled" //hopefully this fixes the invisibility issues.
	return



//Wicker Basket

/obj/structure/closet/crate/wicker
	name = "basket"
	desc = "A handmade wicker basket. How artisan! GMO FREE ORGANIC FREE RANGE ARTISAN VEGAN AND PALEO FRIENDLY."
	icon = 'icons/obj/crates.dmi'
	icon_crate = "basket"
	icon_state = "basket"
	burn_state = FLAMMABLE


//Broom (A buggered mop that uses no water)
#define is_cleanable(A) (istype(A, /obj/effect/decal/cleanable) || istype(A, /obj/effect/rune))
/obj/item/weapon/mop/broom
	desc = "Sweep all your problems under the rug."
	name = "broom"
	icon = 'icons/obj/wizard.dmi' //this broom is actually perfect
	icon_state = "broom"
	attack_verb = list("tickled", "swept", "dusted", "smacked")

/obj/item/weapon/mop/broom/New()
	create_reagents(mopcap)


/obj/item/weapon/mop/broom/clean(turf/A)
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

//Rope
/obj/item/weapon/restraints/handcuffs/rope
	name = "rope restraints"
	desc = "Looks like some thread woven together. Could be used to tie something up."
	icon_state = "cuff_rope"
	breakouttime = 300 //Deciseconds = 30s
	cuffsound = 'sound/weapons/cablecuff.ogg'




