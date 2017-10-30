/obj/item/weapon/gun/projectile/automatic
	origin_tech = "combat=4;materials=2"
	w_class = 3
	var/alarmed = 0
	var/select = 1
	can_suppress = 1
	burst_size = 3
	fire_delay = 2
	action_button_name = "Toggle Firemode"
	mag_load_sound = 'sound/effects/wep_magazines/smg_load.ogg'
	mag_unload_sound = 'sound/effects/wep_magazines/smg_unload.ogg'
	chamber_sound = 'sound/effects/wep_magazines/smg_chamber.ogg'

/obj/item/weapon/gun/projectile/automatic/proto
	name = "/improper SABR SG-T"
	desc = "A prototype three-round burst 9mm submachine gun, designated 'SABR'. Has a threaded barrel for suppressors."
	icon_state = "saber"
	mag_type = /obj/item/ammo_box/magazine/smgm9mm
	pin = null

/obj/item/weapon/gun/projectile/automatic/proto/unrestricted
	pin = /obj/item/device/firing_pin

/obj/item/weapon/gun/projectile/automatic/update_icon()
	..()
	overlays.Cut()
	if(!select)
		overlays += "[initial(icon_state)]semi"
	if(select == 1)
		overlays += "[initial(icon_state)]burst"
	icon_state = "[initial(icon_state)][magazine ? "-[magazine.max_ammo]" : ""][chambered ? "" : "-e"][suppressed ? "-suppressed" : ""]"
	return

/obj/item/weapon/gun/projectile/automatic/attackby(obj/item/A, mob/user, params)
	. = ..()
	if(.)
		return
	if(istype(A, /obj/item/ammo_box/magazine))
		var/obj/item/ammo_box/magazine/AM = A
		if(istype(AM, mag_type))
			if(magazine)
				user << "<span class='notice'>You perform a tactical reload on \the [src], replacing the magazine.</span>"
				magazine.loc = get_turf(src.loc)
				magazine.update_icon()
				magazine = null
			else
				user << "<span class='notice'>You insert the magazine into \the [src].</span>"
			user.remove_from_mob(AM)
			magazine = AM
			magazine.loc = src
			chamber_round()
			A.update_icon()
			update_icon()
			return 1

/obj/item/weapon/gun/projectile/automatic/ui_action_click()
	burst_select()

/obj/item/weapon/gun/projectile/automatic/proc/burst_select()
	var/mob/living/carbon/human/user = usr
	select = !select
	if(!select)
		burst_size = 1
		fire_delay = 0
		user << "<span class='notice'>You switch to semi-automatic.</span>"
	else
		burst_size = initial(burst_size)
		fire_delay = initial(fire_delay)
		user << "<span class='notice'>You switch to [burst_size]-rnd burst.</span>"

	playsound(user, 'sound/weapons/empty.ogg', 100, 1)
	update_icon()
	return

/obj/item/weapon/gun/projectile/automatic/can_shoot()
	return get_ammo()

/obj/item/weapon/gun/projectile/automatic/proc/empty_alarm()
	if(!chambered && !get_ammo() && !alarmed)
		playsound(src.loc, 'sound/weapons/smg_empty_alarm.ogg', 40, 1)
		update_icon()
		alarmed = 1
	return

/obj/item/weapon/gun/projectile/automatic/c20r
	name = "\improper C-20r SMG"
	desc = "A bullpup two-round burst .45 SMG, designated 'C-20r'. Has a 'Scarborough Arms - Per falcis, per pravitas' buttstamp."
	icon_state = "c20r"
	item_state = "c20r"
	origin_tech = "combat=5;materials=2;syndicate=8"
	mag_type = /obj/item/ammo_box/magazine/smgm45
	fire_sound = 'sound/weapons/Gunshot_smg.ogg'
	fire_delay = 2
	burst_size = 2
	damageG=10
	damageA=0
	damageS=5
	rangeG=0
	pin = /obj/item/device/firing_pin/implant/pindicate
/obj/item/weapon/gun/projectile/automatic/c20r/unrestricted
	pin = /obj/item/device/firing_pin

/obj/item/weapon/gun/projectile/automatic/c20r/New()
	..()
	update_icon()
	src.setgundamage(src.damageG,src.damageA,src.damageS,src.rangeG)
	return

/obj/item/weapon/gun/projectile/automatic/c20r/afterattack()
	..()
	empty_alarm()
	return

/obj/item/weapon/gun/projectile/automatic/c20r/update_icon()
	..()
	icon_state = "c20r[magazine ? "-[Ceiling(get_ammo(0)/4)*4]" : ""][chambered ? "" : "-e"][suppressed ? "-suppressed" : ""]"
	return

/obj/item/weapon/gun/projectile/automatic/wt550
	name = "/improper General Arms SDW"
	desc = "A light weight tactical SMG. Uses 4.6x30mm rounds and is designated as a self defense weapon. Has a GA logo stamped into the reciever."
	icon_state = "wt550"
	item_state = "arg"
	mag_type = /obj/item/ammo_box/magazine/wt550m9
	fire_delay = 1.5
	can_suppress = 1
	burst_size = 3

/obj/item/weapon/gun/projectile/automatic/wt550/ui_action_click()
	return

/obj/item/weapon/gun/projectile/automatic/wt550/update_icon()
	..()
	icon_state = "wt550[magazine ? "-[Ceiling(get_ammo(0)/4)*4]" : ""]"
	return

/obj/item/weapon/gun/projectile/automatic/mini_uzi
	name = "Uzi"
	desc = "A lightweight, burst-fire submachine gun, for when you really want someone dead. Uses 9mm rounds."
	icon_state = "mini-uzi"
	origin_tech = "combat=5;materials=2;syndicate=8"
	mag_type = /obj/item/ammo_box/magazine/uzim9mm
	burst_size = 2

/obj/item/weapon/gun/projectile/automatic/m90
	name = "\improper M-90gl Carbine"
	desc = "A three-round burst 5.56 toploading carbine, designated 'M-90gl'. Has an attached underbarrel grenade launcher which can be toggled on and off."
	icon_state = "m90"
	item_state = "m90"
	origin_tech = "combat=5;materials=2;syndicate=8"
	mag_type = /obj/item/ammo_box/magazine/m556
	fire_sound = 'sound/weapons/Gunshot_smg.ogg'
	can_suppress = 0
	var/obj/item/weapon/gun/projectile/revolver/grenadelauncher/underbarrel
	burst_size = 3
	fire_delay = 2
	pin = /obj/item/device/firing_pin/implant/pindicate

/obj/item/weapon/gun/projectile/automatic/m90/New()
	..()
	underbarrel = new /obj/item/weapon/gun/projectile/revolver/grenadelauncher(src)
	update_icon()
	return

/obj/item/weapon/gun/projectile/automatic/m90/unrestricted
	pin = /obj/item/device/firing_pin

/obj/item/weapon/gun/projectile/automatic/m90/unrestricted/New()
	..()
	underbarrel = new /obj/item/weapon/gun/projectile/revolver/grenadelauncher/unrestricted(src)
	update_icon()
	return

/obj/item/weapon/gun/projectile/automatic/m90/afterattack(atom/target, mob/living/user, flag, params)
	if(select == 2)
		underbarrel.afterattack(target, user, flag, params)
	else
		..()
		return
/obj/item/weapon/gun/projectile/automatic/m90/attackby(obj/item/A, mob/user, params)
	if(istype(A, /obj/item/ammo_casing))
		if(istype(A, underbarrel.magazine.ammo_type))
			underbarrel.attack_self()
			underbarrel.attackby(A, user, params)
	else
		..()
/obj/item/weapon/gun/projectile/automatic/m90/update_icon()
	..()
	overlays.Cut()
	switch(select)
		if(0)
			overlays += "[initial(icon_state)]semi"
		if(1)
			overlays += "[initial(icon_state)]burst"
		if(2)
			overlays += "[initial(icon_state)]gren"
	icon_state = "[initial(icon_state)][magazine ? "" : "-e"]"
	return
/obj/item/weapon/gun/projectile/automatic/m90/burst_select()
	var/mob/living/carbon/human/user = usr
	switch(select)
		if(0)
			select = 1
			burst_size = initial(burst_size)
			fire_delay = initial(fire_delay)
			user << "<span class='notice'>You switch to [burst_size]-rnd burst.</span>"
		if(1)
			select = 2
			user << "<span class='notice'>You switch to grenades.</span>"
		if(2)
			select = 0
			burst_size = 1
			fire_delay = 0
			user << "<span class='notice'>You switch to semi-auto.</span>"
	playsound(user, 'sound/weapons/empty.ogg', 100, 1)
	update_icon()
	return

/obj/item/weapon/gun/projectile/automatic/tommygun
	name = "Thompson M1A1"
	desc = "Based on the classic 'Chicago Typewriter'."
	icon_state = "tommygun"
	item_state = "shotgun"
	w_class = 4
	slot_flags = 0
	origin_tech = "combat=5;materials=1;syndicate=2"
	mag_type = /obj/item/ammo_box/magazine/tommygunm45
	fire_sound = 'sound/weapons/Gunshot_smg.ogg'
	can_suppress = 0
	burst_size = 4
	fire_delay = 1

/obj/item/weapon/gun/projectile/automatic/ar
	name = "\improper NT-ARG 'Boarder'"
	desc = "A robust assault rile used by Nanotrasen fighting forces."
	icon_state = "arg"
	item_state = "arg"
	slot_flags = 0
	origin_tech = "combat=5;materials=1"
	mag_type = /obj/item/ammo_box/magazine/m556
	fire_sound = 'sound/weapons/Gunshot_smg.ogg'
	can_suppress = 0
	burst_size = 3
	fire_delay = 1
	mag_load_sound = 'sound/effects/wep_magazines/ar_load.ogg'
	mag_unload_sound = 'sound/effects/wep_magazines/ar_unload.ogg'
	chamber_sound = 'sound/effects/wep_magazines/ar_chamber.ogg'

/obj/item/weapon/gun/projectile/automatic/smg10mm
	name = "10mm submarine gun"
	desc = "A select fire open bolt 10mm submachine gun. The serial number and manufactuer markings have been scratched off."
	icon_state = "smg10mm"
	item_state = "smg10mm"
	slot_flags = 0
	origin_tech = "combat=3;materials=2"
	mag_type = /obj/item/ammo_box/magazine/m10mm_auto
	fire_sound = 'sound/f13weapons/10mm_fire_03.ogg'
	can_suppress = 0
	burst_size = 3
 	//fire_delay = 1

/obj/item/weapon/gun/projectile/automatic/assault_rifle
	name = "R91 assault rifle"
	desc = "A standard R91 combat rifle, out of use around the time of the Great War."
	icon_state = "assault_rifle"
	item_state = "assault_rifle"
	slot_flags = 0
	origin_tech = "combat=6;materials=1"
	mag_type = /obj/item/ammo_box/magazine/m556
	fire_sound = 'sound/f13weapons/assaultrifle_fire.ogg'
	can_suppress = 0
	burst_size = 3
	fire_delay = 1
	w_class = 4
	mag_load_sound = 'sound/effects/wep_magazines/ar_load.ogg'
	mag_unload_sound = 'sound/effects/wep_magazines/ar_unload.ogg'
	chamber_sound = 'sound/effects/wep_magazines/ar_chamber.ogg'
	heavy_weapon = 1

/obj/item/weapon/gun/projectile/automatic/assault_rifle/infiltrator
	name = "R91 infiltrator"
	desc = "A customized R91 assault rifle, with a scope, integrated suppressor, cut down stock and polymer furniture."
	icon_state = "infiltrator"
	item_state = "arg"
	suppressed = 1
	can_unsuppress = 0
	zoomable = TRUE
	zoom_amt = 7
	damageG=6
	damageA=0
	damageS=0
	rangeG=0
	fire_sound = 'sound/weapons/Gunshot_large_silenced.ogg'
	heavy_weapon = 1

/obj/item/weapon/gun/projectile/automatic/assault_rifle/infiltrator/New()
	..()
	update_icon()
	src.setgundamage(src.damageG,src.damageA,src.damageS,src.rangeG)
	return

/obj/item/weapon/gun/projectile/automatic/marksman
	name = "R94 marksman carbine"
	desc = "A R94 marksman carbine, chambered in 5.56x45. Seen heavy usage in pre-war conflicts. This one isn't a select fire variant."
	icon_state = "marksman_rifle"
	item_state = "arg"
	slot_flags = 0
	w_class = 4
	origin_tech = "combat=6;materials=1"
	mag_type = /obj/item/ammo_box/magazine/m556
	fire_sound = 'sound/f13weapons/marksman_rifle.ogg'
	can_suppress = 0
	burst_size = 1//Setting it to 0 is dumb. Just set it to one.
	fire_delay = 2
	zoomable = TRUE
	zoom_amt = 7
	mag_load_sound = 'sound/effects/wep_magazines/ar_load.ogg'
	mag_unload_sound = 'sound/effects/wep_magazines/ar_unload.ogg'
	chamber_sound = 'sound/effects/wep_magazines/ar_chamber.ogg'
	damageG=10
	damageA=0
	damageS=0
	rangeG=0
	heavy_weapon = 1

/obj/item/weapon/gun/projectile/automatic/marksman/New()
	..()
	update_icon()
	src.setgundamage(src.damageG,src.damageA,src.damageS,src.rangeG)
	return

/obj/item/weapon/gun/projectile/automatic/marksman/servicerifle
	name = "R81 service rifle"
	desc = "A 5.56x45 semi-automatic service rifle manufcatured by the NCR and issued to all combat personnel."
	icon_state = "service_rifle"
	item_state = "assault_rifle"
	fire_sound = 'sound/f13weapons/varmint_rifle.ogg'
	zoomable = FALSE
	heavy_weapon = 1

/obj/item/weapon/gun/projectile/automatic/minigun
	name = "M134 Minigun"
	desc = "The M134 is a 7.62×51mm, six-barrel rotary machine gun with a rate of fire between 2,000 and 6,000 rounds per minute."
	icon_state = "arg"
	item_state = "arg"
	slot_flags = 0
	origin_tech = "combat=5;materials=1"
	mag_type = /obj/item/ammo_box/magazine/m556
	fire_sound = 'sound/f13weapons/10mm_fire_03.ogg'
	can_suppress = 0
	burst_size = 5
	fire_delay = 0.2
	heavy_weapon = 1

/obj/item/weapon/gun/projectile/automatic/shotgun/pancor
	name = "Pancor Jackhammer"
	desc = "A select fire automatic shotgun, the pinnacle of turning things into swiss cheese."
	icon_state = "pancor"
	item_state = "bulldog"
	fire_sound = 'sound/f13weapons/repeater_fire.ogg'
	mag_type = /obj/item/ammo_box/magazine/d12g
	can_suppress = 0
	burst_size = 3
	w_class = 4
	heavy_weapon = 1

/obj/item/weapon/gun/projectile/automatic/shotgun/caws
	name = "HK CAWS"
	desc = "A select fire automatic shotgun, a modern variant of the Pancor Jackhammer."
	icon_state = "caws"
	item_state = "bulldog"
	fire_sound = 'sound/f13weapons/repeater_fire.ogg'
	mag_type = /obj/item/ammo_box/magazine/d12g
	can_suppress = 0
	burst_size = 3
	fire_delay = 4
	w_class = 4
	heavy_weapon = 1

/obj/item/weapon/gun/projectile/automatic/shotgun/riot
	name = "R15a riot shotgun"
	desc = "A semi-automatic shotgun with a drum magazine of 12, allowing for robust crowd control."
	icon_state = "riot_shotgun"
	item_state = "shotgun"
	can_suppress = 0
	burst_size = 0
	fire_delay = 2
	fire_sound = 'sound/f13weapons/riot_shotgun.ogg'
	mag_type = /obj/item/ammo_box/magazine/d12g
	w_class = 4
	heavy_weapon = 1

/obj/item/weapon/gun/projectile/automatic/lsw
	name = "L86A1 LSW"
	desc = "A british variant of the L86 platform. This one was designed as a light support weapon, featuring a bipod and fluted barrel."
	icon_state = "lsw"
	item_state = "l6closedmag"
	slot_flags = 0
	origin_tech = "combat=6;materials=1"
	mag_type = /obj/item/ammo_box/magazine/m556
	fire_sound = 'sound/f13weapons/assaultrifle_fire.ogg'
	can_suppress = 0
	burst_size = 5
	fire_delay = 0.3
	mag_load_sound = 'sound/effects/wep_magazines/ar_load.ogg'
	mag_unload_sound = 'sound/effects/wep_magazines/ar_unload.ogg'
	chamber_sound = 'sound/effects/wep_magazines/ar_chamber.ogg'
	w_class = 5
	heavy_weapon = 1

/obj/item/weapon/gun/projectile/automatic/american180
	name = "American 180"
	desc = "A select fire, open bolt, rotary fed, submachine gun."
	icon_state = "american180"
	item_state = "shotgun"
	suppressed = 1
	can_unsuppress = 0
	fire_delay = 1
	mag_type = /obj/item/ammo_box/magazine/d22
	damageG=2
	damageA=0
	damageS=2
	rangeG=0
	fire_sound = 'sound/f13weapons/american180.ogg'

/obj/item/weapon/gun/projectile/automatic/american180/New()
	..()
	update_icon()
	src.setgundamage(src.damageG,src.damageA,src.damageS,src.rangeG)
	return

/obj/item/weapon/gun/projectile/automatic/greasegun
	name = "M3A1 grease gun"
	desc = "A mass-produced .45 caliber sub machine gun used in World War II. Slow fire rate means less waste of ammo and controllable bursts."
	icon_state = "grease_gun"
	item_state = "arg"
	slot_flags = 0
	origin_tech = "combat=3;materials=2"
	mag_type = /obj/item/ammo_box/magazine/stick45
	fire_sound = 'sound/f13weapons/greasegun.ogg'
	can_suppress = 0
	burst_size = 3
	fire_delay = 2

/obj/item/weapon/gun/projectile/automatic/bozar
	name = "Bozar"
	desc = "The ultimate refinement of the sniper's art, the Bozar is a scoped, accurate, light machine gun that will make nice big holes in your enemy. Uses 5.56."
	icon_state = "bozar"
	item_state = "sniper"
	slot_flags = SLOT_BACK
	origin_tech = "combat=6;materials=1"
	mag_type = /obj/item/ammo_box/magazine/m556
	can_suppress = 0
	burst_size = 3
	fire_delay = 4
	w_class = 4
	mag_load_sound = 'sound/effects/wep_magazines/ar_load.ogg'
	mag_unload_sound = 'sound/effects/wep_magazines/ar_unload.ogg'
	chamber_sound = 'sound/effects/wep_magazines/ar_chamber.ogg'
	heavy_weapon = 1
	damageG=40
	damageA=0
	damageS=10
	rangeG=0
	fire_sound = 'sound/f13weapons/bozar_fire.ogg'
	zoomable = TRUE
	zoom_amt = 7

/obj/item/weapon/gun/projectile/automatic/bozar/New()
	..()
	update_icon()
	src.setgundamage(src.damageG,src.damageA,src.damageS,src.rangeG)
	return

/obj/item/weapon/gun/projectile/automatic/m72
	name = "M72 Gauss Rifle"
	desc = "The M72 rifle is of German design. It uses an electromagnetic field to propel rounds at tremendous speed... and pierce almost any obstacle. Its range, accuracy and stopping power is almost unparalleled."
	icon_state = "m72"
	item_state = "shotgun"
	slot_flags = SLOT_BACK
	w_class = 4
	origin_tech = "combat=6;materials=1"
	mag_type = /obj/item/ammo_box/magazine/m2mm
	fire_sound = 'sound/f13weapons/gauss_rifle.ogg'
	can_suppress = 0
	burst_size = 1//Setting it to 0 is dumb. Just set it to one.
	fire_delay = 3
	zoomable = TRUE
	zoom_amt = 7
	mag_load_sound = 'sound/effects/wep_magazines/ar_load.ogg'
	mag_unload_sound = 'sound/effects/wep_magazines/ar_unload.ogg'
	chamber_sound = 'sound/effects/wep_magazines/ar_chamber.ogg'
	heavy_weapon = 1
