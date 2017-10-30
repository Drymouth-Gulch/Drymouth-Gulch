/obj/item/weapon/gun/projectile/automatic/pistol
	name = "stechkin pistol"
	desc = "A small, easily concealable 10mm handgun. Has a threaded barrel for suppressors."
	icon_state = "pistol"
	w_class = 2
	origin_tech = "combat=2;materials=2;syndicate=2"
	mag_type = /obj/item/ammo_box/magazine/m10mm
	can_suppress = 1
	burst_size = 1
	fire_delay = 0
	action_button_name = null

/obj/item/weapon/gun/projectile/automatic/pistol/update_icon()
	..()
	icon_state = "[initial(icon_state)][chambered ? "" : "-e"][suppressed ? "-suppressed" : ""]"
	return

/obj/item/weapon/gun/projectile/automatic/pistol/m1911
	name = "Colt M1911"
	desc = "A classic .45 handgun with a small magazine capacity, a good weapon for taking down unarmored enemies."
	icon_state = "m1911"
	w_class = 3
	mag_type = /obj/item/ammo_box/magazine/m45
	can_suppress = 0
	damageG=10
	damageA=0
	damageS=30
	rangeG=0

/obj/item/weapon/gun/projectile/automatic/pistol/m1911/New()
	..()
	update_icon()
	src.setgundamage(src.damageG,src.damageA,src.damageS,src.rangeG)
	return

/obj/item/weapon/gun/projectile/automatic/pistol/m1911/compact
	name = "Colt M1911-C"
	desc = "A classic .45 handgun with a small magazine capacity, this is the compact variant."
	icon_state = "m1911c"
	w_class = 2
	damageG=10
	damageA=0
	damageS=30
	rangeG=0

/obj/item/weapon/gun/projectile/automatic/pistol/m1911/compact/New()
	..()
	update_icon()
	src.setgundamage(src.damageG,src.damageA,src.damageS,src.rangeG)
	return

// 10-mm pistol
/obj/item/weapon/gun/projectile/automatic/pistol/n99
	name = "N99 pistol"
	desc = "The large-framed, gas-operated N99 was selected as the standard issue conventional sidearm of the United States military. The N99 is designed to withstand the most extreme conditions, which was one of the requirements for a new service sidearm. It can also be repaired easily by anyone with even the most basic technical knowledge."
	icon_state = "n99"
	w_class = 3
	force = 13
	origin_tech = "combat=2;materials=2"
	mag_type = /obj/item/ammo_box/magazine/m10mm_adv
	fire_sound = 'sound/f13weapons/10mm_fire_02.ogg'
	can_suppress = 1
	burst_size = 1
	fire_delay = 0
	action_button_name = null

/obj/item/weapon/gun/projectile/automatic/pistol/update_icon()
	..()
	icon_state = "[initial(icon_state)][chambered ? "" : "-e"][suppressed ? "-suppressed" : ""]"
	return

/obj/item/weapon/gun/projectile/automatic/pistol/deagle
	name = "desert eagle"
	desc = "A robust .50 AE handgun."
	icon_state = "deagle"
	force = 14
	mag_type = /obj/item/ammo_box/magazine/m50
	can_suppress = 0
	w_class = 3

/obj/item/weapon/gun/projectile/automatic/pistol/deagle/update_icon()
	..()
	icon_state = "[initial(icon_state)][magazine ? "" : "-e"]"

/obj/item/weapon/gun/projectile/automatic/pistol/deagle/gold
	desc = "A gold plated desert eagle folded over a million times by superior martian gunsmiths. Uses .50 AE ammo."
	icon_state = "deagleg"
	item_state = "deagleg"

/obj/item/weapon/gun/projectile/automatic/pistol/deagle/camo
	desc = "A Deagle brand Deagle for operators operating operationally. Uses .50 AE ammo."
	icon_state = "deaglecamo"
	item_state = "deagleg"

/obj/item/weapon/gun/projectile/automatic/pistol/silenced22
	name = "Ruger MKIV-S"
	desc = "A integrally suppressed .22 pistol."
	icon_state = "silenced22"
	suppressed = 1
	mag_type = /obj/item/ammo_box/magazine/m22
	can_unsuppress = 0
	fire_sound = 'sound/f13weapons/22pistol.ogg'

/obj/item/weapon/gun/projectile/automatic/pistol/ninemil
	name = "9mm pistol"
	desc = "A mass produced pre-war Browning Hi-power standard issue for NCR troops."
	icon_state = "ninemil"
	w_class = 3
	mag_type = /obj/item/ammo_box/magazine/m9mm
	can_suppress = 0
	fire_sound = 'sound/f13weapons/greasegun.ogg'
