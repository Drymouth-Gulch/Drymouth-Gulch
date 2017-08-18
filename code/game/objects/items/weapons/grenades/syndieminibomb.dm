/obj/item/weapon/grenade/syndieminibomb
	desc = "A stick of dynamite. The merchant of death's making bank. Light the fuse and toss."
	name = "dynamite"
	icon = 'icons/obj/grenade.dmi'
	icon_state = "syndicate"
	item_state = "flashbang"
	origin_tech = "materials=3;magnets=4;syndicate=4"

/obj/item/weapon/grenade/syndieminibomb/prime()
	update_mob()
	explosion(src.loc,1,2,4,flame_range = 2)
	qdel(src)

/obj/item/weapon/grenade/syndieminibomb/concussion
	name = "HE Grenade"
	desc = "A compact shrapnel grenade meant to devestate nearby organisms and cause some damage in the process. Pull pin and throw opposite direction."
	icon_state = "concussion"
	origin_tech = "materials=3;magnets=4;syndicate=2"

/obj/item/weapon/grenade/tincan
	name = "tin can grenade"
	desc = "An improvised explosive device consisting of a tin can filled with gunpowder. Effective to some extent."
	icon_state = "tincan"

/obj/item/weapon/grenade/tincan/prime()
	update_mob()
	explosion(src.loc,-1,1,2, flame_range = pick(1,4))
	qdel(src)
