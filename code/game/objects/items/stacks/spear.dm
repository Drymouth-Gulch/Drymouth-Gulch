/obj/item/stack/spear
	name = "throwing spears"
	desc = "A lightweight throwing spear made to be thrown at assailants, has a pretty sharp point."
	singular_name = "throwing spear"
	icon_state = "throw_spear"
	icon = 'icons/obj/weapons.dmi'
	item_state = "tribalspear"
	flags = CONDUCT
	w_class = 3
	force = 20
	throwforce = 40		//I need to add armor pen eventually.
	throw_speed = 2
	throw_range = 7
	materials = list(MAT_METAL=1000)
	embedded_impact_pain_multiplier = 3
	max_amount = 5
	attack_verb = list("attacked", "poked", "jabbed", "torn", "gored")
	sharpness = IS_SHARP
	hitsound = 'sound/weapons/bladeslice.ogg'

/obj/item/stack/spear/update_icon()
	var/amount = get_amount()
	if((amount <= 5) && (amount > 0))
		icon_state = "throw_spear[amount]"
	else
		icon_state = "throw_spear"

/obj/item/stack/spear/bundle
	amount = 5