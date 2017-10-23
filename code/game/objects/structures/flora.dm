/obj/structure/flora
	burn_state = FLAMMABLE
	burntime = 30

//trees
/obj/structure/flora/tree
	name = "tree"
	anchored = 1
	density = 1
	pixel_x = -16
	layer = 9
	var/logamt = 4 //How many logs it'll give - proper trees'll give more than stumps

/obj/structure/flora/tree/attackby(obj/item/weapon/W, mob/user)
	..()
	if(istype(W, /obj/item/weapon/circular_saw) || istype(W, /obj/item/weapon/hatchet) || (istype(W, /obj/item/weapon/twohanded/fireaxe) && W:wielded) || istype(W, /obj/item/weapon/melee/energy) || istype(W, /obj/item/weapon/twohanded/required/chainsaw))
		visible_message("<i>[user] begins to chop up [src]...</i>")
		if(do_after(user, 30, target = src))
			for(var/i = 1, i <= logamt, i++)
				new /obj/item/weapon/log(get_turf(src))
			visible_message("<i>[user] has chopped [src] into logs./i>")
			qdel(src)
			return

/obj/structure/flora/tree/pine
	name = "pine tree"
	icon = 'icons/obj/flora/pinetrees.dmi'
	icon_state = "pine_1"

/obj/structure/flora/tree/pine/New()
	icon_state = "pine_[rand(1, 3)]"
	..()

/obj/structure/flora/tree/pine/xmas
	name = "xmas tree"
	icon = 'icons/obj/flora/pinetrees.dmi'
	icon_state = "pine_c"

/obj/structure/flora/tree/pine/xmas/New()
	..()
	icon_state = "pine_c"

/obj/structure/flora/tree/dead
	icon = 'icons/obj/flora/deadtrees.dmi'
	icon_state = "tree_1"

/obj/structure/flora/tree/festivus
	name = "festivus pole"
	icon = 'icons/obj/flora/pinetrees.dmi'
	icon_state = "festivus_pole"
	desc = "During last year's Feats of Strength the Research Director was able to suplex this passing immobile rod into a planter."

/obj/structure/flora/tree/dead/New()
	icon_state = "tree_[rand(1, 6)]"
	..()

/obj/structure/flora/tree/wasteland
	name = "dead tree"
	icon = 'icons/obj/flora/deadtrees.dmi'
	icon_state = "deadtree_1"


/obj/structure/flora/tree/wasteland/New()
	icon_state = "deadtree_[rand(1, 6)]"
	..()

/obj/structure/flora/tree/telephonepole //It's not a tree, not, but it can be cut down like one, so.
	name = "telephone pole"
	desc = "An old telephone pole, no longer connected to anything."
	icon_state = "telephonepole"
	icon = 'icons/obj/flora/pinetrees.dmi' //Because it's 96 high
	pixel_x = 0

/obj/structure/flora/tree/stump
	name = "stump"
	desc = "The bottom part of a tree left projecting from the ground after most of the trunk has fallen or been cut down."
	icon = 'icons/obj/flora/wasteland.dmi'
	icon_state = "stump"
	logamt = 1 //it's a stump.

//Logs (from trees, not towercaps)
/obj/item/weapon/log
	name = "tree log"
	desc = "A log, from a tree. Covered in bark."
	icon = 'icons/obj/flora/wasteland.dmi'
	icon_state = "tree_log"
	force = 9
	throwforce = 6
	w_class = 4
	throw_speed = 2
	throw_range = 3

/obj/item/weapon/log/attackby(obj/item/weapon/W, mob/user, params) //Copypasted from logs with modifications to not allow them to be torches or rely on potencty
	..()
	if(istype(W, /obj/item/weapon/circular_saw) || istype(W, /obj/item/weapon/hatchet) || (istype(W, /obj/item/weapon/twohanded/fireaxe) && W:wielded) || istype(W, /obj/item/weapon/melee/energy) || istype(W, /obj/item/weapon/twohanded/required/chainsaw))
		user.show_message("<span class='notice'>You make a plank out of \the [src]!</span>", 1)
		var/obj/item/stack/plank = new /obj/item/stack/sheet/mineral/wood(user.loc, 6)
		var/old_plank_amount = plank.amount
		for(var/obj/item/stack/ST in user.loc)
			if(ST != plank && istype(ST, /obj/item/stack/sheet/mineral/wood) && ST.amount < ST.max_amount)
				ST.attackby(plank, user) //we try to transfer all old unfinished stacks to the new stack we created.
		if(plank.amount > old_plank_amount)
			user << "<span class='notice'>You add the newly-formed plank to the stack. It now contains [plank.amount] planks.</span>"
		qdel(src)


//grass
/obj/structure/flora/grass
	name = "grass"
	icon = 'icons/obj/flora/snowflora.dmi'
	anchored = 1
	gender = PLURAL	//"this is grass" not "this is a grass"

/obj/structure/flora/grass/brown
	icon_state = "snowgrass1bb"

/obj/structure/flora/grass/brown/New()
	icon_state = "snowgrass[rand(1, 3)]bb"
	..()

/obj/structure/flora/grass/green
	icon_state = "snowgrass1gb"

/obj/structure/flora/grass/green/New()
	icon_state = "snowgrass[rand(1, 3)]gb"
	..()

/obj/structure/flora/grass/both
	icon_state = "snowgrassall1"

/obj/structure/flora/grass/both/New()
	icon_state = "snowgrassall[rand(1, 3)]"
	..()

/obj/structure/flora/grass/wasteland
	icon = 'icons/obj/flora/wasteland.dmi'
	icon_state = "tall_grass_1"

/obj/structure/flora/grass/wasteland/New()
	..()

	icon_state = "tall_grass_[rand(1, 8)]"//16)]"

/obj/structure/flora/grass/attackby(obj/item/weapon/W, mob/user)
	..()
	if(istype(W,istype(W, /obj/item/weapon/scythe) || istype(W, /obj/item/weapon/kitchen/knife) ||  istype(W, /obj/item/weapon/circular_saw) || istype(W, /obj/item/weapon/hatchet) || (istype(W, /obj/item/weapon/twohanded/fireaxe) && W:wielded) || istype(W, /obj/item/weapon/melee/energy) || istype(W, /obj/item/weapon/twohanded/required/chainsaw))
		visible_message("<i>[user] begins to cut [src]...</i>")
		if(do_after(user, 15, target = src))
			var/obj/item/stack/hay/H = new /obj/item/stack/hay(get_turf(src))
			H.amount = rand(1,3)
			visible_message("<i>[user] has cut the [src] into loose hay./i>")
			qdel(src)
			return




//glowshroom
/obj/structure/flora/mushroom
	name = "mushroom"
	desc = "These light giving mushrooms were once a very rare type of fungus that fed on radioactive materials and radiation.<br>The luminescent glow is a by-product of the radiation they feed on.<br>They commonly grow in the dark areas."
	icon = 'icons/obj/flora/wasteland.dmi'
	icon_state = "mushroom_1"
/obj/structure/flora/mushroom/New()
	..()
	icon_state = "mushroom_[rand(1, 4)]"

/obj/structure/flora/cactus
	anchored = 1
	density = 1
	name = "cactus"
	icon = 'icons/obj/flora/wasteland.dmi'
	icon_state = "cactus_1"

/obj/structure/flora/cactus/New()
	..()
	icon_state = "cactus_[pick(1,2)]"//[rand(1, 4)]"
	dir = pick(alldirs)

/obj/structure/flora/tall_cactus
	name = "cactus"
	icon = 'icons/obj/flora/deadtrees.dmi'
	icon_state = "cactus"

/obj/structure/flora/tall_cactus/New()
	..()
	dir = pick(cardinal)
//bushes
/obj/structure/flora/bush
	name = "bush"
	icon = 'icons/obj/flora/snowflora.dmi'
	icon_state = "snowbush1"
	anchored = 1

/obj/structure/flora/bush/New()
	icon_state = "snowbush[rand(1, 6)]"
	..()

//newbushes

/obj/structure/flora/ausbushes
	name = "bush"
	icon = 'icons/obj/flora/ausflora.dmi'
	icon_state = "firstbush_1"
	anchored = 1

/obj/structure/flora/ausbushes/New()
	if(icon_state == "firstbush_1")
		icon_state = "firstbush_[rand(1, 4)]"
	..()

/obj/structure/flora/ausbushes/reedbush
	icon_state = "reedbush_1"

/obj/structure/flora/ausbushes/reedbush/New()
	icon_state = "reedbush_[rand(1, 4)]"
	..()

/obj/structure/flora/ausbushes/leafybush
	icon_state = "leafybush_1"

/obj/structure/flora/ausbushes/leafybush/New()
	icon_state = "leafybush_[rand(1, 3)]"
	..()

/obj/structure/flora/ausbushes/palebush
	icon_state = "palebush_1"

/obj/structure/flora/ausbushes/palebush/New()
	icon_state = "palebush_[rand(1, 4)]"
	..()

/obj/structure/flora/ausbushes/stalkybush
	icon_state = "stalkybush_1"

/obj/structure/flora/ausbushes/stalkybush/New()
	icon_state = "stalkybush_[rand(1, 3)]"
	..()

/obj/structure/flora/ausbushes/grassybush
	icon_state = "grassybush_1"

/obj/structure/flora/ausbushes/grassybush/New()
	icon_state = "grassybush_[rand(1, 4)]"
	..()

/obj/structure/flora/ausbushes/fernybush
	icon_state = "fernybush_1"

/obj/structure/flora/ausbushes/fernybush/New()
	icon_state = "fernybush_[rand(1, 3)]"
	..()

/obj/structure/flora/ausbushes/sunnybush
	icon_state = "sunnybush_1"

/obj/structure/flora/ausbushes/sunnybush/New()
	icon_state = "sunnybush_[rand(1, 3)]"
	..()

/obj/structure/flora/ausbushes/genericbush
	icon_state = "genericbush_1"

/obj/structure/flora/ausbushes/genericbush/New()
	icon_state = "genericbush_[rand(1, 4)]"
	..()

/obj/structure/flora/ausbushes/pointybush
	icon_state = "pointybush_1"

/obj/structure/flora/ausbushes/pointybush/New()
	icon_state = "pointybush_[rand(1, 4)]"
	..()

/obj/structure/flora/ausbushes/lavendergrass
	icon_state = "lavendergrass_1"

/obj/structure/flora/ausbushes/lavendergrass/New()
	icon_state = "lavendergrass_[rand(1, 4)]"
	..()

/obj/structure/flora/ausbushes/ywflowers
	icon_state = "ywflowers_1"

/obj/structure/flora/ausbushes/ywflowers/New()
	icon_state = "ywflowers_[rand(1, 3)]"
	..()

/obj/structure/flora/ausbushes/brflowers
	icon_state = "brflowers_1"

/obj/structure/flora/ausbushes/brflowers/New()
	icon_state = "brflowers_[rand(1, 3)]"
	..()

/obj/structure/flora/ausbushes/ppflowers
	icon_state = "ppflowers_1"

/obj/structure/flora/ausbushes/ppflowers/New()
	icon_state = "ppflowers_[rand(1, 3)]"
	..()

/obj/structure/flora/ausbushes/sparsegrass
	icon_state = "sparsegrass_1"

/obj/structure/flora/ausbushes/sparsegrass/New()
	icon_state = "sparsegrass_[rand(1, 3)]"
	..()

/obj/structure/flora/ausbushes/fullgrass
	icon_state = "fullgrass_1"

/obj/structure/flora/ausbushes/fullgrass/New()
	icon_state = "fullgrass_[rand(1, 3)]"
	..()

/obj/structure/flora/kirbyplants
	name = "potted plant"
	icon = 'icons/obj/flora/plants.dmi'
	icon_state = "plant-01"

/obj/structure/flora/kirbyplants/dead
	name = "RD's potted plant"
	desc = "A gift from the botanical staff, presented after the RD's reassignment. There's a tag on it that says \"Y'all come back now, y'hear?\"\nIt doesn't look very healthy..."
	icon_state = "plant-25"


//a rock is flora according to where the icon file is
//and now these defines
/obj/structure/flora/rock
	name = "rock"
	desc = "a rock"
	icon_state = "rock"
	icon = 'icons/obj/flora/rocks.dmi'
	anchored = 1
	burn_state = FIRE_PROOF
	density = 1

/obj/structure/flora/rock/New()
	..()
	icon_state = "[icon_state][rand(1,5)]"

/obj/structure/flora/rock/pile
	name = "rocks"
	desc = "some rocks"
	icon_state = "rockpile"
	density = 0


/obj/structure/flora/rock/volcanic
	icon_state = "basalt"
	desc = "A volcanic rock"


/obj/structure/flora/rock/volcanic/New()
	..()
	icon_state = "[icon_state][rand(1,3)]"

/obj/structure/flora/rock/pile/volcanic
	icon_state = "lavarocks"

/obj/structure/flora/rock/pile/volcanic/New()
	..()
	icon_state = "[icon_state][rand(1,3)]"
