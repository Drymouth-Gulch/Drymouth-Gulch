/obj/item/clothing/suit/armor
	allowed = list(/obj/item/weapon/gun/energy,/obj/item/weapon/reagent_containers/spray/pepper,/obj/item/weapon/gun/projectile,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/weapon/melee/baton,/obj/item/weapon/restraints/handcuffs,/obj/item/device/flashlight/seclite,/obj/item/weapon/melee/classic_baton/telescopic,/obj/item/weapon/restraints/legcuffs/bola)
	body_parts_covered = CHEST
	cold_protection = CHEST|GROIN
	min_cold_protection_temperature = ARMOR_MIN_TEMP_PROTECT
	heat_protection = CHEST|GROIN
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	strip_delay = 60
	put_on_delay = 40
	burn_state = FIRE_PROOF

/obj/item/clothing/suit/armor/vest
	name = "armor"
	desc = "A slim armored vest that protects against most types of damage."
	icon_state = "armor"
	item_state = "armor"
	blood_overlay_type = "armor"
	armor = list(melee = 30, bullet = 25, laser = 25, energy = 10, bomb = 25, bio = 0, rad = 0)

/obj/item/clothing/suit/armor/hos
	name = "armored greatcoat"
	desc = "A greatcoat enchanced with a special alloy for some protection and style for those with a commanding presence."
	icon_state = "hos"
	item_state = "greatcoat"
	body_parts_covered = CHEST|GROIN|ARMS|LEGS
	armor = list(melee = 40, bullet = 40, laser = 35, energy = 10, bomb = 25, bio = 0, rad = 0)
	flags_inv = HIDEJUMPSUIT
	cold_protection = CHEST|GROIN|LEGS|ARMS
	heat_protection = CHEST|GROIN|LEGS|ARMS
	strip_delay = 80

/obj/item/clothing/suit/armor/hos/trenchcoat
	name = "armored trenchoat"
	desc = "A trenchcoat enchanced with a special lightweight kevlar. The epitome of tactical plainclothes."
	icon_state = "hostrench"
	item_state = "hostrench"
	flags_inv = 0
	strip_delay = 80

/obj/item/clothing/suit/armor/vest/warden
	name = "warden's jacket"
	desc = "A red jacket with silver rank pips and body armor strapped on top. Contains liquid trauma plates to help deal with unruly prisoners."
	icon_state = "warden_jacket"
	item_state = "wardenarmor"
	body_parts_covered = CHEST|GROIN|ARMS
	cold_protection = CHEST|GROIN|ARMS|HANDS
	heat_protection = CHEST|GROIN|ARMS|HANDS
	armor = list(melee = 35, bullet = 20, laser = 25, energy = 10, bomb = 25, bio = 0, rad = 0)
	strip_delay = 70
	burn_state = FLAMMABLE

/obj/item/clothing/suit/armor/vest/warden/alt
	name = "warden's armored jacket"
	desc = "A navy-blue armored jacket with blue shoulder designations and '/Warden/' stitched into one of the chest pockets, and a pouch full of liquid plates."
	icon_state = "warden_alt"

/obj/item/clothing/suit/armor/vest/leather
	name = "security overcoat"
	desc = "Lightly armored leather overcoat meant as casual wear for high-ranking officers. Bears the crest of Nanotrasen Security."
	icon_state = "leathercoat-sec"
	item_state = "hostrench"
	body_parts_covered = CHEST|GROIN|ARMS|LEGS
	cold_protection = CHEST|GROIN|LEGS|ARMS
	heat_protection = CHEST|GROIN|LEGS|ARMS

/obj/item/clothing/suit/armor/vest/capcarapace
	name = "captain's carapace"
	desc = "An armored vest reinforced with ceramic plates and pauldrons to provide additional protection whilst still offering maximum mobility and flexibility. Issued only to the station's finest, although it does chafe your nipples."
	icon_state = "capcarapace"
	item_state = "armor"
	body_parts_covered = CHEST|GROIN
	armor = list(melee = 40, bullet = 50, laser = 30, energy = 10, bomb = 25, bio = 0, rad = 0)//ceramic plates fuck up in heat (laser)

/obj/item/clothing/suit/armor/vest/capcarapace/alt
	name = "captain's parade jacket"
	desc = "For when an armoured vest isn't fashionable enough."
	icon_state = "capformal"
	item_state = "capspacesuit"

/obj/item/clothing/suit/armor/riot
	name = "riot suit"
	desc = "A suit of armor with heavy padding to protect against melee attacks. Looks like it might impair movement."
	icon_state = "riot"
	item_state = "swat_suit"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	armor = list(melee = 50, bullet = 10, laser = 10, energy = 10, bomb = 0, bio = 0, rad = 0)
	flags_inv = HIDEJUMPSUIT
	strip_delay = 80
	put_on_delay = 60

/obj/item/clothing/suit/armor/bulletproof
	name = "bulletproof armor"
	desc = "A bulletproof vest that excels in protecting the wearer against traditional projectile weaponry and explosives to a minor extent."
	icon_state = "bulletproof"
	item_state = "armor"
	blood_overlay_type = "armor"
	armor = list(melee = 15, bullet = 65, laser = 10, energy = 10, bomb = 40, bio = 0, rad = 0)
	strip_delay = 70
	put_on_delay = 50

/obj/item/clothing/suit/armor/bulletproof/alt
	icon_state = "bulletproofalt"
	item_state = "armor"

/obj/item/clothing/suit/armor/laserproof
	name = "tesla armor"
	desc = "A prewar armor design by Nikola Tesla before being confinscated by the U.S. government. Provides the best energy weapons resistance."
	icon_state = "tesla_armor"
	item_state = "tesla_armor"
	blood_overlay_type = "armor"
	armor = list(melee = 65, bullet = 45, laser = 70, energy = 60, bomb = 35, bio = 0, rad = 5)
	var/hit_reflect_chance = 50
	body_parts_covered = CHEST|GROIN|FEET|HANDS
	slowdown = 0.5
	put_on_delay = 30
	strip_delay = 10
	flags_inv = HIDEJUMPSUIT

/obj/item/clothing/suit/armor/laserproof/IsReflect(def_zone)
	if(!(def_zone in list("chest", "groin", "feet", "hands"))) //If not shot where ablative is covering you, you don't get the reflection bonus!
		return 0
	if (prob(hit_reflect_chance))
		return 1

/obj/item/clothing/suit/armor/vest/det_suit
	name = "armor"
	desc = "An armored vest with a detective's badge on it."
	icon_state = "detective-armor"
	allowed = list(/obj/item/weapon/tank/internals/emergency_oxygen,/obj/item/weapon/reagent_containers/spray/pepper,/obj/item/device/flashlight,/obj/item/weapon/gun/energy,/obj/item/weapon/gun/projectile,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/weapon/melee/baton,/obj/item/weapon/restraints/handcuffs,/obj/item/weapon/storage/fancy/cigarettes,/obj/item/weapon/lighter,/obj/item/device/detective_scanner,/obj/item/device/taperecorder)
	burn_state = FLAMMABLE


//Reactive armor
//When the wearer gets hit, this armor will teleport the user a short distance away (to safety or to more danger, no one knows. That's the fun of it!)
/obj/item/clothing/suit/armor/reactive
	name = "reactive teleport armor"
	desc = "Someone seperated our Research Director from his own head!"
	var/active = 0
	icon_state = "tesla_chestplate"
	item_state = "metal_chestplate"
	blood_overlay_type = "armor"
	armor = list(melee = 0, bullet = 0, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0)
	action_button_name = "Toggle Armor"
	unacidable = 1
	hit_reaction_chance = 50


/obj/item/clothing/suit/armor/reactive/attack_self(mob/user)
	src.active = !( src.active )
	if (src.active)
		user << "<span class='notice'>[src] is now active.</span>"
		src.icon_state = "tesla_chestplate_on"
		src.item_state = "tesla_chestplate_on"
	else
		user << "<span class='notice'>[src] is now inactive.</span>"
		src.icon_state = "tesla_chestplate"
		src.item_state = "tesla_chestplate"
		src.add_fingerprint(user)
	return

/obj/item/clothing/suit/armor/reactive/emp_act(severity)
	active = 0
	src.icon_state = "tesla_chestplate"
	src.item_state = "tesla_chestplate"
	..()

/obj/item/clothing/suit/armor/reactive/hit_reaction(mob/living/carbon/human/owner, attack_text, final_block_chance)
	if(!active)
		return 0
	if(prob(hit_reaction_chance))
		var/mob/living/carbon/human/H = owner
		owner.visible_message("<span class='danger'>The reactive teleport system flings [H] clear of [attack_text]!</span>")
		var/list/turfs = new/list()
		for(var/turf/T in orange(6, H))
			if(T.density)
				continue
			if(T.x>world.maxx-6 || T.x<6)
				continue
			if(T.y>world.maxy-6 || T.y<6)
				continue
			turfs += T
		if(!turfs.len)
			turfs += pick(/turf in orange(6, H))
		var/turf/picked = pick(turfs)
		if(!isturf(picked))
			return
		if(H.buckled)
			H.buckled.unbuckle_mob()
		H.forceMove(picked)
		return 1
	return 0

/obj/item/clothing/suit/armor/reactive/fire
	name = "reactive incendiary armor"


/obj/item/clothing/suit/armor/reactive/fire/hit_reaction(mob/living/carbon/human/owner, attack_text)
	if(!active)
		return 0
	if(prob(hit_reaction_chance))
		owner.visible_message("<span class='danger'>The [src] blocks the [attack_text], sending out jets of flame!</span>")
		for(var/mob/living/carbon/C in range(6, owner))
			if(C != owner)
				C.fire_stacks += 8
				C.IgniteMob()
		owner.fire_stacks = -20
		return 1
	return 0


/obj/item/clothing/suit/armor/reactive/stealth
	name = "reactive stealth armor"

/obj/item/clothing/suit/armor/reactive/stealth/hit_reaction(mob/living/carbon/human/owner, attack_text)
	if(!active)
		return 0
	if(prob(hit_reaction_chance))
		var/mob/living/simple_animal/hostile/illusion/escape/E = new(owner.loc)
		E.Copy_Parent(owner, 50)
		E.GiveTarget(owner) //so it starts running right away
		E.Goto(owner, E.move_to_delay, E.minimum_distance)
		owner.alpha = 0
		owner.visible_message("<span class='danger'>[owner] is hit by [attack_text] in the chest!</span>") //We pretend to be hit, since blocking it would stop the message otherwise
		spawn(40)
			owner.alpha = initial(owner.alpha)
		return 1

/obj/item/clothing/suit/armor/reactive/tesla
	name = "tesla armor"
	armor = list(melee = 0, bullet = 0, laser = 100, energy = 100, bomb = 0, bio = 0, rad = 0) //That's tesla babe

/obj/item/clothing/suit/armor/reactive/tesla/hit_reaction(mob/living/carbon/human/owner, attack_text)
	if(!active)
		return 0
	if(prob(hit_reaction_chance))
		owner.visible_message("<span class='danger'>The [src] blocks the [attack_text], sending out arcs of lightning!</span>")
		for(var/mob/living/M in view(6, owner))
			if(M == owner)
				continue
			owner.Beam(M,icon_state="lightning[rand(1,12)]",icon='icons/effects/effects.dmi',time=5)
			M.adjustFireLoss(25)
			playsound(M, 'sound/machines/defib_zap.ogg', 50, 1, -1)
		return 1
//All of the armor below is mostly unused


/obj/item/clothing/suit/armor/centcom
	name = "\improper Centcom armor"
	desc = "A suit that protects against some damage."
	icon_state = "centcom"
	item_state = "centcom"
	w_class = 4//bulky item
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	allowed = list(/obj/item/weapon/gun/energy,/obj/item/weapon/melee/baton,/obj/item/weapon/restraints/handcuffs,/obj/item/weapon/tank/internals/emergency_oxygen)
	flags = THICKMATERIAL
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	cold_protection = CHEST | GROIN | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MAX_TEMP_PROTECT

/obj/item/clothing/suit/armor/heavy
	name = "heavy armor"
	desc = "A heavily armored suit that protects against moderate damage."
	icon_state = "heavy"
	item_state = "swat_suit"
	w_class = 4//bulky item
	gas_transfer_coefficient = 0.90
	flags = THICKMATERIAL
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	slowdown = 3
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT

/obj/item/clothing/suit/armor/tdome
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	flags = THICKMATERIAL
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS

/obj/item/clothing/suit/armor/tdome/red
	name = "thunderdome suit"
	desc = "Reddish armor."
	icon_state = "tdred"
	item_state = "tdred"

/obj/item/clothing/suit/armor/tdome/green
	name = "thunderdome suit"
	desc = "Pukish armor."	//classy.
	icon_state = "tdgreen"
	item_state = "tdgreen"


/obj/item/clothing/suit/armor/riot/knight
	name = "plate armour"
	desc = "A classic suit of plate armour, highly effective at stopping melee attacks."
	icon_state = "knight_green"
	item_state = "knight_green"

/obj/item/clothing/suit/armor/riot/knight/yellow
	icon_state = "knight_yellow"
	item_state = "knight_yellow"

/obj/item/clothing/suit/armor/riot/knight/blue
	icon_state = "knight_blue"
	item_state = "knight_blue"

/obj/item/clothing/suit/armor/riot/knight/red
	icon_state = "knight_red"
	item_state = "knight_red"

/obj/item/clothing/suit/armor/riot/knight/templar
	name = "crusader armour"
	desc = "God wills it!"
	icon_state = "knight_templar"
	item_state = "knight_templar"

/obj/item/clothing/suit/armor/riot/knight/tabard
	name = "tabard plate armor"
	desc = "A set of plate armor with tabard for owner's high-visibility during the combat."
	icon_state = "knight_tabard"
	item_state = "knight_tabard"

//Fluff

/obj/item/clothing/suit/armor/fluff/jensen
	name = "armored trenchcoat"
	desc = "A trenchcoat augmented with a special alloy for some protection and style."
	icon_state = "jensencoat"
	item_state = "jensencoat"
	flags = THICKMATERIAL
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	armor = list(melee = 50, bullet = 10, laser = 10, energy = 10, bomb = 0, bio = 0, rad = 0)
	unacidable = 1
	put_on_delay = 10
	strip_delay = 30

/obj/item/clothing/suit/armor/fluff/chestplate
	name = "metal armor"
	desc = "A set of polished plates formed together to form a crude set of armor."
	icon_state = "metal_chestplate"
	item_state = "metal_chestplate"
	body_parts_covered = CHEST|GROIN|FEET|HANDS
	armor = list(melee = 60, bullet = 40, laser = 30, energy = 15, bomb = 30, bio = 0, rad = 5)
	slowdown = 0.5
	put_on_delay = 30
	strip_delay = 10
	flags_inv = HIDEJUMPSUIT

/obj/item/clothing/suit/armor/fluff/chestplate/mk2
	name = "metal armor mk2"
	desc = "A set of polished plates formed together to form a fine set of armor."
	icon_state = "metal_chestplate2"
	item_state = "metal_chestplate2"
	body_parts_covered = CHEST|GROIN|FEET|HANDS
	armor = list(melee = 65, bullet = 45, laser = 40, energy = 25, bomb = 35, bio = 0, rad = 5)
	slowdown = 0.5
	put_on_delay = 30
	strip_delay = 10
//Fallout 13

/obj/item/clothing/suit/armor/f13/kit
	name = "armor kit"
	desc = "Separate armor parts you can wear over the clothing to get the most basic protection from the dangers of wasteland.<br>It is unable to reflect laser beams and probably won't shield you from a random bullet, but it sure is better than going into the battle without any armor at all."
	icon_state = "armorkit"
	item_state = "armorkit"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS
	armor = list(melee = 30, bullet = 20, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0)
	put_on_delay = 30
	strip_delay = 30

/obj/item/clothing/suit/armor/f13/raider
	name = "supa-fly raider armor"
	desc = "Fabulous mutant powers were revealed to me the day I held aloft my bumper sword and said...<br>BY THE POWER OF NUKA-COLA, I AM RAIDER MAN!"
	icon_state = "supafly"
	item_state = "supafly"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	armor = list(melee = 50, bullet = 20, laser = 10, energy = 10, bomb = 10, bio = 0, rad = 0)
	flags_inv = HIDEJUMPSUIT
	put_on_delay = 20
	strip_delay = 40

/obj/item/clothing/suit/armor/f13/raider/sadist
	name = "raider sadist armor"
	icon_state = "sadist"
	flags_inv = HIDEJUMPSUIT

/obj/item/clothing/suit/armor/f13/raider/blastmaster
	name = "raider blastmaster armor"
	icon_state = "blastmaster"
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	burn_state = FIRE_PROOF
	flash_protect = 2
	flags_inv = HIDEJUMPSUIT

/obj/item/clothing/suit/armor/f13/raider/yankee
	name = "yankee raider armor"
	desc = "A set of armor made from football player protective wear. Together we play."
	icon_state = "yankee"
	item_state = "yankee"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	armor = list(melee = 60, bullet = 30, laser = 20, energy = 20, bomb = 20, bio = 0, rad = 0)
	flags_inv = HIDEJUMPSUIT
	put_on_delay = 40
	strip_delay = 40

/obj/item/clothing/suit/armor/f13/leatherarmor
	name = "leather armor"
	desc = "A set of light armor made of boiled brahmin leather.<br>It should protect you against your average 9mm peashooter, but anything higher caliber will punch through it like butter."
	icon_state = "leatherarmor"
	item_state = "leatherarmor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS
	armor = list(melee = 60, bullet = 40, laser = 20, energy = 20, bomb = 20, bio = 0, rad = 0)
	flags_inv = HIDEJUMPSUIT
	put_on_delay = 40
	strip_delay = 40

/obj/item/clothing/suit/armor/f13/bmetalarmor
	name = "metal armor"
	desc = "A set of sturdy metal armor made from various bits of scrap metal. It looks like it might impair movement"
	icon_state = "bmetalarmor"
	item_state = "bmetalarmor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS
	armor = list(melee = 70, bullet = 50, laser = 20, energy = 20, bomb = 20, bio = 0, rad = 0)
	slowdown = 1
	flags_inv = HIDEJUMPSUIT
	put_on_delay = 60
	strip_delay = 60

/obj/item/clothing/suit/armor/f13/ibmetalarmor
	name = "metal armor Mk I"
	desc = "A set of improved metal armor made from various bits of scrap metal and upgraded with plasteel.<br>Will protect against bullets and dissipate lasers a bit better, still slowing you down."
	icon_state = "bmetalarmor"
	item_state = "bmetalarmor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS
	armor = list(melee = 70, bullet = 60, laser = 30, energy = 30, bomb = 30, bio = 0, rad = 0)
	slowdown = 1
	flags_inv = HIDEJUMPSUIT
	put_on_delay = 60
	strip_delay = 60

// salvaged/broken power armor, does not require PA training

/obj/item/clothing/suit/armor/f13/brokenpa
	unacidable = 1
	slowdown = 3
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS
	flags_inv = HIDEJUMPSUIT
	put_on_delay = 100
	strip_delay = 200

/obj/item/clothing/suit/armor/f13/brokenpa/t45b
	name = "Salvaged T-45b power armor"
	desc = "It's a set of T-45b power armor recovered by the NCR during the NCR-Brotherhood War.<br>NCR technicians have restored it to working order by replacing the back-mounted cylinders with a custom air conditioning module and stripping out the joint servomotors."
	icon_state = "t45bpowerarmor"
	item_state = "t45bpowerarmor"
	armor = list(melee = 60, bullet = 60, laser = 55, energy = 50, bomb = 50, bio = 100, rad = 50)

// power armor

/obj/item/clothing/suit/armor/f13/power_armor
	unacidable = 1
	slowdown = 1
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS
	flags_inv = HIDEJUMPSUIT
	put_on_delay = 100
	strip_delay = 200

/obj/item/clothing/suit/armor/f13/power_armor/mob_can_equip(mob/user, slot)
	if (ishuman(user))
		var/mob/living/carbon/human/H = user
		if (!H.martial_art && H.martial_art.name != "Power Armor Training" && slot == slot_wear_suit)
			H << "<span class='warning'>You don't have the proper training to operate the power armor!</span>"
			return 0
			..()
	return ..()

/obj/item/clothing/suit/armor/f13/power_armor/t45d
	name = "T-45d power armor"
	desc = "Originally developed and manufactured for the United States Army by American defense contractor West Tek, the T-45d power armor was the first version of power armor to be successfully deployed in battle."
	icon_state = "t45dpowerarmor"
	item_state = "t45dpowerarmor"
	armor = list(melee = 70, bullet = 60, laser = 60, energy = 50, bomb = 50, bio = 100, rad = 60)

/obj/item/clothing/suit/armor/f13/power_armor/t51b
	name = "T-51b power armor"
	desc = "The pinnacle of pre-war technology. This suit of power armor provides substantial protection to the wearer."
	icon_state = "t51bpowerarmor"
	item_state = "t51bpowerarmor"
	armor = list(melee = 75, bullet = 65, laser = 65, energy = 55, bomb = 55, bio = 100, rad = 95)

/obj/item/clothing/suit/armor/f13/power_armor/advanced
	name = "Advanced power armor"
	desc = "An advanced suit of armor typically used by the Enclave.<br>It is composed of lightweight metal alloys, reinforced with ceramic castings at key stress points.<br>Additionally, like the T-51b power armor, it includes a recycling system that can convert human waste into drinkable water, and an air conditioning system for it's user's comfort."
	icon_state = "advpowerarmor1"
	item_state = "advpowerarmor1"
	armor = list(melee = 75, bullet = 65, laser = 65, energy = 60, bomb = 60, bio = 100, rad = 70)

/obj/item/clothing/suit/armor/f13/power_armor/advanced/mk2
	name = "Advanced power armor MKII"
	desc = "It's an improved model of advanced power armor used exclusively by the Enclave military forces, developed after the Great War.<br>Like its older brother, the standard advanced power armor, it's matte black with a menacing appearance, but with a few significant differences - it appears to be composed entirely of lightweight ceramic composites rather than the usual combination of metal and ceramic plates.<br>Additionally, like the T-51b power armor, it includes a recycling system that can convert human waste into drinkable water, and an air conditioning system for it's user's comfort."
	icon_state = "advpowerarmor2"
	item_state = "advpowerarmor2"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS
	armor = list(melee = 80, bullet = 70, laser = 70, energy = 70, bomb = 70, bio = 100, rad = 80)

/obj/item/clothing/suit/armor/f13/power_armor/tesla
	name = "tesla power armor"
	desc = "A variant of the Enclave's advanced power armor Mk I, jury-rigged with a Tesla device that is capable of dispersing a large percentage of the damage done by directed-energy attacks.<br>As it's made of complex composite materials designed to block most of energy damage - it's notably weaker against kinetic impacts."
	icon_state = "tesla"
	item_state = "tesla"
	armor = list(melee = 40, bullet = 25, laser = 75, energy = 75, bomb = 30, bio = 100, rad = 95)

//Fallout 13

/obj/item/clothing/suit/armor/f13/kit
	name = "armor kit"
	desc = "Separate armor parts you can wear over the clothing to get the most basic protection from the dangers of wasteland.<br>It is unable to reflect laser beams and probably won't shield you from a random bullet, but it sure is better than going into the battle without any armor at all."
	icon_state = "armorkit"
	item_state = "armorkit"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS
	armor = list(melee = 30, bullet = 15, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0)
	put_on_delay = 30
	strip_delay = 30

/obj/item/clothing/suit/armor/f13/leatherarmor
	name = "leather armor"
	desc = "A set of light armor made of boiled brahmin leather.<br>It should protect you against your average 9mm peashooter, but anything higher caliber will punch through it like butter."
	icon_state = "leatherarmor"
	item_state = "leatherarmor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS
	armor = list(melee = 50, bullet = 30, laser = 10, energy = 10, bomb = 10, bio = 0, rad = 0)
	flags_inv = HIDEJUMPSUIT
	put_on_delay = 40
	strip_delay = 40

/obj/item/clothing/suit/armor/f13/bmetalarmor
	name = "raider metal armor"
	desc = "A set of sturdy metal armor made from various bits of scrap metal. It looks like it might impair movement"
	icon_state = "bmetalarmor"
	item_state = "bmetalarmor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS
	armor = list(melee = 60, bullet = 35, laser = 20, energy = 20, bomb = 20, bio = 0, rad = 5)
	slowdown = 1
	flags_inv = HIDEJUMPSUIT
	put_on_delay = 60
	strip_delay = 60

/obj/item/clothing/suit/armor/f13/legrecruit
	name = "legion recruit armor"
	desc = "Legion recruit armor is a common light armor, supplied to recruit legionaries and to recruit decanus units. Like most Legion armor, it is made from repurposed sports equipment, consisting of a football player's protective shoulder and chest pads reinforced with additional leather padding and worn over a baseball catcher's vest."
	icon_state = "legrecruit"
	item_state = "legrecruit"
	body_parts_covered = CHEST|GROIN|LEGS|FEET
	armor = list(melee = 55, bullet = 40, laser = 15, energy = 10, bomb = 40, bio = 0, rad = 0)
	put_on_delay = 60
	strip_delay = 60

/obj/item/clothing/suit/armor/f13/legrecruit/vet
	name = "legion veteran armor"
	armor = list (melee = 60, bullet = 45, laser = 15, energy = 10, bomb = 20, bio = 0, rad = 0)

/obj/item/clothing/suit/armor/f13/legvexil
	name = "Legion vexillarius armor"
	desc = "The armor appears to be based off of a suit of Legion veteran armor, with the addition of circular metal plates attached to the torso, as well as a banner displaying the flag of the Legion worn on the back."
	icon_state = "legvexil"
	item_state = "legvexil"
	body_parts_covered = CHEST|GROIN|LEGS|FEET
	armor = list(melee = 60, bullet = 45, laser = 15, energy = 10, bomb = 20, bio = 0, rad = 0)
	put_on_delay = 60
	strip_delay = 60

/obj/item/clothing/suit/armor/f13/legcenturion
	name = "Legion centurion armor"
	desc = "The Legion centurion armor is by far the strongest suit of armor available to Caesar's Legion. The armor is composed from other pieces of armor taken from that of the wearer's defeated opponents in combat."
	icon_state = "legcenturion"
	item_state = "legcenturion"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS
	armor = list(melee = 80, bullet = 60, laser = 35, energy = 20, bomb = 20, bio = 0, rad = 35)
	put_on_delay = 60
	strip_delay = 60

/obj/item/clothing/suit/armor/f13/leglegat
	name = "Legion legat armor"
	desc = "The armor appears to be a full suit of heavy gauge steel and offers full body protection. It also has a cloak in excellent condition, but the armor itself bears numerous battle scars and the helmet is missing half of the left horn. The Legate's suit appears originally crafted, in contrast to other Legion armor which consists of repurposed pre-War sports equipment."
	icon_state = "leglegat"
	item_state = "leglegat"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS
	armor = list(melee = 85, bullet = 50, laser = 35, energy = 30, bomb = 30, bio = 0, rad = 45)
	put_on_delay = 60
	strip_delay = 60

/obj/item/clothing/suit/armor/f13/combat
	name = "combat armor"
	desc = "An old combat armor, out of use around the time of the war."
	icon_state = "combat_armor"
	item_state = "combat_armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET
	armor = list(melee = 45, bullet = 30, laser = 15, energy = 20, bomb = 20, bio = 0, rad = 0)
	put_on_delay = 60
	strip_delay = 60

/obj/item/clothing/suit/armor/f13/combat/mk2
	name = "combat armor mk2"
	desc = "An enhanced version of the common combat armor."
	icon_state = "combat_armor_mk2"
	item_state = "combat_armor_mk2"
	armor = list(melee = 40, bullet = 40, laser = 20, energy = 25, bomb = 20, bio = 0, rad = 75)

/obj/item/clothing/suit/armor/f13/combat/ncr
	name = "ranger patrol armor"
	desc = "A set of standard issue ranger patrol armor that provides defense similar to a suit of pre-war combat armor."
	icon_state = "ncr_patrol"
	item_state = "ncr_patrol"

/obj/item/clothing/suit/armor/f13/combat/brotherhood
	name = "brotherhood combat armor"
	desc = "A superior combat armor set made by the Brotherhood of Steel, standard issue for all initiates."
	icon_state = "brotherhood_armor"
	item_state = "brotherhood_armor"
	armor = list(melee = 40, bullet = 40, laser = 25, energy = 10, bomb = 20, bio = 0, rad = 60)

/obj/item/clothing/suit/armor/f13/rangercombat
	name = "ranger combat armor"
	desc = "The NCR ranger combat armor, or black armor consists of a pre-war L.A.P.D. riot suit under a duster with rodeo jeans. Considered one of the most prestigious suits of armor to earn and wear while in service of the NCR Rangers."
	icon_state = "ranger"
	item_state = "ranger"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS
	armor = list(melee = 50, bullet = 45, laser = 25, energy = 20, bomb = 20, bio = 0, rad = 80)
	put_on_delay = 60
	strip_delay = 60

/obj/item/clothing/suit/armor/f13/rangercombat/desert
	name = "desert ranger combat armor"
	desc = "This is the original armor the NCR Ranger Combat armor was based off of. An awe inspiring suit of armor used by the legendary Desert Rangers."
	icon_state = "desert_ranger"
	item_state = "desert_ranger"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS
	armor = list(melee = 70, bullet = 70, laser = 55, energy = 30, bomb = 30, bio = 0, rad = 900)

/obj/item/clothing/suit/armor/f13/rangercombat/eliteriot
	name = "elite riot gear"
	desc = "A heavily reinforced set of military grade armor, commonly seen in the Divide now repurposed and reissued to Chief Rangers."
	icon_state = "elite_riot"
	item_state = "elite_riot"
	armor = list(melee = 75, bullet = 75, laser = 60, energy = 35, bomb = 35, bio = 0, rad = 100)

/obj/item/clothing/suit/armor/f13/ncrarmor
	name = "NCR vest"
	desc = "A standard issue NCR protective vest."
	icon_state = "ncr_vest"
	item_state = "ncr_vest"
	body_parts_covered = CHEST|GROIN|LEGS|FEET
	armor = list(melee = 30, bullet = 35, laser = 15, energy = 10, bomb = 40, bio = 0, rad = 0)
	put_on_delay = 60
	strip_delay = 60

/obj/item/clothing/suit/armor/f13/ncrarmor/mantle
	name = "NCR mantle vest"
	desc = "An NCR protective vest with a hide mantle over one shoulder. Commonly issued to NCOs and COs as well."
	icon_state = "ncr_mantle"
	item_state = "ncr_mantle"
	armor = list(melee = 35, bullet = 40, laser = 15, energy = 10, bomb = 40, bio = 0, rad = 0)
