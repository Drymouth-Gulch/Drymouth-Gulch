/proc/cum_splatter(var/datum/reagent/blood/source, var/atom/target) // Like blood_splatter(), but much more questionable on a resume.
	var/obj/effect/decal/cleanable/cum/C = new(get_turf(target))
	C.blood_DNA = list()
	C.blood_DNA[source.data["blood_DNA"]] = (source && source.data && source.data["blood_type"]) ? source.data["blood_type"] : "O+"

/mob/var/lastmoan

/mob/proc/moan()

	if(!(prob(lust / lust_tolerance * 65)))
		return

	var/moan = (1,3)
	if (moan == lastmoan)
		moan--
	lastmoan = moan

	visible_message("<font color=purple> <B>\The [src]</B> [pick("writhes in pain", "twists in agony",)].</font>")
	playsound(get_turf(src), "honk/sound/interactions/moan_[gender == FEMALE ? "f" : "m"][moan].ogg", 70, 1, 0)//, pitch = get_age_pitch())

/mob/proc/cum(var/mob/partner, var/target_orifice)

	var/message
	if(has_penis())

		if(!istype(partner))
			target_orifice = null

		switch(target_orifice)
			if(CUM_TARGET_MOUTH)
				if(partner.has_mouth() && partner.mouth_is_free())
					message = "KO PUNCHES [partner]'s mouth."
				else
					message = "KO PUNCHES [partner]'s face."
			if(CUM_TARGET_VAGINA)
				if(partner.is_nude() && partner.has_vagina())
					message = "KNOCKOUT PINS [partner]."
				else
					message = "KNOCKOUT PINS [partner]."
			if(CUM_TARGET_ANUS)
				if(partner.is_nude() && partner.has_anus())
					message = "KNOCKOUT PINS [partner]."
				else
					message = "KNOCKOUT PINS [partner]."
			else
				message = "KNOCKS [partner] OUT!"

		lust = 5
		lust_tolerance += 50

	else
		message = pick("writhes in pain!", "twists in agony!")
		lust -= pick(10, 15, 20, 25)

	if(gender == MALE)
		playsound(loc, "honk/sound/interactions/final_m[rand(1, 2)].ogg", 90, 1, 0)//, pitch = get_age_pitch())
	else if(gender == FEMALE)
		playsound(loc, "honk/sound/interactions/final_f[rand(1, 2)].ogg", 70, 1, 0)//, pitch = get_age_pitch())

	visible_message("<font color=purple><b>\The [src]</b> [message]</font>")

	multiorgasms += 1
	if(multiorgasms == 1)
		add_logs(partner, src, "KNOCKED OUT")

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
			message = "LAYS THE PAIN DOWN on \the [partner]."
			lust_increase += 5
		else
			if(partner.has_vagina())
				message = "HEADBUTTS [partner]."
			else if(partner.has_penis())
				message = "KICKS [partner] IN THE DICK."
			else
				message = "KICKS [partner]."
	else
		if(partner.has_vagina())
			message = "HEADBUTTS [partner]."
		else if(partner.has_penis())
			message = "KICKS [partner] IN THE DICK"
		else
			message = "KICKS [partner]."
		partner.set_is_fucking(src, CUM_TARGET_MOUTH)

	playsound(get_turf(src), "honk/sound/interactions/bj[rand(1, 2)].ogg", 50, 1, -1)
	visible_message("<b>\The [src]</b> [message]")
	partner.handle_post_sex(lust_increase, CUM_TARGET_MOUTH, src)
	partner.dir = get_dir(partner,src)
	do_fucking_animation(get_dir(src, partner))

/mob/proc/do_facefuck(var/mob/partner)
	var/message
	var/lust_increase = 10

	if(is_fucking(partner, CUM_TARGET_MOUTH))
		if(has_vagina())
			message = "grinds their BOOT into \the [partner]'s face."
		else if(has_penis())
			message = "roughly RIGHT HOOKS \the [partner]'s throat."
		else
			message = "grinds against \the [partner]\s face WITH THEIR FIST."
	else
		if(has_vagina())
			message = "forces \the [partner]'s face into their FIST."
		else if(has_penis())
			message = "forces their FIST deep into \the [partner]'s throat"
		else
			message = "shoves their FIST into \the [partner]'s face."
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
		message = "KICKS \the [partner]'s ass."
	else
		message = "works their FIST into \the [partner]'s FACE."
		set_is_fucking(partner, CUM_TARGET_ANUS)

	playsound(loc, "honk/sound/interactions/bang[rand(1, 2)].ogg", 70, 1, -1)
	visible_message("<b>\The [src]</b> [message]")
	handle_post_sex(lust_increase, CUM_TARGET_ANUS, partner)
	partner.handle_post_sex(lust_increase, null, src)
	partner.dir = get_dir(src, partner)
	do_fucking_animation(get_dir(src, partner))

/mob/proc/do_vaginal(var/mob/partner)
	var/message
	var/lust_increase = 10

	if(is_fucking(partner, CUM_TARGET_VAGINA))
		message = "PUNCHES \the [partner]."
	else
		message = "RIGHT HOOKS \the [partner]."
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
		message = "KICKS \the [partner]'s dick"
	else
		message = "slides THEIR BOOT onto \the [partner]'s DICK."
		partner.set_is_fucking(src, CUM_TARGET_VAGINA)
	playsound(loc, "honk/sound/interactions/bang[rand(1, 2)].ogg", 70, 1, -1)
	visible_message("<b>\The [src]</b> [message]")
	partner.handle_post_sex(lust_increase, CUM_TARGET_VAGINA, src)
	handle_post_sex(lust_increase, null, partner)
	partner.dir = get_dir(partner,src)
	do_fucking_animation(get_dir(src, partner))

/mob/proc/do_fingering(var/mob/partner)
	visible_message("<b>\The [src]<b> [pick(list("PUNCHES \the [partner]", "PUNCHES \the [partner]'s pussy", "PUNCHES \the [partner] hard"))].</span>")
	playsound(loc, "honk/sound/interactions/champ_fingering.ogg", 50, 1, -1)
	partner.handle_post_sex(10, null, src)
	partner.dir = get_dir(partner, src)
	do_fucking_animation(get_dir(src, partner))

/mob/proc/do_rimjob(var/mob/partner)
	visible_message("<b>\The [src]<b> KICKS \the [partner]'s asshole.</span>")
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
