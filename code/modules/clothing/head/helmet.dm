/obj/item/clothing/head/helmet
	name = "helmet"
	desc = "Standard Security gear. Protects the head from impacts."
	icon_state = "helmet"
	flags = HEADBANGPROTECT
	item_state = "helmet"
	armor = list(melee = 40, bullet = 25, laser = 25,energy = 10, bomb = 25, bio = 0, rad = 0)
	flags_inv = HIDEEARS|HIDEEYES
	cold_protection = HEAD
	min_cold_protection_temperature = HELMET_MIN_TEMP_PROTECT
	heat_protection = HEAD
	max_heat_protection_temperature = HELMET_MAX_TEMP_PROTECT
	strip_delay = 60
	burn_state = FIRE_PROOF
	flags_cover = HEADCOVERSEYES


/obj/item/clothing/head/helmet/New()
	..()

/obj/item/clothing/head/helmet/emp_act(severity)
	..()

/obj/item/clothing/head/helmet/sec
	can_flashlight = 1

/obj/item/clothing/head/helmet/alt
	name = "bulletproof helmet"
	desc = "A bulletproof combat helmet that excels in protecting the wearer against traditional projectile weaponry and explosives to a minor extent."
	icon_state = "helmetalt"
	item_state = "helmetalt"
	armor = list(melee = 15, bullet = 60, laser = 10, energy = 10, bomb = 40, bio = 0, rad = 0)

/obj/item/clothing/head/helmet/riot
	name = "riot helmet"
	desc = "It's a helmet specifically designed to protect against close range attacks."
	icon_state = "riot"
	item_state = "helmet"
	toggle_message = "You pull the visor down on"
	alt_toggle_message = "You push the visor up on"
	can_toggle = 1
	flags = HEADBANGPROTECT
	armor = list(melee = 60, bullet = 15, laser = 5,energy = 5, bomb = 5, bio = 2, rad = 0)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE
	strip_delay = 80
	action_button_name = "Toggle Helmet Visor"
	visor_flags_inv = HIDEMASK|HIDEEYES|HIDEFACE
	toggle_cooldown = 0
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH

/obj/item/clothing/head/helmet/attack_self()
	if(usr.canmove && !usr.stat && !usr.restrained() && can_toggle)
		if(world.time > cooldown + toggle_cooldown)
			cooldown = world.time
			up = !up
			if(up)
				flags &= ~(visor_flags)
				flags_inv &= ~(visor_flags_inv)
				flags_cover &= 0
				icon_state = "[initial(icon_state)]up"
				usr << "[alt_toggle_message] \the [src]"
				usr.update_inv_head()
				if(active_sound)
					while(up)
						playsound(src.loc, "[active_sound]", 100, 0, 4)
						sleep(15)
			else
				flags |= (visor_flags)
				flags_inv |= (visor_flags_inv)
				flags_cover = initial(flags_cover)
				icon_state = initial(icon_state)
				usr << "[toggle_message] \the [src]."
				usr.update_inv_head()


/obj/item/clothing/head/helmet/justice
	name = "helmet of justice"
	desc = "WEEEEOOO. WEEEEEOOO. WEEEEOOOO."
	icon_state = "justice"
	toggle_message = "You turn off the lights on"
	alt_toggle_message = "You turn on the lights on"
	action_button_name = "Toggle Justice Lights"
	can_toggle = 1
	toggle_cooldown = 20
	active_sound = 'sound/items/WEEOO1.ogg'

/obj/item/clothing/head/helmet/justice/escape
	name = "alarm helmet"
	desc = "WEEEEOOO. WEEEEEOOO. STOP THAT MONKEY. WEEEOOOO."
	icon_state = "justice2"
	toggle_message = "You turn off the light on"
	alt_toggle_message = "You turn on the light on"
	action_button_name = "Toggle Alarm Lights"

/obj/item/clothing/head/helmet/swat
	name = "\improper SWAT helmet"
	desc = "A decent helmet providing head protection"
	icon_state = "swatsyndie"
	item_state = "swatsyndie"
	armor = list(melee = 40, bullet = 20, laser = 25,energy = 15, bomb = 20, bio = 10, rad = 0)
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_HELM_MIN_TEMP_PROTECT
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_HELM_MAX_TEMP_PROTECT
	flags = STOPSPRESSUREDMAGE
	strip_delay = 80

/obj/item/clothing/head/helmet/swat/nanotrasen
	name = "\improper SWAT helmet"
	desc = "An extremely robust, space-worthy helmet with the Nanotrasen logo emblazoned on the top."
	icon_state = "swat"
	item_state = "swat"

/obj/item/clothing/head/helmet/thunderdome
	name = "\improper Thunderdome helmet"
	desc = "<i>'Let the battle commence!'</i>"
	icon_state = "thunderdome"
	item_state = "thunderdome"
	armor = list(melee = 40, bullet = 30, laser = 25,energy = 10, bomb = 25, bio = 10, rad = 0)
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_HELM_MIN_TEMP_PROTECT
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_HELM_MAX_TEMP_PROTECT
	strip_delay = 80

/obj/item/clothing/head/helmet/thunderdome/magneto
	name = "magneto's helmet"
	desc = "This helmet helps to resist all but the strongest or most unexpected of telepathic attacks.<br>This is achieved due to technology wired into the helmet itself."
	icon_state = "thunderdome"
	item_state = "thunderdome"

/obj/item/clothing/head/helmet/roman
	name = "roman helmet"
	desc = "An ancient helmet made of bronze and leather."
	flags_cover = HEADCOVERSEYES
	armor = list(melee = 25, bullet = 0, laser = 25, energy = 10, bomb = 10, bio = 0, rad = 0)
	icon_state = "roman"
	item_state = "roman"
	strip_delay = 100

/obj/item/clothing/head/helmet/roman/legionaire
	name = "roman legionaire helmet"
	desc = "An ancient helmet made of bronze and leather. Has a red crest on top of it."
	icon_state = "roman_c"
	item_state = "roman_c"

/obj/item/clothing/head/helmet/gladiator
	name = "gladiator helmet"
	desc = "Ave, Imperator, morituri te salutant."
	icon_state = "gladiator"
	flags = BLOCKHAIR
	item_state = "gladiator"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES
	flags_cover = HEADCOVERSEYES

/obj/item/clothing/head/helmet/redtaghelm
	name = "red laser tag helmet"
	desc = "They have chosen their own end."
	icon_state = "redtaghelm"
	flags_cover = HEADCOVERSEYES
	item_state = "redtaghelm"
	armor = list(melee = 15, bullet = 10, laser = 20,energy = 10, bomb = 20, bio = 0, rad = 0)
	// Offer about the same protection as a hardhat.
	flags_inv = HIDEEARS|HIDEEYES

/obj/item/clothing/head/helmet/bluetaghelm
	name = "blue laser tag helmet"
	desc = "They'll need more men."
	icon_state = "bluetaghelm"
	flags_cover = HEADCOVERSEYES
	item_state = "bluetaghelm"
	armor = list(melee = 15, bullet = 10, laser = 20,energy = 10, bomb = 20, bio = 0, rad = 0)
	// Offer about the same protection as a hardhat.
	flags_inv = HIDEEARS|HIDEEYES

/obj/item/clothing/head/helmet/knight
	name = "medieval helmet"
	desc = "A classic metal helmet."
	icon_state = "knight_green"
	item_state = "knight_green"
	armor = list(melee = 31, bullet = 10, laser = 10,energy = 5, bomb = 5, bio = 2, rad = 0)
	flags = BLOCKHAIR
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	strip_delay = 80

/obj/item/clothing/head/helmet/knight/blue
	icon_state = "knight_blue"
	item_state = "knight_blue"

/obj/item/clothing/head/helmet/knight/yellow
	icon_state = "knight_yellow"
	item_state = "knight_yellow"

/obj/item/clothing/head/helmet/knight/red
	icon_state = "knight_red"
	item_state = "knight_red"

/obj/item/clothing/head/helmet/knight/templar
	name = "crusader helmet"
	desc = "Deus Vult."
	icon_state = "knight_templar"
	item_state = "knight_templar"

/obj/item/clothing/head/helmet/knight/fluff/metal
	name = "metal helmet"
	icon_state = "metalhelmet"
	item_state = "metalhelmet"

/obj/item/clothing/head/helmet/knight/fluff/rider
	name = "rider helmet" //Not raider. Rider.
	desc = "It's a fancy dark metal helmet with orange spray painted flames."
	icon_state = "rider"
	item_state = "rider"

//Fallout 13

/obj/item/clothing/head/helmet/riot/vaultsec
	name = "security helmet"
	desc = "A standard issue vault security helmet, pretty robust."
	armor = list(melee = 60, bullet = 20, laser = 25,energy = 10, bomb = 25, bio = 2, rad = 0)

//Raider
/obj/item/clothing/head/helmet/f13/raider
	name = "supa-fly raider helmet"
	desc = "It's a makeshift raider helmet, made of leather. It heavily smells with chems and sweat."
	icon_state = "supafly"
	item_state = "supafly"
	flags = HEADCOVERSEYES | HEADCOVERSMOUTH | BLOCKHAIR
	armor = list(melee = 20, bullet = 10, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE

/obj/item/clothing/head/helmet/f13/raider/arclight
	name = "raider arclight helmet"
	desc = "This will protect you against flashes."
	icon_state = "arclight"
	item_state = "arclight"
	flags = HEADCOVERSEYES | HEADCOVERSMOUTH
	armor = list(melee = 30, bullet = 15, laser = 10, energy = 10, bomb = 10, bio = 0, rad = 0)

/obj/item/clothing/head/helmet/f13/raider/blastmaster
	name = "raider blastmaster helmet"
	icon_state = "blastmaster"
	item_state = "blastmaster"
	burn_state = FIRE_PROOF
	armor = list(melee = 30, bullet = 10, laser = 0,energy = 0, bomb = 10, bio = 50, rad = 30)

/obj/item/clothing/head/helmet/f13/raider/yankee
	name = "yankee raider helmet"
	desc = "Long time ago, it has belonged to a football player, now it belongs to wasteland."
	icon_state = "yankee"
	item_state = "yankee"
	flags = HEADCOVERSEYES | HEADCOVERSMOUTH | BLOCKHAIR
	armor = list(melee = 50, bullet = 20, laser = 0,energy = 0, bomb = 10, bio = 0, rad = 0)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE

/obj/item/clothing/head/helmet/f13/eyebot
	name = "eyebot helmet"
	desc = "It is a dismantled eyebot, hollowed out to accommodate for a humanoid head."
	icon_state = "eyebot"
	item_state = "eyebot"
	flags = HEADCOVERSEYES | HEADCOVERSMOUTH | BLOCKHAIR
	armor = list(melee = 50, bullet = 30, laser = 10,energy = 10, bomb = 10, bio = 0, rad = 0)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE
	put_on_delay = 10
	strip_delay = 50
	burn_state = FIRE_PROOF

//Combat armor
/obj/item/clothing/head/helmet/f13/combat
	name = "combat helmet"
	desc = "An old combat helmet, out of use around the time of the war."
	icon_state = "combat_helmet"
	item_state = "combat_helmet"
	armor = list(melee = 38, bullet = 40, laser = 15,energy = 20, bomb = 10, bio = 0, rad = 20)
	flags_inv = HIDEEARS
	flags = BLOCKHAIR
	put_on_delay = 10
	strip_delay = 50
	burn_state = FIRE_PROOF
	flash_protect = 1
	tint = 0

/obj/item/clothing/head/helmet/f13/combat/mk2
	name = "combat helmet mk2"
	desc = "An improved combat helmet based off the original pre-war model."
	icon_state = "combat_helmet_mk2"
	item_state = "combat_helmet_mk2"
	armor = list(melee = 50, bullet = 45, laser = 25,energy = 25, bomb = 20, bio = 0, rad = 50)

/obj/item/clothing/head/helmet/f13/combat/brotherhood
	name = "brotherhood combat helmet"
	desc = "An improved combat helmet, seen commonly worn on initiates"
	icon_state = "brotherhood_helmet"
	item_state = "brotherhood_helmet"
	armor = list(melee = 55, bullet = 55, laser = 35,energy = 30, bomb = 30, bio = 0, rad = 75)

/obj/item/clothing/head/helmet/f13/combat/enclave
	name = "enclave combat helmet"
	desc = "An intimidating helmet that is issued with it's corresponding suit."
	icon_state = "enclave_helmet"
	item_state = "enclave_helmet"
	armor = list(melee = 70, bullet = 65, laser = 50,energy = 50, bomb = 50, bio = 0, rad = 100)

//Legion
/obj/item/clothing/head/helmet/f13/legrecruit
	name = "legion recruit helmet"
	desc = "It's leather legion recruit helmet."
	icon_state = "legrecruit"
	item_state = "legrecruit"
	armor = list(melee = 35, bullet = 30, laser = 10,energy = 0, bomb = 30, bio = 0, rad = 0)
	flags_inv = HIDEEARS
	flags = BLOCKHAIR
	put_on_delay = 10
	strip_delay = 50
	burn_state = FIRE_PROOF

/obj/item/clothing/head/helmet/f13/legveteran
	name = "legion veteran helmet"
	desc = "It's a metal legion veteran helmet, looks pretty sturdy."
	icon_state = "legvet"
	item_state = "legvet"
	armor = list(melee = 40, bullet = 35, laser = 10,energy = 0, bomb = 30, bio = 0, rad = 0)
	flags_inv = HIDEEARS
	flags = BLOCKHAIR
	put_on_delay = 10
	strip_delay = 50
	burn_state = FIRE_PROOF

/obj/item/clothing/head/helmet/f13/legvexil
	name = "legion vexillarius helmet"
	desc = "It's leather legion vexillarius helmet."
	icon_state = "legvexil"
	item_state = "legvexil"
	armor = list(melee = 40, bullet = 35, laser = 10,energy = 0, bomb = 30, bio = 0, rad = 0)
	flags_inv = HIDEEARS
	flags = BLOCKHAIR
	put_on_delay = 10
	strip_delay = 50
	burn_state = FIRE_PROOF

/obj/item/clothing/head/helmet/f13/legdecan
	name = "legion decan helmet"
	desc = "It's leather legion decan helmet."
	icon_state = "legdecan"
	item_state = "legdecan"
	armor = list(melee = 45, bullet = 35, laser = 10,energy = 0, bomb = 30, bio = 0, rad = 0)
	flags_inv = HIDEEARS
	flags = BLOCKHAIR
	put_on_delay = 10
	strip_delay = 50
	burn_state = FIRE_PROOF

/obj/item/clothing/head/helmet/f13/legcenturion
	name = "legion centurion helmet"
	desc = "It's metal legion centurion helmet."
	icon_state = "legcenturion"
	item_state = "legcenturion"
	armor = list(melee = 75, bullet = 60, laser = 25,energy = 15, bomb = 40, bio = 0, rad = 50)
	flags_inv = HIDEEARS
	flags = BLOCKHAIR
	put_on_delay = 10
	strip_delay = 50
	burn_state = FIRE_PROOF

/obj/item/clothing/head/helmet/f13/leglegat
	name = "legion legat helmet"
	desc = "It's metal legion legat helmet."
	icon_state = "leglegat"
	item_state = "leglegat"
	armor = list(melee = 85, bullet = 50, laser = 35,energy = 25, bomb = 50, bio = 0, rad = 60)
	flags = HEADCOVERSEYES | HEADCOVERSMOUTH | BLOCKHAIR
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE
	put_on_delay = 10
	strip_delay = 50
	burn_state = FIRE_PROOF

//Ranger Armors
/obj/item/clothing/head/helmet/f13/rangercombat
	name = "ranger combat helmet"
	desc = "An old combat helmet, out of use around the time of the war."
	icon_state = "ranger"
	item_state = "ranger"
	armor = list(melee = 70, bullet = 60, laser = 40, energy = 40, bomb = 40, bio = 0, rad = 80)
	flags = HEADCOVERSEYES | HEADCOVERSMOUTH | BLOCKHAIR
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE
	put_on_delay = 10
	strip_delay = 50
	burn_state = FIRE_PROOF
/*
	darkness_view = 8
	invis_view = SEE_INVISIBLE_MINIMUM
*/

/obj/item/clothing/head/helmet/f13/rangercombat/desert
	name = "desert ranger combat helmet"
	desc = "An U.S Marine Corps helmet, used by the legendary Desert Rangers."
	icon_state = "desert_ranger"
	item_state = "desert_ranger"
	armor = list(melee = 65, bullet = 60, laser = 45,energy = 35, bomb = 20, bio = 0, rad = 100)

/obj/item/clothing/head/helmet/f13/rangercombat/eliteriot
	name = "elite riot gear helmet"
	desc = "An old combat helmet seen in the divide, repurposed for higher ranking Rangers."
	icon_state = "elite_riot"
	item_state = "elite_riot"
	armor = list(melee = 75, bullet = 68, laser = 50,energy = 50, bomb = 45, bio = 0, rad = 100)

//Metal masks
/obj/item/clothing/head/helmet/f13/metalmask
	name = "metal mask"
	desc = "A crudely formed metal hockey mask."
	icon_state = "metal_mask"
	item_state = "metal_mask"
	armor = list(melee = 30, bullet = 15, laser = 20,energy = 15, bomb = 5, bio = 2, rad = 0)
	flags_inv = HIDEMASK|HIDEEYES|HIDEFACE
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	strip_delay = 80

/obj/item/clothing/head/helmet/f13/metalmask/mk2
	name = "metal mask mk2"
	desc = "A finely formed metal hockey mask."
	icon_state = "metal_mask2"
	item_state = "metal_mask2"
	armor = list(melee = 35, bullet = 20, laser = 25,energy = 20, bomb = 10, bio = 2, rad = 0)
	flags_inv = HIDEMASK|HIDEEYES|HIDEFACE
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	strip_delay = 80

/obj/item/clothing/head/helmet/f13/tesla
	name = "tesla helmet"
	desc = "A prewar armor design by Nikola Tesla before being confinscated by the U.S. government. Provides the best energy weapons resistance."
	icon_state = "tesla_helmet"
	item_state = "tesla_helmet"
	armor = list(melee = 35, bullet = 20, laser = 50, energy = 40, bomb = 10, bio = 0, rad = 5)
	var/hit_reflect_chance = 70
	put_on_delay = 30
	strip_delay = 10

/obj/item/clothing/head/helmet/f13/tesla/IsReflect(def_zone)
	if(!(def_zone in list("head"))) //If not shot where ablative is covering you, you don't get the reflection bonus!
		return 0
	if (prob(hit_reflect_chance))
		return 1

//Busted/salvaged power armor helmets, does not require PA training

/obj/item/clothing/head/helmet/f13/brokenpa
	flags = HEADCOVERSEYES | HEADCOVERSMOUTH | STOPSPRESSUREDMAGE | BLOCKHAIR
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_HELM_MIN_TEMP_PROTECT
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_HELM_MAX_TEMP_PROTECT
	unacidable = 1
	ispowerarmor = 1
	put_on_delay = 20
	strip_delay = 200
	burn_state = FIRE_PROOF
	flash_protect = 2
	tint = 0

/obj/item/clothing/head/helmet/f13/brokenpa/t45d
	name = "broken T-45d power helmet"
	desc = "This power armor helmet is so decrepit and battle-worn that it have ceased it's primary function of protecting the wearer from harm.<br>It still can provide some very basic protection though."
	icon_state = "brokenhelmet"
	item_state = "brokenhelmet"
	armor = list(melee = 30, bullet = 20, laser = 0,energy = 0, bomb = 10, bio = 0, rad = 10)
	flash_protect = 0

/obj/item/clothing/head/helmet/f13/brokenpa/t45b
	name = "Salvaged T-45b helmet"
	desc = "It's a pre-War power armor helmet, recovered and maintained by NCR engineers."
	icon_state = "t45bhelmet"
	item_state = "t45bhelmet"
	armor = list(melee = 70, bullet = 50, laser = 50,energy = 50, bomb = 30, bio = 100, rad = 20)
	flash_protect = 0

//Power armor helmets

/obj/item/clothing/head/helmet/power_armor/f13
	flags = HEADCOVERSEYES | HEADCOVERSMOUTH | STOPSPRESSUREDMAGE | BLOCKHAIR
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_HELM_MIN_TEMP_PROTECT
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_HELM_MAX_TEMP_PROTECT
	unacidable = 1
	ispowerarmor = 1
	put_on_delay = 20
	strip_delay = 200
	burn_state = FIRE_PROOF
	flash_protect = 2
	tint = 0

/obj/item/clothing/head/helmet/power_armor/f13/mob_can_equip(mob/user, slot)
	if (ishuman(user))
		var/mob/living/carbon/human/H = user
		if (!H.martial_art && H.martial_art.name != "Power Armor Training" && slot == slot_head)
			H << "<span class='warning'>You don't have the proper training to operate the power armor!</span>"
			return 0
			..()
	return ..()

/obj/item/clothing/head/helmet/power_armor/f13/t45b
	name = "T-45b power helmet"
	desc = "It's a pre-War power armor helmet, recovered and maintained by NCR engineers."
	icon_state = "t45bhelmet"
	item_state = "t45bhelmet"
	armor = list(melee = 70, bullet = 60, laser = 50, energy = 50, bomb = 50, bio = 100, rad = 60)

/obj/item/clothing/head/helmet/power_armor/f13/advanced
	name = "Advanced power helmet"
	desc = "It's an advanced power armor Mk I helmet, typically used by the Enclave. It looks somewhat threatening."
	icon_state = "advhelmet1"
	item_state = "advhelmet1"
	armor = list(melee = 80, bullet = 70, laser = 70, energy = 70, bomb = 70, bio = 100, rad = 80)

/obj/item/clothing/head/helmet/power_armor/f13/advanced/mk2
	name = "Advanced power helmet MK2"
	desc = "It's an improved model of advanced power armor used exclusively by the Enclave military forces, developed after the Great War.<br>Like its older brother, the standard advanced power armor, it's matte black with a menacing appearance, but with a few significant differences - it appears to be composed entirely of lightweight ceramic composites rather than the usual combination of metal and ceramic plates.<br>Additionally, like the T-51b power armor, it includes a recycling system that can convert human waste into drinkable water, and an air conditioning system for it's user's comfort."
	icon_state = "advhelmet2"
	item_state = "advhelmet2"
	armor = list(melee = 90, bullet = 80, laser = 80, energy = 80, bomb = 80, bio = 100, rad = 90)


/obj/item/clothing/head/helmet/power_armor/f13/tesla
	name = "tesla power helmet"
	desc = "A helmet typically used by Enclave special forces.<br>There are three orange energy capacitors on the side."
	icon_state = "tesla"
	item_state = "tesla"
	flags = HEADCOVERSEYES | HEADCOVERSMOUTH | STOPSPRESSUREDMAGE
	armor = list(melee = 50, bullet = 30, laser = 80, energy = 80, bomb = 30, bio = 100, rad = 80)


/obj/item/clothing/head/helmet/power_armor/f13/t51b
	name = "T-51b power helmet"
	desc = "It's a t51b power helmet, typically used by the Brotherhood. It looks somewhat charming."
	icon_state = "t51bhelmet"
	item_state = "t51bhelmet"
	armor = list(melee = 80, bullet = 60, laser = 60,energy = 60, bomb = 40, bio = 100, rad = 60)

/obj/item/clothing/head/helmet/power_armor/f13/t45d
	name = "T-45d power helmet"
	desc = "It's an old pre-War power armor helmet. It's pretty hot inside of it."
	icon_state = "t45dhelmet"
	item_state = "t45dhelmet"
	armor = list(melee = 70, bullet = 60, laser = 60, energy = 60, bomb = 60, bio = 100, rad = 70)
	action_button_name = "Toggle Helmet Light"
	var/brightness_on = 4 //luminosity when the light is on
	var/on = 0

/obj/item/clothing/head/helmet/power_armor/f13/t45d/attack_self(mob/user)
	if(!isturf(user.loc))
		user << "<span class='warning'>You cannot turn the light on while in this [user.loc]!</span>" //To prevent some lighting anomalities.
		return
	on = !on
	icon_state = "t45dhelmet-light"
	item_state = "t45dhelmet-light"
	user.update_inv_head()	//so our mob-overlays update

	if(on)
		turn_on(user)
	else
		turn_off(user)

/obj/item/clothing/head/helmet/power_armor/f13/t45d/pickup(mob/user)
	if(on)
		user.AddLuminosity(brightness_on)
		SetLuminosity(0)

/obj/item/clothing/head/helmet/power_armor/f13/t45d/dropped(mob/user)
	if(on)
		user.AddLuminosity(-brightness_on)
		SetLuminosity(brightness_on)

/obj/item/clothing/head/helmet/power_armor/f13/t45d/proc/turn_on(mob/user)
	user.AddLuminosity(brightness_on)

/obj/item/clothing/head/helmet/power_armor/f13/t45d/proc/turn_off(mob/user)
	user.AddLuminosity(-brightness_on)

//LightToggle

/obj/item/clothing/head/helmet/update_icon()

	var/state = "[initial(icon_state)]"
	if(F)
		if(F.on)
			state += "-flight-on" //"helmet-flight-on" // "helmet-cam-flight-on"
		else
			state += "-flight" //etc.

	icon_state = state

	if(istype(loc, /mob/living/carbon/human))
		var/mob/living/carbon/human/H = loc
		H.update_inv_head()

	return

/obj/item/clothing/head/helmet/ui_action_click()
	toggle_helmlight()
	..()

/obj/item/clothing/head/helmet/attackby(obj/item/A, mob/user, params)
	if(istype(A, /obj/item/device/flashlight/seclite))
		var/obj/item/device/flashlight/seclite/S = A
		if(can_flashlight)
			if(!F)
				if(!user.unEquip(A))
					return
				user << "<span class='notice'>You click [S] into place on [src].</span>"
				if(S.on)
					SetLuminosity(0)
				F = S
				A.loc = src
				update_icon()
				update_helmlight(user)
				verbs += /obj/item/clothing/head/helmet/proc/toggle_helmlight
		return

	if(istype(A, /obj/item/weapon/screwdriver))
		if(F)
			for(var/obj/item/device/flashlight/seclite/S in src)
				user << "<span class='notice'>You unscrew the seclite from [src].</span>"
				F = null
				S.loc = get_turf(user)
				update_helmlight(user)
				S.update_brightness(user)
				update_icon()
				usr.update_inv_head()
				verbs -= /obj/item/clothing/head/helmet/proc/toggle_helmlight
			return

	..()
	return

/obj/item/clothing/head/helmet/proc/toggle_helmlight()
	set name = "Toggle Helmetlight"
	set category = "Object"
	set desc = "Click to toggle your helmet's attached flashlight."

	if(!F)
		return

	var/mob/user = usr
	if(user.incapacitated())
		return
	if(!isturf(user.loc))
		user << "<span class='warning'>You cannot turn the light on while in this [user.loc]!</span>"
	F.on = !F.on
	user << "<span class='notice'>You toggle the helmetlight [F.on ? "on":"off"].</span>"

	playsound(user, 'sound/weapons/empty.ogg', 100, 1)
	update_helmlight(user)
	return

/obj/item/clothing/head/helmet/proc/update_helmlight(mob/user = null)
	if(F)
		action_button_name = "Toggle Helmetlight"
		if(F.on)
			if(loc == user)
				user.AddLuminosity(F.brightness_on)
			else if(isturf(loc))
				SetLuminosity(F.brightness_on)
		else
			if(loc == user)
				user.AddLuminosity(-F.brightness_on)
			else if(isturf(loc))
				SetLuminosity(0)
		update_icon()
	else
		action_button_name = null
		if(loc == user)
			user.AddLuminosity(-5)
		else if(isturf(loc))
			SetLuminosity(0)
		return

/obj/item/clothing/head/helmet/pickup(mob/user)
	if(F)
		if(F.on)
			user.AddLuminosity(F.brightness_on)
			SetLuminosity(0)


/obj/item/clothing/head/helmet/dropped(mob/user)
	if(F)
		if(F.on)
			user.AddLuminosity(-F.brightness_on)
			SetLuminosity(F.brightness_on)
