/datum/outfit/space
	name = "Standard Space Gear"

	uniform = /obj/item/clothing/under/color/grey
	shoes = /obj/item/clothing/shoes/sneakers/black
	suit = /obj/item/clothing/suit/space
	head = /obj/item/clothing/head/helmet/space
	back = /obj/item/weapon/tank/jetpack/oxygen
	mask = /obj/item/clothing/mask/breath

/datum/outfit/space/post_equip(mob/living/carbon/human/H)
	var/obj/item/weapon/tank/jetpack/J = H.back
	J.toggle()
	J.Topic(null, list("stat" = 1))


/datum/outfit/tournament

/datum/outfit/tournament/
	name = "tournament standard red"

	uniform = /obj/item/clothing/under/color/red
	shoes = /obj/item/clothing/shoes/sneakers/black
	suit = /obj/item/clothing/suit/armor/vest
	head = /obj/item/clothing/head/helmet/thunderdome
	r_hand = /obj/item/weapon/gun/energy/pulse/destroyer
	l_hand = /obj/item/weapon/kitchen/knife
	r_pocket = /obj/item/weapon/grenade/smokebomb


/datum/outfit/tournament/red
	name = "tournament standard green"

	uniform = /obj/item/clothing/under/color/green

/datum/outfit/tournament/gangster
	name = "tournament gangster"
	uniform = /obj/item/clothing/under/rank/det
	suit = /obj/item/clothing/suit/det_suit
	glasses = /obj/item/clothing/glasses/thermal/monocle
	head = /obj/item/clothing/head/det_hat
	r_hand = /obj/item/weapon/gun/projectile
	l_hand = null
	r_pocket = /obj/item/ammo_box/c10mm

/datum/outfit/tournament/janitor
	name = "tournament janitor"

	uniform = /obj/item/clothing/under/rank/janitor
	back = /obj/item/weapon/storage/backpack
	suit = null
	head = null
	r_hand = /obj/item/weapon/mop
	l_hand = /obj/item/weapon/reagent_containers/glass/bucket
	r_pocket = /obj/item/weapon/grenade/chem_grenade/cleaner
	l_pocket = /obj/item/weapon/grenade/chem_grenade/cleaner
	backpack_contents = list(/obj/item/stack/tile/plasteel=6)

/datum/outfit/tournament/janitor/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	if(visualsOnly)
		return

	var/obj/item/weapon/reagent_containers/glass/bucket/bucket = H.l_hand
	bucket.reagents.add_reagent("water",70)

/datum/outfit/laser_tag
	name = "Laser Tag Red"

	uniform = /obj/item/clothing/under/color/red
	shoes = /obj/item/clothing/shoes/sneakers/red
	head = /obj/item/clothing/head/helmet/redtaghelm
	gloves = /obj/item/clothing/gloves/color/red
	ears = /obj/item/device/radio/headset
	suit = /obj/item/clothing/suit/redtag
	back = /obj/item/weapon/storage/backpack
	suit_store = /obj/item/weapon/gun/energy/laser/redtag
	backpack_contents = list(/obj/item/weapon/storage/box=1)

/datum/outfit/laser_tag/blue
	name = "Laser Tag Blue"
	uniform = /obj/item/clothing/under/color/blue
	shoes = /obj/item/clothing/shoes/sneakers/blue
	head = /obj/item/clothing/head/helmet/bluetaghelm
	gloves = /obj/item/clothing/gloves/color/blue
	suit = /obj/item/clothing/suit/bluetag
	suit_store = /obj/item/weapon/gun/energy/laser/bluetag

/datum/outfit/pirate
	name = "Pirate"

	uniform = /obj/item/clothing/under/pirate
	shoes = /obj/item/clothing/shoes/sneakers/brown
	head = /obj/item/clothing/head/bandana
	glasses = /obj/item/clothing/glasses/eyepatch
	r_hand = /obj/item/weapon/melee/energy/sword/pirate

/datum/outfit/pirate/space
	name = "Space Pirate"

	suit = /obj/item/clothing/suit/space/pirate
	head = /obj/item/clothing/head/helmet/space/pirate

/datum/outfit/tunnel_clown
	name = "Tunnel Clown"

	uniform = /obj/item/clothing/under/rank/clown
	shoes = /obj/item/clothing/shoes/clown_shoes
	gloves = /obj/item/clothing/gloves/color/black
	mask = /obj/item/clothing/mask/gas/clown_hat
	ears = /obj/item/device/radio/headset
	glasses = /obj/item/clothing/glasses/thermal/monocle
	suit = /obj/item/clothing/suit/hooded/chaplain_hoodie
	l_pocket = /obj/item/weapon/reagent_containers/food/snacks/grown/banana
	r_pocket = /obj/item/weapon/bikehorn
	id = /obj/item/weapon/card/id
	r_hand = /obj/item/weapon/twohanded/fireaxe

/datum/outfit/tunnel_clown/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	if(visualsOnly)
		return

	var/obj/item/weapon/card/id/W = H.wear_id
	W.access = get_all_accesses()
	W.assignment = "Tunnel Clown!"
	W.registered_name = H.real_name
	W.update_label(H.real_name)

/datum/outfit/psycho
	name = "Masked Killer"

	uniform = /obj/item/clothing/under/overalls
	shoes = /obj/item/clothing/shoes/sneakers/white
	gloves = /obj/item/clothing/gloves/color/latex
	mask = /obj/item/clothing/mask/surgical
	head = /obj/item/clothing/head/welding
	ears = /obj/item/device/radio/headset
	glasses = /obj/item/clothing/glasses/thermal/monocle
	suit = /obj/item/clothing/suit/apron
	l_pocket = /obj/item/weapon/kitchen/knife
	r_pocket = /obj/item/weapon/scalpel
	r_hand = /obj/item/weapon/twohanded/fireaxe

/datum/outfit/psycho/post_equip(mob/living/carbon/human/H)
	for(var/obj/item/carried_item in H.contents)
		if(!istype(carried_item, /obj/item/weapon/implant))//If it's not an implant.
			carried_item.add_blood(H)//Oh yes, there will be blood...
	H.regenerate_icons()

/datum/outfit/assassin
	name = "Assassin"

	uniform = /obj/item/clothing/under/suit_jacket
	shoes = /obj/item/clothing/shoes/sneakers/black
	gloves = /obj/item/clothing/gloves/color/black
	ears = /obj/item/device/radio/headset
	glasses = /obj/item/clothing/glasses/sunglasses
	l_pocket = /obj/item/weapon/melee/energy/sword/saber
	l_hand = /obj/item/weapon/storage/secure/briefcase
	id = /obj/item/weapon/card/id/syndicate
	belt = /obj/item/clothing/gloves/pda/heads

/datum/outfit/assassin/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	var/obj/item/clothing/under/U = H.w_uniform
	U.attachTie(new /obj/item/clothing/tie/waistcoat(H))

	if(visualsOnly)
		return

	//Could use a type
	var/obj/item/weapon/storage/secure/briefcase/sec_briefcase = H.l_hand
	for(var/obj/item/briefcase_item in sec_briefcase)
		qdel(briefcase_item)
	for(var/i=3, i>0, i--)
		sec_briefcase.handle_item_insertion(new /obj/item/stack/spacecash/random/high,1)
	sec_briefcase.handle_item_insertion(new /obj/item/weapon/gun/energy/kinetic_accelerator/crossbow,1)
	sec_briefcase.handle_item_insertion(new /obj/item/weapon/gun/projectile/revolver/mateba,1)
	sec_briefcase.handle_item_insertion(new /obj/item/ammo_box/m44,1)
	sec_briefcase.handle_item_insertion(new /obj/item/weapon/c4,1)

	var/obj/item/clothing/gloves/pda/heads/pda = H.belt
	pda.owner = H.real_name
	pda.ownjob = "Reaper"
	pda.update_label()

	var/obj/item/weapon/card/id/syndicate/W = H.wear_id
	W.access = get_all_accesses()
	W.assignment = "Reaper"
	W.registered_name = H.real_name
	W.update_label(H.real_name)

/datum/outfit/centcom_commander
	name = "Centcom Commander"

	uniform = /obj/item/clothing/under/rank/centcom_commander
	suit = /obj/item/clothing/suit/armor/bulletproof
	shoes = /obj/item/clothing/shoes/combat/swat
	gloves = /obj/item/clothing/gloves/combat
	ears = /obj/item/device/radio/headset/headset_cent/commander
	glasses = /obj/item/clothing/glasses/eyepatch
	mask = /obj/item/clothing/mask/cigarette/cigar/cohiba
	head = /obj/item/clothing/head/centhat
	belt = /obj/item/weapon/gun/projectile/revolver/mateba
	r_pocket = /obj/item/weapon/lighter
	l_pocket = /obj/item/ammo_box/m44
	back = /obj/item/weapon/storage/backpack/satchel
	id = /obj/item/weapon/card/id

/datum/outfit/centcom_commander/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	if(visualsOnly)
		return

	var/obj/item/weapon/card/id/W = H.wear_id
	W.icon_state = "centcom"
	W.access = get_all_accesses()
	W.access += get_centcom_access("Centcom Commander")
	W.assignment = "Centcom Commander"
	W.registered_name = H.real_name
	W.update_label()

/datum/outfit/spec_ops
	name = "Special Ops Officer"

	uniform = /obj/item/clothing/under/syndicate
	suit = /obj/item/clothing/suit/space/officer
	shoes = /obj/item/clothing/shoes/combat/swat
	gloves = /obj/item/clothing/gloves/combat
	glasses = /obj/item/clothing/glasses/thermal/eyepatch
	ears = /obj/item/device/radio/headset/headset_cent/commander
	mask = /obj/item/clothing/mask/cigarette/cigar/havana
	head = /obj/item/clothing/head/helmet/space/beret
	belt = /obj/item/weapon/gun/energy/pulse/pistol/m1911
	r_pocket = /obj/item/weapon/lighter
	back = /obj/item/weapon/storage/backpack/satchel
	id = /obj/item/weapon/card/id

/datum/outfit/spec_ops/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	if(visualsOnly)
		return

	var/obj/item/weapon/card/id/W = H.wear_id
	W.icon_state = "centcom"
	W.access = get_all_accesses()
	W.access += get_centcom_access("Special Ops Officer")
	W.assignment = "Special Ops Officer"
	W.registered_name = H.real_name
	W.update_label()

	var/obj/item/device/radio/headset/R = H.ears
	R.set_frequency(CENTCOM_FREQ)
	R.freqlock = 1

/datum/outfit/wizard
	name = "Blue Wizard"

	uniform = /obj/item/clothing/under/color/lightpurple
	suit = /obj/item/clothing/suit/wizrobe
	shoes = /obj/item/clothing/shoes/sandal
	ears = /obj/item/device/radio/headset
	head = /obj/item/clothing/head/wizard
	r_pocket = /obj/item/weapon/teleportation_scroll
	r_hand = /obj/item/weapon/spellbook
	l_hand = /obj/item/weapon/staff
	back = /obj/item/weapon/storage/backpack
	backpack_contents = list(/obj/item/weapon/storage/box=1)

/datum/outfit/wizard/red
	name = "Red Wizard"

	suit = /obj/item/clothing/suit/wizrobe/red
	head = /obj/item/clothing/head/wizard/red

/datum/outfit/wizard/weeb
	name = "Marisa Wizard"

	suit = /obj/item/clothing/suit/wizrobe/marisa
	shoes = /obj/item/clothing/shoes/sandal/marisa
	head = /obj/item/clothing/head/wizard/marisa

/datum/outfit/soviet
	name = "Soviet Admiral"

	uniform = /obj/item/clothing/under/soviet
	head = /obj/item/clothing/head/hgpiratecap
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/combat
	ears = /obj/item/device/radio/headset/headset_cent
	glasses = /obj/item/clothing/glasses/thermal/eyepatch
	suit = /obj/item/clothing/suit/hgpirate
	back = /obj/item/weapon/storage/backpack/satchel
	belt = /obj/item/weapon/gun/projectile/revolver/mateba

	id = /obj/item/weapon/card/id

/datum/outfit/soviet/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	if(visualsOnly)
		return

	var/obj/item/weapon/card/id/W = H.wear_id
	W.icon_state = "centcom"
	W.access = get_all_accesses()
	W.access += get_centcom_access("Admiral")
	W.assignment = "Admiral"
	W.registered_name = H.real_name
	W.update_label()

/datum/outfit/mobster
	name = "Mobster"

	uniform = /obj/item/clothing/under/suit_jacket/really_black
	head = /obj/item/clothing/head/fedora
	shoes = /obj/item/clothing/shoes/laceup
	gloves = /obj/item/clothing/gloves/color/black
	ears = /obj/item/device/radio/headset
	glasses = /obj/item/clothing/glasses/sunglasses
	r_hand = /obj/item/weapon/gun/projectile/automatic/tommygun
	id = /obj/item/weapon/card/id

/datum/outfit/mobster/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	if(visualsOnly)
		return

	var/obj/item/weapon/card/id/W = H.wear_id
	W.assignment = "Assistant"
	W.registered_name = H.real_name
	W.update_label()

/datum/outfit/plasmaman
	name = "Plasmaman"

	head = /obj/item/clothing/head/helmet/space/plasmaman
	uniform = /obj/item/clothing/under/plasmaman
	r_hand= /obj/item/weapon/tank/internals/plasmaman/belt/full
	mask = /obj/item/clothing/mask/breath

/datum/outfit/death_commando
	name = "Death Commando"

	uniform = /obj/item/clothing/under/color/green
	suit = /obj/item/clothing/suit/space/hardsuit/deathsquad
	shoes = /obj/item/clothing/shoes/combat/swat
	gloves = /obj/item/clothing/gloves/combat
	mask = /obj/item/clothing/mask/gas/sechailer/swat
	glasses = /obj/item/clothing/glasses/hud/toggle/thermal
	back = /obj/item/weapon/storage/backpack/security
	l_pocket = /obj/item/weapon/melee/energy/sword/saber
	r_pocket = /obj/item/weapon/shield/energy
	suit_store = /obj/item/weapon/tank/internals/emergency_oxygen
	belt = /obj/item/weapon/gun/projectile/revolver/mateba
	r_hand = /obj/item/weapon/gun/energy/pulse/loyalpin
	id = /obj/item/weapon/card/id
	ears = /obj/item/device/radio/headset/headset_cent/alt

	backpack_contents = list(/obj/item/weapon/storage/box=1,\
		/obj/item/ammo_box/m44=1,\
		/obj/item/weapon/storage/firstaid/regular=1,\
		/obj/item/weapon/storage/box/flashbangs=1,\
		/obj/item/device/flashlight=1,\
		/obj/item/weapon/c4=1)

/datum/outfit/death_commando/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	if(visualsOnly)
		return

	var/obj/item/device/radio/R = H.ears
	R.set_frequency(CENTCOM_FREQ)
	R.freqlock = 1

	var/obj/item/weapon/implant/loyalty/L = new/obj/item/weapon/implant/loyalty(H)//Here you go Deuryn
	L.imp_in = H
	L.implanted = 1
	H.sec_hud_set_implants()


	var/obj/item/weapon/card/id/W = H.wear_id
	W.icon_state = "centcom"
	W.access = get_all_accesses()//They get full station access.
	W.access += get_centcom_access("Death Commando")//Let's add their alloted Centcom access.
	W.assignment = "Death Commando"
	W.registered_name = H.real_name
	W.update_label(W.registered_name, W.assignment)

/datum/outfit/death_commando/officer
	name = "Death Commando Officer"
	head = /obj/item/clothing/head/helmet/space/beret

/datum/outfit/chrono_agent
	name = "Timeline Eradication Agent"
	uniform = /obj/item/clothing/under/color/white
	suit = /obj/item/clothing/suit/space/chronos
	back = /obj/item/weapon/chrono_eraser
	head = /obj/item/clothing/head/helmet/space/chronos
	mask = /obj/item/clothing/mask/breath
	suit_store = /obj/item/weapon/tank/internals/oxygen

/datum/outfit/mad_max
	name = "Mad Max"
	uniform = /obj/item/clothing/under/pants/black
	shoes = /obj/item/clothing/shoes/sneakers/black
	gloves = /obj/item/clothing/gloves/fingerless
	suit = /obj/item/clothing/suit/f13/mfp
	suit_store = /obj/item/weapon/gun/projectile/revolver/max_sawn_off
	l_pocket = /obj/item/weapon/switchblade
	back = /obj/item/weapon/storage/backpack/satchel
	backpack_contents = list(/obj/item/weapon/storage/box/lethalshot=1)

/datum/outfit/desert_ranger
	name = "Desert Ranger"
	id = /obj/item/weapon/card/id/ncr/ranger
	uniform = /obj/item/clothing/under/f13/cowboyg
	shoes = /obj/item/clothing/shoes/combat/swat
	gloves = /obj/item/clothing/gloves/combat
	ears = /obj/item/device/radio/headset/heads/hos/alt
	suit = /obj/item/clothing/suit/armor/f13/rangercombat/desert
	head = /obj/item/clothing/head/helmet/f13/rangercombat/desert
	r_hand = /obj/item/weapon/gun/projectile/revolver/max_sawn_off
	suit_store = /obj/item/weapon/gun/projectile/automatic/assault_rifle
	l_pocket = /obj/item/ammo_box/c4570
	r_pocket = /obj/item/ammo_box/c4570
	glasses = /obj/item/clothing/glasses/night
	belt = /obj/item/weapon/storage/belt/military
	back = /obj/item/weapon/storage/backpack/satchel
	backpack_contents = list(/obj/item/weapon/storage/box/lethalshot = 2, \
		/obj/item/ammo_box/c4570=2, \
		/obj/item/ammo_box/magazine/m556=3, \
		/obj/item/weapon/gun/projectile/revolver/sequoia/scoped=1, \
		/obj/item/weapon/kitchen/knife/combat=1, \
		/obj/item/weapon/storage/firstaid/tactical=1)
	mask = /obj/item/clothing/mask/gas/sechailer

/datum/outfit/desert_ranger/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	H.faction = list("Ranger", "Desert Rangers")
	if(visualsOnly)
		return

	var/obj/item/weapon/card/id/ncr/ranger/W = H.wear_id
	W.registered_name = H.real_name
	W.assignment = "Desert Ranger"
	W.update_label(W.registered_name, W.assignment)

/datum/outfit/chief_ranger
	name = "Chief Ranger"
	id = /obj/item/weapon/card/id/ncr/ranger
	uniform = /obj/item/clothing/under/f13/cowboyg
	shoes = /obj/item/clothing/shoes/combat/swat
	gloves = /obj/item/clothing/gloves/combat
	ears = /obj/item/device/radio/headset/heads/hos/alt
	suit = /obj/item/clothing/suit/armor/f13/rangercombat/eliteriot
	r_hand = /obj/item/weapon/gun/projectile/revolver/sequoia
	suit_store = /obj/item/weapon/gun/projectile/automatic/shotgun/pancor
	l_pocket = /obj/item/ammo_box/c4570
	r_pocket = /obj/item/weapon/lighter/engraved
	belt = /obj/item/weapon/storage/belt/ncr
	back = /obj/item/weapon/storage/backpack/satchel
	backpack_contents = list(/obj/item/ammo_box/magazine/d12g = 2, \
		/obj/item/ammo_box/c4570=2, \
		/obj/item/weapon/kitchen/knife/combat=1, \
		/obj/item/weapon/storage/firstaid/tactical=1,\
		/obj/item/clothing/mask/gas/syndicate=1, \
		/obj/item/clothing/head/helmet/f13/rangercombat/eliteriot=1, \
		/obj/item/clothing/glasses/night=1)
	mask = /obj/item/clothing/mask/cigarette/cigar/havana

/datum/outfit/chief_ranger/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	H.faction = list("NCR","Ranger")
	if(visualsOnly)
		return

	var/obj/item/weapon/card/id/ncr/ranger/W = H.wear_id
	W.registered_name = H.real_name
	W.assignment = "NCR Chief Ranger"
	W.update_label(W.registered_name, W.assignment)

/datum/outfit/bos_paladin
	name = "BoS Paladin"
	id = /obj/item/weapon/card/id/bos
	uniform = /obj/item/clothing/under/f13/recon
	shoes = /obj/item/clothing/shoes/combat/swat
	gloves = /obj/item/clothing/gloves/combat
	ears = /obj/item/device/radio/headset/headset_bos
	suit = /obj/item/clothing/suit/armor/f13/power_armor/t51b
	head = /obj/item/clothing/head/helmet/power_armor/f13/t51b
	suit_store = /obj/item/weapon/gun/energy/laser/scatter
	belt = /obj/item/weapon/storage/belt/military
	back = /obj/item/weapon/storage/backpack/satchel
	glasses = /obj/item/clothing/glasses/night
	backpack_contents = list(/obj/item/weapon/stock_parts/cell/ammo/mfc = 2, \
		/obj/item/weapon/kitchen/knife/combat=1, \
		/obj/item/weapon/gun/projectile/revolver/colt6250=1)
	mask = /obj/item/clothing/mask/gas/sechailer/swat

/datum/outfit/bos_paladin/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	H.faction = ("BOS")
	var/datum/martial_art/patraining/F = new/datum/martial_art/patraining(null)
	F.teach(H)
	if(visualsOnly)
		return

/datum/outfit/bos_paladin/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	if(visualsOnly)
		return

	var/obj/item/weapon/card/id/bos/W = H.wear_id
	W.registered_name = H.real_name
	W.assignment = "BoS Paladin"
	W.update_label(W.registered_name, W.assignment)
	W.access = list(73)

/datum/outfit/bos_knight
	name = "BoS Knight"
	id = /obj/item/weapon/card/id/bos
	uniform = /obj/item/clothing/under/f13/recon
	shoes = /obj/item/clothing/shoes/combat/swat
	gloves = /obj/item/clothing/gloves/combat
	ears = /obj/item/device/radio/headset/headset_bos
	suit = /obj/item/clothing/suit/armor/f13/power_armor/t45d
	head = /obj/item/clothing/head/helmet/power_armor/f13/t45d
	suit_store = /obj/item/weapon/gun/energy/laser/scatter
	belt = /obj/item/weapon/storage/belt/military
	back = /obj/item/weapon/storage/backpack/satchel
	glasses = /obj/item/clothing/glasses/night
	backpack_contents = list(/obj/item/weapon/stock_parts/cell/ammo/mfc = 2, \
		/obj/item/weapon/kitchen/knife/combat=1, \
		/obj/item/weapon/gun/projectile/revolver/colt6250=1)
	mask = /obj/item/clothing/mask/gas/sechailer/swat

/datum/outfit/bos_knight/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	H.faction = ("BOS")
	var/datum/martial_art/patraining/F = new/datum/martial_art/patraining(null)
	F.teach(H)
	if(visualsOnly)
		return

/datum/outfit/bos_knight/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	if(visualsOnly)
		return

	var/obj/item/weapon/card/id/bos/W = H.wear_id
	W.registered_name = H.real_name
	W.assignment = "BoS Knight"
	W.update_label(W.registered_name, W.assignment)
	W.access = list(73)

/datum/outfit/bos_initiate
	name = "BoS Initiate"
	id = /obj/item/weapon/card/id/bos
	uniform = /obj/item/clothing/under/f13/recon
	shoes = /obj/item/clothing/shoes/combat/swat
	gloves = /obj/item/clothing/gloves/combat
	ears = /obj/item/device/radio/headset/headset_bos
	suit = /obj/item/clothing/suit/armor/f13/combat/brotherhood
	head = /obj/item/clothing/head/helmet/f13/combat/brotherhood
	suit_store = /obj/item/weapon/gun/projectile/automatic/assault_rifle
	belt = /obj/item/weapon/storage/belt/military
	back = /obj/item/weapon/storage/backpack/satchel
	glasses = /obj/item/clothing/glasses/night
	backpack_contents = list(/obj/item/ammo_box/magazine/m556 = 3, \
		/obj/item/weapon/kitchen/knife/combat=1, \
		/obj/item/weapon/gun/energy/laser/pistol=1)

/datum/outfit/bos_initiate/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	H.faction = ("BOS")
	if(visualsOnly)
		return

	var/obj/item/weapon/card/id/bos/W = H.wear_id
	W.registered_name = H.real_name
	W.assignment = "BoS Initiate"
	W.update_label(W.registered_name, W.assignment)
	W.access = list(73)

/datum/outfit/bos_scribe
	name = "BoS Scribe"
	id = /obj/item/weapon/card/id/bos
	uniform = /obj/item/clothing/under/syndicate
	shoes = /obj/item/clothing/shoes/combat/swat
	gloves = /obj/item/clothing/gloves/combat
	suit = /obj/item/clothing/suit/f13/scribe
	ears = /obj/item/device/radio/headset/headset_bos
	belt = /obj/item/weapon/storage/belt/utility/full
	back = /obj/item/weapon/storage/backpack/satchel
	suit_store = /obj/item/weapon/gun/projectile/automatic/smg10mm
	glasses = /obj/item/clothing/glasses/sunglasses/swat
	backpack_contents = list(/obj/item/weapon/stock_parts/cell/ammo/ec = 2, \
		/obj/item/weapon/kitchen/knife/combat=1, \
		/obj/item/weapon/gun/energy/laser/pistol=1,\
		/obj/item/weapon/reagent_containers/stimpak/super=4)

/datum/outfit/bos_scribe/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	H.faction = ("BOS")
	var/datum/martial_art/patraining/F = new/datum/martial_art/patraining(null)
	F.teach(H)
	if(visualsOnly)
		return

/datum/outfit/bos_scribe/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	if(visualsOnly)
		return

	var/obj/item/weapon/card/id/bos/W = H.wear_id
	W.registered_name = H.real_name
	W.assignment = "BoS Scribe"
	W.update_label(W.registered_name, W.assignment)
	W.access = list(73)
