//beakers but made of sandstone *Magic Pottery*

/obj/item/weapon/reagent_containers/glass/clay //lazybones -Gobmle
  name = "Clay Pot"
  desc = "A clay pot, handcrafted in Drymouth Gulch by artisan potters. This holds 30 units."
  icon_state = "clayPot" //not see through - bugger the fancy fluid level nonsense
  item_state = "clayPot"
  flags = OPENCONTAINER //nolids hashtag
  possible_transfer_amounts = list(5,10,15,30)
  volume = 30

/obj/item/weapon/reagent_containers/glass/clay/large
  name = "Large Clay Pot"
  desc = "A large clay pot, handcrafted in Drymouth Gulch by artisan potters. This holds a convinient 80 units."
  icon_state = "clayPot_large"
  item_state = "clayPot_large"
  w_class = 3
  possible_transfer_amounts = list(10,20,30,50) //Big Tippies
  volume = 50

/obj/item/weapon/reagent_containers/glass/clay/huge //bigly
  name = "Huge Clay Pot"
  desc = "A huge clay pot, handcrafted in Drymouth Gulch by artisan potters. This holds a convinient 150 units, wow its biggo!"
  slowdown = 2
  icon_state = "clayPot_yuge"
  item_state = "clayPot_yuge"
  w_class = 4 //I think this is the no backpack one
  possible_transfer_amounts = list(20,40,80,100) //Biggly Tipperoonie
  volume = 100
