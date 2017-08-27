/datum/design/odysseus_main
	name = "Exosuit Module (\"Odysseus\" Central Control module)"
	desc = "Allows for the construction of a \"Odysseus\" Central Control module."
	id = "odysseus_main"
	req_tech = list("programming" = 3,"biotech" = 2)
	build_type = IMPRINTER
	materials = list(MAT_GLASS = 1000, "sacid" = 20)
	build_path = /obj/item/weapon/circuitboard/mecha/odysseus/main
	category = list("Exosuit Modules")

/datum/design/odysseus_peri
	name = "Exosuit Module (\"Odysseus\" Peripherals Control module)"
	desc = "Allows for the construction of a \"Odysseus\" Peripheral Control module."
	id = "odysseus_peri"
	req_tech = list("programming" = 3,"biotech" = 2)
	build_type = IMPRINTER
	materials = list(MAT_GLASS = 1000, "sacid" = 20)
	build_path = /obj/item/weapon/circuitboard/mecha/odysseus/peripherals
	category = list("Exosuit Modules")
////////////////////////////////////////
/////////// Mecha Equpment /////////////
////////////////////////////////////////



/datum/design/mech_repair_droid
	name = "Exosuit Module (Repair Droid Module)"
	desc = "Automated Repair Droid. BEEP BOOP"
	id = "mech_repair_droid"
	build_type = MECHFAB
	req_tech = list("magnets" = 3, "programming" = 3, "engineering" = 3)
	build_path = /obj/item/mecha_parts/mecha_equipment/repair_droid
	materials = list(MAT_METAL=10000,MAT_GLASS=5000,MAT_GOLD=1000,MAT_SILVER=2000)
	construction_time = 100
	category = list("Exosuit Equipment")

/datum/design/mech_energy_relay
	name = "Exosuit Module (Tesla Energy Relay)"
	desc = "Tesla Energy Relay"
	id = "mech_energy_relay"
	build_type = MECHFAB
	req_tech = list("magnets" = 4, "powerstorage" = 3)
	build_path = /obj/item/mecha_parts/mecha_equipment/tesla_energy_relay
	materials = list(MAT_METAL=10000,MAT_GLASS=2000,MAT_GOLD=2000,MAT_SILVER=3000)
	construction_time = 100
	category = list("Exosuit Equipment")

/datum/design/mech_sleeper
	name = "Exosuit Medical Equipment (Mounted Sleeper)"
	desc = "Equipment for medical exosuits. A mounted sleeper that stabilizes patients and can inject reagents in the exosuit's reserves."
	id = "mech_sleeper"
	build_type = MECHFAB
	req_tech = list("biotech" = 2)
	build_path = /obj/item/mecha_parts/mecha_equipment/sleeper
	materials = list(MAT_METAL=5000,MAT_GLASS=10000)
	construction_time = 100
	category = list("Exosuit Equipment")

/datum/design/mech_syringe_gun
	name = "Exosuit Medical Equipment (Syringe Gun)"
	desc = "Equipment for medical exosuits. A chem synthesizer with syringe gun. Reagents inside are held in stasis, so no reactions will occur."
	id = "mech_syringe_gun"
	build_type = MECHFAB
	req_tech = list("magnets" = 3,"biotech" = 3)
	build_path = /obj/item/mecha_parts/mecha_equipment/syringe_gun
	materials = list(MAT_METAL=3000,MAT_GLASS=2000)
	construction_time = 200
	category = list("Exosuit Equipment")
