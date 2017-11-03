
/datum/table_recipe
	var/name = "" //in-game display name
	var/reqs[] = list() //type paths of items consumed associated with how many are needed
	var/result //type path of item resulting from this craft
	var/tools[] = list() //type paths of items needed but not consumed
	var/time = 30 //time in deciseconds
	var/parts[] = list() //type paths of items that will be placed in the result
	var/chem_catalysts[] = list() //like tools but for reagents
	var/category = CAT_NONE //where it shows up in the crafting UI
	var/show = 1


/datum/table_recipe/pin_removal
	name = "Pin Removal"
	result = /obj/item/weapon/gun
	reqs = list(/obj/item/weapon/gun = 1)
	parts = list(/obj/item/weapon/gun = 1)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 50
	category = CAT_WEAPON

/datum/table_recipe/IED
	name = "tin can grenade"
	result = /obj/item/weapon/grenade/tincan
	reqs = list(/datum/reagent/blackpowder = 50,
				/obj/item/stack/cable_coil = 1,
				/obj/item/device/assembly/igniter = 1,
				/obj/item/trash/tin = 1)
	parts = list(/obj/item/trash/tin = 1)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 50
	category = CAT_WEAPON

/datum/table_recipe/lance
	name = "explosive lance (grenade)"
	result = /obj/item/weapon/twohanded/spear
	reqs = list(/obj/item/weapon/twohanded/spear = 1,
				/obj/item/weapon/grenade = 1)
	parts = list(/obj/item/weapon/grenade = 1)
	time = 30
	category = CAT_WEAPON

/datum/table_recipe/lance2
	name = "explosive lance (C4)"
	result = /obj/item/weapon/twohanded/spear
	reqs = list(/obj/item/weapon/twohanded/spear = 1,
				/obj/item/weapon/c4 = 1)
	parts = list(/obj/item/weapon/c4 = 1)
	time = 60
	category = CAT_WEAPON


/datum/table_recipe/molotov
	name = "Molotov"
	result = /obj/item/weapon/reagent_containers/food/drinks/bottle/molotov
	reqs = list(/obj/item/weapon/reagent_containers/glass/rag = 1,
				/obj/item/weapon/reagent_containers/food/drinks/bottle = 1)
	parts = list(/obj/item/weapon/reagent_containers/food/drinks/bottle = 1)
	time = 40
	category = CAT_WEAPON

/datum/table_recipe/imolotov
	name = "This week in Molotov"
	result = /obj/item/weapon/reagent_containers/food/drinks/bottle/molotov
	reqs = list(/obj/item/weapon/newspaper = 1,
				/obj/item/weapon/reagent_containers/food/drinks/bottle = 1)
	parts = list(/obj/item/weapon/reagent_containers/food/drinks/bottle = 1)
	time = 40
	category = CAT_WEAPON

/datum/table_recipe/dynamite
	name = "Dynamite"
	result = /obj/item/weapon/grenade/syndieminibomb
	reqs = list(/datum/reagent/blackpowder = 50,
				/obj/item/stack/sheet/leather = 1,
				/obj/item/stack/sheet/metal = 5)
	time = 60
	category = CAT_WEAPON

/datum/table_recipe/stunprod
	name = "Stunprod"
	result = /obj/item/weapon/melee/baton/cattleprod
	reqs = list(/obj/item/weapon/restraints/handcuffs/cable = 1,
				/obj/item/stack/rods = 1,
				/obj/item/weapon/wirecutters = 1,
				/obj/item/weapon/stock_parts/cell = 1)
	time = 40
	parts = list(/obj/item/weapon/stock_parts/cell = 1)
	category = CAT_WEAPON

/datum/table_recipe/teleprod
	name = "Teleprod"
	result = /obj/item/weapon/melee/baton/cattleprod/teleprod
	reqs = list(/obj/item/weapon/restraints/handcuffs/cable = 1,
				/obj/item/stack/rods = 1,
				/obj/item/weapon/wirecutters = 1,
				/obj/item/weapon/stock_parts/cell = 1,
				/obj/item/weapon/ore/bluespace_crystal = 1)
	time = 60
	parts = list(/obj/item/weapon/stock_parts/cell = 1)
	category = CAT_WEAPON

//datum/table_recipe/tailclub
//	name = "Tail Club"
//	result = /obj/item/weapon/tailclub
//	reqs = list(/obj/item/organ/severedtail = 1,
//	            /obj/item/stack/sheet/metal = 1)
//	time = 40
//	category = CAT_WEAPON

//datum/table_recipe/tailwhip
//	name = "Liz O' Nine Tails"
//	result = /obj/item/weapon/melee/chainofcommand/tailwhip
//	reqs = list(/obj/item/organ/severedtail = 1,
//	            /obj/item/stack/cable_coil = 1)
//	time = 40
//	category = CAT_WEAPON

/datum/table_recipe/bola
	name = "Bola"
	result = /obj/item/weapon/restraints/legcuffs/bola
	reqs = list(/obj/item/weapon/restraints/handcuffs/cable = 1,
				/obj/item/stack/sheet/metal = 4)
	time = 30
	category= CAT_WEAPON
/*
/datum/table_recipe/ed209
	name = "ED209"
	result = /mob/living/simple_animal/bot/ed209
	reqs = list(/obj/item/robot_parts/robot_suit = 1,
				/obj/item/clothing/head/helmet = 1,
				/obj/item/clothing/suit/armor/vest = 1,
				/obj/item/robot_parts/l_leg = 1,
				/obj/item/robot_parts/r_leg = 1,
				/obj/item/stack/sheet/metal = 5,
				/obj/item/stack/cable_coil = 5,
				/obj/item/weapon/gun/energy/gun/advtaser = 1,
				/obj/item/weapon/stock_parts/cell = 1,
				/obj/item/device/assembly/prox_sensor = 1,
				/obj/item/robot_parts/r_arm = 1)
	tools = list(/obj/item/weapon/weldingtool, /obj/item/weapon/screwdriver)
	time = 60
	category = CAT_ROBOT

/datum/table_recipe/secbot
	name = "Secbot"
	result = /mob/living/simple_animal/bot/secbot
	reqs = list(/obj/item/device/assembly/signaler = 1,
				/obj/item/clothing/head/helmet/sec = 1,
				/obj/item/weapon/melee/baton = 1,
				/obj/item/device/assembly/prox_sensor = 1,
				/obj/item/robot_parts/r_arm = 1)
	tools = list(/obj/item/weapon/weldingtool)
	time = 60
	category = CAT_ROBOT
*/
/datum/table_recipe/cleanbot
	name = "Cleanbot"
	result = /mob/living/simple_animal/bot/cleanbot
	reqs = list(/obj/item/weapon/reagent_containers/glass/bucket = 1,
				/obj/item/device/assembly/prox_sensor = 1,
				/obj/item/robot_parts/r_arm = 1)
	time = 40
	category = CAT_ROBOT
/*
/datum/table_recipe/floorbot
	name = "Floorbot"
	result = /mob/living/simple_animal/bot/floorbot
	reqs = list(/obj/item/weapon/storage/toolbox/mechanical = 1,
				/obj/item/stack/tile/plasteel = 1,
				/obj/item/device/assembly/prox_sensor = 1,
				/obj/item/robot_parts/r_arm = 1)
	time = 50
	category = CAT_ROBOT
*/
/datum/table_recipe/medbot
	name = "Medbot"
	result = /mob/living/simple_animal/bot/medbot
	reqs = list(/obj/item/device/healthanalyzer = 1,
				/obj/item/weapon/storage/firstaid = 1,
				/obj/item/device/assembly/prox_sensor = 1,
				/obj/item/robot_parts/r_arm = 1)
	time = 80
	category = CAT_ROBOT
/*
/datum/table_recipe/flamethrower
	name = "Flamethrower"
	result = /obj/item/weapon/flamethrower
	reqs = list(/obj/item/weapon/weldingtool = 1,
				/obj/item/device/assembly/igniter = 1,
				/obj/item/stack/rods = 1)
	parts = list(/obj/item/device/assembly/igniter = 1,
				/obj/item/weapon/weldingtool = 1)
	tools = list(/obj/item/weapon/screwdriver)
	time = 20
	category = CAT_WEAPON
*/
/*
/datum/table_recipe/meteorshot
	name = "Meteorshot Shell"
	result = /obj/item/ammo_casing/shotgun/meteorshot
	reqs = list(/obj/item/ammo_casing/shotgun/techshell = 1,
				/obj/item/weapon/rcd_ammo = 1,
				/obj/item/weapon/stock_parts/manipulator = 2)
	tools = list(/obj/item/weapon/screwdriver)
	time = 5
	category = CAT_AMMO
	*/
/*
/datum/table_recipe/pulseslug
	name = "Pulse Slug Shell"
	result = /obj/item/ammo_casing/shotgun/pulseslug
	reqs = list(/obj/item/ammo_casing/shotgun/techshell = 1,
				/obj/item/weapon/stock_parts/capacitor/adv = 2,
				/obj/item/weapon/stock_parts/micro_laser/ultra = 1)
	tools = list(/obj/item/weapon/screwdriver)
	time = 5
	category = CAT_AMMO
*/
/datum/table_recipe/dragonsbreath
	name = "Dragonsbreath Shell"
	result = /obj/item/ammo_casing/shotgun/incendiary/dragonsbreath
	reqs = list(/obj/item/ammo_casing/shotgun/techshell = 1,
				/datum/reagent/phosphorus = 5,)
	tools = list(/obj/item/weapon/screwdriver)
	time = 5
	category = CAT_AMMO

/datum/table_recipe/frag12
	name = "FRAG-12 Shell"
	result = /obj/item/ammo_casing/shotgun/frag12
	reqs = list(/obj/item/ammo_casing/shotgun/techshell = 1,
				/datum/reagent/glycerol = 5,
				/datum/reagent/toxin/acid = 5,
				/datum/reagent/toxin/acid/fluacid = 5,)
	tools = list(/obj/item/weapon/screwdriver)
	time = 5
	category = CAT_AMMO

/*/datum/table_recipe/ionslug
	name = "Ion Scatter Shell"
	result = /obj/item/ammo_casing/shotgun/ion
	reqs = list(/obj/item/ammo_casing/shotgun/techshell = 1,
				/obj/item/weapon/stock_parts/micro_laser/ultra = 1,
				/obj/item/weapon/stock_parts/subspace/crystal = 1)
	tools = list(/obj/item/weapon/screwdriver)
	time = 5
	category = CAT_AMMO
	*/

/datum/table_recipe/improvisedslug
	name = "Improvised Shotgun Shell"
	result = /obj/item/ammo_casing/shotgun/improvised
	reqs = list(/obj/item/weapon/grenade/chem_grenade = 1,
				/obj/item/stack/sheet/metal = 1,
				/obj/item/stack/cable_coil = 1,
				/datum/reagent/fuel = 5)
	tools = list(/obj/item/weapon/screwdriver)
	time = 5
	category = CAT_AMMO

/datum/table_recipe/improvisedslugoverload
	name = "Overload Improvised Shell"
	result = /obj/item/ammo_casing/shotgun/improvised/overload
	reqs = list(/obj/item/ammo_casing/shotgun/improvised = 1,
				/datum/reagent/blackpowder = 5)
	tools = list(/obj/item/weapon/screwdriver)
	time = 5
	category = CAT_AMMO

/datum/table_recipe/c10mm
	name = "10 mm bullet"
	result = /obj/item/ammo_casing/c10mm
	reqs = list(/obj/item/ammo_casing/c10mm = 1,
				/datum/reagent/blackpowder = 5)
	tools = list(/obj/item/weapon/screwdriver)
	time = 5
	category = CAT_AMMO

/datum/table_recipe/c45
	name = "c45 bullet"
	result = /obj/item/ammo_casing/c45
	reqs = list(/obj/item/ammo_casing/c45 = 1,
				/datum/reagent/blackpowder = 4)
	tools = list(/obj/item/weapon/screwdriver)
	time = 6
	category = CAT_AMMO

/datum/table_recipe/buckshot
	name = "buckshot shell"
	result = /obj/item/ammo_casing/shotgun/buckshot
	reqs = list(/obj/item/ammo_casing/shotgun/buckshot = 1,
				/datum/reagent/blackpowder = 10)
	tools = list(/obj/item/weapon/screwdriver)
	time = 5
	category = CAT_AMMO

/datum/table_recipe/a556
	name = "a556 bullet"
	result = /obj/item/ammo_casing/a556
	reqs = list(/obj/item/ammo_casing/a556 = 1,
				/datum/reagent/blackpowder = 7)
	tools = list(/obj/item/weapon/wrench, /obj/item/weapon/screwdriver)
	time = 8
	category = CAT_AMMO

/datum/table_recipe/blackpowder_extraction_buckshot
	name = "Shotgun Shell Black Powder Extraction"
	result = /obj/item/weapon/reagent_containers/syringe/blackpowder
	reqs = list(/obj/item/weapon/reagent_containers/syringe = 1,
			/obj/item/ammo_casing/shotgun = 1)
	tools = list()
	time = 5
	category = CAT_AMMO

/*/datum/table_recipe/laserslug
	name = "Laser Slug Shell"
	result = /obj/item/ammo_casing/shotgun/laserslug
	reqs = list(/obj/item/ammo_casing/shotgun/techshell = 1,
				/obj/item/weapon/stock_parts/capacitor/adv = 1,
				/obj/item/weapon/stock_parts/micro_laser/high = 1)
	tools = list(/obj/item/weapon/screwdriver)
	time = 5
	category = CAT_AMMO
*/
/datum/table_recipe/ishotgun
	name = "Improvised Shotgun"
	result = /obj/item/weapon/gun/projectile/revolver/doublebarrel/improvised
	reqs = list(/obj/item/weaponcrafting/reciever = 1,
				/obj/item/pipe = 1,
				/obj/item/weaponcrafting/stock = 1,
				/obj/item/stack/packageWrap = 5,)
	tools = list(/obj/item/weapon/screwdriver)
	time = 150
	category = CAT_WEAPON

/datum/table_recipe/chainsaw
	name = "Chainsaw"
	result = /obj/item/weapon/twohanded/required/chainsaw
	reqs = list(/obj/item/weapon/circular_saw = 1,
				/obj/item/stack/cable_coil = 1,
				/obj/item/stack/sheet/plasteel = 1)
	tools = list(/obj/item/weapon/weldingtool)
	time = 100
	category = CAT_WEAPON
/*
/datum/table_recipe/spooky_camera
	name = "Camera Obscura"
	result = /obj/item/device/camera/spooky
	time = 15
	reqs = list(/obj/item/device/camera = 1,
				/datum/reagent/water/holywater = 10)
	parts = list(/obj/item/device/camera = 1)
	category = CAT_MISC
*/
/obj/item/weapon/storage/backpack/satchel
/datum/table_recipe/satchel
	name = "Satchel"
	result = /obj/item/weapon/storage/backpack/satchel
	time = 15
	reqs = list(/obj/item/stack/sheet/leather = 2,
				/obj/item/stack/hay = 1)
	parts = list()
	category = CAT_MISC

/obj/manyRags
	name = "Many Rags"
	desc = "This spawns 5 rags, used in crafting. This shouldn't exist"
	New()
		new /obj/item/weapon/reagent_containers/glass/rag(loc)
		new /obj/item/weapon/reagent_containers/glass/rag(loc)
		new /obj/item/weapon/reagent_containers/glass/rag(loc)
		new /obj/item/weapon/reagent_containers/glass/rag(loc)
		new /obj/item/weapon/reagent_containers/glass/rag(loc)
		del(src)

/datum/table_recipe/rags
	name = "Cut clothing into rags"
	result = /obj/manyRags
	reqs = list(/obj/item/clothing/under = 1)
	time = 20
	category = CAT_MISC

/datum/table_recipe/bandolier
	name = "Bandolier"
	result = /obj/item/weapon/storage/belt/bandolier
	time = 15
	reqs = list(/obj/item/stack/sheet/leather = 2,
				/obj/item/stack/hay = 1)
	parts = list()
	category = CAT_MISC

/datum/table_recipe/belt
	name = "Leather Belt"
	result = /obj/item/weapon/storage/belt
	reqs = list(/obj/item/stack/sheet/leather = 1,
				/obj/item/stack/hay = 1)
	time = 20
	category = CAT_MISC

/datum/table_recipe/cloak
	name = "desert cloak"
	result = /obj/item/weapon/storage/backpack/cloak
	reqs = list(/obj/item/stack/sheet/leather = 3,
				/obj/item/stack/hay = 1)
	time = 20
	category = CAT_MISC

/datum/table_recipe/wallet
	name = "wallet"
	result = /obj/item/weapon/storage/wallet
	reqs = list(/obj/item/stack/sheet/leather = 1,
				/obj/item/stack/hay = 1)
	time = 20
	category = CAT_MISC

/datum/table_recipe/ikev
	name = "Improvised Kevlar Plate"
	result = /obj/item/asteroid/goliath_hide
	time = 30
	reqs = list(/obj/item/stack/sheet/animalhide/deathclaw = 2,
				/obj/item/stack/sheet/plasteel = 1)
	tools = list(/obj/item/weapon/wrench, /obj/item/weapon/weldingtool)
	parts = list()
	category = CAT_MISC

/datum/table_recipe/spot
	name = "Clay Pot"
	result = /obj/item/weapon/reagent_containers/glass/clay
	time = 30
	reqs = list(/obj/item/stack/sheet/mineral/sandstone = 3,
				/datum/reagent/water = 15)
	parts = list()
	category = CAT_MISC

/datum/table_recipe/mpot
	name = "Large Clay Pot"
	result = /obj/item/weapon/reagent_containers/glass/clay/large
	time = 30
	reqs = list(/obj/item/stack/sheet/mineral/sandstone = 8,
				/datum/reagent/water = 30)
	parts = list()
	category = CAT_MISC

/datum/table_recipe/lpot
	name = "Yuge Clay Pot"
	result = /obj/item/weapon/reagent_containers/glass/clay/huge
	time = 30
	reqs = list(/obj/item/stack/sheet/mineral/sandstone = 10,
				/datum/reagent/water = 50)
	parts = list()
	category = CAT_MISC

/datum/table_recipe/leatherarmor
	name = "leather armor"
	result = /obj/item/clothing/suit/armor/f13/leatherarmor
	reqs = list(/obj/item/stack/sheet/leather = 3,
				/obj/item/stack/hay = 5)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 120
	category = CAT_ARMOR

/datum/table_recipe/armorkit
	name = "armor kit"
	result = /obj/item/clothing/suit/armor/f13/kit
	reqs = list(/obj/item/stack/sheet/leather = 2,
				/obj/item/stack/hay = 1)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 60
	category = CAT_ARMOR

/datum/table_recipe/leatherhat
	name = "leather hat"
	result = /obj/item/clothing/head/lizard
	reqs = list(/obj/item/stack/sheet/leather = 1,
				/obj/item/stack/hay = 2)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 40
	category = CAT_ARMOR

/datum/table_recipe/metalarmor
	name = "metal armor"
	result = /obj/item/clothing/suit/armor/f13/bmetalarmor
	reqs = list(/obj/item/stack/sheet/leather = 1,
				/obj/item/stack/cable_coil = 5,
				/obj/item/stack/sheet/metal = 5)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 120
	category = CAT_ARMOR

/datum/table_recipe/Imetalarmor
	name = "improved metal armor"
	result = /obj/item/clothing/suit/armor/f13/ibmetalarmor
	reqs = list(/obj/item/stack/sheet/leather = 1,
				/obj/item/stack/cable_coil = 5,
				/obj/item/stack/sheet/metal = 4,
				/obj/item/stack/sheet/plasteel = 2)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 120
	category = CAT_ARMOR

/datum/table_recipe/IImetalarmor
	name = "upgrading metal armor"
	result = /obj/item/clothing/suit/armor/f13/ibmetalarmor
	reqs = list(/obj/item/clothing/suit/armor/f13/bmetalarmor = 1,
				/obj/item/stack/cable_coil = 1,
				/obj/item/stack/sheet/plasteel = 2)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 120
	category = CAT_ARMOR

/datum/table_recipe/gladiator
	name = "gladiator clothing"
	result = /obj/item/clothing/under/gladiator
	reqs = list(/obj/item/stack/sheet/leather = 1,
				/obj/item/stack/hay = 6,
				/obj/item/stack/sheet/metal = 2)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 120
	category = CAT_ARMOR

/datum/table_recipe/mprospect
	name = "\[MALE\]Prospector Outfit"
	result = /obj/item/clothing/under/f13/cowboyb
	reqs = list(/obj/item/stack/sheet/leather = 1,
				/obj/item/stack/hay = 2)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 120
	category = CAT_ARMOR
/datum/table_recipe/fprospect

	name = "\[FEMALE\]Prospector Outfit"
	result = /obj/item/clothing/under/f13/cowboyb
	reqs = list(/obj/item/stack/sheet/leather = 1,
				/obj/item/stack/hay = 2)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 120
	category = CAT_ARMOR

/datum/table_recipe/duster
	name = "Duster"
	result = /obj/item/clothing/suit/f13/duster
	reqs = list(/obj/item/stack/sheet/leather = 3,
				/obj/item/stack/hay = 2)
	time = 20

/datum/table_recipe/doomsday
	name = "Doomsday Cult"
	result = /obj/item/clothing/under/f13/doomsday
	reqs = list(/obj/item/clothing/under = 1,
				/obj/item/stack/sheet/metal = 1,
				/obj/item/stack/hay = 2)
	time = 20

/datum/table_recipe/settler
	name = "settler outfit"
	result = /obj/item/clothing/under/f13/settler
	reqs = list(/obj/item/stack/sheet/leather = 1,
				/obj/item/stack/hay = 2)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 20
	category = CAT_ARMOR

/datum/table_recipe/mbrahmin
	name = "\[MALE\]brahmin-skin outfit"
	result = /obj/item/clothing/under/f13/brahmin
	reqs = list(/obj/item/stack/sheet/leather = 1,
				/obj/item/stack/hay = 2)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 20
	category = CAT_ARMOR

/datum/table_recipe/fbrahmin
	name = "\[FEMALE\]brahmin-skin outfit"
	result = /obj/item/clothing/under/f13/female/brahmin
	reqs = list(/obj/item/stack/sheet/leather = 1,
				/obj/item/stack/hay = 2)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 20
	category = CAT_ARMOR

/datum/table_recipe/wanderer
	name = "wanderer outfit"
	result = /obj/item/clothing/suit/toggle/labcoat/f13/wanderer
	reqs = list(/obj/item/stack/sheet/leather = 2,
				/obj/item/stack/hay = 2)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 20
	category = CAT_ARMOR


/datum/table_recipe/medx
	name = "Med-x production"
	result = /obj/item/weapon/reagent_containers/stimpak/medx
	reqs = list(/obj/item/weapon/reagent_containers/syringe = 1,
				/datum/reagent/medicine/morphine = 10)
	tools = list(/obj/item/weapon/lighter)
	time = 50
	category = CAT_MED

/* Commented out recipes as I have no idea what to put in for the reqs
/datum/table_recipe/fixer
	name = "Fixer production"
	result = /obj/item/weapon/storage/pill_bottle/fixer
	reqs = list(evenmorecoolstuff)
	tools = list(/obj/item/weapon/lighter, /obj/item/weapon/storage/pill_bottle)
	time = 50
	category = CAT_MED

/datum/table_recipe/buffout
	name = "Buffout production"
	result = /obj/item/weapon/reagent_containers/stimpak/buffout
	reqs = list(coolstuffIthink)
	tools = list(/obj/item/weapon/lighter)
	time = 50
	category = CAT_MED

/datum/table_recipe/radx
	name = "Radx production"
	result = /obj/item/weapon/storage/pill_bottle/radx
	reqs = list(something)
	tools = list(/obj/item/weapon/lighter, /obj/item/weapon/storage/pill_bottle)
	time = 50
	category = CAT_MED

/datum/table_recipe/radaway
	name = "Radaway production"
	result = /obj/item/weapon/reagent_containers/blood/radaway
	reqs = list(/obj/item/weapon/reagent_containers/blood = 1, /obj/item/weapon/storage/pill_bottle/radx = 1) //Slap some radx into a blood bag for it to somehow work
	tools = list(/obj/item/weapon/reagent_containers/syringe)
	time = 50
	category = CAT_MED
*/

/datum/table_recipe/gauze
	name = "Medical gauze"
	result = /obj/item/stack/medical/gauze
	reqs = list(/obj/item/weapon/reagent_containers/glass/rag = 1)
	time = 20
	category = CAT_MED

/datum/table_recipe/healpowder
	name = "Healing powder"
	result = /obj/item/weapon/reagent_containers/pill/patch/healpowder
	reqs = list(/obj/item/weapon/reagent_containers/food/snacks/grown/broc = 1,
				/obj/item/weapon/reagent_containers/food/snacks/grown/xander = 1)
	time = 20
	category = CAT_MED

/datum/table_recipe/healpoultice
	name = "Healing poultice"
	result = /obj/item/weapon/reagent_containers/pill/patch/healpoultice
	reqs = list(/obj/item/weapon/reagent_containers/food/snacks/grown/broc = 1,
				/obj/item/weapon/reagent_containers/food/snacks/grown/xander = 1,
				/obj/item/weapon/reagent_containers/food/snacks/grown/feracactus = 1,
				/obj/item/weapon/reagent_containers/food/snacks/grown/fungus = 1)
	time = 40
	category = CAT_MED

/datum/table_recipe/stimpak
	name = "Stimpak"
	result = /obj/item/weapon/reagent_containers/stimpak/regular
	reqs = list(/obj/item/weapon/reagent_containers/pill/patch/healpowder = 1,
				/obj/item/weapon/reagent_containers/syringe = 1)
	tools = list(/obj/item/weapon/lighter, /obj/item/weapon/reagent_containers/glass/beaker)
	time = 60
	category = CAT_MED

/datum/table_recipe/superstimpak
	name = "Super Stimpak"
	result = /obj/item/weapon/reagent_containers/stimpak/super
	reqs = list(/obj/item/weapon/reagent_containers/stimpak/regular = 1,
				/obj/item/stack/sheet/leather = 1,
				/obj/item/stack/cable_coil = 5,
				/obj/item/weapon/reagent_containers/food/drinks/bottle/nukacola = 1,
				/obj/item/weapon/reagent_containers/food/snacks/grown/mutfruit = 1)
	tools = list(/obj/item/weapon/lighter, /obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 90
	category = CAT_MED

/datum/table_recipe/lizardhat
	name = "Lizard Cloche Hat"
	result = /obj/item/clothing/head/lizard
	time = 20
	reqs = list(/obj/item/organ/severedtail = 1)

/datum/table_recipe/lizardhat_alternate
	name = "Lizard Cloche Hat"
	result = /obj/item/clothing/head/lizard
	time = 20
	reqs = list(/obj/item/stack/sheet/animalhide/lizard = 1)

//////// LEGION

/datum/table_recipe/legion_encryption_key
	name = "Legion encryption key"
	result = /obj/item/device/encryptionkey/headset_leg
	reqs = list(/obj/item/stack/cable_coil = 2,
				/obj/item/stack/sheet/metal = 1)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 120
	show = 0
	category = CAT_MISC

/datum/table_recipe/legion_recruit_armor
	name = "Legion recruit clothing"
	result = /obj/item/clothing/suit/armor/f13/legrecruit
	reqs = list(/obj/item/stack/sheet/leather = 1,
				/obj/item/stack/sheet/metal = 2)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 120
	show = 0
	category = CAT_ARMOR

/datum/table_recipe/legion_recruit_helm
	name = "Legion recruit helmet"
	result = /obj/item/clothing/head/helmet/f13/legrecruit
	reqs = list(/obj/item/stack/sheet/leather = 1,
				/obj/item/stack/sheet/metal = 2)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 120
	show = 0
	category = CAT_ARMOR

/datum/table_recipe/legion_vex_armor
	name = "Legion vexillarius clothing"
	result = /obj/item/clothing/suit/armor/f13/legvexil
	reqs = list(/obj/item/stack/sheet/leather = 1,
				/obj/item/stack/sheet/metal = 2)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 120
	show = 0
	category = CAT_ARMOR

/datum/table_recipe/legion_vex_helm
	name = "Legion vexillarius helmet"
	result = /obj/item/clothing/head/helmet/f13/legvexil
	reqs = list(/obj/item/stack/sheet/leather = 1,
				/obj/item/stack/sheet/metal = 2)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 120
	show = 0
	category = CAT_ARMOR

/datum/table_recipe/legion_cent_armor
	name = "Legion centurion clothing"
	result = /obj/item/clothing/suit/armor/f13/legcenturion
	reqs = list(/obj/item/stack/sheet/leather = 1,
				/obj/item/stack/sheet/metal = 2)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 120
	show = 0
	category = CAT_ARMOR

/datum/table_recipe/legion_cent_helm
	name = "Legion centurion helmet"
	result = /obj/item/clothing/head/helmet/f13/legcenturion
	reqs = list(/obj/item/stack/sheet/leather = 1,
				/obj/item/stack/sheet/metal = 2)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 120
	show = 0
	category = CAT_ARMOR

/datum/table_recipe/legion_legat_armor
	name = "Legion legat clothing"
	result = /obj/item/clothing/suit/armor/f13/leglegat
	reqs = list(/obj/item/stack/sheet/leather = 1,
				/obj/item/stack/sheet/metal = 2)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 120
	show = 0
	category = CAT_ARMOR

/datum/table_recipe/legion_legat_helm
	name = "Legion legat helmet"
	result = /obj/item/clothing/head/helmet/f13/leglegat
	reqs = list(/obj/item/stack/sheet/leather = 1,
				/obj/item/stack/sheet/metal = 2)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 120
	show = 0
	category = CAT_ARMOR

/datum/table_recipe/legion_legat_gloves
	name = "Legion legat gloves"
	result = /obj/item/clothing/gloves/f13/legionlegat
	reqs = list(/obj/item/stack/sheet/leather = 1,
				/obj/item/stack/sheet/metal = 2)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 120
	show = 0
	category = CAT_ARMOR

/datum/table_recipe/legion_legat_shoes
	name = "Legion legat shoes"
	result = /obj/item/clothing/shoes/legionlegat
	reqs = list(/obj/item/stack/sheet/leather = 1,
				/obj/item/stack/sheet/metal = 2)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 120
	show = 0
	category = CAT_ARMOR

/////// NCR

/datum/table_recipe/ncr_encryption_key
	name = "NCR encryption key"
	result = /obj/item/device/encryptionkey/headset_ncr
	reqs = list(/obj/item/stack/cable_coil = 2,
				/obj/item/stack/sheet/metal = 1)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 120
	show = 0
	category = CAT_MISC

/datum/table_recipe/ncr_combat_armor
	name = "NCR recruit armor"
	result = /obj/item/clothing/suit/armor/f13/ncrarmor
	reqs = list(/obj/item/stack/sheet/leather = 1,
				/obj/item/stack/sheet/metal = 2)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 120
	show = 0
	category = CAT_ARMOR

/datum/table_recipe/ncr_ranger_armor
	name = "NCR ranger armor"
	result = /obj/item/clothing/suit/armor/f13/rangercombat
	reqs = list(/obj/item/stack/sheet/leather = 3,
				/obj/item/stack/sheet/metal = 8)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 120
	show = 0
	category = CAT_ARMOR

/datum/table_recipe/ncr_ranger_helm
	name = "NCR ranger helmet"
	result = /obj/item/clothing/head/helmet/f13/rangercombat
	reqs = list(/obj/item/stack/sheet/leather = 3,
				/obj/item/stack/sheet/metal = 8)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 120
	show = 0
	category = CAT_ARMOR

////// BoS

/datum/table_recipe/paholodisk
	name = "Power Armor Training Disk"
	result = /obj/item/weapon/holodisk/powerarmor
	reqs = list(/obj/item/stack/cable_coil = 5,
				/obj/item/stack/sheet/metal = 10)
	tools = list(/obj/item/device/multitool, /obj/item/weapon/wirecutters)
	time = 60
	show = 0
	category = CAT_MISC

/////// DEN

/datum/table_recipe/den_encryption_key
	name = "Den encryption key"
	result = /obj/item/device/encryptionkey/headset_den
	reqs = list(/obj/item/stack/cable_coil = 2,
				/obj/item/stack/sheet/metal = 1)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 120
	show = 0
	category = CAT_MISC

/////// Vault

/datum/table_recipe/vlt_encryption_key
	name = "Vault encryption key"
	result = /obj/item/device/encryptionkey/headset_vlt
	reqs = list(/obj/item/stack/cable_coil = 2,
				/obj/item/stack/sheet/metal = 1)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 120
	show = 0
	category = CAT_MISC

/////// RAIDERS

/datum/table_recipe/raider_yankee_armor
	name = "raider yankee armor"
	result = /obj/item/clothing/suit/armor/f13/raider/yankee
	reqs = list(/obj/item/stack/sheet/leather = 1,
				/obj/item/stack/sheet/metal = 5)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 120
	show = 0
	category = CAT_ARMOR

/datum/table_recipe/raider_supafly_armor
	name = "raider supa-fly armor"
	result = /obj/item/clothing/suit/armor/f13/raider
	reqs = list(/obj/item/stack/sheet/leather = 1,
				/obj/item/stack/sheet/metal = 5)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 120
	show = 0
	category = CAT_ARMOR

/datum/table_recipe/raider_supafly_helmet
	name = "raider supa-fly helmet"
	result =/obj/item/clothing/head/helmet/f13/raider
	reqs = list(/obj/item/stack/sheet/leather = 1,
				/obj/item/stack/sheet/metal = 5)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 120
	show = 0
	category = CAT_ARMOR

/datum/table_recipe/raider_yankee_helmet
	name = "raider yankee yankee"
	result = /obj/item/clothing/head/helmet/f13/raider/yankee
	reqs = list(/obj/item/stack/sheet/leather = 1,
				/obj/item/stack/sheet/metal = 5)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 120
	show = 0
	category = CAT_ARMOR
