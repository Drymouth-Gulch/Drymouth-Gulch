/obj/item/weapon/gun/projectile/shotgun
	name = "Ithaca Model 37"
	desc = "A traditional hunting shotgun with wood furniture and a four-shell capacity underneath."
	icon_state = "shotgun"
	item_state = "shotgun"
	w_class = 4
	force = 10
	flags =  CONDUCT
	slot_flags = SLOT_BACK
	origin_tech = "combat=4;materials=2"
	mag_type = /obj/item/ammo_box/magazine/internal/shot
	fire_sound = 'sound/f13weapons/shotgun.ogg'
	var/pumpsound = 'sound/weapons/shotgunpump.ogg'
	var/loadsound = 'sound/effects/wep_magazines/insertShotgun.ogg'
	var/recentpump = 0 // to prevent spammage
	mag_load_sound = null
	mag_unload_sound = null		//Shotguns have their own procs related to loading, unloading, etc.
	chamber_sound = null
	heavy_weapon = 1 //Added by Gomble - Use both yer hams.

/obj/item/weapon/gun/projectile/shotgun/attackby(obj/item/A, mob/user, params)
	var/num_loaded = magazine.attackby(A, user, params, 1)
	if(num_loaded)
		playsound(loc, loadsound, 80)
		user << "<span class='notice'>You load [num_loaded] shell\s into \the [src]!</span>"
		A.update_icon()
		update_icon()

/obj/item/weapon/gun/projectile/shotgun/process_chamber()
	return ..(0, 0)

/obj/item/weapon/gun/projectile/shotgun/chamber_round()
	return

/obj/item/weapon/gun/projectile/shotgun/can_shoot()
	if(!chambered)
		return 0
	return (chambered.BB ? 1 : 0)

/obj/item/weapon/gun/projectile/shotgun/attack_self(mob/living/user)
	if(recentpump)	return
	pump(user)
	recentpump = 1
	spawn(10)
		recentpump = 0
	return


/obj/item/weapon/gun/projectile/shotgun/proc/pump(mob/M)
	playsound(M, pumpsound, 60, 1)
	pump_unload(M)
	pump_reload(M)
	update_icon()	//I.E. fix the desc
	return 1

/obj/item/weapon/gun/projectile/shotgun/proc/pump_unload(mob/M)
	if(chambered)//We have a shell in the chamber
		chambered.loc = get_turf(src)//Eject casing
		chambered.SpinAnimation(5, 1)
		chambered = null

/obj/item/weapon/gun/projectile/shotgun/proc/pump_reload(mob/M)
	if(!magazine.ammo_count())	return 0
	var/obj/item/ammo_casing/AC = magazine.get_round() //load next casing.
	chambered = AC


/obj/item/weapon/gun/projectile/shotgun/examine(mob/user)
	..()
	if (chambered)
		user << "A [chambered.BB ? "live" : "spent"] one is in the chamber."

// Hunting Shotgun
/obj/item/weapon/gun/projectile/shotgun/hunting
	sawn_desc = "Blast 'em."

/obj/item/weapon/gun/projectile/shotgun/hunting/attackby(obj/item/A, mob/user, params)
	..()
	if(istype(A, /obj/item/weapon/circular_saw) || istype(A, /obj/item/weapon/gun/energy/plasmacutter))
		sawoff(user)
	if(istype(A, /obj/item/weapon/melee/energy))
		var/obj/item/weapon/melee/energy/W = A
		if(W.active)
			sawoff(user)


// RIOT SHOTGUN //

/obj/item/weapon/gun/projectile/shotgun/riot //for spawn in the armory
	name = "M590"
	desc = "A sturdy shotgun with a longer magazine and a fixed tactical stock designed for tactical use tactically."
	icon_state = "riotshotgun"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/riot
	fire_sound = 'sound/f13weapons/riot_shotgun.ogg'
	sawn_desc = "Come with me if you want to live."
	damageG=15
	damageA=0
	damageS=0
	rangeG=0

/obj/item/weapon/gun/projectile/shotgun/riot/New()
	..()
	update_icon()
	src.setgundamage(src.damageG,src.damageA,src.damageS,src.rangeG)
	return

/obj/item/weapon/gun/projectile/shotgun/riot/attackby(obj/item/A, mob/user, params)
	..()
	if(istype(A, /obj/item/weapon/circular_saw) || istype(A, /obj/item/weapon/gun/energy/plasmacutter))
		sawoff(user)
	if(istype(A, /obj/item/weapon/melee/energy))
		var/obj/item/weapon/melee/energy/W = A
		if(W.active)
			sawoff(user)

///////////////////////
// BOLT ACTION RIFLE //
///////////////////////

/obj/item/weapon/gun/projectile/shotgun/boltaction
	name = "Remington 700"
	desc = "A sturdy hunting rifle, chambered in 308. and in use before the war."
	icon_state = "308"
	item_state = "assault_rifle"
	//slot_flags = 0 //no SLOT_BACK sprite, alas
	mag_type = /obj/item/ammo_box/magazine/internal/boltaction
	fire_sound = 'sound/f13weapons/hunting_rifle.ogg'
	pumpsound = 'sound/weapons/boltpump.ogg'
	loadsound = 'sound/effects/wep_magazines/rifle_load.ogg'

/*	var/bolt_open = 0

/obj/item/weapon/gun/projectile/shotgun/boltaction/pump(mob/M)
	playsound(M, 'sound/weapons/shotgunpump.ogg', 60, 1)
	if(bolt_open)
		pump_reload(M)
	else
		pump_unload(M)
	bolt_open = !bolt_open
	update_icon()	//I.E. fix the desc
	return 1

/obj/item/weapon/gun/projectile/shotgun/boltaction/attackby(obj/item/A, mob/user, params)
	if(!bolt_open)
		user << "<span class='notice'>The bolt is closed!</span>"
		return
	. = ..()

/obj/item/weapon/gun/projectile/shotgun/boltaction/examine(mob/user)
	..()
	user << "The bolt is [bolt_open ? "open" : "closed"]."
*/

/obj/item/weapon/gun/projectile/shotgun/boltaction/scoped
	name = "Scoped Remington 700"
	desc = "A sturdy hunting rifle, chambered in 308. and in use before the war. This one has a 8x scope mounted to it."
	icon_state = "rifle308_scope"
	item_state = "assault_rifle"
	//slot_flags = 0 //no SLOT_BACK sprite, alas
	mag_type = /obj/item/ammo_box/magazine/internal/boltaction
	fire_sound = 'sound/f13weapons/hunting_rifle.ogg'
	pumpsound = 'sound/weapons/boltpump.ogg'
	loadsound = 'sound/effects/wep_magazines/rifle_load.ogg'
	w_class = 4
	zoomable = TRUE
	zoom_amt = 7 //Long range, enough to see in front of you, but no tiles behind you.
/////////////////////////////
// DOUBLE BARRELED SHOTGUN //
/////////////////////////////

/obj/item/weapon/gun/projectile/revolver/doublebarrel
	name = "double-barreled shotgun"
	desc = "A true classic."
	icon_state = "dshotgun"
	item_state = "shotgun"
	w_class = 4
	force = 10
	flags = CONDUCT
	slot_flags = SLOT_BACK
	origin_tech = "combat=3;materials=1"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/dual
	sawn_desc = "Omar's coming!"
	unique_rename = 1
	unique_reskin = 1
	heavy_weapon = 1 //Should this be rehashed to shotgun class?

/obj/item/weapon/gun/projectile/revolver/doublebarrel/New()
	..()
	options["Default"] = "dshotgun"
	options["Dark Red Finish"] = "dshotgun-d"
	options["Ash"] = "dshotgun-f"
	options["Faded Grey"] = "dshotgun-g"
	options["Maple"] = "dshotgun-l"
	options["Rosewood"] = "dshotgun-p"
	options["Cancel"] = null

/obj/item/weapon/gun/projectile/revolver/doublebarrel/attackby(obj/item/A, mob/user, params)
	..()
	if(istype(A, /obj/item/ammo_box) || istype(A, /obj/item/ammo_casing))
		chamber_round()
	if(istype(A, /obj/item/weapon/melee/energy))
		var/obj/item/weapon/melee/energy/W = A
		if(W.active)
			sawoff(user)
	if(istype(A, /obj/item/weapon/circular_saw) || istype(A, /obj/item/weapon/gun/energy/plasmacutter))
		sawoff(user)

/obj/item/weapon/gun/projectile/revolver/doublebarrel/attack_self(mob/living/user)
	var/num_unloaded = 0
	while (get_ammo() > 0)
		var/obj/item/ammo_casing/CB
		CB = magazine.get_round(0)
		chambered = null
		CB.loc = get_turf(src.loc)
		CB.update_icon()
		num_unloaded++
	if (num_unloaded)
		user << "<span class='notice'>You break open \the [src] and unload [num_unloaded] shell\s.</span>"
	else
		user << "<span class='warning'>[src] is empty!</span>"

// MAX SAWN OFF //

/obj/item/weapon/gun/projectile/revolver/max_sawn_off
	name = "worn sawn off"
	desc = "Someone took the time to chop the last few inches off the barrel and stock of this shotgun. You see word 'Max' engraved on grip"
	icon_state = "max_sawn_off"
	item_state = "shotgun"
	w_class = 3
	force = 12
	unique_reskin = 0
	origin_tech = "combat=4;materials=2"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/mad
	fire_sound = 'sound/f13weapons/max_sawn_off.ogg'
	damageG=25
	damageA=0
	damageS=0
	rangeG=0

/obj/item/weapon/gun/projectile/revolver/max_sawn_off/New()
	..()
	update_icon()
	src.setgundamage(src.damageG,src.damageA,src.damageS,src.rangeG)
	return

/obj/item/weapon/gun/projectile/revolver/caravan_shotgun
	name = "caravan shotgun"
	desc = "An common over under double barreled shotgun."
	icon_state = "caravan_shotgun"
	item_state = "shotgun"
	w_class = 4
	force = 15
	unique_reskin = 0
	origin_tech = "combat=2;materials=2"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/mad
	fire_sound = 'sound/f13weapons/caravan_shotgun.ogg'
	heavy_weapon = 1

/obj/item/weapon/gun/projectile/revolver/single_shotgun
	name = "single shotgun"
	desc = "A dirt cheap single shot shotgun."
	icon_state = "single_shotgun"
	item_state = "shotgun"
	w_class = 3
	force = 15
	unique_reskin = 0
	origin_tech = "combat=2;materials=2"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/improvised
	fire_sound = 'sound/f13weapons/caravan_shotgun.ogg'
	heavy_weapon = 1

/obj/item/weapon/gun/projectile/revolver/zipgun
	name = "zipgun"
	desc = "A crudely made single shot 10mm pistol."
	icon_state = "zipgun"
	item_state = "gun"
	w_class = 2
	origin_tech = "combat=2;materials=2"
	fire_sound = 'sound/weapons/Gunshot.ogg'
	mag_type = /obj/item/ammo_box/magazine/internal/shot/improvised10mm

/obj/item/weapon/gun/projectile/revolver/pipe_rifle
	name = "pipe rifle"
	desc = "A crudely made single shot 10mm rifle."
	icon_state = "pipe_rifle"
	item_state = "shotgun"
	w_class = 4
	origin_tech = "combat=2;materials=2"
	fire_sound = 'sound/weapons/Gunshot.ogg'
	mag_type = /obj/item/ammo_box/magazine/internal/shot/improvised10mm

// IMPROVISED SHOTGUN //

/obj/item/weapon/gun/projectile/revolver/doublebarrel/improvised
	name = "improvised shotgun"
	desc = "Essentially a tube that aims shotgun shells."
	icon_state = "ishotgun"
	item_state = "shotgun"
	w_class = 4
	force = 10
	slot_flags = null
	origin_tech = "combat=2;materials=2"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/improvised
	sawn_desc = "I'm just here for the gasoline."
	unique_rename = 0
	unique_reskin = 0
	heavy_weapon = 1

/obj/item/weapon/gun/projectile/revolver/doublebarrel/improvised/attackby(obj/item/A, mob/user, params)
	..()
	if(istype(A, /obj/item/stack/cable_coil) && !sawn_state)
		var/obj/item/stack/cable_coil/C = A
		if(C.use(10))
			slot_flags = SLOT_BACK
			icon_state = "ishotgunsling"
			user << "<span class='notice'>You tie the lengths of cable to the shotgun, making a sling.</span>"
			update_icon()
		else
			user << "<span class='warning'>You need at least ten lengths of cable if you want to make a sling!</span>"
			return

// Sawing guns related procs //

/obj/item/weapon/gun/projectile/proc/blow_up(mob/user)
	. = 0
	for(var/obj/item/ammo_casing/AC in magazine.stored_ammo)
		if(AC.BB)
			process_fire(user, user,0)
			. = 1

/obj/item/weapon/gun/projectile/shotgun/blow_up(mob/user)
	. = 0
	if(chambered && chambered.BB)
		process_fire(user, user,0)
		. = 1

/obj/item/weapon/gun/projectile/proc/sawoff(mob/user)
	if(sawn_state == SAWN_OFF)
		user << "<span class='warning'>\The [src] is already shortened!</span>"
		return

	if(sawn_state == SAWN_SAWING)
		return

	user.visible_message("[user] begins to shorten \the [src].", "<span class='notice'>You begin to shorten \the [src]...</span>")

	//if there's any live ammo inside the gun, makes it go off
	if(blow_up(user))
		user.visible_message("<span class='danger'>\The [src] goes off!</span>", "<span class='danger'>\The [src] goes off in your face!</span>")
		return

	sawn_state = SAWN_SAWING

	if(do_after(user, 30, target = src))
		user.visible_message("[user] shortens \the [src]!", "<span class='notice'>You shorten \the [src].</span>")
		name = "sawn-off [src.name]"
		desc = sawn_desc
		icon_state = "[icon_state]-sawn"
		w_class = 3
		item_state = "gun"
		slot_flags &= ~SLOT_BACK	//you can't sling it on your back
		slot_flags |= SLOT_BELT		//but you can wear it on your belt (poorly concealed under a trenchcoat, ideally)
		sawn_state = SAWN_OFF
		update_icon()
		return
	else
		sawn_state = SAWN_INTACT

// Bulldog shotgun //

/obj/item/weapon/gun/projectile/automatic/shotgun/bulldog
	name = "\improper 'Advanced' Shotgun"
	desc = "A shotgun developed by some form of advaced technology, has a autopump feature and has multiple ammunition options. Compatible only with specialized 8-round drum magazines."
	icon_state = "bulldog"
	item_state = "bulldog"
	w_class = 3
	origin_tech = "combat=5;materials=4;syndicate=6"
	mag_type = /obj/item/ammo_box/magazine/m12g
	fire_sound = 'sound/weapons/Gunshot.ogg'
	can_suppress = 0
	burst_size = 1
	fire_delay = 0
	pin = /obj/item/device/firing_pin/implant/pindicate
	action_button_name = null


/obj/item/weapon/gun/projectile/automatic/shotgun/bulldog/unrestricted
	pin = /obj/item/device/firing_pin

/obj/item/weapon/gun/projectile/automatic/shotgun/bulldog/New()
	..()
	update_icon()
	return

/obj/item/weapon/gun/projectile/automatic/shotgun/bulldog/proc/update_magazine()
	if(magazine)
		src.overlays = 0
		overlays += "[magazine.icon_state]"
		return

/obj/item/weapon/gun/projectile/automatic/shotgun/bulldog/update_icon()
	src.overlays = 0
	update_magazine()
	icon_state = "bulldog[chambered ? "" : "-e"]"
	return

/obj/item/weapon/gun/projectile/automatic/shotgun/bulldog/afterattack()
	..()
	empty_alarm()
	return

/obj/item/weapon/gun/projectile/shotgun/automatic/shoot_live_shot(mob/living/user as mob|obj)
	..()
	src.pump(user)

// COMBAT SHOTGUN //

/obj/item/weapon/gun/projectile/shotgun/automatic/combat
	name = "M1014 Tactical"
	desc = "A semi automatic shotgun with tactical furniture and a six-shell capacity underneath."
	icon_state = "cshotgun"
	origin_tech = "combat=5;materials=2"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/com
	w_class = 5

/obj/item/weapon/gun/projectile/shotgun/automatic/hunting
	name = "Colt Rangemaster"
	desc = "A semi automatic Colt Rangemaster semi-automatic rifle chambered in .308."
	icon_state = "rangemaster"
	origin_tech = "combat=2;materials=2"
	mag_type = /obj/item/ammo_box/magazine/internal/boltaction
	w_class = 4
	fire_sound = 'sound/f13weapons/hunting_rifle.ogg'

