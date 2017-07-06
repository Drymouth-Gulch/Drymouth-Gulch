/obj/item/stack/caps
	name = "caps"
	desc = "It's worth 1 cap."
	singular_name = "cap"
	icon = 'icons/obj/bottlecap.dmi'
	icon_state = "1"
	amount = 1
	max_amount = 3000
	throwforce = 0
	throw_speed = 2
	throw_range = 2
	w_class = 1

/obj/item/stack/caps/update_icon()
	if(amount >= 20)
		icon_state = "20"
	else
		icon_state = "[amount]"

/obj/item/stack/caps/New()
	..()
	if(prob(50)) //50% chance
		amount = rand(250,500)
	else
		amount = rand(1,300)
	update_icon()