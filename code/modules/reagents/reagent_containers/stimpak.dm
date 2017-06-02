/obj/item/weapon/reagent_containers/stimpak
	name = "stim"
	icon_state = "medipen"
	icon = 'icons/obj/syringe.dmi'
	item_state = "medipen"
	amount_per_transfer_from_this = 10
	volume = 10
	possible_transfer_amounts = list()
	flags = OPENCONTAINER
	slot_flags = SLOT_BELT
	list_reagents = list("stimpak" = 10)
	desc = "Stimpak, or stimulation delivery package, is a type of hand-held medication used for healing the body. This item consists of a syringe for containing and delivering the medication and a gauge for measuring the status of the stimpak's contents. When the medicine is injected, it provides immediate healing of the body's minor wounds."
	var/ignore_flags = 0

/obj/item/weapon/reagent_containers/stimpak/attack_paw(mob/user)
	return attack_hand(user)

/obj/item/weapon/reagent_containers/stimpak/attack(mob/living/M, mob/user)
	if(!iscarbon(M))
		return

	if(reagents.total_volume && (ignore_flags || M.can_inject(user, 1))) // Ignore flag should be checked first or there will be an error message.
		M << "<span class='warning'>You feel a tiny prick!</span>"
		user << "<span class='notice'>You inject [M] with [src].</span>"
		var/fraction = min(amount_per_transfer_from_this/reagents.total_volume, 1)
		reagents.reaction(M, INJECT, fraction)
		if(M.reagents)
			var/list/injected = list()
			for(var/datum/reagent/R in reagents.reagent_list)
				injected += R.name
			var/trans = reagents.trans_to(M, amount_per_transfer_from_this)
			user << "<span class='notice'>[trans] unit\s injected."
			var/contained = english_list(injected)
			add_logs(user, M, "injected", src, "([contained])")
			new /obj/item/weapon/reagent_containers/syringe(user.loc)
			SSobj.processing.Remove(src)
			qdel(src)

			add_logs(user, M, "stim'd", src, "([contained])")

/obj/item/weapon/reagent_containers/stimpak/regular
	name = "stimpak"
	icon_state = "stim15"
	desc = "A healing chem. When injected, the chem provides immediate healing of minor wounds."
	amount_per_transfer_from_this = 10
	list_reagents = list("stimpak" = 10)

/obj/item/weapon/reagent_containers/stimpak/super
	name = "super stimpak"
	desc = "The super version comes in a hypodermic, but with an additional vial containing more powerful drugs than the basic model and a leather belt to strap the needle to the injured limb."
	icon_state = "superstim_15"
	amount_per_transfer_from_this = 10
	list_reagents = list("super_stimpak" = 10)

/obj/item/weapon/reagent_containers/stimpak/medx
	name = "med-x"
	desc = "Med-X is a potent opiate analgesic that binds to opioid receptors in the brain and central nervous system, reducing the perception of pain as well as the emotional response to pain."
	icon_state = "medx"
	amount_per_transfer_from_this = 10
	list_reagents = list("medx" = 10)