/obj/item/projectile/beam
	name = "laser"
	icon_state = "laser"
	pass_flags = PASSTABLE | PASSGLASS | PASSGRILLE
	damage = 30
	damage_type = BURN
	hitsound = 'sound/f13weapons/sear.ogg'
	hitsound_wall = 'sound/f13weapons/sear_wall.ogg'
	flag = "laser"
	eyeblur = 2

/obj/item/projectile/beam/plasma_beam
	name = "plasma_beam"
	icon_state = "plasma_beam"
	damage = 50
	hitsound = 'sound/f13weapons/plasmarifle.ogg'
	hitsound_wall = 'sound/f13weapons/plasmaout.ogg'

/obj/item/projectile/beam/turbo_plasma_beam
	name = "turbo_plasma_beam"
	icon_state = "plasma_beam"
	damage = 75
	hitsound = 'sound/f13weapons/plasmarifle.ogg'
	hitsound_wall = 'sound/f13weapons/plasmaout.ogg'

/obj/item/projectile/beam/plasma_pistol_beam
	name = "plasma_pistol_beam"
	icon_state = "plasma_beam"
	damage = 30
	hitsound = 'sound/f13weapons/plasmarifle.ogg'
	hitsound_wall = 'sound/f13weapons/plasmaout.ogg'

/obj/item/projectile/beam/practice
	name = "laser"
	damage = 0
	hitsound = null
	nodamage = 1

/obj/item/projectile/beam/scatter
	name = "laser pellet"
	icon_state = "scatterlaser"
	damage = 8


/obj/item/projectile/beam/heavylaser
	name = "heavy laser"
	icon_state = "heavylaser"
	damage = 50

/obj/item/projectile/beam/xray
	name = "xray beam"
	icon_state = "xray"
	damage = 15
	irradiate = 30
	range = 15
	forcedodge = 1

/obj/item/projectile/beam/disabler
	name = "disabler beam"
	icon_state = "omnilaser"
	damage = 36
	damage_type = STAMINA
	flag = "energy"
	hitsound = 'sound/weapons/tap.ogg'
	eyeblur = 0

/obj/item/projectile/beam/pulse
	name = "pulse"
	icon_state = "u_laser"
	damage = 50

/obj/item/projectile/beam/pulse/on_hit(atom/target, blocked = 0)
	. = ..()
	if(istype(target,/turf/)||istype(target,/obj/structure/))
		target.ex_act(2)

/obj/item/projectile/beam/pulse/shot
	damage = 40

/obj/item/projectile/beam/emitter
	name = "emitter beam"
	icon_state = "emitter"
	damage = 30
	legacy = 1
	animate_movement = SLIDE_STEPS

/obj/item/projectile/beam/emitter/singularity_pull()
	return //don't want the emitters to miss

/obj/item/projectile/beam/emitter/Destroy()
	..()
	return QDEL_HINT_PUTINPOOL

/obj/item/projectile/beam/lasertag
	name = "laser tag beam"
	icon_state = "omnilaser"
	hitsound = null
	damage = 0
	damage_type = STAMINA
	flag = "laser"
	var/suit_types = list(/obj/item/clothing/suit/redtag, /obj/item/clothing/suit/bluetag)

/obj/item/projectile/beam/lasertag/on_hit(atom/target, blocked = 0)
	. = ..()
	if(ishuman(target))
		var/mob/living/carbon/human/M = target
		if(istype(M.wear_suit))
			if(M.wear_suit.type in suit_types)
				M.adjustStaminaLoss(34)


/obj/item/projectile/beam/lasertag/redtag
	icon_state = "laser"
	suit_types = list(/obj/item/clothing/suit/bluetag)

/obj/item/projectile/beam/lasertag/bluetag
	icon_state = "bluelaser"
	suit_types = list(/obj/item/clothing/suit/redtag)

/obj/item/projectile/beam/robotlaser
	name = "laser beam"
	damage = 65

/obj/item/projectile/beam/protolaser
	icon_state = "bluelaser"
	damage = 15
	range = 10
	irradiate = 5
	eyeblur = 2

/obj/item/projectile/protectron
	name = "laser"
	icon_state = "laser"
	pass_flags = PASSTABLE | PASSGLASS | PASSGRILLE
	damage = 25
	damage_type = BURN
	hitsound = 'sound/f13weapons/sear.ogg'
	hitsound_wall = 'sound/f13weapons/sear_wall.ogg'
	flag = "laser"
	eyeblur = 2