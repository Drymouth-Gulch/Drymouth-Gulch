/obj/item/weapon/reagent_containers/pill/patch
	name = "chemical patch"
	desc = "A chemical patch for touch based applications."
	icon = 'icons/obj/chemical.dmi'
	icon_state = "bandaid"
	item_state = "bandaid"
	possible_transfer_amounts = list()
	volume = 120
	apply_type = PATCH
	apply_method = "apply"

/obj/item/weapon/reagent_containers/pill/patch/New()
	..()
	//icon_state = "bandaid" // thanks inheritance

/obj/item/weapon/reagent_containers/pill/patch/afterattack(obj/target, mob/user , proximity)
	return // thanks inheritance again

/obj/item/weapon/reagent_containers/pill/patch/canconsume(mob/eater, mob/user)
	if(!iscarbon(eater))
		return 0
	return 1 // Masks were stopping people from "eating" patches. Thanks, inheritance.

/obj/item/weapon/reagent_containers/pill/patch/styptic
	name = "brute patch"
	desc = "Helps with brute injuries."
	list_reagents = list("styptic_powder" = 60)

/obj/item/weapon/reagent_containers/pill/patch/silver_sulf
	name = "burn patch"
	desc = "Helps with burn injuries."
	list_reagents = list("silver_sulfadiazine" = 60)

/obj/item/weapon/reagent_containers/pill/patch/healpowder
	name = "Healing powder"
	desc = "Soldiers of the Legion use healing powder as their primary source of medicine and healing, since the Legion bans the use of other chems, such as stimpaks."
	list_reagents = list("healing_powder" = 20)
	icon = 'icons/obj/syringe.dmi'
	item_state = "bandaid"
	icon_state = "heal_powder"

/obj/item/weapon/reagent_containers/pill/patch/healpoultice
	name = "Healing poultice"
	desc = "A concoction of broc flower, cave fungus, agrave fruit and xander root."
	list_reagents = list("healing_poultice" = 18)
	icon = 'icons/obj/syringe.dmi'
	item_state = "bandaid"
	icon_state = "heal_poultice"

/obj/item/weapon/reagent_containers/pill/patch/jet
	name = "Jet"
	desc = "Jet is a highly addictive drug first synthesized by Myron. It is extracted from brahmin dung fumes and administered via an inhaler."
	list_reagents = list("jet" = 10)
	icon = 'icons/obj/syringe.dmi'
	item_state = "syringe_15"
	icon_state = "jet"

/obj/item/weapon/reagent_containers/pill/patch/psycho
	name = "Psycho"
	desc = "Psycho will increase damage resistance, allowing subjects to survive hits more easily."
	list_reagents = list("psycho" = 10)
	icon = 'icons/obj/syringe.dmi'
	item_state = "syringe_15"
	icon_state = "psycho"

/obj/item/weapon/reagent_containers/pill/patch/medx
	name = "Mex-X"
	desc = "Med-X is a potent opiate analgesic that binds to opioid receptors in the brain and central nervous system, reducing the perception of pain as well as the emotional response to pain. Essentially, it is a painkiller delivered by a hypodermic needle."
	list_reagents = list("medx" = 10)
	icon = 'icons/obj/syringe.dmi'
	item_state = "syringe_15"
	icon_state = "medx"

/obj/item/weapon/reagent_containers/pill/patch/turbo
	name = "Turbo"
	desc = "Turbo appears as an inhaler of Jet hastily duct-taped to a can of 'HairStylez-brand hair spray. The effect of turbo is a brief slowdown of the surroundings (time goes at about 35% of its original speed), including everything from your enemies' movements, to projectile speeds (your own projectile speed included), and even the duration of the drug itself. However, you are not slowed down yourself - your own movement speed and fire rate will remain the same."
	list_reagents = list("turbo" = 10)
	icon = 'icons/obj/chemical.dmi'
	icon_state = "turbo"
	item_state = "turbo"
