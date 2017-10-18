/obj/item/weapon/gun/projectile/revolver
	name = "\improper .44 revolver"
	desc = "A suspicious revolver. Uses .44 Magnum ammo." //usually used by syndicates
	icon_state = "revolver"
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder

/obj/item/weapon/gun/projectile/revolver/New()
	..()
	if(!istype(magazine, /obj/item/ammo_box/magazine/internal/cylinder))
		verbs -= /obj/item/weapon/gun/projectile/revolver/verb/spin

/obj/item/weapon/gun/projectile/revolver/chamber_round(var/spin = 1)
	if(spin)
		chambered = magazine.get_round(1)
	else
		chambered = magazine.stored_ammo[1]
	return

/obj/item/weapon/gun/projectile/revolver/shoot_with_empty_chamber(mob/living/user as mob|obj)
	..()
	chamber_round(1)

/obj/item/weapon/gun/projectile/revolver/process_chamber()
	return ..(0, 1)

/obj/item/weapon/gun/projectile/revolver/attackby(obj/item/A, mob/user, params)
	var/num_loaded = magazine.attackby(A, user, params, 1)
	if(num_loaded)
		user << "<span class='notice'>You load [num_loaded] shell\s into \the [src].</span>"
		A.update_icon()
		if(istype(A, /obj/item/ammo_casing))
			playsound(user.loc, pick('sound/effects/wep_misc/bullet_insert.ogg', 'sound/effects/wep_misc/bullet_insert2.ogg'), 30, 1, -2)
		else
			playsound(user.loc, 'sound/effects/wep_misc/reload1.ogg', 30, 1, -2)
		update_icon()
		chamber_round(0)

	if(unique_rename)
		if(istype(A, /obj/item/weapon/pen))
			rename_gun(user)

/obj/item/weapon/gun/projectile/revolver/attack_self(mob/living/user)
	var/num_unloaded = 0
	chambered = null
	while (get_ammo() > 0)
		var/obj/item/ammo_casing/CB
		CB = magazine.get_round(0)
		if(CB)
			CB.loc = get_turf(src.loc)
			CB.SpinAnimation(10, 1)
			CB.update_icon()
			num_unloaded++
	if (num_unloaded)
		user << "<span class='notice'>You unload [num_unloaded] shell\s from [src].</span>"
	else
		user << "<span class='warning'>[src] is empty!</span>"//do you feel lucky, punk?

/obj/item/weapon/gun/projectile/revolver/verb/spin()
	set name = "Spin Chamber"
	set category = "Object"
	set desc = "Click to spin your revolver's chamber."

	var/mob/M = usr

	if(M.stat || !in_range(M,src))
		return

	if(istype(magazine, /obj/item/ammo_box/magazine/internal/cylinder))
		var/obj/item/ammo_box/magazine/internal/cylinder/C = magazine
		C.spin()
		chamber_round(0)
		usr.visible_message("[usr] spins [src]'s chamber.", "<span class='notice'>You spin [src]'s chamber.</span>")
	else
		verbs -= /obj/item/weapon/gun/projectile/revolver/verb/spin


/obj/item/weapon/gun/projectile/revolver/can_shoot()
	return get_ammo(0,0)

/obj/item/weapon/gun/projectile/revolver/get_ammo(countchambered = 0, countempties = 1)
	var/boolets = 0 //mature var names for mature people
	if (chambered && countchambered)
		boolets++
	if (magazine)
		boolets += magazine.ammo_count(countempties)
	return boolets

/obj/item/weapon/gun/projectile/revolver/examine(mob/user)
	..()
	user << "[get_ammo(0,0)] of those are live rounds."

/obj/item/weapon/gun/projectile/revolver/detective
	name = "\improper .38 S&W"
	desc = "A classic law enforcement firearm. Uses .38-special rounds."
	icon_state = "detective"
	origin_tech = "combat=2;materials=2"
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/rev38
	unique_rename = 1
	unique_reskin = 1

/obj/item/weapon/gun/projectile/revolver/detective/New()
	..()
	options["Default"] = "detective"
	options["Leopard Spots"] = "detective_leopard"
	options["Black Panther"] = "detective_panther"
	options["Gold Trim"] = "detective_gold"
	options["The Peacemaker"] = "detective_peacemaker"
	options["Cancel"] = null

/obj/item/weapon/gun/projectile/revolver/mateba
	name = "\improper Unica 6 auto-revolver"
	desc = "A retro high-powered autorevolver typically used by flag officers of the New California Republic. Uses .357 ammo."
	icon_state = "mateba"
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/rev38
	origin_tech = "combat=2;materials=2"

/obj/item/weapon/gun/projectile/revolver/m29
	name = "\improper S&W Model 29"
	desc = "Being that this is the most powerful handgun in the world, and can blow your head clean-off, you've got to ask yourself one question. Do I feel lucky? Well, do ya punk? "
	icon_state = "m29"
	origin_tech = "combat=4;materials=2"
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/rev44
	fire_sound = 'sound/f13weapons/44mag.ogg'

/obj/item/weapon/gun/projectile/revolver/m29/scoped
	name = "\improper Scoped S&W Model 29"
	icon_state = "scoped_m29"
	desc = "Being that this is the most powerful handgun in the world, and can blow your head clean-off, you've got to ask yourself one question. Do I feel lucky? Well, do ya punk? Now with a scope!"
	zoomable = TRUE
	zoom_amt = 7

/obj/item/weapon/gun/projectile/revolver/m29/bigiron
	name = "Big Iron"
	desc = "There before them lay the body of the outlaw on the ground. Oh, he might have went on livin' but he made one fatal slip, when he tried to match the ranger with the big iron on his hip"
	icon_state = "mysterious_m29"
	damageG=9999
	damageA=9999
	damageS=9999
	rangeG=0

/obj/item/weapon/gun/projectile/revolver/m29/bigiron/New()
	..()
	update_icon()
	src.setgundamage(src.damageG,src.damageA,src.damageS,src.rangeG)
	return

/obj/item/weapon/gun/projectile/revolver/m29/mysterious
	name = "\improper S&W Model 29 - 'Mysterious'"
	desc = "Being that this is the most powerful handgun in the world, and can blow your head clean-off, you've got to ask yourself one question. Do I feel lucky? Well, do ya punk? You feel like you have the power of god. <b>HELL YEAH!</b>"
	icon_state = "mysterious_m29"
	damageG=9999
	damageA=9999
	damageS=9999
	rangeG=0

/obj/item/weapon/gun/projectile/revolver/m29/mysterious/New()
	..()
	update_icon()
	src.setgundamage(src.damageG,src.damageA,src.damageS,src.rangeG)
	return

/obj/item/weapon/gun/projectile/revolver/sequoia
	name = "Ranger Sequoia"
	desc = "This large, double-action revolver is a rare, scopeless variant of the hunting revolver. It is used exclusively by the New California Republic Rangers. This revolver features a dark finish with intricate engravings etched all around the weapon. Engraved along the barrel are the words 'For Honorable Service,' and 'Against All Tyrants.' The hand grip bears the symbol of the NCR Rangers, a bear, and a brass plate attached to the bottom that reads '20 Years.' "
	icon_state = "sequoia"
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/rev4570
	origin_tech = "combat=2;materials=2"
	fire_sound = 'sound/f13weapons/sequoia.ogg'

/obj/item/weapon/gun/projectile/revolver/police
	name = "S&W Model 36"
	desc = "A .38 caliber police pistol which can also accept .357 rounds."
	icon_state = "police"
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/rev38
	origin_tech = "combat=2;materials=2"
	fire_sound = 'sound/f13weapons/policepistol.ogg'

/obj/item/weapon/gun/projectile/revolver/needler
	name = "needler pistol"
	desc = "You suspect this Bringham needler pistol was once used in scientific field studies. It uses small hard-plastic hypodermic darts as ammo. "
	icon_state = "needler"
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/revneedler
	origin_tech = "combat=5;materials=3;biological=3"
	fire_sound = 'sound/weapons/gunshot_silenced.ogg'

/obj/item/weapon/gun/projectile/revolver/colt6250
	name = "colt 6250"
	desc = "The Colt 6520 10mm autoloading pistol is a highly durable and efficient weapon developed by Colt Firearms prior to the Great War.It proved to be resistant to the desert-like conditions of the post-nuclear wasteland and is a fine example of workmanship and quality construction."
	icon_state = "colt6250"
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/rev6250
	fire_sound = 'sound/f13weapons/10mm_fire_02.ogg'
	damageG=5
	damageA=0
	damageS=0
	rangeG=0

/obj/item/weapon/gun/projectile/revolver/colt6250/New()
	..()
	update_icon()
	src.setgundamage(src.damageG,src.damageA,src.damageS,src.rangeG)
	return

/obj/item/weapon/gun/projectile/revolver/sequoia/scoped
	name = "Magnum Research BFR"
	desc = "A scoped double action revolver chambered in 45-70."
	icon_state = "hunting_revolver"
	zoomable = TRUE
	zoom_amt = 7

/obj/item/weapon/gun/projectile/revolver/that_gun
	name = ".223 revolver"
	desc = "Dinosaur plushies not included."
	icon_state = "that_gun"
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/rev556
	origin_tech = "combat=4;materials=3"
	fire_sound = 'sound/f13weapons/that_gun.ogg'
	damageG=15
	damageA=5
	damageS=0
	rangeG=0

/obj/item/weapon/gun/projectile/revolver/that_gun/New()
	..()
	update_icon()
	src.setgundamage(src.damageG,src.damageA,src.damageS,src.rangeG)
	return

// A gun to play Russian Roulette!
// You can spin the chamber to randomize the position of the bullet.

/obj/item/weapon/gun/projectile/revolver/russian
	name = "\improper russian revolver"
	desc = "A Russian-made revolver for drinking games. Uses .357 ammo, and has a mechanism requiring you to spin the chamber before each trigger pull."
	origin_tech = "combat=2;materials=2"
	mag_type = /obj/item/ammo_box/magazine/internal/rus357
	var/spun = 0

/obj/item/weapon/gun/projectile/revolver/russian/New()
	..()
	Spin()
	update_icon()

/obj/item/weapon/gun/projectile/revolver/russian/proc/Spin()
	chambered = null
	var/random = rand(1, magazine.max_ammo)
	if(random <= get_ammo(0,0))
		chamber_round()
	spun = 1

/obj/item/weapon/gun/projectile/revolver/russian/attackby(obj/item/A, mob/user, params)
	var/num_loaded = ..()
	if(num_loaded)
		user.visible_message("[user] loads a single bullet into the revolver and spins the chamber.", "<span class='notice'>You load a single bullet into the chamber and spin it.</span>")
	else
		user.visible_message("[user] spins the chamber of the revolver.", "<span class='notice'>You spin the revolver's chamber.</span>")
	if(get_ammo() > 0)
		Spin()
	update_icon()
	A.update_icon()
	return

/obj/item/weapon/gun/projectile/revolver/russian/attack_self(mob/user)
	if(!spun && can_shoot())
		user.visible_message("[user] spins the chamber of the revolver.", "<span class='notice'>You spin the revolver's chamber.</span>")
		Spin()
	else
		var/num_unloaded = 0
		while (get_ammo() > 0)
			var/obj/item/ammo_casing/CB
			CB = magazine.get_round()
			chambered = null
			CB.loc = get_turf(src.loc)
			CB.update_icon()
			num_unloaded++
		if (num_unloaded)
			user << "<span class='notice'>You unload [num_unloaded] shell\s from [src].</span>"
		else
			user << "<span class='notice'>[src] is empty.</span>"

/obj/item/weapon/gun/projectile/revolver/russian/afterattack(atom/target as mob|obj|turf, mob/living/user as mob|obj, flag, params)
	if(flag)
		if(!(target in user.contents) && ismob(target))
			if(user.a_intent == "harm") // Flogging action
				return

	if(isliving(user))
		if(!can_trigger_gun(user))
			return
	if(target != user)
		if(ismob(target))
			user << "<span class='warning'>A mechanism prevents you from shooting anyone but yourself!</span>"
		return

	if(ishuman(user))
		var/mob/living/carbon/human/H = user
		if(!spun)
			user << "<span class='warning'>You need to spin the revolver's chamber first!</span>"
			return

		spun = 0

		if(chambered)
			var/obj/item/ammo_casing/AC = chambered
			if(AC.fire(user, user))
				playsound(user, fire_sound, 50, 1)
				var/obj/item/organ/limb/affecting = H.get_organ(check_zone(user.zone_sel.selecting))
				var/limb_name = affecting.getDisplayName()
				if(affecting.name == "head" || affecting.name == "eyes" || affecting.name == "mouth")
					user.apply_damage(300, BRUTE, affecting)
					user.visible_message("<span class='danger'>[user.name] fires [src] at \his head!</span>", "<span class='userdanger'>You fire [src] at your head!</span>", "<span class='italics'>You hear a gunshot!</span>")
				else
					user.visible_message("<span class='danger'>[user.name] cowardly fires [src] at \his [limb_name]!</span>", "<span class='userdanger'>You cowardly fire [src] at your [limb_name]!</span>", "<span class='italics'>You hear a gunshot!</span>")
				return

		user.visible_message("<span class='danger'>*click*</span>")
		playsound(user, 'sound/weapons/empty.ogg', 100, 1)
