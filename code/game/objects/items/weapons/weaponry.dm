/obj/item/weapon/banhammer
	desc = "A banhammer"
	name = "banhammer"
	icon = 'icons/obj/items.dmi'
	icon_state = "toyhammer"
	slot_flags = SLOT_BELT
	throwforce = 0
	w_class = 1
	throw_speed = 3
	throw_range = 7
	attack_verb = list("banned")

/obj/item/weapon/banhammer/suicide_act(mob/user)
		user.visible_message("<span class='suicide'>[user] is hitting \himself with the [src.name]! It looks like \he's trying to ban \himself from life.</span>")
		return (BRUTELOSS|FIRELOSS|TOXLOSS|OXYLOSS)

/obj/item/weapon/banhammer/attack(mob/M, mob/user)
	M << "<font color='red'><b> You have been banned FOR NO REISIN by [user]<b></font>"
	user << "<font color='red'>You have <b>BANNED</b> [M]</font>"
	playsound(loc, 'sound/effects/adminhelp.ogg', 15) //keep it at 15% volume so people don't jump out of their skin too much


/obj/item/weapon/nullrod
	name = "null rod"
	desc = "A rod of pure obsidian, its very presence disrupts and dampens the powers of Nar-Sie's followers."
	icon_state = "nullrod"
	item_state = "nullrod"
	slot_flags = SLOT_BELT
	force = 15
	throw_speed = 3
	throw_range = 4
	throwforce = 10
	w_class = 1

/obj/item/weapon/nullrod/suicide_act(mob/user)
	user.visible_message("<span class='suicide'>[user] is impaling \himself with the [src.name]! It looks like \he's trying to commit suicide.</span>")
	return (BRUTELOSS|FIRELOSS)

//powergauntlet
/obj/item/weapon/powergauntlet
	name = "Powergauntlet"
	desc = "Power Knuckles 'Big ram' produced by Beau. Most consider him the best weapon for close combat. The rest of it's just fear. Power is provided by small batteries"
	icon_state = "powergauntlet"
	item_state = "powergauntlet"
	slot_flags = SLOT_BELT
	force = 35
	throw_speed = 3
	throw_range = 4
	throwforce = 10
	w_class = 1

/obj/item/weapon/powergauntlet/suicide_act(mob/user)
	user.visible_message("<span class='suicide'>[user] is impaling \himself with the [src.name]! It looks like \he's trying to commit suicide.</span>")
	return (BRUTELOSS|FIRELOSS)

//pipe
/obj/item/weapon/pipe
	name = "Pipe"
	desc = "One of the ends has tape wrapped around it to improve grip, while the other is heavily corroded and/or bloodstained, and topped with a pipe fitting. Though it has a short reach, it has decent damage and a fast swing, making it a good melee weapon for players who are just starting out. "
	icon_state = "pipe"
	item_state = "pipe"
	slot_flags = SLOT_BELT
	force = 20
	throw_speed = 3
	throw_range = 4
	throwforce = 20
	w_class = 1

/obj/item/weapon/pipe/suicide_act(mob/user)
	user.visible_message("<span class='suicide'>[user] is impaling \himself with the [src.name]! It looks like \he's trying to commit suicide.</span>")
	return (BRUTELOSS|FIRELOSS)

//golf
/obj/item/weapon/golf
	name = "9 iron"
	desc = "This old 9 iron is bent and battered after many years of exposure to the elements."
	icon_state = "golf"
	item_state = "golf"
	slot_flags = SLOT_BELT
	force = 30
	throw_speed = 3
	throw_range = 4
	throwforce = 10
	w_class = 1

/obj/item/weapon/golf/suicide_act(mob/user)
	user.visible_message("<span class='suicide'>[user] is impaling \himself with the [src.name]! It looks like \he's trying to commit suicide.</span>")
	return (BRUTELOSS|FIRELOSS)

//mhatt's fallout
/obj/item/weapon/bumpersword
	name = "Bumper Sword"
	desc = "A rusty car bumper that has been flattened and sharpened into a thick, heavy blade. The license plate is still attached, and an exhaust pipe strapped to the unsharpened end serves as a makeshift handle."
	icon_state = "a_blade"
	item_state = "a_blade"
	slot_flags = SLOT_BELT | SLOT_BACK
	force = 30
	throw_speed = 1
	throw_range = 2
	throwforce = 10
	w_class = 4

/obj/item/weapon/bumpersword/suicide_act(mob/user)
	user.visible_message("<span class='suicide'>[user] is impaling \himself with the [src.name]! It looks like \he's trying to commit suicide.</span>")
	return (BRUTELOSS|FIRELOSS)

//misc
/obj/item/weapon/sord
	name = "\improper SORD"
	desc = "This thing is so unspeakably shitty you are having a hard time even holding it."
	icon_state = "sord"
	item_state = "sord"
	slot_flags = SLOT_BELT
	force = 2
	throwforce = 1
	w_class = 3
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")

/obj/item/weapon/sord/suicide_act(mob/user)
	user.visible_message("<span class='suicide'>[user] is impaling \himself with the [src.name]! It looks like \he's trying to commit suicide.</span>")
	return(BRUTELOSS)

/obj/item/weapon/claymore
	name = "claymore"
	desc = "What are you standing around staring at this for? Get to killing!"
	icon_state = "claymore"
	item_state = "claymore"
	hitsound = 'sound/weapons/bladeslice.ogg'
	flags = CONDUCT
	slot_flags = SLOT_BELT | SLOT_BACK
	force = 40
	throwforce = 10
	w_class = 3
	attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
	block_chance = 20
	sharpness = IS_SHARP
	drawsound = 'sound/items/unholster_sword01.ogg'

/obj/item/weapon/claymore/suicide_act(mob/user)
	user.visible_message("<span class='suicide'>[user] is falling on the [src.name]! It looks like \he's trying to commit suicide.</span>")
	return(BRUTELOSS)

/obj/item/weapon/katana
	name = "katana"
	desc = "Woefully underpowered in D20"
	icon_state = "katana"
	item_state = "katana"
	flags = CONDUCT
	slot_flags = SLOT_BELT | SLOT_BACK
	force = 40
	throwforce = 10
	w_class = 3
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
	block_chance = 20
	sharpness = IS_SHARP
	drawsound = 'sound/items/unholster_sword02.ogg'

/obj/item/weapon/katana/cursed
	slot_flags = null

/obj/item/weapon/katana/suicide_act(mob/user)
	user.visible_message("<span class='suicide'>[user] is slitting \his stomach open with the [src.name]! It looks like \he's trying to commit seppuku.</span>")
	return(BRUTELOSS)

//machete
/obj/item/weapon/machete
	name = "Machete"
	desc = "The machete appears to be a makeshift weapon, and consists of a lawn mower blade strapped to a wooden handle. It is the primary melee weapon of Caesar's Legion. Aside from having a low Strength requirement, it also does bonus damage to limbs."
	icon_state = "imp_machete"
	item_state = "machete"
	flags = CONDUCT
	slot_flags = SLOT_BELT | SLOT_BACK
	force = 35
	throwforce = 15
	w_class = 3
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
	block_chance = 20
	sharpness = IS_SHARP
	drawsound = 'sound/items/unholster_sword03.ogg'

/obj/item/weapon/wirerod
	name = "wired rod"
	desc = "A rod with some wire wrapped around the top. It'd be easy to attach something to the top bit."
	icon_state = "wiredrod"
	item_state = "rods"
	flags = CONDUCT
	force = 9
	throwforce = 10
	w_class = 3
	materials = list(MAT_METAL=1000)
	attack_verb = list("hit", "bludgeoned", "whacked", "bonked")

/obj/item/weapon/wirerod/attackby(obj/item/I, mob/user, params)
	..()
	if(istype(I, /obj/item/weapon/shard))
		var/obj/item/weapon/twohanded/spear/S = new /obj/item/weapon/twohanded/spear

		if(!remove_item_from_storage(user))
			user.unEquip(src)
		user.unEquip(I)

		user.put_in_hands(S)
		user << "<span class='notice'>You fasten the glass shard to the top of the rod with the cable.</span>"
		qdel(I)
		qdel(src)

	else if(istype(I, /obj/item/weapon/wirecutters) && !(I.flags & NODROP))
		var/obj/item/weapon/melee/baton/cattleprod/P = new /obj/item/weapon/melee/baton/cattleprod

		if(!remove_item_from_storage(user))
			user.unEquip(src)
		user.unEquip(I)

		user.put_in_hands(P)
		user << "<span class='notice'>You fasten the wirecutters to the top of the rod with the cable, prongs outward.</span>"
		qdel(I)
		qdel(src)


/obj/item/weapon/throwing_star
	name = "throwing star"
	desc = "An ancient weapon still used to this day due to it's ease of lodging itself into victim's body parts"
	icon_state = "throwingstar"
	item_state = "eshield0"
	force = 2
	throwforce = 20 //This is never used on mobs since this has a 100% embed chance.
	throw_speed = 4
	embedded_pain_multiplier = 4
	w_class = 2
	embed_chance = 100
	embedded_fall_chance = 0 //Hahaha!
	sharpness = IS_SHARP
	materials = list(MAT_METAL=500, MAT_GLASS=500)


/obj/item/weapon/switchblade
	name = "switchblade"
	icon_state = "switchblade"
	desc = "A sharp, concealable, spring-loaded knife."
	flags = CONDUCT
	force = 3
	w_class = 2
	throwforce = 5
	throw_speed = 3
	throw_range = 6
	materials = list(MAT_METAL=12000)
	origin_tech = "materials=1"
	hitsound = 'sound/weapons/Genhit.ogg'
	attack_verb = list("stubbed", "poked")
	var/extended = 0

/obj/item/weapon/switchblade/attack_self(mob/user)
	extended = !extended
	playsound(src.loc, 'sound/weapons/batonextend.ogg', 50, 1)
	if(extended)
		force = 20
		w_class = 3
		throwforce = 23
		icon_state = "switchblade_ext"
		attack_verb = list("slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
		hitsound = 'sound/weapons/bladeslice.ogg'
	else
		force = 3
		w_class = 2
		throwforce = 5
		icon_state = "switchblade"
		attack_verb = list("stubbed", "poked")
		hitsound = 'sound/weapons/Genhit.ogg'

/obj/item/weapon/switchblade/suicide_act(mob/user)
	user.visible_message("<span class='suicide'>[user] is slitting \his own throat with the [src.name]! It looks like \he's trying to commit suicide.</span>")
	return (BRUTELOSS)

/obj/item/weapon/phone
	name = "red phone"
	desc = "Should anything ever go wrong..."
	icon = 'icons/obj/items.dmi'
	icon_state = "red_phone"
	force = 3
	throwforce = 2
	throw_speed = 3
	throw_range = 4
	w_class = 2
	attack_verb = list("called", "rang")
	hitsound = 'sound/weapons/ring.ogg'

/obj/item/weapon/phone/suicide_act(mob/user)
	if(locate(/obj/structure/bed/stool) in user.loc)
		user.visible_message("<span class='notice'>[user] begins to tie a noose with the [src.name]'s cord! It looks like \he's trying to commit suicide.</span>")
	else
		user.visible_message("<span class='notice'>[user] is strangling \himself with the [src.name]'s cord! It looks like \he's trying to commit suicide.</span>")
	return(OXYLOSS)

/obj/item/weapon/cane
	name = "cane"
	desc = "A cane used by a true gentleman. Or a clown."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "cane"
	item_state = "stick"
	force = 5
	throwforce = 5
	w_class = 2
	materials = list(MAT_METAL=50)
	attack_verb = list("bludgeoned", "whacked", "disciplined", "thrashed")

/obj/item/weapon/staff
	name = "wizard staff"
	desc = "Apparently a staff used by the wizard."
	icon = 'icons/obj/wizard.dmi'
	icon_state = "staff"
	force = 3
	throwforce = 5
	throw_speed = 2
	throw_range = 5
	w_class = 2
	flags = NOSHIELD
	attack_verb = list("bludgeoned", "whacked", "disciplined")
	burn_state = FLAMMABLE

/obj/item/weapon/staff/broom
	name = "broom"
	desc = "Used for sweeping, and flying into the night while cackling. Black cat not included."
	icon = 'icons/obj/wizard.dmi'
	icon_state = "broom"
	burn_state = FLAMMABLE

/obj/item/weapon/staff/stick
	name = "stick"
	desc = "A great tool to drag someone else's drinks across the bar."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "stick"
	item_state = "stick"
	force = 3
	throwforce = 5
	throw_speed = 2
	throw_range = 5
	w_class = 2
	flags = NOSHIELD

/obj/item/weapon/ectoplasm
	name = "ectoplasm"
	desc = "spooky"
	gender = PLURAL
	icon = 'icons/obj/wizard.dmi'
	icon_state = "ectoplasm"

/obj/item/weapon/ectoplasm/suicide_act(mob/user)
	user.visible_message("<span class='suicide'>[user] is inhaling the [src.name]! It looks like \he's trying to visit the astral plane.</span>")
	return (OXYLOSS)

/obj/item/weapon/mounted_chainsaw
	name = "mounted chainsaw"
	desc = "A chainsaw that has replaced your arm."
	icon_state = "chainsaw_on"
	item_state = "mounted_chainsaw"
	flags = ABSTRACT
	w_class = 5.0
	force = 21
	throwforce = 0
	throw_range = 0
	throw_speed = 0
	sharpness = IS_SHARP
	attack_verb = list("sawed", "torn", "cut", "chopped", "diced")
	hitsound = "sound/weapons/chainsawhit.ogg"

//Fallout 13

//obj/item/weapon/tailclub
//	name = "tail club"
//	desc = "For the beating to death of lizards with their own tails."
//	icon_state = "tailclub"
//	force = 14
//	throwforce = 1 // why are you throwing a club do you even weapon
//	throw_speed = 1
//	throw_range = 1
//	attack_verb = list("clubbed", "bludgeoned")
//	origin_tech = "combat=1"
//TODO - MOVE THESE TO WASTE MOBS DM - GOMBLE
/obj/item/weapon/reagent_containers/food/snacks/radlegred
	name = "red rad leg"
	icon_state = "radslegred"
	desc = "ew a red leg"

/obj/item/weapon/reagent_containers/food/snacks/radlegblue
	name = "blue rad leg"
	icon_state = "radslegblue"
	desc = "ew a blue leg"
//TODO - BLUE SHOULD BE SUBCLASS OF RED, OR VISA VERSA - GOMBLE
/obj/item/weapon/reagent_containers/food/snacks/meat/slab/spider/radmeatred
	name = "red rad meat"
	icon_state = "radsmeatred"
	desc = "ew red meat"

/obj/item/weapon/reagent_containers/food/snacks/meat/slab/spider/radmeatblue
	name = "blue rad meat"
	icon_state = "radsmeatblue"
	desc = "ew blue meat"
