/obj/item/device/radio/intercom
	name = "station intercom"
	desc = "Talk through this."
	icon_state = "intercom"
	anchored = 1
	w_class = 4
	canhear_range = 2
	var/number = 0
	var/anyai = 1
	var/mob/living/silicon/ai/ai = list()
	var/last_tick //used to delay the powercheck

/obj/item/device/radio/intercom/New()
	..()
	SSobj.processing += src

/obj/item/device/radio/intercom/Destroy()
	SSobj.processing -= src
	return ..()

/obj/item/device/radio/intercom/attack_ai(mob/user)
	src.add_fingerprint(user)
	spawn (0)
		attack_self(user)

/obj/item/device/radio/intercom/attack_paw(mob/user)
	return src.attack_hand(user)


/obj/item/device/radio/intercom/attack_hand(mob/user)
	src.add_fingerprint(user)
	spawn (0)
		attack_self(user)

/obj/item/device/radio/intercom/receive_range(freq, level)
	if (!on)
		return -1
	if (isWireCut(WIRE_RECEIVE))
		return -1
	if(!(0 in level))
		var/turf/position = get_turf(src)
		if(isnull(position) || !(position.z in level))
			return -1
	if (!src.listening)
		return -1
	if(freq == SYND_FREQ)
		if(!(src.syndie))
			return -1//Prevents broadcast of messages over devices lacking the encryption

	return canhear_range


/obj/item/device/radio/intercom/Hear(message, atom/movable/speaker, message_langs, raw_message, radio_freq, list/spans)
	if(!anyai && !(speaker in ai))
		return
	..()

/obj/item/device/radio/intercom/process()
	if(((world.timeofday - last_tick) > 30) || ((world.timeofday - last_tick) < 0))
		last_tick = world.timeofday

		if(!src.loc)
			on = 0
		else
			var/area/A = src.loc.loc
			if(!A || !isarea(A) || !A.master || emped)
				on = 0
			else
				on = A.master.powered(EQUIP) // set "on" to the power status

		if(!on)
			icon_state = "intercom-p"
		else
			icon_state = "intercom"

/obj/item/device/radio/intercom/rejects_blood()
	return 1

/obj/item/device/radio/hamradio
	name = "Ham Radio"
	desc = "Talk through this, you hobbyist you."
	icon_state = "ham_radio"
	anchored = 1
	w_class = 4
	canhear_range = 2
	var/number = 0
	var/anyai = 1
	var/mob/living/silicon/ai/ai = list()
	var/last_tick //used to delay the powercheck

/obj/item/device/radio/hamradio/New()
	..()
	SSobj.processing += src

/obj/item/device/radio/hamradio/Destroy()
	SSobj.processing -= src
	return ..()

/obj/item/device/radio/hamradio/attack_ai(mob/user)
	src.add_fingerprint(user)
	spawn (0)
		attack_self(user)

/obj/item/device/radio/hamradio/attack_paw(mob/user)
	return src.attack_hand(user)


/obj/item/device/radio/hamradio/attack_hand(mob/user)
	src.add_fingerprint(user)
	spawn (0)
		attack_self(user)

/obj/item/device/radio/hamradio/receive_range(freq, level)
	if (!on)
		return -1
	if (isWireCut(WIRE_RECEIVE))
		return -1
	if(!(0 in level))
		var/turf/position = get_turf(src)
		if(isnull(position) || !(position.z in level))
			return -1
	if (!src.listening)
		return -1
	if(freq == SYND_FREQ)
		if(!(src.syndie))
			return -1//Prevents broadcast of messages over devices lacking the encryption

	return canhear_range


/obj/item/device/radio/hamradio/Hear(message, atom/movable/speaker, message_langs, raw_message, radio_freq, list/spans)
	if(!anyai && !(speaker in ai))
		return
	..()

/obj/item/device/radio/hamradio/process()
	if(((world.timeofday - last_tick) > 30) || ((world.timeofday - last_tick) < 0))
		last_tick = world.timeofday

		if(!src.loc)
			on = 0
		else
			var/area/A = src.loc.loc
			if(!A || !isarea(A) || !A.master || emped)
				on = 0
			else
				on = A.master.powered(EQUIP) // set "on" to the power status

		if(!on)
			icon_state = "ham_radio"
		else
			icon_state = "ham_radio"

/obj/item/device/radio/hamradio/rejects_blood()
	return 1