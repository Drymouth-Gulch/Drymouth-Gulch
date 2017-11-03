

/datum/reagent/drug
	name = "Drug"
	id = "drug"
	metabolization_rate = 0.5 * REAGENTS_METABOLISM

/datum/reagent/drug/space_drugs
	name = "Space drugs"
	id = "space_drugs"
	description = "An illegal chemical compound used as drug."
	color = "#60A584" // rgb: 96, 165, 132
	overdose_threshold = 30

/datum/reagent/drug/space_drugs/on_mob_life(mob/living/M)
	M.druggy = max(M.druggy, 15)
	if(isturf(M.loc) && !istype(M.loc, /turf/space))
		if(M.canmove)
			if(prob(10)) step(M, pick(cardinal))
	if(prob(7))
		M.emote(pick("twitch","drool","moan","giggle"))
	..()
	return

/datum/reagent/drug/space_drugs/overdose_start(mob/living/M)
	M << "<span class='userdanger'>You start tripping hard!</span>"


/datum/reagent/drug/space_drugs/overdose_process(mob/living/M)
	if(M.hallucination < volume && prob(20))
		M.hallucination += 5
	..()
	return

/datum/reagent/drug/nicotine
	name = "Nicotine"
	id = "nicotine"
	description = "Slightly reduces stun times. If overdosed it will deal toxin and oxygen damage."
	reagent_state = LIQUID
	color = "#60A584" // rgb: 96, 165, 132
	addiction_threshold = 30

/datum/reagent/drug/nicotine/on_mob_life(mob/living/M)
	if(prob(1))
		var/smoke_message = pick("You feel relaxed.", "You feel calmed.","You feel alert.","You feel rugged.")
		M << "<span class='notice'>[smoke_message]</span>"
	M.AdjustStunned(-1)
	M.adjustStaminaLoss(-0.5*REM)
	..()

/datum/reagent/drug/crank
	name = "Crank"
	id = "crank"
	description = "Reduces stun times by about 200%. If overdosed or addicted it will deal significant Toxin, Brute and Brain damage."
	reagent_state = LIQUID
	color = "#60A584" // rgb: 96, 165, 132
	overdose_threshold = 20
	addiction_threshold = 10

/datum/reagent/drug/crank/on_mob_life(mob/living/M)
	var/high_message = pick("You feel jittery.", "You feel like you gotta go fast.", "You feel like you need to step it up.")
	if(prob(5))
		M << "<span class='notice'>[high_message]</span>"
	M.AdjustParalysis(-1)
	M.AdjustStunned(-1)
	M.AdjustWeakened(-1)
	..()

/datum/reagent/drug/crank/overdose_process(mob/living/M)
	M.adjustBrainLoss(2*REM)
	M.adjustToxLoss(2*REM)
	M.adjustBruteLoss(2*REM)
	..()

/datum/reagent/drug/crank/addiction_act_stage1(mob/living/M)
	M.adjustBrainLoss(5*REM)
	..()

/datum/reagent/drug/crank/addiction_act_stage2(mob/living/M)
	M.adjustToxLoss(5*REM)
	..()

/datum/reagent/drug/crank/addiction_act_stage3(mob/living/M)
	M.adjustBruteLoss(5*REM)
	..()

/datum/reagent/drug/crank/addiction_act_stage4(mob/living/M)
	M.adjustBrainLoss(5*REM)
	M.adjustToxLoss(5*REM)
	M.adjustBruteLoss(5*REM)
	..()

/datum/reagent/drug/krokodil
	name = "Krokodil"
	id = "krokodil"
	description = "Cools and calms you down. If overdosed it will deal significant Brain and Toxin damage. If addicted it will begin to deal fatal amounts of Brute damage as the subject's skin falls off."
	reagent_state = LIQUID
	color = "#60A584" // rgb: 96, 165, 132
	overdose_threshold = 20
	addiction_threshold = 15


/datum/reagent/drug/krokodil/on_mob_life(mob/living/M)
	var/high_message = pick("You feel calm.", "You feel collected.", "You feel like you need to relax.")
	if(prob(5))
		M << "<span class='notice'>[high_message]</span>"
	..()
	return

/datum/reagent/drug/krokodil/overdose_process(mob/living/M)
	M.adjustBrainLoss(0.25*REM)
	M.adjustToxLoss(0.25*REM)
	..()
	return


/datum/reagent/drug/krokodil/addiction_act_stage1(mob/living/M)
	M.adjustBrainLoss(2*REM)
	M.adjustToxLoss(2*REM)
	..()
	return
/datum/reagent/krokodil/addiction_act_stage2(mob/living/M)
	if(prob(25))
		M << "<span class='danger'>Your skin feels loose...</span>"
	..()
	return
/datum/reagent/drug/krokodil/addiction_act_stage3(mob/living/M)
	if(prob(25))
		M << "<span class='danger'>Your skin starts to peel away...</span>"
	M.adjustBruteLoss(3*REM)
	..()
	return

/datum/reagent/drug/krokodil/addiction_act_stage4(mob/living/carbon/human/M)
	if(M.has_dna() && M.dna.species.id != "zombie")
		M << "<span class='userdanger'>Your skin falls off easily!</span>"
		M.adjustBruteLoss(50*REM) // holy shit your skin just FELL THE FUCK OFF
		M.set_species(/datum/species/cosmetic_zombie)
	else
		M.adjustBruteLoss(5*REM)
	..()
	return

/datum/reagent/drug/methamphetamine
	name = "Methamphetamine"
	id = "methamphetamine"
	description = "Reduces stun times by about 300%, speeds the user up, and allows the user to quickly recover stamina while dealing a small amount of Brain damage. If overdosed the subject will move randomly, laugh randomly, drop items and suffer from Toxin and Brain damage. If addicted the subject will constantly jitter and drool, before becoming dizzy and losing motor control and eventually suffer heavy toxin damage."
	reagent_state = LIQUID
	color = "#60A584" // rgb: 96, 165, 132
	overdose_threshold = 20
	addiction_threshold = 10
	metabolization_rate = 0.75 * REAGENTS_METABOLISM

/datum/reagent/drug/methamphetamine/on_mob_life(mob/living/M)
	var/high_message = pick("You feel hyper.", "You feel like you need to go faster.", "You feel like you can run the world.")
	if(prob(5))
		M << "<span class='notice'>[high_message]</span>"
	M.AdjustParalysis(-2)
	M.AdjustStunned(-2)
	M.AdjustWeakened(-2)
	M.adjustStaminaLoss(-2)
	M.status_flags |= IGNORESLOWDOWN
	M.Jitter(2)
	M.adjustBrainLoss(0.25)
	if(prob(5))
		M.emote(pick("twitch", "shiver"))
	..()
	return

/datum/reagent/drug/methamphetamine/overdose_process(mob/living/M)
	if(M.canmove && !istype(M.loc, /atom/movable))
		for(var/i = 0, i < 4, i++)
			step(M, pick(cardinal))
	if(prob(20))
		M.emote("laugh")
	if(prob(33))
		M.visible_message("<span class='danger'>[M]'s hands flip out and flail everywhere!</span>")
		var/obj/item/I = M.get_active_hand()
		if(I)
			M.drop_item()
	..()
	M.adjustToxLoss(1)
	M.adjustBrainLoss(pick(0.5, 0.6, 0.7, 0.8, 0.9, 1))
	return

/datum/reagent/drug/methamphetamine/addiction_act_stage1(mob/living/M)
	M.Jitter(5)
	if(prob(20))
		M.emote(pick("twitch","drool","moan"))
	..()
	return
/datum/reagent/drug/methamphetamine/addiction_act_stage2(mob/living/M)
	M.Jitter(10)
	M.Dizzy(10)
	if(prob(30))
		M.emote(pick("twitch","drool","moan"))
	..()
	return
/datum/reagent/drug/methamphetamine/addiction_act_stage3(mob/living/M)
	if(M.canmove && !istype(M.loc, /atom/movable))
		for(var/i = 0, i < 4, i++)
			step(M, pick(cardinal))
	M.Jitter(15)
	M.Dizzy(15)
	if(prob(40))
		M.emote(pick("twitch","drool","moan"))
	..()
	return
/datum/reagent/drug/methamphetamine/addiction_act_stage4(mob/living/carbon/human/M)
	if(M.canmove && !istype(M.loc, /atom/movable))
		for(var/i = 0, i < 8, i++)
			step(M, pick(cardinal))
	M.Jitter(20)
	M.Dizzy(20)
	M.adjustToxLoss(5)
	if(prob(50))
		M.emote(pick("twitch","drool","moan"))
	..()
	return

/datum/reagent/drug/bath_salts
	name = "Bath Salts"
	id = "bath_salts"
	description = "Makes you nearly impervious to stuns and grants a stamina regeneration buff, but you will be a nearly uncontrollable tramp-bearded raving lunatic."
	reagent_state = LIQUID
	color = "#60A584" // rgb: 96, 165, 132
	overdose_threshold = 20
	addiction_threshold = 10


/datum/reagent/drug/bath_salts/on_mob_life(mob/living/M)
	var/high_message = pick("You feel amped up.", "You feel ready.", "You feel like you can push it to the limit.")
	if(prob(5))
		M << "<span class='notice'>[high_message]</span>"
	M.AdjustParalysis(-3)
	M.AdjustStunned(-3)
	M.AdjustWeakened(-3)
	M.adjustStaminaLoss(-5)
	M.adjustBrainLoss(0.5)
	M.adjustToxLoss(0.1)
	M.hallucination += 10
	if(M.canmove && !istype(M.loc, /atom/movable))
		step(M, pick(cardinal))
		step(M, pick(cardinal))
	..()
	return

/datum/reagent/drug/bath_salts/overdose_process(mob/living/M)
	M.hallucination += 10
	if(M.canmove && !istype(M.loc, /atom/movable))
		for(var/i = 0, i < 8, i++)
			step(M, pick(cardinal))
	if(prob(20))
		M.emote(pick("twitch","drool","moan"))
	if(prob(33))
		var/obj/item/I = M.get_active_hand()
		if(I)
			M.drop_item()
	..()
	return

/datum/reagent/drug/bath_salts/addiction_act_stage1(mob/living/M)
	M.hallucination += 10
	if(M.canmove && !istype(M.loc, /atom/movable))
		for(var/i = 0, i < 8, i++)
			step(M, pick(cardinal))
	M.Jitter(5)
	M.adjustBrainLoss(10)
	if(prob(20))
		M.emote(pick("twitch","drool","moan"))
	..()
	return
/datum/reagent/drug/bath_salts/addiction_act_stage2(mob/living/M)
	M.hallucination += 20
	if(M.canmove && !istype(M.loc, /atom/movable))
		for(var/i = 0, i < 8, i++)
			step(M, pick(cardinal))
	M.Jitter(10)
	M.Dizzy(10)
	M.adjustBrainLoss(10)
	if(prob(30))
		M.emote(pick("twitch","drool","moan"))
	..()
	return
/datum/reagent/drug/bath_salts/addiction_act_stage3(mob/living/M)
	M.hallucination += 30
	if(M.canmove && !istype(M.loc, /atom/movable))
		for(var/i = 0, i < 12, i++)
			step(M, pick(cardinal))
	M.Jitter(15)
	M.Dizzy(15)
	M.adjustBrainLoss(10)
	if(prob(40))
		M.emote(pick("twitch","drool","moan"))
	..()
	return
/datum/reagent/drug/bath_salts/addiction_act_stage4(mob/living/carbon/human/M)
	M.hallucination += 40
	if(M.canmove && !istype(M.loc, /atom/movable))
		for(var/i = 0, i < 16, i++)
			step(M, pick(cardinal))
	M.Jitter(50)
	M.Dizzy(50)
	M.adjustToxLoss(5)
	M.adjustBrainLoss(10)
	if(prob(50))
		M.emote(pick("twitch","drool","moan"))
	..()
	return

/datum/reagent/drug/aranesp
	name = "Aranesp"
	id = "aranesp"
	description = "Amps you up and gets you going, fixes all stamina damage you might have but can cause toxin and oxygen damage.."
	reagent_state = LIQUID
	color = "#60A584" // rgb: 96, 165, 132

/datum/reagent/drug/aranesp/on_mob_life(mob/living/M)
	var/high_message = pick("You feel amped up.", "You feel ready.", "You feel like you can push it to the limit.")
	if(prob(5))
		M << "<span class='notice'>[high_message]</span>"
	M.adjustStaminaLoss(-18)
	M.adjustToxLoss(0.5)
	if(prob(50))
		M.losebreath++
		M.adjustOxyLoss(1)
	..()
	return

/datum/reagent/drug/psycho
	name = "Psycho fluid"
	id = "psycho"
	description = "Makes the user hit harder and shrug off slight stuns, but causes slight brain damage and carries a risk of addiction."
	reagent_state = LIQUID
	color = "#FF0000" // it's red as fuck
	overdose_threshold = 30
	addiction_threshold = 15

/datum/reagent/drug/psycho/on_mob_life(mob/living/M)
	var/high_message = pick("<br><font color='#FF0000'><b>FUCKING KILL!</b></font>", "<br><font color='#FF0000'><b>RAAAAR!</b></font>", "<br><font color='#FF0000'><b>BRING IT!</b></font>")
	if(prob(5))
		M << "<span class='notice'>[high_message]</span>"
	M.AdjustParalysis(-0.5)
	M.AdjustStunned(-0.5)
	M.AdjustWeakened(-0.5)
	M.adjustStaminaLoss(-1)
	M.adjustBrainLoss(0.25)
	M.hallucination += 5
	..()
	return

/datum/reagent/drug/psycho/overdose_process(mob/living/M)
	M.hallucination += 20
	if(M.canmove && !istype(M.loc, /atom/movable))
		for(var/i = 0, i < 8, i++)
			step(M, pick(cardinal))
	if(prob(20))
		M.emote(pick("twitch","drool","laugh"))
	if(prob(33))
		var/obj/item/I = M.get_active_hand()
		if(I)
			M.drop_item()
	M.adjustBrainLoss(10)
	..()
	return

/datum/reagent/drug/psycho/addiction_act_stage1(mob/living/M)
	M.hallucination += 10
	M.Jitter(5)
	M.adjustBrainLoss(10)
	if(prob(20))
		M.emote(pick("twitch","drool","laugh"))
	..()
	return
/datum/reagent/drug/psycho/addiction_act_stage2(mob/living/M)
	M.hallucination += 20
	M.Jitter(10)
	M.Dizzy(10)
	M.adjustBrainLoss(10)
	if(prob(30))
		M.emote(pick("twitch","drool","laugh"))
	..()
	return
/datum/reagent/drug/psycho/addiction_act_stage3(mob/living/M)
	M.hallucination += 30
	if(M.canmove && !istype(M.loc, /atom/movable))
		for(var/i = 0, i < 2, i++)
			step(M, pick(cardinal))
	M.Jitter(15)
	M.Dizzy(15)
	M.adjustBrainLoss(10)
	if(prob(40))
		M.emote(pick("twitch","drool","laugh"))
	..()
	return
/datum/reagent/drug/psycho/addiction_act_stage4(mob/living/carbon/human/M)
	M.hallucination += 40
	if(M.canmove && !istype(M.loc, /atom/movable))
		for(var/i = 0, i < 4, i++)
			step(M, pick(cardinal))
	M.Jitter(50)
	M.Dizzy(50)
	M.adjustToxLoss(5)
	M.adjustBrainLoss(10)
	if(prob(50))
		M.emote(pick("twitch","drool","laugh"))
	..()
	return

/datum/reagent/drug/turbo
	name = "Turbo fluid"
	id = "turbo"
	description = "Makes the user perceive time slower, heightening their reflexes and movements. Basically, it makes you fast. Carries a high risk of addiction."
	reagent_state = LIQUID
	color = "#E5E5FF"
	overdose_threshold = 30
	addiction_threshold = 15

/datum/reagent/drug/turbo/on_mob_life(mob/living/M)
	var/high_message = pick("You feel hyper.", "You feel like you need to go faster.", "You feel like you can run the world.")
	if(prob(5))
		M << "<span class='notice'>[high_message]</span>"
	M.status_flags |= IGNORESLOWDOWN
	M.Jitter(2)
	M.adjustBrainLoss(0.25)
	if(prob(5))
		M.emote(pick("twitch", "shiver"))
	..()
	return

/datum/reagent/drug/turbo/overdose_process(mob/living/M)
	if(M.canmove && !istype(M.loc, /atom/movable))
		for(var/i = 0, i < 4, i++)
			step(M, pick(cardinal))
	if(prob(20))
		M.emote("laugh")
	if(prob(33))
		M.visible_message("<span class='danger'>[M]'s hands flip out and flail everywhere!</span>")
		var/obj/item/I = M.get_active_hand()
		if(I)
			M.drop_item()
	..()
	M.adjustToxLoss(5)
	return

/datum/reagent/drug/turbo/addiction_act_stage1(mob/living/M)
	if(M.canmove && !istype(M.loc, /atom/movable))
		for(var/i = 0, i < 4, i++)
			step(M, pick(cardinal))
	M.Jitter(5)
	if(prob(20))
		M.emote(pick("twitch","shake","groan"))
	..()
	return
/datum/reagent/drug/turbo/addiction_act_stage2(mob/living/M)
	if(M.canmove && !istype(M.loc, /atom/movable))
		for(var/i = 0, i < 8, i++)
			step(M, pick(cardinal))
	M.Jitter(10)
	M.Dizzy(10)
	if(prob(30))
		M.emote(pick("twitch","shake","groan"))
	..()
	return
/datum/reagent/drug/turbo/addiction_act_stage3(mob/living/M)
	if(M.canmove && !istype(M.loc, /atom/movable))
		for(var/i = 0, i < 10, i++)
			step(M, pick(cardinal))
	M.Jitter(15)
	M.Dizzy(15)
	M.adjustToxLoss(2.5)
	if(prob(40))
		M.emote(pick("twitch","shake","groan"))
	..()
	return
/datum/reagent/drug/turbo/addiction_act_stage4(mob/living/carbon/human/M)
	if(M.canmove && !istype(M.loc, /atom/movable))
		for(var/i = 0, i < 20, i++)
			step(M, pick(cardinal))
	M.Jitter(20)
	M.Dizzy(20)
	M.adjustToxLoss(5)
	if(prob(50))
		M.emote(pick("twitch","shake","groan"))
	..()
	return

/datum/reagent/drug/jet
	name = "Jet fluid"
	id = "jet"
	description = "Induces a short, but intense high that'll make you go faster. Carries a high risk of addiction."
	reagent_state = LIQUID
	color = "#A52A2A"
	overdose_threshold = 20
	addiction_threshold = 15

/datum/reagent/drug/jet/on_mob_life(mob/living/M)
	var/high_message = pick("You feel amazing.", "You feel like you haven't got a care in the world.", "You see pretty lights.")
	if(prob(10))
		M << "<span class='notice'>[high_message]</span>"
	if(prob(7))
		M.emote(pick("drool","moan","giggle","laugh"))
	M.druggy = max(M.druggy, 15)
	M.status_flags |= IGNORESLOWDOWN
	..()
	return

/datum/reagent/drug/jet/overdose_start(mob/living/M)
	M << "<span class='userdanger'>Bad trip! Bad trip!</span>"

/datum/reagent/drug/jet/overdose_process(mob/living/M)
	if(prob(20))
		M.emote("twitch","moan")
	M.Jitter(5)
	M.hallucination += 5
	M.adjustBrainLoss(0.25)
	M.adjustToxLoss(5)
	return

/datum/reagent/drug/jet/addiction_act_stage1(mob/living/M)
	M.adjustToxLoss(1)
	..()
	return
/datum/reagent/drug/jet/addiction_act_stage2(mob/living/M)
	M.adjustToxLoss(2)
	..()
	return
/datum/reagent/drug/jet/addiction_act_stage3(mob/living/M)
	if(M.canmove && !istype(M.loc, /atom/movable))
		for(var/i = 0, i < 4, i++)
			step(M, pick(cardinal))
	M.adjustBrainLoss(0.5)
	M.adjustToxLoss(3)
	..()
	return
/datum/reagent/drug/jet/addiction_act_stage4(mob/living/carbon/human/M)
	if(M.canmove && !istype(M.loc, /atom/movable))
		for(var/i = 0, i < 8, i++)
			step(M, pick(cardinal))
	M.adjustBrainLoss(1)
	M.adjustToxLoss(4)
	..()
	return

/datum/reagent/drug/buffout
	name = "Buffout"
	id = "buffout"
	description = "A chemical that makes it's user much more sturdier."
	color = "#000000" // rgb: 0, 0, 0, black
	addiction_threshold = 15
	overdose_threshold = 19
	var/maxhealthadded = 0

/datum/reagent/drug/buffout/overdose_start(mob/living/M)
	M << "<span class='userdanger'>You feel like you took too much of [name]!</span>"
	M << "You feel so weak!"
	if(M.maxHealth >= 100)
		M.maxHealth = 60
		M.health = min(M.health, 60)
	return

/datum/reagent/drug/buffout/on_mob_life(mob/living/M)
	if(maxhealthadded == 0)
		maxhealthadded = 1
		M << "You feel tough!"
		if(M.maxHealth < 100)
			M.maxHealth = 125
		else
			M.maxHealth += 25
			M.health += 25
	else
		..()

/datum/reagent/drug/buffout/addiction_act_stage1(mob/living/M)
	M.maxHealth = 90
	M.health = min(M.health, 90) //Shouldn't be a problem if this is repeated over and over
	..()

/datum/reagent/drug/buffout/addiction_act_stage2(mob/living/M)
	M.maxHealth = 80
	M.health = min(M.health, 80)
	..()

/datum/reagent/drug/buffout/addiction_act_stage3(mob/living/M)
	M.maxHealth = 70
	M.health = min(M.health, 70)
	..()

/datum/reagent/drug/buffout/addiction_act_stage4(mob/living/M)
	M.maxHealth = 60
	M.health = min(M.health, 60)
	..()

/datum/reagent/drug/buffout/overdose_process(mob/living/M)
	..()

/datum/reagent/drug/buffout/on_mob_delete(mob/living/M)
	M << "You no longer feel tough."
	M.health = min(M.health - 25, M.maxHealth)
	M.maxHealth = 100
