/obj/item/stack/spacecash
	name = "NCR dollars"
	desc = "It's worth $1."
	singular_name = "bill"
	icon = 'icons/obj/economy.dmi'
	icon_state = "spacecash"
	amount = 1
	max_amount = 500
	throwforce = 0
	throw_speed = 2
	throw_range = 2
	w_class = 1
	burn_state = FLAMMABLE

/obj/item/stack/spacecash/update_icon()
	switch(amount)
		if(1 to 9)
			icon_state = "spacecash"
		if(10 to 19)
			icon_state = "spacecash10"
		if(20 to 49)
			icon_state = "spacecash20"
		if(50 to 99)
			icon_state = "spacecash50"
		if(100 to 199)
			icon_state = "spacecash100"
		if(200 to 499)
			icon_state = "spacecash200"
		else if(amount >= 500)
			icon_state = "spacecash500"

/obj/item/stack/spacecash/random
	//Used to generate a random stack of dosh
	var/min_caps = 1
	var/max_caps = 500

/obj/item/stack/spacecash/random/New()
	var/obj/item/stack/spacecash/randy = new //makes new stack
	randy.loc = src.loc //sets stack location to randstack location
	randy.amount = rand(min_caps,max_caps)
	randy.update_icon()
	del src

/obj/item/stack/spacecash/random/low
	min_caps = 1
	max_caps = 50

/obj/item/stack/spacecash/random/med
	min_caps = 50
	max_caps = 100

/obj/item/stack/spacecash/random/high
	min_caps = 100
	max_caps = 500

/*/obj/item/stack/spacecash/c10
	icon_state = "spacecash10"
	desc = "It's worth $10."

/obj/item/stack/spacecash/c20
	icon_state = "spacecash20"
	desc = "It's worth $20."

/obj/item/stack/spacecash/c50
	icon_state = "spacecash50"
	desc = "It's worth $50."

/obj/item/stack/spacecash/c100
	icon_state = "spacecash100"
	desc = "It's worth $100."

/obj/item/stack/spacecash/c200
	icon_state = "spacecash200"
	desc = "It's worth $200."

/obj/item/stack/spacecash/c500
	icon_state = "spacecash500"
	desc = "It's worth $500."

/obj/item/stack/spacecash/c1000
	icon_state = "spacecash1000"
	desc = "It's worth $1000."
*/
/obj/item/stack/coin
	name = "Legion denarii"
	desc = "It's worth 1 denarius."
	singular_name = "denarius"
	icon = 'icons/obj/economy.dmi'
	icon_state = "coin"
	amount = 1
	max_amount = 300
	throwforce = 0
	throw_speed = 2
	throw_range = 2
	w_class = 1
	//burn_state = FLAMMABLE

/obj/item/stack/coin/update_icon()
	switch(amount)
		if(1 to 4)
			icon_state = "coin"
		if(5 to 49)
			icon_state = "coins"
		else if(amount >= 50)
			icon_state = "money_coins"

/obj/item/stack/coin/random
	//Used to generate a random stack of dosh
	var/min_caps = 1
	var/max_caps = 300

/obj/item/stack/coin/random/New()
	var/obj/item/stack/coin/randy = new //makes new stack
	randy.loc = src.loc //sets stack location to randstack location
	randy.amount = rand(min_caps,max_caps)
	randy.update_icon()
	del src

/obj/item/stack/coin/random/low
	min_caps = 1
	max_caps = 50

/obj/item/stack/coin/random/med
	min_caps = 50
	max_caps = 150

/obj/item/stack/coin/random/high
	min_caps = 150
	max_caps = 300

/*
/obj/item/stack/coin/coins
	icon_state = "coins"
	desc = "It's worth 10 denarii."

/obj/item/stack/coin/bag
	icon_state = "money_coins"
	desc = "It's worth 50 denarii."
*/