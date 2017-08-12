/obj/item/weapon/grenade/dynamite
	desc = "A stick of dynamite. The merchant of death's making bank. Light the fuse and toss."
	name = "dynamite"
	icon = 'icons/obj/grenade.dmi'
	icon_state = "syndicate"
	item_state = "flashbang"
	origin_tech = "materials=3;magnets=4;syndicate=4"
	det_time = 60

/obj/item/weapon/grenade/dynamite/attackby(obj/item/I, mob/user, params)
	if(I.is_hot() && !active)
		playsound(user.loc, 'sound/f13items/matchstick_lit.ogg', 60, 1)
		active = 1
		icon_state = initial(icon_state) + "_active"
		add_fingerprint(user)
		var/turf/bombturf = get_turf(src)
		var/area/bombarea = get_area(bombturf)
		message_admins("[key_name(user)]<A HREF='?_src_=holder;adminmoreinfo=\ref[user]'>?</A> has lit a stick of [name] for detonation at <A HREF='?_src_=holder;adminplayerobservecoodjump=1;X=[bombturf.x];Y=[bombturf.y];Z=[bombturf.z]'>[bombarea] (JMP)</a>.")
		log_game("[key_name(user)] has primed a [name] for detonation at [bombarea] ([bombturf.x],[bombturf.y],[bombturf.z]).")
		if(iscarbon(user))
			var/mob/living/carbon/C = user
			C.throw_mode_on()
		spawn(det_time)
			prime()

/obj/item/weapon/grenade/dynamite/prime()
	update_mob()
	explosion(src.loc,1,2,4,flame_range = 2)
	qdel(src)

/obj/item/weapon/grenade/dynamite/attack_self(mob/user)
	user << "<span class='warning'>You probably need something to light the fuse...</span>"
	return
