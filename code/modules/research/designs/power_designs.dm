////////////////////////////////////////
//////////////////Power/////////////////
////////////////////////////////////////

/datum/design/basic_cell
	name = "Basic Power Cell"
	desc = "A basic power cell that holds 1000 units of energy."
	id = "basic_cell"
	req_tech = list("powerstorage" = 1)
	build_type = PROTOLATHE | AUTOLATHE |MECHFAB
	materials = list(MAT_METAL = 700, MAT_GLASS = 50)
	construction_time=100
	build_path = /obj/item/weapon/stock_parts/cell
	category = list("Misc","Power Designs","Machinery","initial")

/datum/design/high_cell
	name = "High-Capacity Power Cell"
	desc = "A power cell that holds 10000 units of energy."
	id = "high_cell"
	req_tech = list("powerstorage" = 1)
	build_type = PROTOLATHE | AUTOLATHE | MECHFAB
	materials = list(MAT_METAL = 2000, MAT_GLASS = 2000)
	construction_time=100
	build_path = /obj/item/weapon/stock_parts/cell/high
	category = list("Misc","Power Designs")

/datum/design/super_cell
	name = "Super-Capacity Power Cell"
	desc = "A power cell that holds 20000 units of energy."
	id = "super_cell"
	req_tech = list("powerstorage" = 1, "materials" = 1)
	reliability = 75
	build_type = PROTOLATHE | MECHFAB
	materials = list(MAT_METAL = 4000, MAT_GLASS = 4000)
	construction_time=100
	build_path = /obj/item/weapon/stock_parts/cell/super
	category = list("Misc","Power Designs")

/datum/design/hyper_cell
	name = "Hyper-Capacity Power Cell"
	desc = "A power cell that holds 30000 units of energy."
	id = "hyper_cell"
	req_tech = list("powerstorage" = 1, "materials" = 1)
	reliability = 70
	build_type = PROTOLATHE | MECHFAB
	materials = list(MAT_METAL = 2000, MAT_GOLD = 2000, MAT_SILVER = 2000, MAT_GLASS = 2000)
	construction_time=100
	build_path = /obj/item/weapon/stock_parts/cell/hyper
	category = list("Misc","Power Designs")

/datum/design/bluespace_cell
	name = "Bluespace Power Cell"
	desc = "A power cell that holds 40000 units of energy."
	id = "bluespace_cell"
	req_tech = list("powerstorage" = 1, "materials" = 1)
	reliability = 70
	build_type = PROTOLATHE | MECHFAB
	materials = list(MAT_METAL = 2000, MAT_GOLD = 2000, MAT_SILVER = 2000, MAT_GLASS = 2000, MAT_DIAMOND = 2000)
	construction_time=100
	build_path = /obj/item/weapon/stock_parts/cell/bluespace
	category = list("Misc","Power Designs")


/datum/design/light_replacer
	name = "Light Replacer"
	desc = "A device to automatically replace lights. Refill with working lightbulbs."
	id = "light_replacer"
	req_tech = list("magnets" = 1, "materials" = 1)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 1500, MAT_SILVER = 150, MAT_GLASS = 3000)
	build_path = /obj/item/device/lightreplacer
	category = list("Power Designs")

/datum/design/pacman
	name = "Machine Design (PACMAN-type Generator Board)"
	desc = "The circuit board that for a PACMAN-type portable generator."
	id = "pacman"
	req_tech = list("programming" = 1, "plasmatech" = 1, "powerstorage" = 1, "engineering" = 1)
	build_type = IMPRINTER
	reliability = 79
	materials = list(MAT_GLASS = 1000, "sacid" = 20)
	build_path = /obj/item/weapon/circuitboard/pacman
	category = list("Engineering Machinery")

/datum/design/superpacman
	name = "Machine Design (SUPERPACMAN-type Generator Board)"
	desc = "The circuit board that for a SUPERPACMAN-type portable generator."
	id = "superpacman"
	req_tech = list("programming" = 1, "powerstorage" = 1, "engineering" = 1)
	build_type = IMPRINTER
	reliability = 76
	materials = list(MAT_GLASS = 1000, "sacid" = 20)
	build_path = /obj/item/weapon/circuitboard/pacman/super
	category = list("Engineering Machinery")

/datum/design/mrspacman
	name = "Machine Design (MRSPACMAN-type Generator Board)"
	desc = "The circuit board that for a MRSPACMAN-type portable generator."
	id = "mrspacman"
	req_tech = list("programming" = 1, "powerstorage" = 1, "engineering" = 1)
	build_type = IMPRINTER
	reliability = 74
	materials = list(MAT_GLASS = 1000, "sacid" = 20)
	build_path = /obj/item/weapon/circuitboard/pacman/mrs
	category = list("Engineering Machinery")
