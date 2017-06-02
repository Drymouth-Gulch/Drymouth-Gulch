/*var/const/MESSIAH			=(1<<50)
var/const/SLIMEMAN			=(1<<51)
var/const/BOSI			=(1<<52)
var/const/BOSK			=(1<<53)
var/const/BOSS			=(1<<54)
var/const/BOSP			=(1<<55)*/
//SourcePony
/datum/job/messiah
	title = "Messiah"
	flag = CULTLEADER
	department_head = list("nobody")
	department_flag = WASTELAND
	faction = "Wasteland"
	status = "Wastelander"
	total_positions = 1
	spawn_positions = 1
	supervisors = "nobody"
	selection_color = "#ffddf0"
	minimal_player_age = 7
	donaters = 1
	donatorrank = 3
	outfit = /datum/outfit/job/messiah

	access = list()
	minimal_access = list()

/datum/outfit/job/messiah
	name = "Messiah"
	id = null
	gloves = /obj/item/clothing/gloves/fingerless
	uniform = /obj/item/clothing/under/rank/chaplain
	shoes = /obj/item/clothing/shoes/combat/swat
	suit = /obj/item/clothing/shoes/jackboots
	backpack_contents = list(/obj/item/ammo_box/a762=2, \
		/obj/item/weapon/reagent_containers/food/drinks/flask/survival=1)
	mask = /obj/item/clothing/mask/gas/syndicate
	r_hand = /obj/item/weapon/gun/projectile/shotgun/boltaction/scoped

//SourcePony
/datum/job/slimeman
	title = "Mercenary"
	flag = MERCENARY
	department_head = list("nobody")
	department_flag = WASTELAND
	faction = "Wasteland"
	status = "Wastelander"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of security"
	selection_color = "#ffddf0"
	minimal_player_age = 7
	donaters = 1
	donatorrank = 3
	outfit = /datum/outfit/job/slimeman

	access = list()
	minimal_access = list()

/datum/outfit/job/slimeman
	name = "Mercenary"
	id = null
	uniform = /obj/item/clothing/under/f13/mercadv
	shoes = /obj/item/clothing/shoes/jackboots
	suit = /obj/item/clothing/suit/armor/fluff/chestplate/mk2
	head = /obj/item/clothing/head/helmet/f13/metalmask/mk2
	glasses = /obj/item/clothing/glasses/sunglasses
	suit_store = /obj/item/weapon/gun/projectile/automatic/assault_rifle
	backpack_contents = list(/obj/item/weapon/reagent_containers/food/drinks/flask/survival=1)

//SEPERATED

/datum/job/bosinitiate
	title = "Initiate"
	flag = INITIATE
	department_head = list("Paladin")
	department_flag = BOS
	faction = "BOS"
	status = "Initiate"
	total_positions = 3
	spawn_positions = 3
	supervisors = "Paladin"
	selection_color = "#ffddf0"
	minimal_player_age = 7
	donaters = 1
	donatorrank = 3
	outfit = /datum/outfit/bos_initiate

	access = list(73)
	minimal_access = list(73)


//SourcePony

/datum/job/bosscribe
	title = "Scribe"
	flag = SCRIBE
	department_head = list("Paladin")
	department_flag = BOS
	faction = "BOS"
	status = "Scribe"
	total_positions = 1
	spawn_positions = 1
	supervisors = "Paladin"
	selection_color = "#ffddf0"
	minimal_player_age = 7
	donaters = 1
	donatorrank = 3
	outfit = /datum/outfit/bos_scribe

	access = list(73)
	minimal_access = list(73)

/datum/job/bosknight
	title = "Knight"
	flag = KNIGHT
	department_head = list("Paladin")
	department_flag = BOS
	faction = "BOS"
	status = "Knight"
	total_positions = 1
	spawn_positions = 1
	supervisors = "Paladin"
	selection_color = "#ffddf0"
	minimal_player_age = 7
	donaters = 1
	donatorrank = 4
	outfit = /datum/outfit/bos_knight

	access = list(73)
	minimal_access = list(73)

/datum/job/bospaladin
	title = "Paladin"
	flag = PALADIN
	department_head = list("Paladin")
	department_flag = BOS
	faction = "BOS"
	status = "Paladin"
	total_positions = 1
	spawn_positions = 1
	supervisors = "none"
	selection_color = "#ffddf0"
	minimal_player_age = 7
	donaters = 1
	donatorrank = 4
	outfit = /datum/outfit/bos_paladin

	access = list(73)
	minimal_access = list(73)

//Enclave start

/datum/job/enclavemedic
	title = "US Medic"
	flag = USMEDIC
	department_head = list("Commander")
	department_flag = ENCLAVE
	faction = "Enclave"
	status = "Medic"
	total_positions = 2
	spawn_positions = 2
	supervisors = "Commander"
	selection_color = "#ffddf0"
	minimal_player_age = 7
	donaters = 1
	donatorrank = 5
	outfit = /datum/outfit/enclave/medic

	access = list(73)
	minimal_access = list(73)
/datum/job/enclaveprivate
	title = "US Private"
	flag = USPRIVATE
	department_head = list("Commander")
	department_flag = BOS
	faction = "Enclave"
	status = "Scribe"
	total_positions = 3
	spawn_positions = 3
	supervisors = "Commander"
	selection_color = "#ffddf0"
	minimal_player_age = 7
	donaters = 1
	donatorrank = 5
	outfit = /datum/outfit/enclave

	access = list(73)
	minimal_access = list(73)
/datum/job/enclavescientist
	title = "US Scientist"
	flag = USSCIENTIST
	department_head = list("Commander")
	department_flag = BOS
	faction = "Enclave"
	status = "Scribe"
	total_positions = 1
	spawn_positions = 1
	supervisors = "Commander"
	selection_color = "#ffddf0"
	minimal_player_age = 7
	donaters = 1
	donatorrank = 5
	outfit = /datum/outfit/enclave/medic

	access = list(73)
	minimal_access = list(73)
/datum/job/enclaveengineer
	title = "US Engineer"
	flag = USENGINEER
	department_head = list("Commander")
	department_flag = BOS
	faction = "Enclave"
	status = "Scribe"
	total_positions = 2
	spawn_positions = 2
	supervisors = "Commander"
	selection_color = "#ffddf0"
	minimal_player_age = 7
	donaters = 1
	donatorrank = 5
	outfit = /datum/outfit/enclave/engineer

	access = list(73)
	minimal_access = list(73)
/datum/job/enclavecommander
	title = "US Commander"
	flag = USCOMMANDER
	department_head = list("Commander")
	department_flag = ENCLAVE
	faction = "Enclave"
	status = "Commander"
	total_positions = 1
	spawn_positions = 1
	supervisors = "PResident"
	selection_color = "#ffddf0"
	minimal_player_age = 7
	donaters = 1
	donatorrank = 5
	outfit = /datum/outfit/enclave/full

	access = list(73)
	minimal_access = list(73)

/datum/job/enclavecolonist
	title = "US Colonist"
	flag = USCOLONIST
	department_head = list("US Commander")
	department_flag = ENCLAVE
	faction = "Enclave"
	status = "Colonist"
	total_positions = -1
	spawn_positions = -1
	supervisors = "Commander"
	selection_color = "#ffddf0"
	minimal_player_age = 7
	donaters = 1
	donatorrank = 5
	outfit = /datum/outfit/space

	access = list(73)
	minimal_access = list(73)





/datum/outfit/enclave/medic
	name = "US Medic"

	id = /obj/item/weapon/card/id/ert/Medical
	suit = /obj/item/clothing/suit/space/hardsuit/ert/med
	glasses = /obj/item/clothing/glasses/hud/health
	back = /obj/item/weapon/storage/backpack/medic
	belt = /obj/item/weapon/storage/belt/medical
	r_hand = /obj/item/weapon/storage/firstaid/regular
	backpack_contents = list(/obj/item/weapon/storage/box/engineer=1,\
		/obj/item/weapon/melee/baton/loaded=1,\
		/obj/item/clothing/mask/gas/sechailer=1,\
		/obj/item/weapon/gun/energy/gun=1,\
		/obj/item/weapon/reagent_containers/hypospray/combat=1,\
		/obj/item/weapon/gun/medbeam=1)

/datum/outfit/enclave/engineer
	name = "US Engineer"

	id = /obj/item/weapon/card/id/ert/Engineer
	suit = /obj/item/clothing/suit/space/hardsuit/ert/engi
	glasses =  /obj/item/clothing/glasses/meson/engine
	back = /obj/item/weapon/storage/backpack/industrial
	belt = /obj/item/weapon/storage/belt/utility/full
	l_pocket = /obj/item/weapon/rcd_ammo/large
	r_hand = /obj/item/weapon/storage/firstaid/regular
	backpack_contents = list(/obj/item/weapon/storage/box/engineer=1,\
		/obj/item/weapon/melee/baton/loaded=1,\
		/obj/item/clothing/mask/gas/sechailer=1,\
		/obj/item/weapon/gun/energy/gun=1,\
		/obj/item/weapon/rcd/loaded=1)


/datum/outfit/enclave
	name = "Enclave - Basic"

	uniform = /obj/item/clothing/under/syndicate
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/combat
	back = /obj/item/weapon/storage/backpack
	ears = /obj/item/device/radio/headset/syndicate/alt
	id = /obj/item/weapon/card/id/syndicate
	belt = /obj/item/weapon/gun/projectile/automatic/pistol
	backpack_contents = list(/obj/item/weapon/storage/box/engineer=1)

	var/tc = 20

/datum/outfit/enclave/no_crystals
	tc = 0


/datum/outfit/enclave/post_equip(mob/living/carbon/human/H)
	var/obj/item/device/radio/R = H.ears
	R.set_frequency(SYND_FREQ)
	R.freqlock = 1

	if(tc)
		var/obj/item/device/radio/uplink/U = new /obj/item/device/radio/uplink(H)
		U.hidden_uplink.uplink_owner="[H.key]"
		U.hidden_uplink.uses = tc
		U.hidden_uplink.mode_override = /datum/game_mode/nuclear //Goodies
		H.equip_to_slot_or_del(U, slot_in_backpack)

	var/obj/item/weapon/implant/weapons_auth/W = new/obj/item/weapon/implant/weapons_auth(H)
	W.implant(H)
	var/obj/item/weapon/implant/explosive/E = new/obj/item/weapon/implant/explosive(H)
	E.implant(H)
	H.faction |= "Enclave"
	H.update_icons()

/datum/outfit/enclave/full
	name = "Enclave - Full Kit"

	glasses = /obj/item/clothing/glasses/night
	mask = /obj/item/clothing/mask/gas/syndicate
	suit = /obj/item/clothing/suit/space/hardsuit/syndi
	l_pocket = /obj/item/weapon/tank/internals/emergency_oxygen/engi
	r_pocket = /obj/item/weapon/gun/projectile/automatic/pistol
	belt = /obj/item/weapon/storage/belt/military
	r_hand = /obj/item/weapon/gun/projectile/automatic/shotgun/bulldog
	backpack_contents = list(/obj/item/weapon/storage/box/engineer=1,\
		/obj/item/weapon/tank/jetpack/oxygen/harness=1,\
		/obj/item/weapon/pinpointer/nukeop=1)

	tc = 30

/datum/outfit/enclave/full/post_equip(mob/living/carbon/human/H)
	..()


	var/obj/item/clothing/suit/space/hardsuit/syndi/suit = H.wear_suit
	suit.ToggleHelmet()
	var/obj/item/clothing/head/helmet/space/hardsuit/syndi/helmet = H.head
	helmet.attack_self(H)

	H.internal = H.l_store
























/datum/outfit/syndicate
	name = "Syndicate Operative - Basic"

	uniform = /obj/item/clothing/under/syndicate
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/combat
	back = /obj/item/weapon/storage/backpack
	ears = /obj/item/device/radio/headset/syndicate/alt
	id = /obj/item/weapon/card/id/syndicate
	belt = /obj/item/weapon/gun/projectile/automatic/pistol
	backpack_contents = list(/obj/item/weapon/storage/box/engineer=1)

	var/tc = 20

/datum/outfit/syndicate/no_crystals
	tc = 0


/datum/outfit/syndicate/post_equip(mob/living/carbon/human/H)
	var/obj/item/device/radio/R = H.ears
	R.set_frequency(SYND_FREQ)
	R.freqlock = 1

	if(tc)
		var/obj/item/device/radio/uplink/U = new /obj/item/device/radio/uplink(H)
		U.hidden_uplink.uplink_owner="[H.key]"
		U.hidden_uplink.uses = tc
		U.hidden_uplink.mode_override = /datum/game_mode/nuclear //Goodies
		H.equip_to_slot_or_del(U, slot_in_backpack)

	var/obj/item/weapon/implant/weapons_auth/W = new/obj/item/weapon/implant/weapons_auth(H)
	W.implant(H)
	var/obj/item/weapon/implant/explosive/E = new/obj/item/weapon/implant/explosive(H)
	E.implant(H)
	H.faction |= "syndicate"
	H.update_icons()

/datum/outfit/syndicate/full
	name = "Syndicate Operative - Full Kit"

	glasses = /obj/item/clothing/glasses/night
	mask = /obj/item/clothing/mask/gas/syndicate
	suit = /obj/item/clothing/suit/space/hardsuit/syndi
	l_pocket = /obj/item/weapon/tank/internals/emergency_oxygen/engi
	r_pocket = /obj/item/weapon/gun/projectile/automatic/pistol
	belt = /obj/item/weapon/storage/belt/military
	r_hand = /obj/item/weapon/gun/projectile/automatic/shotgun/bulldog
	backpack_contents = list(/obj/item/weapon/storage/box/engineer=1,\
		/obj/item/weapon/tank/jetpack/oxygen/harness=1,\
		/obj/item/weapon/pinpointer/nukeop=1)

	tc = 30

/datum/outfit/syndicate/full/post_equip(mob/living/carbon/human/H)
	..()


	var/obj/item/clothing/suit/space/hardsuit/syndi/suit = H.wear_suit
	suit.ToggleHelmet()
	var/obj/item/clothing/head/helmet/space/hardsuit/syndi/helmet = H.head
	helmet.attack_self(H)

	H.internal = H.l_store