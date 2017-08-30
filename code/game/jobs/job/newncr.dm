/*
Trooper
*/
/datum/job/ncrlieutenant
	title = "NCR Lieutenant"
	flag = NCRLIEUTENANT
	department_head = list("The NCR Captain")
	department_flag = NCR
	faction = "NCR" // This faction is used for late joins+
	status = "NCR Lieutenant"
	total_positions = 1
	spawn_positions = 1
//	donaters = 1
//	donatorrank = 3
	supervisors = "The NCR Captain"
	//spawn_point = locate(/obj/effect/landmark/start/ncr/commander)
	selection_color = "#ffeeee"
	access = list(67,69,70,71,72,20)
	minimal_access = list(67,69,70,71,72,20)
	outfit = /datum/outfit/job/ncrlieutenant

/datum/outfit/job/ncrlieutenant
	name = "NCR Lieutenant"
	id = /obj/item/weapon/card/id/ncr
	gloves = /obj/item/clothing/gloves/f13/legion/ncr
	uniform = /obj/item/clothing/under/f13/ncr
	shoes = /obj/item/clothing/shoes/combat/ncr
	belt = /obj/item/weapon/storage/belt/ncr
	ears = /obj/item/device/radio/headset/headset_ncr
	suit = /obj/item/clothing/suit/armor/f13/ncrarmor/mantle
	head = /obj/item/clothing/head/beret/ncr
	glasses = /obj/item/clothing/glasses/sunglasses/swat
	suit_store = /obj/item/weapon/gun/projectile/automatic/marksman
	backpack_contents = list(/obj/item/clothing/mask/facewrap=1, \
		/obj/item/ammo_box/magazine/m556=3, \
		/obj/item/weapon/kitchen/knife/combat=1, \
		/obj/item/weapon/gun/projectile/automatic/pistol/ninemil=1, \
		/obj/item/weapon/melee/classic_baton/telescopic=1, \
		/obj/item/stack/caps/random/med, \
		/obj/item/stack/spacecash/random/high)
/datum/outfit/job/ncrlieutenant/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	H.faction = "NCR"
	for(var/obj/item/weapon/card/id/ncr/n in H.contents)
		n.registered_name = H.real_name
		n.assignment = "[H.job]"
		//n.update_label(W.registered_name, W.assignment)
		n.name="[H.real_name] ([H.job])"
		H.status="NCR Lieutenant"
		n.access = list(67,69,70,71,72,20)

/datum/job/ncrm
	title = "NCR Captain"
	flag = NCRMAJOR
	department_head = list("NCR Captain")
	department_flag = NCR
	faction = "NCR" // This faction is used for late joins
	status = "NCR Captain"
	total_positions = 1
	spawn_positions = 1
//	donaters = 1
//	donatorrank = 4
	supervisors = "NCR Colonel"
	//spawn_point = locate(/obj/effect/landmark/start/ncr/commander)
	selection_color = "#ffeeee"
	access = list(67,68,69,70,71,72)
	minimal_access = list(67,68,69,70,71,72,20)
	outfit = /datum/outfit/job/ncrmajor

/*  Job removed for reasons
/datum/job/ncrc
	title = "Colonel"
	flag = NCRCOLONEL
	department_head = list("NCR Captain")
	department_flag = NCR
	faction = "NCR" // This faction is used for late joins
	status = "Colonel"
	total_positions = 1
	spawn_positions = 4
//	donaters = 1
//	donatorrank = 5
	supervisors = "nobody"
	//spawn_point = locate(/obj/effect/landmark/start/ncr/commander)
	selection_color = "#ffeeee"
	access = list(67,68,69,70,71,72)
	minimal_access = list(67,68,69,70,71,72,20)
	outfit = /datum/outfit/job/ncrcolonel
*/

/datum/outfit/job/ncrcolonel
	id = /obj/item/weapon/card/id/ncr
	gloves = /obj/item/clothing/gloves/f13/legion/ncr
	uniform = /obj/item/clothing/under/f13/ncr
	shoes = /obj/item/clothing/shoes/combat/ncr
	belt = /obj/item/weapon/storage/belt/ncr
	ears = /obj/item/device/radio/headset/headset_ncr
	suit = /obj/item/clothing/suit/armor/f13/ncrarmor/mantle
	head = /obj/item/clothing/head/beret/ncr
	glasses = /obj/item/clothing/glasses/sunglasses/swat
	suit_store = /obj/item/weapon/gun/projectile/automatic/shotgun/caws
	backpack_contents = list(/obj/item/clothing/mask/facewrap=1, \
		/obj/item/ammo_box/magazine/d12g=3, \
		/obj/item/weapon/kitchen/knife/combat=1, \
		/obj/item/weapon/gun/projectile/automatic/pistol/ninemil=1, \
		/obj/item/weapon/melee/classic_baton/telescopic=1, \
		/obj/item/stack/caps=3)
/datum/outfit/job/ncrcolonel/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	H.faction = "NCR"
	for(var/obj/item/weapon/card/id/ncr/n in H.contents)
		n.registered_name = H.real_name
		n.assignment = "[H.job]"
		//n.update_label(W.registered_name, W.assignment)
		n.name="[H.real_name] ([H.job])"
		H.status="NCR Colonel"
		n.access = list(67,68,69,70,71,72)

/datum/outfit/job/ncrmajor
	id = /obj/item/weapon/card/id/ncr
	gloves = /obj/item/clothing/gloves/f13/legion/ncr
	uniform = /obj/item/clothing/under/f13/ncr
	shoes = /obj/item/clothing/shoes/combat/ncr
	belt = /obj/item/weapon/storage/belt/ncr
	ears = /obj/item/device/radio/headset/headset_ncr
	suit = /obj/item/clothing/suit/armor/f13/ncrarmor/mantle
	head = /obj/item/clothing/head/beret/ncr
	glasses = /obj/item/clothing/glasses/sunglasses/swat
	suit_store = /obj/item/weapon/gun/projectile/automatic/shotgun/caws
	backpack_contents = list(/obj/item/clothing/mask/facewrap=1, \
		/obj/item/ammo_box/magazine/d12g=3, \
		/obj/item/weapon/kitchen/knife/combat=1, \
		/obj/item/weapon/gun/projectile/automatic/pistol/ninemil=1, \
		/obj/item/stack/caps/random/med, \
		/obj/item/stack/spacecash/random/high)
/datum/outfit/job/ncrmajor/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	H.faction = "NCR"
	for(var/obj/item/weapon/card/id/ncr/n in H.contents)
		n.registered_name = H.real_name
		n.assignment = "[H.job]"
		//n.update_label(W.registered_name, W.assignment)
		n.name="[H.real_name] ([H.job])"
		H.status="NCR Captain"
		n.access = list(67,68,69,70,71,72)
/*
Sergeant
*/
/datum/job/ncrsergeant
	title = "NCR Sergeant"
	flag = NCRSERGEANT
	department_head = list("The NCR Captain")
	department_flag = NCR
	faction = "NCR" // This faction is used for late joins
	status = "NCR Sergeant"
	total_positions = 2
	spawn_positions = 2
	supervisors = "The NCR Lieutenant"
	//spawn_point = locate(/obj/effect/landmark/start/ncr/trooper)
	selection_color = "#ffeeee"
	access = list(67,72)
	minimal_access = list(67,72)
	outfit = /datum/outfit/job/ncrsergeant

/datum/outfit/job/ncrsergeant
	name = "NCR Sergeant"
	id = /obj/item/weapon/card/id/ncr
	gloves = /obj/item/clothing/gloves/f13/legion/ncr
	uniform = /obj/item/clothing/under/f13/ncr
	shoes = /obj/item/clothing/shoes/combat/ncr
	belt = /obj/item/weapon/storage/belt/ncr
	ears = /obj/item/device/radio/headset/headset_ncr
	suit = /obj/item/clothing/suit/armor/f13/ncrarmor/mantle
	head = /obj/item/clothing/head/f13/ncr
	glasses = /obj/item/clothing/glasses/sunglasses/swat
	suit_store = /obj/item/weapon/gun/projectile/automatic/marksman/servicerifle
	backpack_contents = list(/obj/item/clothing/mask/facewrap=1, \
		/obj/item/ammo_box/magazine/m556/r20=2, \
		/obj/item/weapon/kitchen/knife/combat=1, \
		/obj/item/weapon/gun/projectile/automatic/pistol/ninemil=1, \
		/obj/item/stack/caps/random/med, \
		/obj/item/stack/spacecash/random/high)
/datum/outfit/job/ncrsergeant/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	H.faction = "NCR"
	for(var/obj/item/weapon/card/id/ncr/n in H.contents)
		n.registered_name = H.real_name
		n.assignment = "[H.job]"
		//n.update_label(W.registered_name, W.assignment)
		n.name="[H.real_name] ([H.job])"
		H.status="Sergeant"
		n.access = list(67,72)

/*
Trooper
*/
/datum/job/ncrtrooper
	title = "NCR Trooper"
	flag = NCRTROOPER
	department_head = list("The NCR Captain")
	department_flag = NCR
	faction = "NCR" // This faction is used for late joins
	status = "NCR Trooper"
	total_positions = 10
	spawn_positions = 6
	supervisors = "NCR Sergeant"
	//spawn_point = locate(/obj/effect/landmark/start/ncr/trooper)
	selection_color = "#ffeeee"
	access = list(67)
	minimal_access = list(67)
	outfit = /datum/outfit/job/ncrtrooper

/datum/outfit/job/ncrtrooper
	name = "Trooper"
	id = /obj/item/weapon/card/id/ncr
	gloves = /obj/item/clothing/gloves/f13/legion/ncr
	uniform = /obj/item/clothing/under/f13/ncr
	shoes = /obj/item/clothing/shoes/combat/ncr
	belt = /obj/item/weapon/storage/belt/ncr
	ears = /obj/item/device/radio/headset/headset_ncr
	suit = /obj/item/clothing/suit/armor/f13/ncrarmor
	head = /obj/item/clothing/head/f13/ncr
	glasses = /obj/item/clothing/glasses/sunglasses/swat
	suit_store = /obj/item/weapon/gun/projectile/automatic/marksman/servicerifle
	backpack_contents = list(/obj/item/clothing/mask/facewrap=1, \
		/obj/item/ammo_box/magazine/m556/r20=2, \
		/obj/item/weapon/kitchen/knife/combat=1, \
		/obj/item/weapon/gun/projectile/automatic/pistol/ninemil=1, \
		/obj/item/stack/caps/random/low, \
		/obj/item/stack/spacecash/random/low)
/datum/outfit/job/ncrtrooper/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	H.faction = "NCR"
	for(var/obj/item/weapon/card/id/ncr/n in H.contents)
		n.registered_name = H.real_name
		n.assignment = "[H.job]"
		//n.update_label(W.registered_name, W.assignment)
		n.name="[H.real_name] ([H.job])"
		H.status="Trooper"
		n.access = list(67)
/*
Recruit
*/
/datum/job/ncrrecruit
	title = "NCR Recruit"
	flag = NCRRECRUIT
	department_head = list("The NCR Captain")
	department_flag = NCR
	faction = "NCR" // This faction is used for late joins
	total_positions = 10
	spawn_positions = -1
	supervisors = "The NCR Lieutenant"
	//spawn_point = locate(/obj/effect/landmark/start/ncr/trooper)
	selection_color = "#ffeeee"
	access = list(67)
	minimal_access = list(67)
	outfit = /datum/outfit/job/ncrrecruit
	late_join = 1

/datum/outfit/job/ncrrecruit
	name = "NCR Recruit"
	id = /obj/item/weapon/card/id/ncr
	gloves = /obj/item/clothing/gloves/f13/legion/ncr
	uniform = /obj/item/clothing/under/f13/ncr
	shoes = /obj/item/clothing/shoes/combat/ncr
	belt = /obj/item/weapon/storage/belt/ncr
	ears = /obj/item/device/radio/headset/headset_ncr
	suit = /obj/item/clothing/suit/armor/f13/ncrarmor
	head = /obj/item/clothing/head/f13/ncr
	glasses = /obj/item/clothing/glasses/sunglasses/swat
	suit_store = /obj/item/weapon/gun/projectile/shotgun/boltaction
	backpack_contents = list(/obj/item/ammo_box/a762=3, \
		/obj/item/clothing/mask/facewrap=1, \
		/obj/item/weapon/kitchen/knife/combat=1,\
		/obj/item/weapon/gun/projectile/automatic/pistol/ninemil=1,\
		/obj/item/stack/caps/random/low, \
		/obj/item/stack/spacecash/random/low)

/datum/outfit/job/ncrrecruit/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	H.faction = "NCR"
	for(var/obj/item/weapon/card/id/ncr/n in H.contents)
		n.registered_name = H.real_name
		n.assignment = "NCR Recruit"
		//n.update_label(W.registered_name, W.assignment)
		n.name="[H.real_name] (NCR Recruit)"
		H.status="Recruit"
		n.access = list(67)

/*
Veteran Ranger
*/
/datum/job/ncrvetranger
	title = "NCR Veteran Ranger"
	flag = NCRVETRANGER
	department_head = list("The NCR Captain")
	department_flag = NCR
	faction = "NCR"
	status = "Vetran Ranger"
	total_positions = 1
	spawn_positions = 1
	supervisors = "NCR Lieutenat"
	selection_color = "#ffeeee"
	minimal_player_age = 0
	//spawn_point = locate(/obj/effect/landmark/start/ncr/trooper)
	outfit = /datum/outfit/job/ncrvetranger

	access = list(67)
	minimal_access = list(67)

/datum/outfit/job/ncrvetranger
	name = "NCR Veteran Ranger"
	id = /obj/item/weapon/card/id/ncr/ranger
	gloves = /obj/item/clothing/gloves/combat
	uniform = /obj/item/clothing/under/f13/cowboyb
	shoes = /obj/item/clothing/shoes/combat/swat
	belt = /obj/item/weapon/storage/belt/ncr
	ears = /obj/item/device/radio/headset/headset_ncr
	suit = /obj/item/clothing/suit/armor/f13/rangercombat
	head = /obj/item/clothing/head/helmet/f13/rangercombat
	glasses = /obj/item/clothing/glasses/night
	suit_store = /obj/item/weapon/gun/projectile/automatic/assault_rifle
	backpack_contents = list(/obj/item/weapon/gun/projectile/revolver/sequoia=1, \
		/obj/item/ammo_box/c4570=2, \
		/obj/item/weapon/kitchen/knife/combat=1, \
		/obj/item/weapon/melee/classic_baton/telescopic=1, \
		/obj/item/stack/caps/random/med, \
		/obj/item/stack/spacecash/random/med)
	mask = /obj/item/clothing/mask/gas/sechailer
/datum/outfit/job/ncrvetranger/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	H.faction = list("NCR","Ranger")
	for(var/obj/item/weapon/card/id/ncr/n in H.contents)
		n.registered_name = H.real_name
		n.assignment = "[H.job]"
		//n.update_label(W.registered_name, W.assignment)
		n.name="[H.real_name] ([H.job])"
		H.status="Veteran Ranger"
		n.access = list(67)
/*
NCR Ranger
*/
/datum/job/ncrranger
	title = "NCR Ranger"
	flag = NCRRANGER
	department_head = list("The NCR Captain")
	department_flag = NCR
	faction = "NCR"
	status = "Ranger"
	total_positions = 3
	spawn_positions = 3
//	donaters = 1
//	donatorrank = 2
	supervisors = "NCR Lieutenat"
	selection_color = "#ffeeee"
	minimal_player_age = 0
	//spawn_point = locate(/obj/effect/landmark/start/ncr/trooper)
	outfit = /datum/outfit/job/ncrranger

	access = list(67)
	minimal_access = list(67)

/datum/outfit/job/ncrranger
	name = "NCR Ranger"
	id = /obj/item/weapon/card/id/ncr/ranger
	gloves = /obj/item/clothing/gloves/combat
	belt = /obj/item/weapon/storage/belt/ncr
	ears = /obj/item/device/radio/headset/headset_ncr
	uniform = /obj/item/clothing/under/f13/cowboyb
	shoes = /obj/item/clothing/shoes/combat/swat
	suit = /obj/item/clothing/suit/armor/f13/combat/ncr
	head = /obj/item/clothing/head/f13/ranger
	glasses = /obj/item/clothing/glasses/sunglasses
	suit_store = /obj/item/weapon/gun/projectile/automatic/shotgun/riot
	backpack_contents = list(/obj/item/weapon/gun/projectile/automatic/pistol/deagle=1, \
		/obj/item/weapon/restraints/handcuffs=2, \
		/obj/item/weapon/kitchen/knife/combat=1, \
		/obj/item/ammo_box/magazine/d12g=2, \
		/obj/item/weapon/melee/classic_baton=1, \
		/obj/item/weapon/storage/wallet/random=1)
/datum/outfit/job/ncrranger/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	H.faction = list("NCR","Ranger")
	for(var/obj/item/weapon/card/id/ncr/n in H.contents)
		n.registered_name = H.real_name
		n.assignment = "[H.job]"
		//n.update_label(W.registered_name, W.assignment)
		n.name="[H.real_name] ([H.job])"
		H.status="Ranger"
		H.faction = list("NCR","Ranger")
		n.access = list(67)

/datum/job/ncrrecranger
	title = "NCR Scout Ranger"
	flag = NCRRECRANGER
	department_head = list("The NCR Captain")
	department_flag = NCR
	faction = "NCR" //desert faction shall disable appearing as scavenger after readying
	status = "Recruit Ranger"
	total_positions = 3
	spawn_positions = 3 //does not matter for late join
//	donaters = 1
//	donatorrank = 3
	supervisors = "NCR Lieutenant"
	selection_color = "#ffeeee"
	minimal_player_age = 0
	access = list(67)
	minimal_access = list(67)
	outfit = /datum/outfit/job/ncrrecranger

/datum/outfit/job/ncrrecranger
	name = "NCR Scout Ranger"
	id = /obj/item/weapon/card/id/ncr/ranger
	uniform = /obj/item/clothing/under/f13/ranger
	shoes = /obj/item/clothing/shoes/workboots
	suit = /obj/item/clothing/suit/f13/duster
	head = /obj/item/clothing/head/fluff/cowboy
	ears = /obj/item/device/radio/headset/headset_ncr
	back = /obj/item/weapon/storage/backpack
	belt = /obj/item/weapon/storage/belt/ncr
	gloves = /obj/item/clothing/gloves/combat
	glasses = /obj/item/clothing/glasses/sunglasses
	suit_store = /obj/item/weapon/gun/projectile/shotgun/boltaction/scoped
	backpack = /obj/item/weapon/storage/backpack
	satchel = /obj/item/weapon/storage/backpack/satchel_norm
	backpack_contents = list(/obj/item/weapon/restraints/handcuffs=1, \
	/obj/item/weapon/storage/wallet/random=1, \
	/obj/item/stack/caps = 1, \
	/obj/item/weapon/gun/projectile/revolver/m29=1, \
	/obj/item/ammo_box/m44=2, \
	/obj/item/ammo_box/a762=3, \
	/obj/item/weapon/melee/classic_baton=1)
/datum/outfit/job/ncrrecranger/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	H.faction = list("NCR","Ranger")
	for(var/obj/item/weapon/card/id/ncr/n in H.contents)
		n.registered_name = H.real_name
		n.assignment = "[H.job]"
		//n.update_label(W.registered_name, W.assignment)
		n.name="[H.real_name] ([H.job])"
		H.status="Scout Ranger"
		H.faction = list("NCR","Ranger")
		n.access = list(67)
