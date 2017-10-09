/obj/item/weapon/
	name = "weapon"
	icon = 'icons/obj/weapons.dmi'
	var/drawsound = null

/obj/item/attack_hulk(mob/user)
	src.attack_hand(user)

/obj/item/weapon/New()
	..()
	if(!hitsound)
		if(damtype == "fire")
			hitsound = 'sound/items/welder.ogg'
		if(damtype == "brute")
			hitsound = "swing_hit"

/obj/item/weapon/pickup(mob/user)
	drawsound(user)

/obj/item/weapon/proc/drawsound(mob/user)
	if(drawsound)
		user.visible_message("<span class = 'warning'><b>[user] draws a weapon!</b></span>")
		playsound(user, drawsound, 50, 1)
	else
		return
