////////////////INTERNAL MAGAZINES//////////////////////

/obj/item/ammo_box/magazine/internal
	desc = "Oh god, this shouldn't be here"

//internals magazines are accessible, so replace spent ammo if full when trying to put a live one in
/obj/item/ammo_box/magazine/internal/give_round(obj/item/ammo_casing/R)
	return ..(R,1)



// Revolver internal mags
/obj/item/ammo_box/magazine/internal/cylinder
	name = "revolver cylinder"
	ammo_type = /obj/item/ammo_casing/m44
	caliber = "357"
	max_ammo = 7

/obj/item/ammo_box/magazine/internal/cylinder/ammo_count(countempties = 1)
	var/boolets = 0
	for(var/obj/item/ammo_casing/bullet in stored_ammo)
		if(bullet && (bullet.BB || countempties))
			boolets++

	return boolets

/obj/item/ammo_box/magazine/internal/cylinder/get_round(keep = 0)
	rotate()

	var/b = stored_ammo[1]
	if(!keep)
		stored_ammo[1] = null

	return b

/obj/item/ammo_box/magazine/internal/cylinder/proc/rotate()
	var/b = stored_ammo[1]
	stored_ammo.Cut(1,2)
	stored_ammo.Insert(0, b)

/obj/item/ammo_box/magazine/internal/cylinder/proc/spin()
	for(var/i in 1 to rand(0, max_ammo*2))
		rotate()


/obj/item/ammo_box/magazine/internal/cylinder/give_round(obj/item/ammo_casing/R, replace_spent = 0)
	if(!R || (caliber && R.caliber != caliber) || (!caliber && R.type != ammo_type))
		return 0

	for(var/i in 1 to stored_ammo.len)
		var/obj/item/ammo_casing/bullet = stored_ammo[i]
		if(!bullet || !bullet.BB) // found a spent ammo
			stored_ammo[i] = R
			R.loc = src

			if(bullet)
				bullet.loc = get_turf(src.loc)
			return 1

	return 0

/obj/item/ammo_box/magazine/internal/cylinder/rev38
	name = "d-tiv revolver cylinder"
	ammo_type = /obj/item/ammo_casing/c357/lowpower
	caliber = "38"
	max_ammo = 6

/obj/item/ammo_box/magazine/internal/cylinder/rev4570
	name = "d-tiv revolver cylinder"
	ammo_type = /obj/item/ammo_casing/c4570
	caliber = "4570"
	max_ammo = 6

/obj/item/ammo_box/magazine/internal/cylinder/rev44
	name = "d-tiv revolver cylinder"
	ammo_type = /obj/item/ammo_casing/m44
	caliber = "44"
	max_ammo = 6

/obj/item/ammo_box/magazine/internal/cylinder/rev556
	name = "d-tiv revolver cylinder"
	ammo_type = /obj/item/ammo_casing/a556
	caliber = "a556"
	max_ammo = 5

/obj/item/ammo_box/magazine/internal/cylinder/grenademulti
	name = "grenade launcher internal magazine"
	ammo_type = /obj/item/ammo_casing/a40mm
	caliber = "40mm"
	max_ammo = 6

/obj/item/ammo_box/magazine/internal/cylinder/revneedler
	name = "d-tiv needler cylinder"
	ammo_type = /obj/item/ammo_casing/caseless/needler
	caliber = "needle"
	max_ammo = 10

/obj/item/ammo_box/magazine/internal/cylinder/rev6250
	name = "d-tiv 6250 cylinder"
	ammo_type = /obj/item/ammo_casing/c10mm
	caliber = "10mm"
	max_ammo = 12


// Shotgun internal mags
/obj/item/ammo_box/magazine/internal/shot
	name = "shotgun internal magazine"
	ammo_type = /obj/item/ammo_casing/shotgun/buckshot
	caliber = "shotgun"
	max_ammo = 5
	multiload = 0

/obj/item/ammo_box/magazine/internal/shot/ammo_count(countempties = 1)
	if (!countempties)
		var/boolets = 0
		for(var/obj/item/ammo_casing/bullet in stored_ammo)
			if(bullet.BB)
				boolets++
		return boolets
	else
		return ..()

/obj/item/ammo_box/magazine/internal/shot/com
	name = "combat shotgun internal magazine"
	ammo_type = /obj/item/ammo_casing/shotgun/buckshot
	max_ammo = 6

/obj/item/ammo_box/magazine/internal/shot/dual
	name = "double-barrel shotgun internal magazine"
	max_ammo = 2

/obj/item/ammo_box/magazine/internal/shot/mad
	name = "mad sawn-off internal magazine"
	ammo_type = /obj/item/ammo_casing/shotgun/buckshot
	max_ammo = 2

/obj/item/ammo_box/magazine/internal/shot/improvised
	name = "improvised shotgun internal magazine"
	ammo_type = /obj/item/ammo_casing/shotgun/buckshot
	max_ammo = 1

/obj/item/ammo_box/magazine/internal/shot/riot
	name = "riot shotgun internal magazine"
	ammo_type = /obj/item/ammo_casing/shotgun/buckshot
	max_ammo = 6

/obj/item/ammo_box/magazine/internal/shot/grenade
	name = "china lake internal magazine"
	max_ammo = 3
	ammo_type = /obj/item/ammo_casing/a40mm
	caliber = "40mm"

/obj/item/ammo_box/magazine/internal/shot/improvised10mm
	name = "improvised internal magazine"
	max_ammo = 1
	ammo_type = /obj/item/ammo_casing/c10mm
	caliber = "10mm"




/obj/item/ammo_box/magazine/internal/grenadelauncher
	name = "grenade launcher internal magazine"
	ammo_type = /obj/item/ammo_casing/a40mm
	caliber = "40mm"
	max_ammo = 1

/obj/item/ammo_box/magazine/internal/speargun
	name = "speargun internal magazine"
	ammo_type = /obj/item/ammo_casing/caseless/magspear
	caliber = "speargun"
	max_ammo = 1

/obj/item/ammo_box/magazine/internal/rus357
	name = "russian revolver cylinder"
	ammo_type = /obj/item/ammo_casing/m44
	caliber = "357"
	max_ammo = 6
	multiload = 0

/obj/item/ammo_box/magazine/internal/rus357/New()
	stored_ammo += new ammo_type(src)

/obj/item/ammo_box/magazine/internal/boltaction
	name = "bolt action rifle internal magazine"
	desc = "Oh god, this shouldn't be here"
	ammo_type = /obj/item/ammo_casing/a762
	caliber = "a762"
	max_ammo = 5
	multiload = 1

/obj/item/ammo_box/magazine/internal/shot/toy
	ammo_type = /obj/item/ammo_casing/caseless/foam_dart
	caliber = "foam_force"
	max_ammo = 4

/obj/item/ammo_box/magazine/internal/shot/toy/crossbow
	max_ammo = 5

///////////EXTERNAL MAGAZINES////////////////

/obj/item/ammo_box/magazine/m10mm
	name = "pistol magazine (10mm)"
	icon_state = "9x19p"
	origin_tech = "combat=2"
	ammo_type = /obj/item/ammo_casing/c10mm
	caliber = "10mm"
	max_ammo = 8
	multiple_sprites = 2

/obj/item/ammo_box/magazine/m10mm_adv
	name = "pistol magazine (10mm) advanced"
	icon_state = "9x19p"
	origin_tech = "combat=3"
	ammo_type = /obj/item/ammo_casing/c10mm
	caliber = "10mm"
	max_ammo = 12
	multiple_sprites = 2

/obj/item/ammo_box/magazine/m10mm_auto
	name = "smg magazine (10mm)"
	icon_state = "smg9mm"
	origin_tech = "combat=3"
	ammo_type = /obj/item/ammo_casing/c10mm
	caliber = "10mm"
	max_ammo = 24
	multiple_sprites = 2

/obj/item/ammo_box/magazine/m45
	name = "handgun magazine (.45)"
	icon_state = "45-8"
	ammo_type = /obj/item/ammo_casing/c45
	caliber = ".45"
	max_ammo = 8

/obj/item/ammo_box/magazine/m45/update_icon()
	..()
	icon_state = "45-[ammo_count() ? "8" : "0"]"

/obj/item/ammo_box/magazine/wt550m9
	name = "wt550 magazine (4.6x30mm)"
	icon_state = "46x30mmt-20"
	ammo_type = /obj/item/ammo_casing/c46x30mm
	caliber = "4x6x30mm"
	max_ammo = 20

/obj/item/ammo_box/magazine/wt550m9/update_icon()
	..()
	icon_state = "46x30mmt-[round(ammo_count(),4)]"

/obj/item/ammo_box/magazine/wt550m9/wtap
	name = "wt550 magazine (Armour Piercing 4.6x30mm)"
	ammo_type = /obj/item/ammo_casing/c46x30mmap

/obj/item/ammo_box/magazine/wt550m9/wttx
	name = "wt550 magazine (Toxin Tipped 4.6x30mm)"
	ammo_type = /obj/item/ammo_casing/c46x30mmtox

/obj/item/ammo_box/magazine/wt550m9/wtic
	name = "wt550 magazine (Incindiary 4.6x30mm)"
	ammo_type = /obj/item/ammo_casing/c46x30mminc

/obj/item/ammo_box/magazine/uzim9mm
	name = "uzi magazine (9mm)"
	icon_state = "uzi9mm-32"
	ammo_type = /obj/item/ammo_casing/c9mm
	caliber = "9mm"
	max_ammo = 32

/obj/item/ammo_box/magazine/uzim9mm/update_icon()
	..()
	icon_state = "uzi9mm-[round(ammo_count(),4)]"

/obj/item/ammo_box/magazine/smgm9mm
	name = "SMG magazine (9mm)"
	icon_state = "smg9mm-42"
	ammo_type = /obj/item/ammo_casing/c9mm
	caliber = "9mm"
	max_ammo = 42

/obj/item/ammo_box/magazine/smgm9mm/ap
	name = "SMG magazine (Armour Piercing 9mm)"
	ammo_type = /obj/item/ammo_casing/c9mmap

/obj/item/ammo_box/magazine/smgm9mm/toxin
	name = "SMG magazine (Toxin Tipped 9mm)"
	ammo_type = /obj/item/ammo_casing/c9mmtox

/obj/item/ammo_box/magazine/smgm9mm/fire
	name = "SMG Magazine (Incindiary 9mm)"
	ammo_type = /obj/item/ammo_casing/c9mminc

/obj/item/ammo_box/magazine/smgm45
	name = "SMG magazine (.45)"
	icon_state = "c20r45-20"
	origin_tech = "combat=2"
	ammo_type = /obj/item/ammo_casing/c45
	caliber = ".45"
	max_ammo = 20

/obj/item/ammo_box/magazine/smgm45/update_icon()
	..()
	icon_state = "c20r45-[round(ammo_count(),2)]"

/obj/item/ammo_box/magazine/tommygunm45
	name = "drum magazine (.45)"
	icon_state = "drum45"
	ammo_type = /obj/item/ammo_casing/c45
	caliber = ".45"
	max_ammo = 50

/obj/item/ammo_box/magazine/stick45
	name = "stick magazine (.45)"
	icon_state = "grease"
	ammo_type = /obj/item/ammo_casing/c45
	caliber = ".45"
	max_ammo = 30
	multiple_sprites = 1

/obj/item/ammo_box/magazine/m50
	name = "handgun magazine (.50ae)"
	icon_state = "50ae"
	origin_tech = "combat=2"
	ammo_type = /obj/item/ammo_casing/a50
	caliber = ".50"
	max_ammo = 7
	multiple_sprites = 1

/obj/item/ammo_box/magazine/m75
	name = "specialized magazine (.75)"
	icon_state = "75"
	ammo_type = /obj/item/ammo_casing/caseless/a75
	caliber = "75"
	multiple_sprites = 2
	max_ammo = 8

/obj/item/ammo_box/magazine/m556
	name = "5.56 magazine extended (5.56x45mm)"
	icon_state = "5.56m"
	origin_tech = "combat=5;syndicate=1"
	ammo_type = /obj/item/ammo_casing/a556
	caliber = "a556"
	max_ammo = 30
	multiple_sprites = 2

/obj/item/ammo_box/magazine/m556/r20
	name = "5.56 magazine (5.56x45mm)"
	icon_state = "75"
	origin_tech = "combat=3"
	ammo_type = /obj/item/ammo_casing/a556
	caliber = "a556"
	max_ammo = 20
	multiple_sprites = 2

/obj/item/ammo_box/magazine/d12g
	name = "shotgun drum magazine"
	icon_state = "riotmag"
	ammo_type = /obj/item/ammo_casing/shotgun/buckshot
	origin_tech = "combat=3;syndicate=1"
	caliber = "shotgun"
	max_ammo = 12
	multiple_sprites = 2

/obj/item/ammo_box/magazine/m2mm
	name = "2mm electromagnetic magazine"
	icon_state = "2mm"
	ammo_type = /obj/item/ammo_casing/c2mm
	origin_tech = "combat=3;syndicate=1"
	caliber = "2mm"
	max_ammo = 20
	multiple_sprites = 2

/obj/item/ammo_box/magazine/m12g
	name = "shotgun magazine (12g slugs)"
	icon_state = "m12gb"
	ammo_type = /obj/item/ammo_casing/shotgun
	origin_tech = "combat=3;syndicate=1"
	caliber = "shotgun"
	max_ammo = 8

/obj/item/ammo_box/magazine/m12g/update_icon()
	..()
	icon_state = "[initial(icon_state)]-[Ceiling(ammo_count(0)/8)*8]"

/obj/item/ammo_box/magazine/m12g/buckshot
	name = "shotgun magazine (12g buckshot slugs)"
	icon_state = "m12gb"
	ammo_type = /obj/item/ammo_casing/shotgun/buckshot

/obj/item/ammo_box/magazine/m12g/stun
	name = "shotgun magazine (12g taser slugs)"
	icon_state = "m12gs"
	ammo_type = /obj/item/ammo_casing/shotgun/stunslug

/obj/item/ammo_box/magazine/m12g/dragon
	name = "shotgun magazine (12g dragon's breath)"
	icon_state = "m12gf"
	ammo_type = /obj/item/ammo_casing/shotgun/incendiary/dragonsbreath

/obj/item/ammo_box/magazine/m12g/bioterror
	name = "shotgun magazine (12g bioterror)"
	icon_state = "m12gt"
	ammo_type = /obj/item/ammo_casing/shotgun/dart/bioterror

/obj/item/ammo_box/magazine/toy
	name = "foam force META magazine"
	ammo_type = /obj/item/ammo_casing/caseless/foam_dart
	caliber = "foam_force"

/obj/item/ammo_box/magazine/toy/smg
	name = "foam force SMG magazine"
	icon_state = "smg9mm-20"
	max_ammo = 20

/obj/item/ammo_box/magazine/toy/smg/update_icon()
	..()
	icon_state = "smg9mm-[round(ammo_count(),5)]"

/obj/item/ammo_box/magazine/toy/smg/riot
	ammo_type = /obj/item/ammo_casing/caseless/foam_dart/riot

/obj/item/ammo_box/magazine/toy/pistol
	name = "foam force pistol magazine"
	icon_state = "9x19p"
	max_ammo = 8
	multiple_sprites = 2

/obj/item/ammo_box/magazine/toy/pistol/riot
	ammo_type = /obj/item/ammo_casing/caseless/foam_dart/riot

/obj/item/ammo_box/magazine/toy/smgm45
	name = "donksoft SMG magazine"
	caliber = "foam_force"
	ammo_type = /obj/item/ammo_casing/caseless/foam_dart/riot
	max_ammo = 20

/obj/item/ammo_box/magazine/toy/smgm45/update_icon()
	..()
	icon_state = "c20r45-[round(ammo_count(),2)]"

/obj/item/ammo_box/magazine/toy/m762
	name = "donksoft box magazine"
	caliber = "foam_force"
	ammo_type = /obj/item/ammo_casing/caseless/foam_dart/riot
	max_ammo = 50

/obj/item/ammo_box/magazine/toy/m762/update_icon()
	..()
	icon_state = "a762-[round(ammo_count(),10)]"

/obj/item/ammo_box/magazine/d22
	name = "drum magazine .22"
	icon_state = "drum22"
	caliber = "22"
	ammo_type = /obj/item/ammo_casing/c22
	max_ammo = 180
	multiple_sprites = 2

/obj/item/ammo_box/magazine/m22
	name = "magazine .22"
	icon_state = "22mag"
	caliber = "22"
	ammo_type = /obj/item/ammo_casing/c22
	max_ammo = 16
	multiple_sprites = 2

/obj/item/ammo_box/magazine/m9mm
	name = "pistol magazine 9mm"
	icon_state = "9x19p"
	origin_tech = "combat=3"
	ammo_type = /obj/item/ammo_casing/c9mm
	caliber = "9mm"
	max_ammo = 13
	multiple_sprites = 2
