/obj/item/projectile/bullet
	name = "bullet"
	icon_state = "bullet"
	hitsound_wall = "ricochet"
	damage = 60
	damage_type = BRUTE
	nodamage = 0
	flag = "bullet"
	var/gundamageapplied=0



/obj/item/projectile/bullet/deagleAE //50ae
	damage = 50

/obj/item/projectile/bullet/magnum //44
	damage = 40
	armour_penetration = -10

/obj/item/projectile/bullet/mag357 //357
	damage = 35
	armour_penetration = -10

/obj/item/projectile/bullet/slug //slug
	damage = 65
	armour_penetration = -10

/obj/item/projectile/bullet/weakbullet //beanbag
	damage = 5
	stamina = 80

/obj/item/projectile/bullet/weakbullet2 //38
	damage = 25

/obj/item/projectile/bullet/weakbullet3 //9mm
	damage = 30
	armour_penetration = 10

/obj/item/projectile/bullet/weakbullet4 //22lr
	damage = 10
	armour_penetration = -10

/obj/item/projectile/bullet/toxinbullet //9mmtox
	damage = 15
	damage_type = TOX

/obj/item/projectile/bullet/incendiary/firebullet //9mmincid
	damage = 10

/obj/item/projectile/bullet/armourpiercing //9mmap
	damage = 25
	armour_penetration = 10

/obj/item/projectile/bullet/pellet //shotgunpellet
	name = "pellet"
	damage = 15
	armour_penetration = -20
	range = 7

/obj/item/projectile/bullet/pellet/weak //improvshotgunpellet
	damage = 3

/obj/item/projectile/bullet/pellet/random/New()
	damage = rand(10)

/obj/item/projectile/bullet/midbullet //45
	damage = 33
	armour_penetration = -10

/obj/item/projectile/bullet/midbullet2 //unused
	damage = 25

/obj/item/projectile/bullet/midbullet3 //10mm
	damage = 30
	armour_penetration = -10

/obj/item/projectile/bullet/heavybullet //5.56
	damage = 35

/obj/item/projectile/bullet/heavybullet/ap //5.56ap
	damage = 30
	armour_penetration = 10

/obj/item/projectile/bullet/heavybullet/tox //5.56tox
	damage = 25
	damage_type = TOX

/obj/item/projectile/bullet/incendiary/heavybullet //5.56incid
	damage = 25

/obj/item/projectile/bullet/heavybullet/surplus //5.56surplus
	damage = 20

/obj/item/projectile/bullet/heavybullet/bleed //5.56bleed
	damage = 10
	armour_penetration = 15

/obj/item/projectile/bullet/heavybullet/bleed/on_hit(atom/target, blocked = 0, hit_zone)
	if((blocked != 100) && istype(target, /mob/living/carbon/human))
		var/mob/living/carbon/human/H = target
		H.drip(100)

	return ..()

/obj/item/projectile/bullet/heavybullet/penetrator //5.56penet
	damage = 30
	forcedodge = 1

/obj/item/projectile/bullet/heavybullet/sopoforic //5.56sleep
	armour_penetration = 0
	nodamage = 1
	stun = 0
	weaken = 0

/obj/item/projectile/bullet/heavybullet/soporific/on_hit(atom/target, blocked = 0, hit_zone)
	if((blocked != 100) && istype(target, /mob/living))
		var/mob/living/L = target
		L.SetSleeping(20)

	return ..()

/obj/item/projectile/bullet/rpellet //shotgunrubber
	damage = 3
	stamina = 25
	range = 7

/obj/item/projectile/bullet/stunshot //taserslug
	name = "stunshot"
	damage = 5
	stun = 5
	weaken = 5
	stutter = 5
	jitter = 20
	range = 7
	icon_state = "spark"
	color = "#FFFF00"

/obj/item/projectile/bullet/incendiary/on_hit(atom/target, blocked = 0)
	. = ..()
	if(iscarbon(target))
		var/mob/living/carbon/M = target
		M.adjust_fire_stacks(1)
		M.IgniteMob()


/obj/item/projectile/bullet/incendiary/shell //incidslug
	name = "incendiary slug"
	damage = 20

/obj/item/projectile/bullet/incendiary/shell/Move()
	..()
	var/turf/location = get_turf(src)
	if(location)
		PoolOrNew(/obj/effect/hotspot, location)
		location.hotspot_expose(700, 50, 1)

/obj/item/projectile/bullet/incendiary/shell/dragonsbreath //incidpellet
	name = "dragonsbreath round"
	damage = 5
	range = 7

/obj/item/projectile/bullet/meteorshot
	name = "meteor"
	icon = 'icons/obj/meteor.dmi'
	icon_state = "dust"
	damage = 75
	armour_penetration = -30
	weaken = 8
	stun = 8
	hitsound = 'sound/effects/meteorimpact.ogg'

/obj/item/projectile/bullet/meteorshot/on_hit(atom/target, blocked = 0)
	. = ..()
	if(istype(target, /atom/movable))
		var/atom/movable/M = target
		var/atom/throw_target = get_edge_target_turf(M, get_dir(src, get_step_away(M, src)))
		M.throw_at(throw_target, 3, 2)

/obj/item/projectile/bullet/meteorshot/New()
	..()
	SpinAnimation()


/obj/item/projectile/bullet/mime
	damage = 20

/obj/item/projectile/bullet/mime/on_hit(atom/target, blocked = 0)
	. = ..()
	if(iscarbon(target))
		var/mob/living/carbon/M = target
		M.silent = max(M.silent, 10)


/obj/item/projectile/bullet/dart
	name = "dart"
	icon_state = "cbbolt"
	damage = 6

/obj/item/projectile/bullet/dart/New()
	..()
	flags |= NOREACT
	create_reagents(50)

/obj/item/projectile/bullet/dart/on_hit(atom/target, blocked = 0, hit_zone)
	if(iscarbon(target))
		var/mob/living/carbon/M = target
		if(blocked != 100) // not completely blocked
			if(M.can_inject(null,0,hit_zone)) // Pass the hit zone to see if it can inject by whether it hit the head or the body.
				..()
				reagents.trans_to(M, reagents.total_volume)
				return 1
			else
				blocked = 100
				target.visible_message("<span class='danger'>The [name] was deflected!</span>", \
									   "<span class='userdanger'>You were protected against the [name]!</span>")

	..(target, blocked, hit_zone)
	flags &= ~NOREACT
	reagents.handle_reactions()
	return 1

/obj/item/projectile/bullet/dart/metalfoam
	New()
		..()
		reagents.add_reagent("aluminium", 15)
		reagents.add_reagent("foaming_agent", 5)
		reagents.add_reagent("facid", 5)

//This one is for future syringe guns update
/obj/item/projectile/bullet/dart/syringe
	name = "syringe"
	icon = 'icons/obj/chemical.dmi'
	icon_state = "syringeproj"

/obj/item/projectile/bullet/neurotoxin
	name = "neurotoxin spit"
	icon_state = "neurotoxin"
	damage = 5
	damage_type = TOX
	weaken = 5

/obj/item/projectile/bullet/neurotoxin/on_hit(atom/target, blocked = 0)
	if(isalien(target))
		weaken = 0
		nodamage = 1
	. = ..() // Execute the rest of the code.

/obj/item/projectile/bullet/training
	name = "dummy bullet"
	damage = 0

/obj/item/projectile/bullet/sequoia //45-70
	name = "bullet"
	damage = 60
	armour_penetration = 10

/obj/item/projectile/needle
	name = "needler dart"
	icon_state = "cbbolt"
	damage = 32

/obj/item/projectile/needle/ap
	name = "needler dart"
	damage = 64
	armour_penetration = 35
