/////////////////////////////////////////
/////////////////Weapons/////////////////
/////////////////////////////////////////
/datum/design/laserpistol
	name = "Laser Pistol"
	desc = "A laser pistol, can be recharged with a recharger or by swapping out it's internal battery."
	id = "laserpistol"
	req_tech = list("materials" = 1)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 30000, MAT_GLASS = 30000, MAT_SILVER = 20000, MAT_GOLD = 20000, MAT_URANIUM = 20000)
	build_path = /obj/item/weapon/gun/energy/laser/pistol
	category = list("Weapons")

/datum/design/laserrifle
	name = "Laser Rifle"
	desc = "A laser rifle, can be recharged with a recharger or by swapping out it's internal battery."
	id = "laserrifle"
	req_tech = list("materials" = 1)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 30000, MAT_GLASS = 30000, MAT_SILVER = 10000, MAT_GOLD = 10000, MAT_URANIUM = 10000, MAT_DIAMOND = 10000)
	build_path = /obj/item/weapon/gun/energy/laser
	category = list("Weapons")

/datum/design/scatterlaser
	name = "Scatter Laser Rifle"
	desc = "A laser rifle that shoots out three weaker smaller lasers. Can be recharged with a recharger or by swapping out it's internal battery."
	id = "scatterlaser"
	req_tech = list("materials" = 1)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 30000, MAT_GLASS = 30000, MAT_SILVER = 5000, MAT_GOLD = 5000, MAT_URANIUM = 5000, MAT_DIAMOND = 5000) //Worse than the regular rifle
	build_path = /obj/item/weapon/gun/energy/laser/scatter
	category = list("Weapons")

/datum/design/pin_testing
	name = "test-range firing pin"
	desc = "This safety firing pin allows firearms to be operated within proximity to a firing range."
	id = "pin_testing"
	req_tech = list("combat" = 1, "materials" = 2)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 500, MAT_GLASS = 300)
	build_path = /obj/item/device/firing_pin/test_range
	category = list("Firing Pins")

/datum/design/pin_loyalty
	name = "loyalty firing pin"
	desc = "This is a security firing pin which only authorizes users who are loyalty-implanted."
	id = "pin_loyalty"
	req_tech = list("combat" = 5, "materials" = 6, "powerstorage" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_SILVER = 600, MAT_DIAMOND = 600, MAT_URANIUM = 200)
	build_path = /obj/item/device/firing_pin/implant/loyalty
	category = list("Firing Pins")
/*
/datum/design/bulldog
	name = "Advanced Shotgun"
	desc = "A auto pumping shotgun used for close quarters, can be loaded with shells as well as specialized 8 round magazines."
	id = "bulldog"
	req_tech = list("combat" = 6, "materials" = 7, "syndicate" = 5)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 75000, MAT_SILVER = 20000, MAT_GOLD = 20000, MAT_URANIUM = 20000)
	build_path = /obj/item/weapon/gun/projectile/automatic/shotgun/bulldog
	category = list("Weapons")

/datum/design/tele_shield
	name = "Telescopic Riot Shield"
	desc = "An advanced riot shield made of lightweight materials that collapses for easy storage."
	id = "tele_shield"
	req_tech = list("combat" = 4, "materials" = 3, "engineering" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 4000, MAT_GLASS = 5000, MAT_SILVER = 300)
	build_path = /obj/item/weapon/shield/riot/tele
	category = list("Weapons")

/datum/design/lasercannon
	name = "Laser Cannon"
	desc = "A heavy duty laser cannon."
	id = "lasercannon"
	req_tech = list("combat" = 4, "materials" = 3, "powerstorage" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 10000, MAT_GLASS = 2000, MAT_DIAMOND = 2000)
	build_path = /obj/item/weapon/gun/energy/lasercannon
	category = list("Weapons")

/datum/design/decloner
	name = "Decloner"
	desc = "Your opponent will bubble into a messy pile of goop."
	id = "decloner"
	req_tech = list("combat" = 8, "materials" = 7, "biotech" = 5, "powerstorage" = 6)
	build_type = PROTOLATHE
	materials = list(MAT_GOLD = 5000,MAT_URANIUM = 10000)
	reagents = list("mutagen" = 40)
	build_path = /obj/item/weapon/gun/energy/decloner
	category = list("Weapons")

/datum/design/rapidsyringe
	name = "Rapid Syringe Gun"
	desc = "A gun that fires many syringes."
	id = "rapidsyringe"
	req_tech = list("combat" = 3, "materials" = 3, "engineering" = 3, "biotech" = 2)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 5000, MAT_GLASS = 1000)
	build_path = /obj/item/weapon/gun/syringe/rapidsyringe
	category = list("Weapons")

/datum/design/largecrossbow
	name = "Energy Crossbow"
	desc = "A reverse-engineered energy crossbow favored by syndicate infiltration teams and carp hunters."
	id = "largecrossbow"
	req_tech = list("combat" = 5, "materials" = 5, "engineering" = 3, "biotech" = 4, "syndicate" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 5000, MAT_GLASS = 1500, MAT_URANIUM = 1500, MAT_SILVER = 1500)
	build_path = /obj/item/weapon/gun/energy/kinetic_accelerator/crossbow/large
	category = list("Weapons")
	reliability = 76

/datum/design/temp_gun
	name = "Temperature Gun"
	desc = "A gun that shoots temperature bullet energythings to change temperature."//Change it if you want
	id = "temp_gun"
	req_tech = list("combat" = 3, "materials" = 4, "powerstorage" = 3, "magnets" = 2)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 5000, MAT_GLASS = 500, MAT_SILVER = 3000)
	build_path = /obj/item/weapon/gun/energy/temperature
	category = list("Weapons")
*/
/datum/design/flora_gun
	name = "Floral Somatoray"
	desc = "A tool that discharges controlled radiation which induces mutation in plant cells. Harmless to other organic life."
	id = "flora_gun"
	req_tech = list("materials" = 2, "biotech" = 3, "powerstorage" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 2000, MAT_GLASS = 500)
	reagents = list("radium" = 20)
	build_path = /obj/item/weapon/gun/energy/floragun
	category = list("Weapons")

/datum/design/large_grenade
	name = "Large Grenade"
	desc = "A grenade that affects a larger area and use larger containers."
	id = "large_Grenade"
	req_tech = list("combat" = 3, "materials" = 2)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 3000)
	reliability = 79
	build_path = /obj/item/weapon/grenade/chem_grenade/large
	category = list("Weapons")
/*
/datum/design/smg
	name = "NanoTrasen Saber SMG"
	desc = "A prototype advancment over the WT-550 auto rifle made using lightweight materials on a traditional frame, designed to fire standard 9mm rounds."
	id = "smg"
	req_tech = list("combat" = 4, "materials" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 8000, MAT_SILVER = 2000, MAT_DIAMOND = 1000)
	build_path = /obj/item/weapon/gun/projectile/automatic/proto
	category = list("Weapons")

/datum/design/xray
	name = "Xray Laser Gun"
	desc = "Not quite as menacing as it sounds"
	id = "xray"
	req_tech = list("combat" = 6, "materials" = 5, "biotech" = 5, "powerstorage" = 4)
	build_type = PROTOLATHE
	materials = list(MAT_GOLD = 5000,MAT_URANIUM = 10000, MAT_METAL = 4000)
	build_path = /obj/item/weapon/gun/energy/xray
	category = list("Weapons")
*/

/datum/design/ioncarbine
	name = "Ion Carbine"
	desc = "How to dismantle a cyborg : The gun."
	id = "ioncarbine"
	req_tech = list("combat" = 5, "materials" = 4, "magnets" = 4)
	build_type = PROTOLATHE
	materials = list(MAT_SILVER = 4000, MAT_METAL = 6000, MAT_URANIUM = 1000)
	build_path = /obj/item/weapon/gun/energy/ionrifle/carbine
	category = list("Weapons")

/*
/datum/design/wormhole_projector
	name = "Bluespace Wormhole Projector"
	desc = "A projector that emits high density quantum-coupled bluespace beams."
	id = "wormholeprojector"
	req_tech = list("combat" = 6, "materials" = 6, "bluespace" = 4)
	build_type = PROTOLATHE
	materials = list(MAT_SILVER = 1000, MAT_METAL = 5000, MAT_DIAMOND = 3000)
	build_path = /obj/item/weapon/gun/energy/wormhole_projector
	category = list("Weapons")
*/

/datum/design/reciever
	name = "Modular Receiver"
	desc = "A prototype modular receiver and trigger assembly for a variety of firearms."
	id = "reciever"
	req_tech = list("combat" = 5, "materials" = 4)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 6500, MAT_SILVER = 500)
	build_path = /obj/item/weaponcrafting/reciever
	category = list("Weapons")
/*
//Bulldog aka Advanced Shotgun magazines

/datum/design/m12mag
	name = "Advanced shotgun 8 round slug magazine"
	desc = "A 8 round drum consisting of slug rounds for the advanced shotgun."
	id = "m12mag"
	req_tech = list("combat" = 6, "materials" = 7, "syndicate" = 5)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 15000)
	build_path = /obj/item/ammo_box/magazine/m12g
	category = list("Ammo")

/datum/design/m12buckshotmag
	name = "Advanced shotgun 8 round buckshot magazine"
	desc = "A 8 round drum consisting of buckshot rounds for the advanced shotgun."
	id = "m12buckshotmag"
	req_tech = list("combat" = 6, "materials" = 7, "syndicate" = 5)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 15000)
	build_path = /obj/item/ammo_box/magazine/m12g/buckshot
	category = list("Ammo")
*/
//WT550 Mags
/*
/datum/design/mag_oldsmg
	name = "WT-550 Auto Gun Magazine (4.6×30mm)"
	desc = "A 20 round magazine for the out of date security WT-550 Auto Rifle"
	id = "mag_oldsmg"
	req_tech = list("combat" = 1, "materials" = 1)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 4000)
	build_path = /obj/item/ammo_box/magazine/wt550m9
	category = list("Ammo")

/datum/design/mag_oldsmg/ap_mag
	name = "WT-550 Auto Gun Armour Piercing Magazine (4.6×30mm AP)"
	desc = "A 20 round armour piercing magazine for the out of date security WT-550 Auto Rifle"
	id = "mag_oldsmg_ap"
	materials = list(MAT_METAL = 6000, MAT_SILVER = 600)
	build_path = /obj/item/ammo_box/magazine/wt550m9/wtap

/datum/design/mag_oldsmg/ic_mag
	name = "WT-550 Auto Gun Incendiary Magazine (4.6×30mm IC)"
	desc = "A 20 round armour piercing magazine for the out of date security WT-550 Auto Rifle"
	id = "mag_oldsmg_ic"
	materials = list(MAT_METAL = 6000, MAT_SILVER = 600, MAT_GLASS = 1000)
	build_path = /obj/item/ammo_box/magazine/wt550m9/wtic

/datum/design/mag_oldsmg/tx_mag
	name = "WT-550 Auto Gun Urnaium Magazine (4.6×30mm TX)"
	desc = "A 20 round urnaium tipped magazine for the out of date security WT-550 Auto Rifle"
	id = "mag_oldsmg_tx"
	materials = list(MAT_METAL = 6000, MAT_SILVER = 600, MAT_URANIUM = 2000)
	build_path = /obj/item/ammo_box/magazine/wt550m9/wttx
*/
/datum/design/mag_oldsmg
	name = "ammo (5.56 Match)"
	desc = "A box of 20 5.56 match grade ammo."
	id = "mag_oldsmg"
	req_tech = list("combat" = 1, "materials" = 1)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 4000)
	build_path = /obj/item/ammo_box/a556
	category = list("Ammo")

/datum/design/mag_oldsmg/ap_mag
	name = "ammo armour piercing (5.56 AP)"
	desc = "A box of 20 armour piercing 5.56 ammo."
	id = "mag_oldsmg_ap"
	materials = list(MAT_METAL = 6000, MAT_SILVER = 600)
	build_path = /obj/item/ammo_box/a556/ap

/datum/design/mag_oldsmg/ic_mag
	name = "ammo incendiary (5.56 IC)"
	desc = "A box of 20 incendiary 5.56 ammo."
	id = "mag_oldsmg_ic"
	materials = list(MAT_METAL = 6000, MAT_SILVER = 600, MAT_GLASS = 1000)
	build_path = /obj/item/ammo_box/a556/inc

/datum/design/mag_oldsmg/tx_mag
	name = "ammo uranium tipped (5.56 TX)"
	desc = "a box of 20 uranium tipped 5.56 ammo."
	id = "mag_oldsmg_tx"
	materials = list(MAT_METAL = 6000, MAT_SILVER = 600, MAT_URANIUM = 2000)
	build_path = /obj/item/ammo_box/a556/tox
	
//SABR Mags
/*
/datum/design/mag_smg
	name = "SABR SMG Magazine (9mm)"
	desc = "A 30-round magazine for the prototype submachine gun."
	id = "mag_smg"
	req_tech = list("combat" = 4, "materials" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 2000)
	build_path = /obj/item/ammo_box/magazine/smgm9mm
	category = list("Ammo")

/datum/design/mag_smg/ap_mag
	name = "SABR SMG Armour Piercing Magazine (9mmAP)"
	desc = "A 30-round armour piercing magazine for the prototype submachine gun. Deals slightly less damage by bypasses most armour"
	id = "mag_smg_ap"
	materials = list(MAT_METAL = 3000, MAT_SILVER = 100)
	build_path = /obj/item/ammo_box/magazine/smgm9mm/ap

/datum/design/mag_smg/incin_mag
	name = "SABR SMG Incendiary Magazine (9mmIC)"
	desc = "A 30-round incindiary round magazine for the prototype submachine gun. Deals significanlty less damage but sets the target on fire"
	id = "mag_smg_ic"
	materials = list(MAT_METAL = 3000, MAT_SILVER = 100, MAT_GLASS = 400)
	build_path = /obj/item/ammo_box/magazine/smgm9mm/fire

/datum/design/mag_smg/incin_tox
	name = "SABR SMG Urnaium Magazine (9mmTX)"
	desc = "A 30-round urnaium tipped round magazine for the prototype submachine gun. Deals toxin damage, but less overall damage."
	id = "mag_smg_tx"
	materials = list(MAT_METAL = 3000, MAT_GLASS = 200, MAT_URANIUM = 1000)
	build_path = /obj/item/ammo_box/magazine/smgm9mm/toxin

/datum/design/stunshell
	name = "Stun Shell"
	desc = "A stunning shell for a shotgun."
	id = "stunshell"
	req_tech = list("combat" = 3, "materials" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 200)
	build_path = /obj/item/ammo_casing/shotgun/stunslug
	category = list("Ammo")

/datum/design/techshell
	name = "Unloaded Technological Shotshell"
	desc = "A high-tech shotgun shell which can be loaded with materials to produce unique effects."
	id = "techshotshell"
	req_tech = list("combat" = 3, "materials" = 3, "powerstorage" = 4, "magnets" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 1000, MAT_GLASS = 200)
	build_path = /obj/item/ammo_casing/shotgun/techshell
	category = list("Ammo")

/datum/design/suppressor
	name = "Universal Suppressor"
	desc = "A reverse-engineered universal suppressor that fits on most small arms with threaded barrels."
	id = "suppressor"
	req_tech = list("combat" = 6, "engineering" = 5, "syndicate" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 2000, MAT_SILVER = 500)
	build_path = /obj/item/weapon/suppressor
	category = list("Weapons")
*/

/datum/design/microfusion
	name = "Microfusion Cell"
	desc = "A microfusion cell used for energy weapons, can't be recharged."
	id = "microfusion"
	req_tech = list("combat" = 1)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 30000, MAT_PLASMA = 10000)
	build_path = /obj/item/weapon/stock_parts/cell/ammo/mfc
	category = list("Weapons")
	
/datum/design/ec
	name = "Energy Cell"
	desc = "A cell used mainly for energy based pistols."
	id = "ec"
	req_tech = list("combat" = 1)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 30000, MAT_PLASMA = 10000, MAT_URANIUM = 10000, MAT_GOLD = 10000)
	build_path = /obj/item/weapon/stock_parts/cell/device/laser/high
	category = list("Weapons")

/datum/design/superlaserbattery
	name = "Electron Charge Pack"
	desc = "A electron charge pack used in laser weaponry."
	id = "ecp"
	req_tech = list("combat" = 1)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 30000, MAT_PLASMA = 10000, MAT_URANIUM = 10000, MAT_GOLD = 10000, MAT_DIAMOND = 5000)
	build_path = /obj/item/weapon/stock_parts/cell/ammo/ecp
	category = list("Weapons")
