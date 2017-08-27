/mob/living/simple_animal/hostile/syndicate
	name = "Enclave soldier"
	desc = "Death to Wasteland."
	icon_state = "syndicate"
	icon_living = "syndicate"
	icon_dead = "syndicate_dead"
	icon_gib = "syndicate_gib"
	speak_chance = 0
	turns_per_move = 5
	response_help = "pokes"
	response_disarm = "shoves"
	response_harm = "hits"
	speed = 0
	stat_attack = 1
	robust_searching = 1
	maxHealth = 300
	health = 300
	harm_intent_damage = 5
	melee_damage_lower = 10
	melee_damage_upper = 10
	attacktext = "punches"
	attack_sound = 'sound/weapons/punch1.ogg'
	a_intent = "harm"
	var/corpse = /obj/effect/landmark/mobcorpse/syndicatesoldier
	var/weapon1
	var/weapon2
	atmos_requirements = list("min_oxy" = 5, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 1, "min_co2" = 0, "max_co2" = 5, "min_n2" = 0, "max_n2" = 0)
	unsuitable_atmos_damage = 15
	faction = list("syndicate")
	status_flags = CANPUSH
	environment_smash = 0

/mob/living/simple_animal/hostile/syndicate/death(gibbed)
	..(gibbed)
	if(corpse)
		new corpse (src.loc)
	if(weapon1)
		new weapon1 (src.loc)
	if(weapon2)
		new weapon2 (src.loc)
	qdel(src)
	return

///////////////Sword and shield////////////

/mob/living/simple_animal/hostile/syndicate/melee
	melee_damage_lower = 25
	melee_damage_upper = 30
	icon_state = "syndicatemelee"
	icon_living = "syndicatemelee"
	weapon1 = /obj/item/weapon/melee/energy/sword/saber/red
	weapon2 = /obj/item/weapon/shield/energy
	attacktext = "slashes"
	attack_sound = 'sound/weapons/bladeslice.ogg'
	armour_penetration = 28
	status_flags = 0
	maxHealth = 300
	health = 300

/mob/living/simple_animal/hostile/syndicate/melee/bullet_act(obj/item/projectile/Proj)
	if(!Proj)	return
	if(prob(50))
		if((Proj.damage_type == BRUTE || Proj.damage_type == BURN))
			src.health -= Proj.damage
	else
		visible_message("<span class='danger'>[src] blocks [Proj] with its shield!</span>")
	return 0


/mob/living/simple_animal/hostile/syndicate/melee/space
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	minbodytemp = 0
	icon_state = "syndicatemeleespace"
	icon_living = "syndicatemeleespace"
	name = "Syndicate Commando"
	corpse = /obj/effect/landmark/mobcorpse/syndicatecommando
	speed = 1

/mob/living/simple_animal/hostile/syndicate/melee/space/Process_Spacemove(movement_dir = 0)
	return

/mob/living/simple_animal/hostile/syndicate/ranged
	ranged = 1
	rapid = 1
	retreat_distance = 2
	minimum_distance = 2
	icon_state = "syndicateranged"
	icon_living = "syndicateranged"
	casingtype = /obj/item/ammo_casing/c10mm
	projectilesound = 'sound/f13weapons/10mm_fire_01.ogg'

	weapon1 = /obj/item/weapon/gun/projectile/automatic/smg10mm

/mob/living/simple_animal/hostile/syndicate/ranged/space
	icon_state = "syndicaterangedpsace"
	icon_living = "syndicaterangedpsace"
	name = "Syndicate Commando"
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	minbodytemp = 0
	corpse = /obj/effect/landmark/mobcorpse/syndicatecommando
	speed = 1

/mob/living/simple_animal/hostile/syndicate/ranged/space/Process_Spacemove(movement_dir = 0)
	return


/mob/living/simple_animal/hostile/syndicate/civilian
	minimum_distance = 10
	retreat_distance = 10
	environment_smash = 0

/mob/living/simple_animal/hostile/syndicate/civilian/Aggro()
	..()
	summon_backup(15)
	say("GUARDS!!")


/mob/living/simple_animal/hostile/viscerator
	name = "viscerator"
	desc = "A small, twin-bladed machine capable of inflicting very deadly lacerations."
	icon_state = "viscerator_attack"
	icon_living = "viscerator_attack"
	pass_flags = PASSTABLE
	health = 15
	maxHealth = 15
	melee_damage_lower = 15
	melee_damage_upper = 15
	attacktext = "cuts"
	attack_sound = 'sound/weapons/bladeslice.ogg'
	faction = list("syndicate")
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	minbodytemp = 0
	mob_size = MOB_SIZE_TINY
	flying = 1
	speak_emote = list("states")
	bubble_icon = "syndibot"
	gold_core_spawnable = 1

/mob/living/simple_animal/hostile/viscerator/death(gibbed)
	..(gibbed)
	visible_message("<span class='danger'><b>[src]</b> is smashed into pieces!</span>")
	qdel(src)
	return

/mob/living/simple_animal/hostile/gutsy
	name = "mister gutsy"
	desc = "Fucking robot, it finna cut you."
	icon = 'icons/mob/robots.dmi'
	icon_state = "secborg"
	icon_living = "secborg"
	maxHealth = 500
	health = 500
	stat_attack = 1
	robust_searching = 1
	a_intent = "harm"
	armour_penetration = 20
	attacktext = "saws through"
	melee_damage_lower = 35
	melee_damage_upper = 45
	attack_sound = 'sound/weapons/bladeslice.ogg'
	faction = list("syndicate")
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	minbodytemp = 0
	gold_core_spawnable = 1
	environment_smash = 0

/mob/living/simple_animal/hostile/gutsy/death(gibbed)
	..(1)
	visible_message("<span class='warning'>[src] blows apart!</span>")
	new /obj/effect/decal/cleanable/robot_debris(src.loc)
	var/datum/effect_system/spark_spread/s = new /datum/effect_system/spark_spread
	s.set_up(3, 1, src)
	s.start()
	ghostize()
	qdel(src)
	return

/mob/living/simple_animal/hostile/gutsy/ranged
	name = "mister gutsy"
	desc = "Fucking robot, it finna shoot you."
	ranged = 1
	retreat_distance = 2
	minimum_distance = 2
	projectilesound = 'sound/f13weapons/plasma_rifle.ogg'
	projectiletype = /obj/item/projectile/beam/plasma
