/obj/item/weapon/gun/energy/laser
	name = "laser rifle"
	desc = "A basic energy-based laser gun that fires concentrated beams of light which pass through glass and thin metal."
	icon_state = "laser"
	item_state = "laser"
	w_class = 4
	materials = list(MAT_METAL=2000)
	origin_tech = "combat=3;magnets=2"
	ammo_type = list(/obj/item/ammo_casing/energy/laser)
	ammo_x_offset = 1
	shaded_charge = 1
	cell_type = /obj/item/weapon/stock_parts/cell/ammo/mfc

/obj/item/weapon/gun/energy/laser/practice
	name = "laser gun"
	desc = "A modified version of the basic laser gun, this one fires less concentrated energy bolts designed for target practice."
	ammo_type = list(/obj/item/ammo_casing/energy/laser/practice)
	clumsy_check = 0
	needs_permit = 0
	cell_type = /obj/item/weapon/stock_parts/cell/ammo/mfc

/obj/item/weapon/gun/energy/laser/pistol
	name = "laser pistol"
	desc = "A basic energy-based laser gun that fires concentrated beams of light which pass through glass and thin metal."
	icon_state = "AEP7"
	item_state = "pistol"
	w_class = 2
	fire_delay = 0
	ammo_type = list(/obj/item/ammo_casing/energy/laser/pistol)
	cell_type = /obj/item/weapon/stock_parts/cell/ammo/ec

/obj/item/weapon/gun/energy/laser/scatter
	name = "tribeam laser rifle"
	desc = "A laser gun equipped with a refraction kit that allows it to fire three beams at once."
	icon_state = "tribeam"
	burst_size = 3
	fire_delay = 0
	spread = 8
	ammo_type = list(/obj/item/ammo_casing/energy/laser/scatter)
	cell_type = /obj/item/weapon/stock_parts/cell/ammo/mfc

/obj/item/weapon/gun/energy/lasercannon
	name = "laser cannon"
	desc = "With the L.A.S.E.R. cannon, the lasing medium is enclosed in a tube lined with uranium-235 and subjected to high neutron flux in a nuclear reactor core. This incredible technology may help YOU achieve high excitation rates with small laser volumes!"
	icon_state = "lasercannon"
	item_state = "laser"
	w_class = 4
	force = 10
	flags =  CONDUCT
	slot_flags = SLOT_BACK
	origin_tech = "combat=4;materials=3;powerstorage=3"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/heavy)
	pin = null
	ammo_x_offset = 3
	cell_type = /obj/item/weapon/stock_parts/cell/ammo/mfc

/obj/item/weapon/gun/energy/xray
	name = "prototype AER14 laser rifle"
	desc = "A prototype laser rifle that has it's wiring exposed and extra circuitry taped to the stock. Only few prototypes of these were manufactured and distributed for testing."
	icon_state = "aer14"
	item_state = "laser"
	origin_tech = "combat=5;materials=3;magnets=2;syndicate=2"
	ammo_type = list(/obj/item/ammo_casing/energy/xray)
	ammo_x_offset = 3
	cell_type = /obj/item/weapon/stock_parts/cell/ammo/mfc

/obj/item/weapon/gun/energy/laser/plasma
	name ="plasma rifle"
	item_state = "plasma"
	icon_state = "plasma"
	desc = "A energy weapon that fires heated plasma clots. Due to the high accuracy and range is a good tool to eliminate the enemy."
	origin_tech = "combat=3;magnets=3"
	ammo_type = list(/obj/item/ammo_casing/energy/plasma)
	cell_type = /obj/item/weapon/stock_parts/cell/ammo/mfc

/obj/item/weapon/gun/energy/laser/plasma/scatter
	name = "multiplas rifle"
	item_state = "plasma"
	icon_state = "multiplas"
	desc = "A plasma rifle designed to fire multiple shots."
	burst_size = 3
	fire_delay = 4
	ammo_type = list(/obj/item/ammo_casing/energy/plasma/scatter)
	cell_type = /obj/item/weapon/stock_parts/cell/ammo/mfc

/obj/item/weapon/gun/energy/laser/plasma/pistol
	name ="plasma pistol"
	icon_state = "plasma_pistol"
	desc = "An energy sidearm that fires heated plasma clots."
	ammo_type = list(/obj/item/ammo_casing/energy/plasma/pistol)
	w_class = 2
	cell_type = /obj/item/weapon/stock_parts/cell/ammo/ec

/obj/item/weapon/gun/energy/laser/retro
	name ="retro laser gun"
	icon_state = "retro"
	desc = "An older model of the basic lasergun, no longer used by Nanotrasen's private security or military forces. Nevertheless, it is still quite deadly and easy to maintain, making it a favorite amongst pirates and other outlaws."
	ammo_x_offset = 3
	cell_type = /obj/item/weapon/stock_parts/cell/ammo/mfc

/obj/item/weapon/gun/energy/laser/captain
	name = "antique laser gun"
	icon_state = "caplaser"
	item_state = "caplaser"
	desc = "This is an antique laser gun. All craftsmanship is of the highest quality. It is decorated with assistant leather and chrome. The object menaces with spikes of energy. On the item is an image of Space Station 13. The station is exploding."
	force = 10
	origin_tech = null
	ammo_x_offset = 3
	selfcharge = 1
	cell_type = /obj/item/weapon/stock_parts/cell/ammo/mfc

/obj/item/weapon/gun/energy/laser/captain/scattershot
	name = "scatter shot laser rifle"
	icon_state = "lasercannon"
	item_state = "laser"
	desc = "An industrial-grade heavy-duty laser rifle with a modified laser lense to scatter its shot into multiple smaller lasers. The inner-core can self-charge for theorically infinite use."
	origin_tech = "combat=5;materials=4;powerstorage=4"
	ammo_type = list(/obj/item/ammo_casing/energy/laser, /obj/item/ammo_casing/energy/laser/scatter)
	cell_type = /obj/item/weapon/stock_parts/cell/ammo/mfc

/obj/item/weapon/gun/energy/laser/cyborg
	can_charge = 0
	desc = "An energy-based laser gun that draws power from the cyborg's internal energy cell directly. So this is what freedom looks like?"

/obj/item/weapon/gun/energy/laser/cyborg/newshot()
	..()
	robocharge()

/obj/item/weapon/gun/energy/laser/cyborg/emp_act()
	return

////////Laser Tag////////////////////

/obj/item/weapon/gun/energy/laser/bluetag
	name = "laser tag gun"
	icon_state = "bluetag"
	desc = "A retro laser gun modified to fire harmless blue beams of light. Sound effects included!"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/bluetag)
	origin_tech = "combat=1;magnets=2"
	clumsy_check = 0
	needs_permit = 0
	pin = /obj/item/device/firing_pin/tag/blue
	ammo_x_offset = 2
	selfcharge = 1

/obj/item/weapon/gun/energy/laser/redtag
	name = "laser tag gun"
	icon_state = "redtag"
	desc = "A retro laser gun modified to fire harmless beams red of light. Sound effects included!"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/redtag)
	origin_tech = "combat=1;magnets=2"
	clumsy_check = 0
	needs_permit = 0
	pin = /obj/item/device/firing_pin/tag/red
	ammo_x_offset = 2
	selfcharge = 1
