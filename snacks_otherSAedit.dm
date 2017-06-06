
////////////////////////////////////////////OTHER////////////////////////////////////////////

/obj/item/weapon/reagent_containers/food/snacks/store/cheesewheel
	name = "cheese wheel"
	desc = "A big wheel of delcious Cheddar."
	icon_state = "cheesewheel"
	slice_path = /obj/item/weapon/reagent_containers/food/snacks/cheesewedge
	slices_num = 5
	list_reagents = list("nutriment" = 15, "vitamin" = 5)
	w_class = 3

/obj/item/weapon/reagent_containers/food/snacks/cheesewedge
	name = "cheese wedge"
	desc = "A wedge of delicious Cheddar. The cheese wheel it was cut from can't have gone far."
	icon_state = "cheesewedge"
	filling_color = "#FFD700"
	list_reagents = list("nutriment" = 3, "vitamin" = 1)

/obj/item/weapon/reagent_containers/food/snacks/watermelonslice
	name = "watermelon slice"
	desc = "A slice of watery goodness."
	icon_state = "watermelonslice"
	filling_color = "#FF1493"

/obj/item/weapon/reagent_containers/food/snacks/candy_corn
	name = "candy corn"
	desc = "It's a handful of candy corn. Can be stored in a detective's hat."
	icon_state = "candy_corn"
	list_reagents = list("nutriment" = 4, "sugar" = 2)
	filling_color = "#FF8C00"

/obj/item/weapon/reagent_containers/food/snacks/chocolatebar
	name = "chocolate bar"
	desc = "Such, sweet, fattening food."
	icon_state = "chocolatebarunwrapped"
	wrapped = 0
	list_reagents = list("nutriment" = 2, "sugar" = 2, "cocoa" = 2)
	filling_color = "#A0522D"

/obj/item/weapon/reagent_containers/food/snacks/chocolatebar/attack_self(mob/user)
	if(wrapped)
		Unwrap(user)
	else
		..()

/obj/item/weapon/reagent_containers/food/snacks/chocolatebar/proc/Unwrap(mob/user)
		icon_state = "chocolatebarunwrapped"
		desc = "It won't make you all sticky."
		user << "<span class='notice'>You remove the foil.</span>"
		wrapped = 0


/obj/item/weapon/reagent_containers/food/snacks/chocolatebar/wrapped
	desc = "It's wrapped in some foil."
	icon_state = "chocolatebar"
	wrapped = 1

/obj/item/weapon/reagent_containers/food/snacks/hugemushroomslice
	name = "huge mushroom slice"
	desc = "A slice from a huge mushroom."
	icon_state = "hugemushroomslice"
	list_reagents = list("nutriment" = 3, "vitamin" = 1)

/obj/item/weapon/reagent_containers/food/snacks/popcorn
	name = "popcorn"
	desc = "Now let's find some cinema."
	icon_state = "popcorn"
	trash = /obj/item/trash/popcorn
	list_reagents = list("nutriment" = 2)
	bitesize = 0.1 //this snack is supposed to be eating during looooong time. And this it not dinner food! --rastaf0
	filling_color = "#FFEFD5"

/obj/item/weapon/reagent_containers/food/snacks/popcorn/New()
	..()
	eatverb = pick("bite","crunch","nibble","gnaw","gobble","chomp")

/obj/item/weapon/reagent_containers/food/snacks/loadedbakedpotato
	name = "loaded baked potato"
	desc = "Totally baked."
	icon_state = "loadedbakedpotato"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 2)
	list_reagents = list("nutriment" = 6)
	filling_color = "#D2B48C"

/obj/item/weapon/reagent_containers/food/snacks/fries
	name = "space fries"
	desc = "AKA: French Fries, Freedom Fries, etc."
	icon_state = "fries"
	trash = /obj/item/trash/plate
	list_reagents = list("nutriment" = 4)
	filling_color = "#FFD700"

/obj/item/weapon/reagent_containers/food/snacks/soydope
	name = "soy dope"
	desc = "Dope from a soy."
	icon_state = "soydope"
	trash = /obj/item/trash/plate
	list_reagents = list("nutriment" = 2)
	filling_color = "#DEB887"

/obj/item/weapon/reagent_containers/food/snacks/cheesyfries
	name = "cheesy fries"
	desc = "Fries. Covered in cheese. Duh."
	icon_state = "cheesyfries"
	trash = /obj/item/trash/plate
	bonus_reagents = list("nutriment" = 1, "vitamin" = 2)
	list_reagents = list("nutriment" = 6)
	filling_color = "#FFD700"

/obj/item/weapon/reagent_containers/food/snacks/badrecipe
	name = "burned mess"
	desc = "Someone should be demoted from cook for this."
	icon_state = "badrecipe"
	list_reagents = list("????" = 30)
	filling_color = "#8B4513"

/obj/item/weapon/reagent_containers/food/snacks/carrotfries
	name = "carrot fries"
	desc = "Tasty fries from fresh Carrots."
	icon_state = "carrotfries"
	trash = /obj/item/trash/plate
	list_reagents = list("nutriment" = 3, "oculine" = 3, "vitamin" = 2)
	filling_color = "#FFA500"

/obj/item/weapon/reagent_containers/food/snacks/candiedapple
	name = "candied apple"
	desc = "An apple coated in sugary sweetness."
	icon_state = "candiedapple"
	bitesize = 3
	bonus_reagents = list("nutriment" = 2, "sugar" = 3)
	list_reagents = list("nutriment" = 3, "sugar" = 2)
	filling_color = "#FF4500"

/obj/item/weapon/reagent_containers/food/snacks/mint
	name = "mint"
	desc = "it is only wafer thin."
	icon_state = "mint"
	bitesize = 1
	trash = /obj/item/trash/plate
	list_reagents = list("minttoxin" = 1)
	filling_color = "#800000"

/obj/item/weapon/reagent_containers/food/snacks/eggwrap
	name = "egg wrap"
	desc = "The precursor to Pigs in a Blanket."
	icon_state = "eggwrap"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 3)
	list_reagents = list("nutriment" = 5)
	filling_color = "#F0E68C"

/obj/item/weapon/reagent_containers/food/snacks/beans
	name = "tin of beans"
	desc = "Musical fruit in a slightly less musical container."
	icon_state = "beans"
	bonus_reagents = list("radium" = 1, "vitamin" = 1)
	list_reagents = list("nutriment" = 10)
	filling_color = "#B22222"

/obj/item/weapon/reagent_containers/food/snacks/bubblegum
	name = "Bubblegum"
	desc = "Big Pops branded bubblegum."
	icon_state = "bubblegum"
	bonus_reagents = list("radium" = 1, "vitamin" = 1)
	list_reagents = list("nutriment" = 2)
	filling_color = "#B22222"

/obj/item/weapon/reagent_containers/food/snacks/cram
	name = "Cram"
	desc = "It is a blue labeled tin of processed meat, primarily used as rations for soldiers during the Pre-War times."
	icon_state = "cram"
	bonus_reagents = list("radium" = 1, "vitamin" = 5)
	list_reagents = list("nutriment" = 20)
	filling_color = "#B22222"

/obj/item/weapon/reagent_containers/food/snacks/craml
	name = "Cram"
	desc = "It is a blue labeled tin of processed meat, primarily used as rations for soldiers during the Pre-War times."
	icon_state = "cram_large"
	bonus_reagents = list("radium" = 1, "vitamin" = 5)
	list_reagents = list("nutriment" = 40)
	filling_color = "#B22222"

/obj/item/weapon/reagent_containers/food/snacks/yumyum
	name = "Yumyum Deviled Eggs"
	desc = "YumYum was a pre-War company in the United States, producing packaged foods. YumYum Deviled Eggs was their major product."
	icon_state = "yumyum"
	bonus_reagents = list("radium" = 1, "vitamin" = 2)
	list_reagents = list("nutriment" = 10)
	filling_color = "#B22222"

/obj/item/weapon/reagent_containers/food/snacks/fancylads
	name = "Fancy lads Snack Cakes"
	desc = "A plain white box with a red label in the middle above a stylised picture of a tied bow. The slogan on the box says 'A big delight in every bite'."
	icon_state = "fancylads"
	bonus_reagents = list("radium" = 1, "vitamin" = 1)
	list_reagents = list("nutriment" = 20)
	filling_color = "#B22222"

/obj/item/weapon/reagent_containers/food/snacks/sugarbombs
	name = "Sugar Bombs"
	desc = "Sugar Bombs is a pre-War breakfast cereal that can be found all around the Wasteland, packaged in white and blue boxes with a red ovoid logo at the top, fully labeled as 'Sugar Bombs breakfast cereal.'"
	icon_state = "sugarbombs"
	bonus_reagents = list("radium" = 3, "vitamin" = 2)
	list_reagents = list("nutriment" = 10, "sugar" = 10)
	filling_color = "#B22222"

/obj/item/weapon/reagent_containers/food/snacks/crisps
	name = "Crisps"
	desc = "Potato Crisps are packaged in a small red and green box, with a yellow bubble encouraging the purchaser to 'See Moon Map Offer on Back!'. They are visually identical to junk food."
	icon_state = "crisps"
	bonus_reagents = list("radium" = 1, "vitamin" = 1)
	list_reagents = list("nutriment" = 5)
	filling_color = "#B22222"

/obj/item/weapon/reagent_containers/food/snacks/steak
	name = "Salisbury Steak"
	desc = "Salisbury Steaks are found in big, subdued red boxes."
	icon_state = "steak"
	bonus_reagents = list("radium" = 2, "vitamin" = 5)
	list_reagents = list("nutriment" = 50)
	filling_color = "#B22222"

/obj/item/weapon/reagent_containers/food/snacks/dandyapples
	name = "Dandy apples"
	desc = "Dandy Boy Apples were envisioned and produced from the pre-War company Dandy Boy, consisting of candied apples packaged in a red cardboard box."
	icon_state = "dandyapples"
	bonus_reagents = list("radium" = 2, "vitamin" = 2)
	list_reagents = list("nutriment" = 10)
	filling_color = "#B22222"

/obj/item/weapon/reagent_containers/food/snacks/blamco
	name = "Blamco"
	desc = "BlamCo was a pre-War company in the United States, producing packaged foods. BlamCo Mac & Cheese was their major product. Unlike other foods, like apples or eggs, wheat cannot be freeze-dried. How the macaroni remains edible is unclear."
	icon_state = "blamco"
	bonus_reagents = list("radium" = 5, "vitamin" = 2)
	list_reagents = list("nutriment" = 15)
	filling_color = "#B22222"

/obj/item/weapon/reagent_containers/food/snacks/instamash
	name = "InstaMash"
	desc = "InstaMash is packaged in a white box with blue highlights. It appears to be a form of instant potatoes."
	icon_state = "instamash"
	bonus_reagents = list("radium" = 2, "vitamin" = 2)
	list_reagents = list("nutriment" = 15)
	filling_color = "#B22222"

/obj/item/weapon/reagent_containers/food/snacks/porknbeans
	name = "Pork n' Beans"
	desc = "Pork n' Beans come in a small brown and orange tin, with a label that reads 'Greasy Prospector Improved Pork And Beans'. Toward the bottom of the label is printed that the beans come 'With Hickory Smoked Pig Fat Chunks.'"
	icon_state = "porknbeans"
	bonus_reagents = list("radium" = 5, "vitamin" = 2)
	list_reagents = list("nutriment" = 35)
	filling_color = "#B22222"

/obj/item/weapon/reagent_containers/food/snacks/spidereggs
	name = "spider eggs"
	desc = "A cluster of juicy spider eggs. A great side dish for when you care not for your health."
	icon_state = "spidereggs"
	list_reagents = list("nutriment" = 2, "toxin" = 2)
	filling_color = "#008000"

/obj/item/weapon/reagent_containers/food/snacks/chococoin
	name = "chocolate coin"
	desc = "A completely edible but nonflippable festive coin."
	icon_state = "chococoin"
	bonus_reagents = list("nutriment" = 1, "sugar" = 1)
	list_reagents = list("nutriment" = 3, "cocoa" = 1)
	filling_color = "#A0522D"

/obj/item/weapon/reagent_containers/food/snacks/fudgedice
	name = "fudge dice"
	desc = "A little cube of chocolate that tends to have a less intense taste if you eat too many at once."
	icon_state = "chocodice"
	bonus_reagents = list("nutriment" = 1, "sugar" = 1)
	list_reagents = list("nutriment" = 3, "cocoa" = 1)
	filling_color = "#A0522D"
	trash = /obj/item/weapon/dice/fudge

/obj/item/weapon/reagent_containers/food/snacks/chocoorange
	name = "chocolate orange"
	desc = "A festive chocolate orange"
	icon_state = "chocoorange"
	bonus_reagents = list("nutriment" = 1, "sugar" = 1)
	list_reagents = list("nutriment" = 3, "sugar" = 1)
	filling_color = "#A0522D"

/obj/item/weapon/reagent_containers/food/snacks/eggplantparm
	name = "eggplant parmigiana"
	desc = "The only good recipe for eggplant."
	icon_state = "eggplantparm"
	trash = /obj/item/trash/plate
	bonus_reagents = list("nutriment" = 1, "vitamin" = 3)
	list_reagents = list("nutriment" = 6, "vitamin" = 2)
	filling_color = "#BA55D3"

/obj/item/weapon/reagent_containers/food/snacks/tortilla
	name = "tortilla"
	desc = "The base for all your burritos."
	icon = 'icons/obj/food/food_ingredients.dmi'
	icon_state = "tortilla"
	list_reagents = list("nutriment" = 3, "vitamin" = 1)
	filling_color = "#FFEFD5"

/obj/item/weapon/reagent_containers/food/snacks/burrito
	name = "burrito"
	desc = "Tortilla wrapped goodness."
	icon_state = "burrito"
	bonus_reagents = list("nutriment" = 2, "vitamin" = 2)
	list_reagents = list("nutriment" = 4, "vitamin" = 1)
	filling_color = "#FFEFD5"

/obj/item/weapon/reagent_containers/food/snacks/cheesyburrito
	name = "cheesy burrito"
	desc = "It's a burrito filled with cheese."
	icon_state = "cheesyburrito"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 2)
	list_reagents = list("nutriment" = 4, "vitamin" = 2)
	filling_color = "#FFD800"

/obj/item/weapon/reagent_containers/food/snacks/carneburrito
	name = "carne asada burrito"
	desc = "The best burrito for meat lovers."
	icon_state = "carneburrito"
	bonus_reagents = list("nutriment" = 2, "vitamin" = 1)
	list_reagents = list("nutriment" = 5, "vitamin" = 1)
	filling_color = "#A0522D"

/obj/item/weapon/reagent_containers/food/snacks/fuegoburrito
	name = "fuego plasma burrito"
	desc = "A super spicy burrito."
	icon_state = "fuegoburrito"
	bonus_reagents = list("nutriment" = 2, "vitamin" = 3)
	list_reagents = list("nutriment" = 4, "capsaicin" = 5, "vitamin" = 3)
	filling_color = "#FF2000"

/obj/item/weapon/reagent_containers/food/snacks/yakiimo
	name = "yaki imo"
	desc = "Made with roasted sweet potatoes!"
	icon_state = "yakiimo"
	trash = /obj/item/trash/plate
	list_reagents = list("nutriment" = 5, "vitamin" = 4)
	filling_color = "#8B1105"

/obj/item/weapon/reagent_containers/food/snacks/roastparsnip
	name = "roast parsnip"
	desc = "Sweet and crunchy."
	icon_state = "roastparsnip"
	trash = /obj/item/trash/plate
	list_reagents = list("nutriment" = 3, "vitamin" = 4)
	filling_color = "#FF5500"

/obj/item/weapon/reagent_containers/food/snacks/melonfruitbowl
	name = "melon fruit bowl"
	desc = "For people who wants edible fruit bowls."
	icon_state = "melonfruitbowl"
	bonus_reagents = list("nutriment" = 2, "vitamin" = 2)
	list_reagents = list("nutriment" = 6, "vitamin" = 4)
	filling_color = "#FF5500"
	w_class = 3

/obj/item/weapon/reagent_containers/food/snacks/spacefreezy
	name = "space freezy"
	desc = "The best icecream in space."
	icon_state = "spacefreezy"
	bonus_reagents = list("nutriment" = 2, "vitamin" = 2)
	list_reagents = list("nutriment" = 6, "bluecherryjelly" = 5, "vitamin" = 4)
	filling_color = "#87CEFA"

/obj/item/weapon/reagent_containers/food/snacks/sundae
	name = "sundae"
	desc = "A classic dessert."
	icon_state = "sundae"
	bonus_reagents = list("nutriment" = 2, "vitamin" = 1)
	list_reagents = list("nutriment" = 6, "banana" = 5, "vitamin" = 2)
	filling_color = "#FFFACD"

/obj/item/weapon/reagent_containers/food/snacks/honkdae
	name = "honkdae"
	desc = "The clown's favorite dessert."
	icon_state = "honkdae"
	bonus_reagents = list("nutriment" = 2, "vitamin" = 2)
	list_reagents = list("nutriment" = 6, "banana" = 10, "vitamin" = 4)
	filling_color = "#FFFACD"

/obj/item/weapon/reagent_containers/food/snacks/nachos
	name = "nachos"
	desc = "Chips from Space Mexico."
	icon_state = "nachos"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 1)
	list_reagents = list("nutriment" = 6, "vitamin" = 2)
	filling_color = "#F4A460"

/obj/item/weapon/reagent_containers/food/snacks/cheesynachos
	name = "cheesy nachos"
	desc = "The delicious combination of nachos and melting cheese."
	icon_state = "cheesynachos"
	bonus_reagents = list("nutriment" = 1, "vitamin" = 2)
	list_reagents = list("nutriment" = 6, "vitamin" = 3)
	filling_color = "#FFD700"

/obj/item/weapon/reagent_containers/food/snacks/cubannachos
	name = "cuban nachos"
	desc = "That's some dangerously spicy nachos."
	icon_state = "cubannachos"
	bonus_reagents = list("nutriment" = 2, "vitamin" = 3)
	list_reagents = list("nutriment" = 7, "capsaicin" = 8, "vitamin" = 4)
	filling_color = "#DC143C"

/obj/item/weapon/reagent_containers/food/snacks/melonkeg
	name = "melon keg"
	desc = "Who knew vodka was a fruit?"
	icon_state = "melonkeg"
	bonus_reagents = list("nutriment" = 3, "vitamin" = 3)
	list_reagents = list("nutriment" = 9, "vodka" = 15, "vitamin" = 4)
	filling_color = "#FFD700"
	volume = 80
	bitesize = 5