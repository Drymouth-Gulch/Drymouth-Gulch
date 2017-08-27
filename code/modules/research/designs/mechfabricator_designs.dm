//Cyborg
/datum/design/borg_suit
	name = "Cyborg Endoskeleton"
	id = "borg_suit"
	build_type = MECHFAB
	build_path = /obj/item/robot_parts/robot_suit
	materials = list(MAT_METAL=15000)
	construction_time = 500
	category = list("Cyborg")

/datum/design/borg_chest
	name = "Cyborg Torso"
	id = "borg_chest"
	build_type = MECHFAB
	build_path = /obj/item/robot_parts/chest
	materials = list(MAT_METAL=40000)
	construction_time = 350
	category = list("Cyborg")

/datum/design/borg_head
	name = "Cyborg Head"
	id = "borg_head"
	build_type = MECHFAB
	build_path = /obj/item/robot_parts/head
	materials = list(MAT_METAL=5000)
	construction_time = 350
	category = list("Cyborg")

/datum/design/borg_l_arm
	name = "Cyborg Left Arm"
	id = "borg_l_arm"
	build_type = MECHFAB
	build_path = /obj/item/robot_parts/l_arm
	materials = list(MAT_METAL=10000)
	construction_time = 200
	category = list("Cyborg")

/datum/design/borg_r_arm
	name = "Cyborg Right Arm"
	id = "borg_r_arm"
	build_type = MECHFAB
	build_path = /obj/item/robot_parts/r_arm
	materials = list(MAT_METAL=10000)
	construction_time = 200
	category = list("Cyborg")

/datum/design/borg_l_leg
	name = "Cyborg Left Leg"
	id = "borg_l_leg"
	build_type = MECHFAB
	build_path = /obj/item/robot_parts/l_leg
	materials = list(MAT_METAL=10000)
	construction_time = 200
	category = list("Cyborg")

/datum/design/borg_r_leg
	name = "Cyborg Right Leg"
	id = "borg_r_leg"
	build_type = MECHFAB
	build_path = /obj/item/robot_parts/r_leg
	materials = list(MAT_METAL=10000)
	construction_time = 200
	category = list("Cyborg")

/////////////////////////////////////////
//////////////Borg Upgrades//////////////
/////////////////////////////////////////

/datum/design/borg_upgrade_reset
	name = "Cyborg Upgrade (Module Reset Board)"
	id = "borg_upgrade_reset"
	build_type = MECHFAB
	build_path = /obj/item/borg/upgrade/reset
	materials = list(MAT_METAL=10000)
	construction_time = 120
	category = list("Cyborg Upgrade Modules")

/datum/design/borg_upgrade_rename
	name = "Cyborg Upgrade (Rename Board)"
	id = "borg_upgrade_rename"
	build_type = MECHFAB
	build_path = /obj/item/borg/upgrade/rename
	materials = list(MAT_METAL=35000)
	construction_time = 120
	category = list("Cyborg Upgrade Modules")

/datum/design/borg_upgrade_restart
	name = "Cyborg Upgrade (Emergency Reboot Board)"
	id = "borg_upgrade_restart"
	build_type = MECHFAB
	build_path = /obj/item/borg/upgrade/restart
	materials = list(MAT_METAL=60000 , MAT_GLASS=5000)
	construction_time = 120
	category = list("Cyborg Upgrade Modules")

/datum/design/borg_upgrade_vtec
	name = "Cyborg Upgrade (VTEC Module)"
	id = "borg_upgrade_vtec"
	build_type = MECHFAB
	build_path = /obj/item/borg/upgrade/vtec
	req_tech = list("engineering" = 4, "materials" = 5)
	materials = list(MAT_METAL=80000 , MAT_GLASS=6000 , MAT_URANIUM= 5000)
	construction_time = 120
	category = list("Cyborg Upgrade Modules")

/datum/design/borg_upgrade_disablercooler
	name = "Cyborg Upgrade (Rapid Disabler Cooling Module)"
	id = "borg_upgrade_disablercooler"
	build_type = MECHFAB
	build_path = /obj/item/borg/upgrade/disablercooler
	req_tech = list("combat" = 5, "powerstorage" = 4)
	materials = list(MAT_METAL=80000 , MAT_GLASS=6000 , MAT_GOLD= 2000, MAT_DIAMOND = 500)
	construction_time = 120
	category = list("Cyborg Upgrade Modules")

/datum/design/borg_upgrade_jetpack
	name = "Cyborg Upgrade (Mining Jetpack)"
	id = "borg_upgrade_jetpack"
	build_type = MECHFAB
	build_path = /obj/item/borg/upgrade/jetpack
	req_tech = list("engineering" = 4, "powerstorage" = 4)
	materials = list(MAT_METAL=10000, MAT_PLASMA=5000, MAT_URANIUM = 6000)
	construction_time = 120
	category = list("Cyborg Upgrade Modules")

/datum/design/borg_upgrade_diamonddrill
	name = "Cyborg Upgrade (Diamond Drill)"
	id = "borg_upgrade_diamonddrill"
	build_type = MECHFAB
	build_path = /obj/item/borg/upgrade/ddrill
	req_tech = list("engineering" = 5, "materials" = 5)
	materials = list(MAT_METAL=10000, MAT_DIAMOND=2000)
	construction_time = 120
	category = list("Cyborg Upgrade Modules")

/datum/design/borg_upgrade_holding
	name = "Cyborg Upgrade (Ore Satchel of Holding)"
	id = "borg_upgrade_holding"
	build_type = MECHFAB
	build_path = /obj/item/borg/upgrade/soh
	req_tech = list("engineering" = 5, "materials" = 5, "bluespace" = 3)
	materials = list(MAT_METAL = 10000, MAT_GOLD = 250, MAT_URANIUM = 500)
	construction_time = 120
	category = list("Cyborg Upgrade Modules")

/datum/design/borg_syndicate_module
	name = "Cyborg Illegal Upgrades Module"
	desc = "Allows for the construction of restricted upgrades for cyborgs"
	id = "borg_syndicate_module"
	build_type = MECHFAB
	req_tech = list("combat" = 4, "syndicate" = 3)
	build_path = /obj/item/borg/upgrade/syndicate
	materials = list(MAT_METAL=10000,MAT_GLASS=15000,MAT_DIAMOND = 10000)
	construction_time = 120
	category = list("Cyborg Upgrade Modules")

/datum/design/borg_upgrade_selfrepair
	name = "Cyborg Upgrade (Self-repair)"
	id = "borg_upgrade_selfrepair"
	build_type = MECHFAB
	build_path = /obj/item/borg/upgrade/selfrepair
	req_tech = list("materials" = 4, "engineering" = 4)
	materials = list(MAT_METAL=15000, MAT_GLASS=15000)
	construction_time = 120
	category = list("Cyborg Upgrade Modules")

//Misc
/datum/design/mecha_tracking
	name = "Exosuit Tracking Beacon"
	id = "mecha_tracking"
	build_type = MECHFAB
	build_path =/obj/item/mecha_parts/mecha_tracking
	materials = list(MAT_METAL=500)
	construction_time = 50
	category = list("Misc")

/datum/design/drone_shell
	name = "Drone Shell"
	desc = "A shell of a maintenance drone, an expendable robot built to perform station repairs."
	id = "drone_shell"
	req_tech = list("programming" = 2, "biotech" = 4)
	build_type = MECHFAB
	materials = list(MAT_METAL = 800, MAT_GLASS = 350)
	construction_time=150
	build_path = /obj/item/drone_shell
	category = list("Misc")
