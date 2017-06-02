/proc/cum_splatter(var/datum/reagent/blood/source, var/atom/target) // Like blood_splatter(), but much more questionable on a resume.
	var/obj/effect/decal/cleanable/cum/C = new(get_turf(target))
	C.blood_DNA = list()
	C.blood_DNA[source.data["blood_DNA"]] = (source && source.data && source.data["blood_type"]) ? source.data["blood_type"] : "O+"

/mob/var/lastmoan

/mob/proc/moan()

	if(!(prob(lust / lust_tolerance * 65)))
		return

	var/moan = rand(1, 7)
	if (moan == lastmoan)
		moan--
	lastmoan = moan

	visible_message("<font color=purple> <B>\The [src]</B> [pick("moans", "moans in pleasure",)].</font>")
	playsound(get_turf(src), "honk/sound/interactions/moan_[gender == FEMALE ? "f" : "m"][moan].ogg", 70, 1, 0)//, pitch = get_age_pitch())

/mob/proc/cum(var/mob/partner, var/target_orifice)

	var/message
	if(has_penis())

		if(!istype(partner))
			target_orifice = null

		switch(target_orifice)
			if(CUM_TARGET_MOUTH)
				if(partner.has_mouth() && partner.mouth_is_free())
					message = "cums right in \the [partner]'s mouth."
				else
					message = "cums on \the [partner]'s face."
			if(CUM_TARGET_VAGINA)
				if(partner.is_nude() && partner.has_vagina())
					message = "cums in \the [partner]'s pussy."
				else
					message = "cums on \the [partner]'s belly."
			if(CUM_TARGET_ANUS)
				if(partner.is_nude() && partner.has_anus())
					message = "cums in \the [partner]'s asshole."
				else
					message = "cums on \the [partner]'s backside."
			else
				message = "cums on the floor!"

		lust = 5
		lust_tolerance += 50

	else
		message = pick("cums violently!", "twists in orgasm.")
		lust -= pick(10, 15, 20, 25)

	if(gender == MALE)
		playsound(loc, "honk/sound/interactions/final_m[rand(1, 3)].ogg", 90, 1, 0)//, pitch = get_age_pitch())
	else if(gender == FEMALE)
		playsound(loc, "honk/sound/interactions/final_f[rand(1, 5)].ogg", 70, 1, 0)//, pitch = get_age_pitch())

	visible_message("<font color=purple><b>\The [src]</b> [message]</font>")

	multiorgasms += 1
	if(multiorgasms == 1)
		add_logs(partner, src, "came on")

	if(multiorgasms > (sexual_potency/3))
		refactory_period = 45
		druggy = 30
	else
		refactory_period = rand(30, 45)
		druggy = 6

/mob/living/carbon/human/cum(var/mob/partner, var/target_orifice)
	if (multiorgasms < sexual_potency)
		cum_splatter(get_blood(vessel), (gender == MALE && partner) ? partner : src)
	. = ..()

/mob/var/last_partner
/mob/var/last_orifice

/mob/proc/is_fucking(var/mob/partner, var/orifice)
	if(partner == last_partner && orifice == last_orifice)
		return 1
	return 0

/mob/proc/set_is_fucking(var/mob/partner, var/orifice)
	last_partner = partner
	last_orifice = orifice

/mob/proc/do_oral(var/mob/partner)
	var/message
	var/lust_increase = 10

	if(partner.is_fucking(src, CUM_TARGET_MOUTH))
		if(prob(partner.sexual_potency))
			if(istype(src, /mob/living/carbon/human)) // Argh.
				var/mob/living/carbon/human/H = src
				H.adjustOxyLoss(3)
			message = "goes in deep on \the [partner]."
			lust_increase += 5
		else
			if(partner.has_vagina())
				message = "licks \the [partner]'s pussy."
			else if(partner.has_penis())
				message = "sucks \the [partner] off."
			else
				message = "licks \the [partner]."
	else
		if(partner.has_vagina())
			message = "buries their face in \the [partner]'s pussy."
		else if(partner.has_penis())
			message = "takes \the [partner]'s cock into their mouth."
		else
			message = "begins to lick \the [partner]."
		partner.set_is_fucking(src, CUM_TARGET_MOUTH)

	playsound(get_turf(src), "honk/sound/interactions/bj[rand(1, 11)].ogg", 50, 1, -1)
	visible_message("<b>\The [src]</b> [message]")
	partner.handle_post_sex(lust_increase, CUM_TARGET_MOUTH, src)
	partner.dir = get_dir(partner,src)
	do_fucking_animation(get_dir(src, partner))

/mob/proc/do_facefuck(var/mob/partner)
	var/message
	var/lust_increase = 10

	if(is_fucking(partner, CUM_TARGET_MOUTH))
		if(has_vagina())
			message = "grinds their pussy into \the [partner]'s face."
		else if(has_penis())
			message = "roughly fucks \the [partner]'s throat."
		else
			message = "grinds against \the [partner]\s face."
	else
		if(has_vagina())
			message = "forces \the [partner]'s face into their pussy."
		else if(has_penis())
			message = "forces their dick deep into \the [partner]'s throat"
		else
			message = "shoves their crotch into \the [partner]'s face."
		set_is_fucking(partner , CUM_TARGET_MOUTH)

	playsound(loc, "honk/sound/interactions/oral[rand(1, 2)].ogg", 70, 1, -1)
	visible_message("<b>\The [src]</b> [message]")
	handle_post_sex(lust_increase, CUM_TARGET_MOUTH, partner)
	partner.dir = get_dir(partner,src)
	do_fucking_animation(get_dir(src, partner))

/mob/proc/do_anal(var/mob/partner)
	var/message
	var/lust_increase = 10
	if(is_fucking(partner, CUM_TARGET_ANUS))
		message = "fucks \the [partner]'s ass."
	else
		message = "works their cock into \the [partner]'s asshole."
		set_is_fucking(partner, CUM_TARGET_ANUS)

	playsound(loc, "honk/sound/interactions/bang[rand(1, 3)].ogg", 70, 1, -1)
	visible_message("<b>\The [src]</b> [message]")
	handle_post_sex(lust_increase, CUM_TARGET_ANUS, partner)
	partner.handle_post_sex(lust_increase, null, src)
	partner.dir = get_dir(src, partner)
	do_fucking_animation(get_dir(src, partner))

/mob/proc/do_vaginal(var/mob/partner)
	var/message
	var/lust_increase = 10

	if(is_fucking(partner, CUM_TARGET_VAGINA))
		message = "pounds \the [partner]'s pussy."
	else
		message = "slides their cock into \the [partner]'s pussy."
		set_is_fucking(partner, CUM_TARGET_VAGINA)

	playsound(loc, "honk/sound/interactions/champ[rand(1, 2)].ogg", 50, 1, -1)
	visible_message("<b>\The [src]</b> [message]")
	handle_post_sex(lust_increase, CUM_TARGET_VAGINA, partner)
	partner.handle_post_sex(lust_increase, null, src)
	partner.dir = get_dir(partner,src)
	do_fucking_animation(get_dir(src, partner))

/mob/proc/do_mount(var/mob/partner)
	var/message
	var/lust_increase = 10
	if(partner.is_fucking(src, CUM_TARGET_VAGINA))
		message = "rides \the [partner]'s dick"
	else
		message = "slides themselves onto \the [partner]'s cock"
		partner.set_is_fucking(src, CUM_TARGET_VAGINA)
	playsound(loc, "honk/sound/interactions/bang[rand(1, 3)].ogg", 70, 1, -1)
	visible_message("<b>\The [src]</b> [message]")
	partner.handle_post_sex(lust_increase, CUM_TARGET_VAGINA, src)
	handle_post_sex(lust_increase, null, partner)
	partner.dir = get_dir(partner,src)
	do_fucking_animation(get_dir(src, partner))

/mob/proc/do_fingering(var/mob/partner)
	visible_message("<b>\The [src]<b> [pick(list("fingers \the [partner]", "fingers \the [partner]'s pussy", "fingers \the [partner] hard"))].</span>")
	playsound(loc, "honk/sound/interactions/champ_fingering.ogg", 50, 1, -1)
	partner.handle_post_sex(10, null, src)
	partner.dir = get_dir(partner, src)
	do_fucking_animation(get_dir(src, partner))

/mob/proc/do_rimjob(var/mob/partner)
	visible_message("<b>\The [src]<b> licks \the [partner]'s asshole.</span>")
	playsound(loc, "honk/sound/interactions/champ_fingering.ogg", 50, 1, -1)
	partner.handle_post_sex(10, null, src)
	partner.dir = get_dir(src, partner)
	do_fucking_animation(get_dir(src, partner))

/mob/proc/handle_post_sex(var/amount, var/orifice, var/mob/partner)

	sleep(5)

	if(stat != CONSCIOUS)
		return

	if(amount)
		lust += amount
	if (lust >= lust_tolerance)
		cum(partner, orifice)
	else
		moan()

/obj/item/weapon/dildo
	name = "dildo"
	desc = "Hmmm, deal throw."
	icon = 'honk/icons/obj/items/dildo.dmi'
	icon_state = "dildo"
	item_state = "c_tube"
	throwforce = 0
	force = 10
	w_class = 1
	throw_speed = 3
	throw_range = 15
	attack_verb = list("slammed", "bashed", "whipped")

	var/hole = CUM_TARGET_VAGINA
	var/pleasure = 5

/obj/item/weapon/dildo/attack(mob/living/carbon/human/M, mob/living/carbon/human/user)
	var/message = ""
	if(istype(M, /mob/living/carbon/human) && user.zone_sel.selecting == "groin" && M.is_nude())
		if (hole == CUM_TARGET_VAGINA && M.has_vagina())
			message = (user == M) ?  "fucks their own pussy with \the [src]" : pick(list("fucks [M] right in the pussy with \the [src]", "jams \the [src] right into [M]"))
		else if (hole == CUM_TARGET_ANUS && M.has_anus())
			message = (user == M) ? "fucks their own ass with \the [src]" : "fucks [M]'s asshole with \the [src]"
	if(message)
		user.visible_message("<font color=purple>[user] [message].</font>")
		M.handle_post_sex(pleasure, null, user)
		playsound(loc, "honk/sound/interactions/bang[rand(4, 6)].ogg", 70, 1, -1)
	else
		return ..()

/obj/item/weapon/dildo/attack_self(mob/user as mob)
	if(hole == CUM_TARGET_VAGINA)
		hole = CUM_TARGET_ANUS
	else
		hole = CUM_TARGET_VAGINA
	user << "<span class='warning'>Hmmm. Maybe we should put it in \a [hole]?</span>"