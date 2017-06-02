/*
Legion
*/
//recruit
/datum/job/legrecruit
	title = "Legionary"
	flag = LEGIONARY
	department_head = list("Legat")
	department_flag = LEGION
	faction = "Legion"
	total_positions = 10
	spawn_positions = -1
	supervisors = "Decan"
	selection_color = "#ffeeee"
	minimal_player_age = 7

	outfit = /datum/outfit/job/legrecruit

	access = list()
	minimal_access = list()

/datum/outfit/job/legrecruit
	name = "Recruit"
	id = null
	ears = null
	belt = null

/datum/outfit/job/legrecruit/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(/obj/item/clothing/under/pants/f13/caravan)
	shoes = /obj/item/clothing/shoes/legionleather
	gloves = /obj/item/clothing/gloves/f13/legion
	suit = /obj/item/clothing/suit/armor/f13/legrecruit
	head = /obj/item/clothing/head/helmet/f13/legrecruit
	glasses = /obj/item/clothing/glasses/sunglasses/legion
	mask = /obj/item/clothing/mask/bandana/legrecruit
	suit_store = /obj/item/weapon/gun/projectile/revolver/police
	back = /obj/item/weapon/storage/backpack
	backpack = /obj/item/weapon/storage/backpack
	satchel = /obj/item/weapon/storage/backpack/satchel_norm
	backpack_contents = list(/obj/item/weapon/restraints/legcuffs/bola=1, \
	/obj/item/stack/spear/bundle=1, \
	/obj/item/stack/caps = 1, \
	/obj/item/weapon/machete = 1, \
	/obj/item/weapon/reagent_containers/pill/patch/healpowder=1, \
	/obj/item/ammo_box/c357/c38=2, \
	/obj/item/device/flashlight/flare/torch=1)

//decan
/datum/job/legdecan
	title = "Decan"
	flag = LEGDECAN
	department_head = list("Centurion")
	department_flag = LEGION
	faction = "Legion"
	status = "Decan"
	total_positions = 2
	spawn_positions = 2
	supervisors = "Centurion"
	selection_color = "#ffeeee"
	minimal_player_age = 7

	outfit = /datum/outfit/job/legdecan

	access = list()
	minimal_access = list()

/datum/outfit/job/legdecan
	name = "Decan"
	id = null
	ears = null
	belt = null

/datum/outfit/job/legdecan/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(/obj/item/clothing/under/pants/f13/caravan)
	shoes = /obj/item/clothing/shoes/legionleather
	gloves = /obj/item/clothing/gloves/f13/legion
	suit = /obj/item/clothing/suit/armor/f13/legrecruit
	head = /obj/item/clothing/head/helmet/f13/legdecan
	glasses = /obj/item/clothing/glasses/sunglasses/legion
	mask = /obj/item/clothing/mask/bandana/legdecan
	suit_store = /obj/item/weapon/gun/projectile/automatic/shotgun/riot
	back = /obj/item/weapon/storage/backpack
	r_hand = /obj/item/weapon/twohanded/fireaxe
	backpack = /obj/item/weapon/storage/backpack
	satchel = /obj/item/weapon/storage/backpack/satchel_norm
	backpack_contents = list(/obj/item/weapon/restraints/legcuffs/bola/raider=1, \
	/obj/item/stack/spear/bundle=1, \
	/obj/item/stack/caps = 1, \
	/obj/item/weapon/machete = 1, \
	/obj/item/weapon/reagent_containers/pill/patch/healpowder=1, \
	/obj/item/ammo_box/magazine/d12g=2, \
	/obj/item/device/flashlight/flare/torch=1)

//vexillarius
/datum/job/legvex
	title = "Vexillarius"
	flag = LEGVEX
	department_head = list("Centurion")
	department_flag = LEGION
	faction = "Legion"
	status = "Vexillarius"
	total_positions = 2
	spawn_positions = 2
	supervisors = "Legat"
	selection_color = "#ffeeee"
	minimal_player_age = 7
//	donaters = 1
//	donatorrank = 3

	outfit = /datum/outfit/job/legvex

	access = list()
	minimal_access = list()

/datum/outfit/job/legvex
	name = "Legion Vexillarius"
	id = null
	ears = null
	belt = null

/datum/outfit/job/legvex/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(/obj/item/clothing/under/pants/f13/caravan)
	shoes = /obj/item/clothing/shoes/legionmetal
	gloves = /obj/item/clothing/gloves/f13/legion
	suit = /obj/item/clothing/suit/armor/f13/legvexil
	head = /obj/item/clothing/head/helmet/f13/legvexil
	glasses = /obj/item/clothing/glasses/sunglasses/legion
	suit_store = /obj/item/weapon/gun/projectile/automatic/marksman
	back = /obj/item/weapon/storage/backpack
	backpack = /obj/item/weapon/storage/backpack
	satchel = /obj/item/weapon/storage/backpack/satchel_norm
	backpack_contents = list(/obj/item/weapon/restraints/legcuffs/bola/raider=1, \
	/obj/item/stack/spear/bundle=1, \
	/obj/item/stack/caps = 1, \
	/obj/item/weapon/machete = 1, \
	/obj/item/weapon/reagent_containers/pill/patch/healpowder=1, \
	/obj/item/ammo_box/magazine/m556=1, \
	/obj/item/device/flashlight/flare/torch=1)

//centurion
/datum/job/legcenturion
	title = "Centurion"
	flag = LEGCENTURION
	department_head = list("Centurion")
	department_flag = LEGION
	faction = "Legion"
	status = "Centurion"
	total_positions = 1
	spawn_positions = 1
	donaters = 1
	donatorrank = 3
	supervisors = "Legate"
	selection_color = "#ffeeee"
	minimal_player_age = 7

	outfit = /datum/outfit/job/legcenturion

	access = list()
	minimal_access = list()

/datum/outfit/job/legcenturion
	name = "Legion Centurion"
	id = null
	ears = null
	belt = null

/datum/outfit/job/legcenturion/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(/obj/item/clothing/under/pants/f13/caravan)
	shoes = /obj/item/clothing/shoes/legionmetal
	gloves = /obj/item/clothing/gloves/f13/legion
	suit = /obj/item/clothing/suit/armor/f13/legcenturion
	head = /obj/item/clothing/head/helmet/f13/legcenturion
	glasses = /obj/item/clothing/glasses/sunglasses/legion
	suit_store = /obj/item/weapon/gun/projectile/automatic/marksman
	back = /obj/item/weapon/storage/backpack
	r_hand = /obj/item/weapon/claymore/hog
	backpack = /obj/item/weapon/storage/backpack
	satchel = /obj/item/weapon/storage/backpack/satchel_norm
	backpack_contents = list(/obj/item/weapon/restraints/handcuffs=1, \
	/obj/item/stack/spear/bundle=1, \
	/obj/item/stack/caps = 1, \
	/obj/item/weapon/powergauntlet = 1, \
	/obj/item/weapon/reagent_containers/pill/patch/healpowder = 2, \
	/obj/item/device/flashlight/flare/torch=1)

//legat
/datum/job/leglegat
	title = "Legat"
	flag = LEGLEGAT
	department_head = list("Legat")
	department_flag = LEGION
	faction = "Legion"
	status = "Legat"
	total_positions = 1
	spawn_positions = 1
//	donaters = 1
//	donatorrank = 4
	supervisors = "Legat"
	selection_color = "#ffeeee"
	minimal_player_age = 7

	outfit = /datum/outfit/job/leglegat

	access = list()
	minimal_access = list()

/datum/outfit/job/leglegat
	name = "Legat"
	id = null
	ears = null
	belt = null

/datum/outfit/job/leglegat/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(/obj/item/clothing/under/pants/f13/caravan)
	shoes = /obj/item/clothing/shoes/legionlegat
	gloves = /obj/item/clothing/gloves/f13/legionlegat
	suit = /obj/item/clothing/suit/armor/f13/leglegat
	head = /obj/item/clothing/head/helmet/f13/leglegat
	glasses = /obj/item/clothing/glasses/sunglasses/legion
	suit_store = /obj/item/weapon/gun/projectile/automatic/marksman
	back = /obj/item/weapon/storage/backpack
	backpack = /obj/item/weapon/storage/backpack
	r_hand = /obj/item/weapon/claymore/hog
	satchel = /obj/item/weapon/storage/backpack/satchel_norm
	backpack_contents = list(/obj/item/stack/spear/bundle=1, \
	/obj/item/stack/caps = 100, \
	/obj/item/weapon/powergauntlet = 1,\
	/obj/item/ammo_box/magazine/m556=3, \
	/obj/item/weapon/restraints/legcuffs/bola/tribal=2, \
	/obj/item/weapon/reagent_containers/pill/patch/healpowder = 2, \
	/obj/item/device/flashlight/flare/torch=1)

//prime recruit
/datum/job/legVET
	title = "Veteran"
	flag = LEGVET
	department_head = list("Centurion")
	department_flag = LEGION
	faction = "Legion"
	status = "Veteran"
	total_positions = 10
	spawn_positions = 6
	supervisors = "Decan"
	selection_color = "#ffeeee"
	minimal_player_age = 7

	outfit = /datum/outfit/job/legvet

	access = list()
	minimal_access = list()

/datum/outfit/job/legvet
	name = "Veteran"
	id = null
	ears = null
	belt = null

/datum/outfit/job/legvet/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(/obj/item/clothing/under/pants/f13/caravan)
	shoes = /obj/item/clothing/shoes/legionmetal
	gloves = /obj/item/clothing/gloves/f13/legion
	suit = /obj/item/clothing/suit/armor/f13/legrecruit/vet
	head = /obj/item/clothing/head/helmet/f13/legveteran
	glasses = /obj/item/clothing/glasses/sunglasses/legion
	mask = /obj/item/clothing/mask/bandana/legvet
	suit_store = /obj/item/weapon/gun/projectile/shotgun/riot
	back = /obj/item/weapon/storage/backpack
	backpack = /obj/item/weapon/storage/backpack
	satchel = /obj/item/weapon/storage/backpack/satchel_norm
	backpack_contents = list(/obj/item/weapon/restraints/legcuffs/bola/raider=1, \
	/obj/item/stack/spear/bundle=1, \
	/obj/item/stack/caps = 1, \
	/obj/item/weapon/machete = 1, \
	/obj/item/weapon/storage/box/lethalshot=1,
	/obj/item/weapon/reagent_containers/pill/patch/healpowder = 2, \
	/obj/item/device/flashlight/flare/torch=1)