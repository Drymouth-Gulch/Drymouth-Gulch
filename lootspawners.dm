/*Devs read notes so you know what you are doing*/
//1 Object spawners, !.1 Medical Spawns, 1.2 Surgical Spawns, 1.3 Bloodpacks, 1.4 Vault Medical, 1.5 Wasteland Medical,
//1.6 Weapon Spawners , 1.7 Ammo Spawners, 1.8 Armor Spawners
obj
	spawners
		icon=null
		density=0
		alpha=0
		objectspawners //1
			medicalspawn //1.1
				surgical //1.2
					New()
						switch(rand(1,10))//get a random num between 1 and 10 inside a switch proc set the ifs bellow that
							if(1)
								var/obj/item/weapon/hemostat/lb = new //creates a new copy of the item
								lb.loc=src.loc //sets the location of the item to the location of the spawner
								del src //deletes the spawner
							if(2)
								var/obj/item/weapon/surgicaldrill/lb = new
								lb.loc=src.loc
								del src
							if(3)
								var/obj/item/weapon/retractor/lb = new
								lb.loc=src.loc
								del src
							if(4)
								var/obj/item/weapon/cautery/lb = new
								lb.loc=src.loc
								del src
							if(5)
								var/obj/item/weapon/scalpel/lb = new
								lb.loc=src.loc
								del src
							if(6)
								var/obj/item/clothing/suit/apron/surgical/lb = new
								lb.loc=src.loc
								del src
							if(7)
								var/obj/item/clothing/gloves/color/latex/lb = new
								lb.loc=src.loc
								del src
							if(8)
								var/obj/item/clothing/mask/surgical/lb = new
								lb.loc=src.loc
								del src
							if(9)
								var/obj/item/weapon/surgical_drapes/lb = new
								lb.loc=src.loc
								del src
							if(10)
								var/obj/item/weapon/circular_saw/lb = new
								lb.loc=src.loc
								del src
					bloodpack //1.3
						New()
							switch(rand(1,1))
								if(1)
									var/obj/item/weapon/reagent_containers/blood/random/lb = new
									lb.loc=src.loc
									del src

				vault //1.4
					equipment
						New()
							switch(rand(1,2))
								if(1)
									var/obj/item/weapon/gun/medbeam/lb = new
									lb.loc=src.loc
									del src
								if(2)
									var/obj/item/weapon/defibrillator/loaded/lb = new
									lb.loc=src.loc
									del src
					meds
						New()
							switch(rand(1,5))
								if(1)
									var/obj/item/weapon/reagent_containers/stimpak/regular/lb = new
									lb.loc=src.loc
									del src
								if(2)
									var/obj/item/weapon/storage/pill_bottle/radx/lb = new
									lb.loc=src.loc
									del src
								if(3)
									var/obj/item/weapon/reagent_containers/blood/radaway/lb = new
									lb.loc=src.loc
									del src
								if(4)
									var/obj/item/weapon/storage/pill_bottle/mentats/lb = new
									lb.loc=src.loc
									del src
								if(5)
									var/obj/item/weapon/storage/pill_bottle/fixer/lb = new
									lb.loc=src.loc
									del src
						drugs
				wasteland //1.5
					equipment
					meds
						New()
							switch(rand(1,5))
								if(1)
									var/obj/item/weapon/reagent_containers/pill/patch/healpowder/lb = new
									lb.loc=src.loc
									del src
								if(2)
									var/obj/item/weapon/storage/pill_bottle/radx/lb = new
									lb.loc=src.loc
									del src
								if(3)
									var/obj/item/weapon/reagent_containers/blood/radaway/lb = new
									lb.loc=src.loc
									del src
								if(4)
									var/obj/item/weapon/storage/pill_bottle/mentats/lb = new
									lb.loc=src.loc
									del src
								if(5)
									var/obj/item/weapon/storage/pill_bottle/fixer/lb = new
									lb.loc=src.loc
									del src
						drugs
			weaponspawners //1.6
				melee
					tier1
					tier2
					tier3
					tier4
					tier5
				gun
					tier1
						New()
							switch(rand(1,6))
								if(1)
									var/obj/item/weapon/gun/projectile/revolver/single_shotgun/lb = new
									lb.loc=src.loc
									del src
								if(2)
									var/obj/item/weapon/gun/projectile/revolver/caravan_shotgun/lb = new
									lb.loc=src.loc
									del src
								if(3)
									var/obj/item/weapon/gun/projectile/shotgun/boltaction/lb = new
									lb.loc=src.loc
									del src
								if(4)
									var/obj/item/weapon/gun/projectile/revolver/zipgun/lb = new
									lb.loc=src.loc
									del src
								if(5)
									var/obj/item/weapon/gun/projectile/revolver/pipe_rifle/lb = new
									lb.loc=src.loc
									del src
								if(6)
									var/obj/item/weapon/gun/projectile/automatic/pistol/silenced22/lb = new
									lb.loc=src.loc
									del src
					tier2
						New()
							switch(rand(1,6))
								if(1)
									var/obj/item/weapon/gun/projectile/revolver/max_sawn_off/lb = new
									lb.loc=src.loc
									del src
								if(2)
									var/obj/item/weapon/gun/projectile/revolver/police/lb = new
									lb.loc=src.loc
									del src
								if(3)
									var/obj/item/weapon/gun/projectile/automatic/pistol/m1911/lb = new
									lb.loc=src.loc
									del src
								if(4)
									var/obj/item/weapon/gun/projectile/automatic/pistol/n99/lb = new
									lb.loc=src.loc
									del src
								if(5)
									var/obj/item/weapon/gun/projectile/shotgun/hunting/lb = new
									lb.loc=src.loc
									del src
								if(6)
									var/obj/item/weapon/gun/projectile/shotgun/automatic/hunting/lb = new
									lb.loc=src.loc
									del src
					tier3
						New()
							switch(rand(1,14))
								if(1)
									var/obj/item/weapon/gun/projectile/revolver/that_gun/lb = new
									lb.loc=src.loc
									del src
								if(2)
									var/obj/item/weapon/gun/projectile/revolver/m29/lb = new
									lb.loc=src.loc
									del src
								if(3)
									var/obj/item/weapon/gun/projectile/automatic/mini_uzi/lb = new
									lb.loc=src.loc
									del src
								if(4)
									var/obj/item/weapon/gun/projectile/automatic/marksman/servicerifle/lb = new
									lb.loc=src.loc
									del src
								if(5)
									var/obj/item/weapon/gun/projectile/automatic/pistol/m1911/compact/lb = new
									lb.loc=src.loc
									del src
								if(6)
									var/obj/item/weapon/gun/projectile/shotgun/riot/lb = new
									lb.loc=src.loc
									del src
								if(7)
									var/obj/item/weapon/gun/energy/laser/pistol/lb = new
									lb.loc=src.loc
									del src
								if(8)
									var/obj/item/weapon/gun/projectile/automatic/mini_uzi/lb = new
									lb.loc=src.loc
									del src
								if(9)
									var/obj/item/weapon/gun/projectile/shotgun/boltaction/scoped/lb = new
									lb.loc=src.loc
									del src
								if(10)
									var/obj/item/weapon/gun/projectile/revolver/colt6250/lb = new
									lb.loc=src.loc
									del src
								if(11)
									var/obj/item/weapon/gun/projectile/automatic/american180/lb = new
									lb.loc=src.loc
									del src
								if(12)
									var/obj/item/weapon/gun/projectile/automatic/greasegun/lb = new
									lb.loc=src.loc
									del src
								if(13)
									var/obj/item/weapon/gun/projectile/revolver/m29/scoped/lb = new
									lb.loc=src.loc
									del src
					tier4
						New()
							switch(rand(1,6))
								if(1)
									var/obj/item/weapon/gun/projectile/automatic/assault_rifle/lb = new
									lb.loc=src.loc
									del src
								if(2)
									var/obj/item/weapon/gun/projectile/automatic/marksman/lb = new
									lb.loc=src.loc
									del src
								if(3)
									var/obj/item/weapon/gun/projectile/automatic/pistol/deagle/lb = new
									lb.loc=src.loc
									del src
								if(4)
									var/obj/item/weapon/gun/energy/laser/scatter/lb = new
									lb.loc=src.loc
									del src
								if(5)
									var/obj/item/weapon/gun/energy/laser/plasma/pistol/lb = new
									lb.loc=src.loc
									del src
								if(6)
									var/obj/item/weapon/gun/projectile/revolver/needler/lb = new
									lb.loc=src.loc
									del src
					tier5
						New()
							switch(rand(1,12))
								if(1)
									var/obj/item/weapon/gun/energy/laser/plasma/lb = new
									lb.loc=src.loc
									del src
								if(2)
									var/obj/item/weapon/gun/energy/laser/plasma/scatter/lb = new
									lb.loc=src.loc
									del src
								if(3)
									var/obj/item/weapon/gun/projectile/revolver/sequoia/scoped/lb = new
									lb.loc=src.loc
									del src
								if(4)
									var/obj/item/weapon/gun/projectile/automatic/l6_saw/unrestricted/lb = new
									lb.loc=src.loc
									del src
								if(5)
									var/obj/item/weapon/gun/projectile/sniper_rifle/lb = new
									lb.loc=src.loc
									del src
								if(6)
									var/obj/item/weapon/gun/projectile/automatic/shotgun/caws/lb = new
									lb.loc=src.loc
									del src
								if(7)
									var/obj/item/weapon/gun/projectile/automatic/tommygun/lb = new
									lb.loc=src.loc
									del src
								if(8)
									var/obj/item/weapon/gun/energy/stunrevolver/pin/lb = new
									lb.loc=src.loc
									del src
								if(9)
									var/obj/item/weapon/gun/energy/xray/lb = new
									lb.loc=src.loc
									del src
								if(10)
									var/obj/item/weapon/gun/projectile/automatic/assault_rifle/infiltrator/lb = new
									lb.loc=src.loc
									del src
								if(11)
									var/obj/item/weapon/gun/projectile/automatic/bozar/lb = new
									lb.loc=src.loc
									del src
								if(12)
									var/obj/item/weapon/gun/syringe/syringer/lb = new
									var/obj/item/weapon/reagent_containers/syringe/bioterror/lb2 = new
									var/obj/item/weapon/reagent_containers/syringe/bioterror/lb3 = new
									var/obj/item/weapon/reagent_containers/syringe/bioterror/lb4 = new
									lb.loc=src.loc
									lb2.loc=src.loc
									lb3.loc=src.loc
									lb4.loc=src
									del src
					ammo
						tier1
							New()
								switch(rand(1,4))
									if(1)
										var/obj/item/ammo_box/c357/c38/lb = new
										lb.loc=src.loc
										del src
									if(2)
										var/obj/item/ammo_box/a762/lb = new
										lb.loc=src.loc
										del src
									if(3)
										var/obj/item/weapon/storage/box/rubbershot/lb = new
										lb.loc=src.loc
										del src
									if(4)
										var/obj/item/ammo_box/magazine/m22/lb = new
										lb.loc=src.loc
										del src
						tier2
							New()
								switch(rand(1,6))
									if(1)
										var/obj/item/ammo_box/magazine/m45/lb = new
										lb.loc=src.loc
										del src
									if(2)
										var/obj/item/ammo_box/magazine/m10mm_adv/lb = new
										lb.loc=src.loc
										del src
									if(3)
										var/obj/item/ammo_box/magazine/uzim9mm/lb = new
										lb.loc=src.loc
										del src
									if(4)
										var/obj/item/weapon/storage/box/lethalshot/lb = new
										lb.loc=src.loc
										del src
									if(5)
										var/obj/item/weapon/stock_parts/cell/ammo/ec/lb = new
										lb.loc=src.loc
										del src
									if(6)
										var/obj/item/ammo_box/magazine/m9mm/lb = new
										lb.loc=src.loc
										del src
						tier3
							New()
								switch(rand(1,10))
									if(1)
										var/obj/item/ammo_box/magazine/m556/r20/lb = new
										lb.loc=src.loc
										del src
									if(2)
										var/obj/item/ammo_box/magazine/m10mm_auto/lb = new
										lb.loc=src.loc
										del src
									if(3)
										var/obj/item/ammo_box/m44/lb = new
										lb.loc=src.loc
										del src
									if(4)
										var/obj/item/ammo_box/c357/lb = new
										lb.loc=src.loc
										del src
									if(5)
										var/obj/item/ammo_box/magazine/uzim9mm/lb = new
										lb.loc=src.loc
										del src
									if(6)
										var/obj/item/weapon/storage/box/slugshot/lb = new
										lb.loc=src.loc
										del src
									if(7)
										var/obj/item/weapon/stock_parts/cell/ammo/ec/lb = new
										lb.loc=src.loc
										del src
									if(8)
										var/obj/item/ammo_box/needler/lb = new
										lb.loc=src.loc
										del src
									if(9)
										var/obj/item/ammo_box/magazine/d22/lb = new
										lb.loc=src.loc
										del src
									if(10)
										var/obj/item/ammo_box/magazine/stick45/lb = new
										lb.loc=src.loc
										del src
						tier4
							New()
								switch(rand(1,10))
									if(1)
										var/obj/item/ammo_box/magazine/d12g/lb = new
										lb.loc=src.loc
										del src
									if(2)
										var/obj/item/ammo_box/a556/inc/lb = new
										lb.loc=src.loc
										del src
									if(3)
										var/obj/item/ammo_box/a556/ap/lb = new
										lb.loc=src.loc
										del src
									if(4)
										var/obj/item/ammo_box/a556/tox/lb = new
										lb.loc=src.loc
										del src
									if(5)
										var/obj/item/ammo_box/magazine/m50/lb = new
										lb.loc=src.loc
										del src
									if(6)
										var/obj/item/ammo_box/magazine/m556/lb = new
										lb.loc=src.loc
										del src
									if(7)
										var/obj/item/weapon/storage/box/lasershot/lb = new
										lb.loc=src.loc
										del src
									if(8)
										var/obj/item/weapon/storage/box/incenshot/lb = new
										lb.loc=src.loc
										del src
									if(9)
										var/obj/item/weapon/stock_parts/cell/ammo/mfc/lb = new
										lb.loc=src.loc
										del src
						tier5
							New()
								switch(rand(1,16))
									if(1)
										var/obj/item/ammo_box/magazine/sniper_rounds/lb = new
										lb.loc=src.loc
										del src
									if(2)
										var/obj/item/ammo_box/magazine/sniper_rounds/soporific/lb = new
										lb.loc=src.loc
										del src
									if(3)
										var/obj/item/ammo_box/magazine/sniper_rounds/haemorrhage/lb = new
										lb.loc=src.loc
										del src
									if(4)
										var/obj/item/ammo_box/magazine/sniper_rounds/penetrator/lb = new
										lb.loc=src.loc
										del src
									if(5)
										var/obj/item/ammo_box/magazine/tommygunm45/lb = new
										lb.loc=src.loc
										del src
									if(6)
										var/obj/item/ammo_box/c4570/lb = new
										lb.loc=src.loc
										del src
									if(7)
										var/obj/item/ammo_box/magazine/m762/lb = new
										lb.loc=src.loc
										del src
									if(8)
										var/obj/item/ammo_box/magazine/m762/ap/lb = new
										lb.loc=src.loc
										del src
									if(9)
										var/obj/item/ammo_box/magazine/m762/bleeding/lb = new
										lb.loc=src.loc
										del src
									if(10)
										var/obj/item/ammo_box/magazine/m762/hollow/lb = new
										lb.loc=src.loc
										del src
									if(11)
										var/obj/item/ammo_box/magazine/m762/incen/lb = new
										lb.loc=src.loc
										del src
									if(12)
										var/obj/item/weapon/storage/box/pulseshot/lb = new
										lb.loc=src.loc
										del src
									if(13)
										var/obj/item/weapon/storage/box/dragonshot/lb = new
										lb.loc=src.loc
										del src
									if(14)
										var/obj/item/weapon/storage/box/fragshot/lb = new
										lb.loc=src.loc
										del src
									if(15)
										var/obj/item/weapon/suppressor/lb = new
										lb.loc=src.loc
										del src
									if(16)
										var/obj/item/weapon/stock_parts/cell/ammo/ecp/lb = new
										lb.loc=src.loc
										del src
			armorspawners //1.8
				tier1
					New()
						switch(rand(1,9))
							if(1)
								var/obj/item/clothing/suit/armor/vest/lb = new
								var/obj/item/clothing/head/helmet/riot/vaultsec/lb2 = new
								lb.loc=src.loc
								lb2.loc=src.loc
								del src
							if(2)
								var/obj/item/clothing/suit/armor/vest/det_suit/lb = new
								lb.loc=src.loc
								del src
							if(3)
								var/obj/item/clothing/suit/armor/f13/bmetalarmor/lb = new
								lb.loc=src.loc
								del src
							if(4)
								var/obj/item/clothing/suit/armor/f13/kit/lb = new
								lb.loc=src.loc
								del src
							if(5)
								var/obj/item/clothing/suit/armor/f13/raider/lb = new
								var/obj/item/clothing/head/helmet/f13/raider/lb2 = new
								lb.loc=src.loc
								lb2.loc=src.loc
								del src
							if(6)
								var/obj/item/clothing/suit/armor/f13/raider/sadist/lb = new
								var/obj/item/clothing/head/helmet/f13/raider/arclight/lb2 = new
								lb.loc=src.loc
								lb2.loc=src.loc
								del src
							if(7)
								var/obj/item/clothing/suit/armor/f13/raider/blastmaster/lb = new
								var/obj/item/clothing/head/helmet/f13/raider/blastmaster/lb2 = new
								lb.loc=src.loc
								lb2.loc=src.loc
								del src
							if(8)
								var/obj/item/clothing/suit/armor/f13/raider/yankee/lb = new
								var/obj/item/clothing/head/helmet/f13/raider/yankee/lb2 = new
								lb.loc=src.loc
								lb2.loc=src.loc
								del src
							if(9)
								var/obj/item/clothing/suit/armor/f13/leatherarmor/lb = new
								lb.loc=src.loc
								del src
							if(10)
								var/obj/item/clothing/suit/f13/mfp/lb = new
								lb.loc=src.loc
								del src
				tier2
					New()
						switch(rand(1,2))
							if(1)
								var/obj/item/clothing/suit/armor/fluff/chestplate/lb = new
								var/obj/item/clothing/head/helmet/f13/metalmask/lb2 = new
								lb.loc=src.loc
								lb2.loc=src.loc
								del src
							if(2)
								var/obj/item/clothing/head/helmet/swat/lb = new
								var/obj/item/clothing/suit/armor/bulletproof/lb2 = new
								lb.loc=src.loc
								lb2.loc=src.loc
								del src
							if(3)
								var/obj/item/clothing/suit/armor/f13/combat/lb = new
								var/obj/item/clothing/head/helmet/f13/combat/lb2 = new
								var/obj/item/weapon/storage/backpack/combat_ruck/lb3 = new
								lb.loc=src.loc
								lb2.loc=src.loc
								lb3.loc=src.loc
								del src
				tier3
					New()
						switch(rand(1,2))
							if(1)
								var/obj/item/clothing/suit/armor/fluff/chestplate/mk2/lb = new
								var/obj/item/clothing/head/helmet/f13/metalmask/mk2/lb2 = new
								lb.loc=src.loc
								lb2.loc=src.loc
								del src
							if(2)
								var/obj/item/clothing/suit/armor/f13/combat/mk2/lb = new
								var/obj/item/clothing/head/helmet/f13/combat/mk2/lb2 = new
								var/obj/item/weapon/storage/backpack/combat_ruck/lb3 = new
								lb.loc=src.loc
								lb2.loc=src.loc
								lb3.loc=src.loc
								del src
				tier4
					New()
						switch(rand(1,3))
							if(1)
								var/obj/item/clothing/suit/armor/f13/rangercombat/lb = new
								var/obj/item/clothing/head/helmet/f13/rangercombat/lb2 = new
								lb.loc=src.loc
								lb2.loc=src.loc
								del src
							if(2)
								var/obj/item/clothing/suit/armor/f13/combat/brotherhood/lb = new
								var/obj/item/clothing/head/helmet/f13/combat/brotherhood/lb2 = new
								lb.loc=src.loc
								lb2.loc=src.loc
								del src
							if(3)
								var/obj/item/clothing/suit/armor/f13/brokenpa/t45b/lb = new
								var/obj/item/clothing/head/helmet/f13/brokenpa/t45b/lb2 = new
								var/obj/item/clothing/under/f13/ncr/lb3 = new
								lb.loc=src.loc
								lb2.loc=src.loc
								lb3.loc=src.loc
								del src
				tier5
					New()
						switch(rand(1,8))
							if(1)
								var/obj/item/clothing/suit/armor/f13/power_armor/advanced/lb = new
								var/obj/item/clothing/head/helmet/power_armor/f13/advanced/lb2 = new
								lb.loc=src.loc
								lb2.loc=src.loc
								del src
							if(2)
								var/obj/item/clothing/suit/armor/laserproof/lb = new
								var/obj/item/clothing/head/helmet/f13/tesla/lb2 = new
								lb.loc=src.loc
								lb2.loc=src.loc
								del src
							if(3)
								var/obj/item/clothing/suit/armor/f13/rangercombat/desert/lb = new
								var/obj/item/clothing/head/helmet/f13/rangercombat/desert/lb2 = new
								lb.loc=src.loc
								lb2.loc=src.loc
								del src
							if(4)
								var/obj/item/clothing/suit/armor/f13/power_armor/advanced/mk2/lb = new
								var/obj/item/clothing/head/helmet/power_armor/f13/advanced/mk2/lb2 = new
								lb.loc=src.loc
								lb2.loc=src.loc
								del src
								return
							if(5)
								var/obj/item/weapon/storage/belt/webbing/lb = new
								lb.loc=src.loc
								del src
							if(6)
								var/obj/item/clothing/suit/armor/f13/power_armor/tesla/lb = new
								var/obj/item/clothing/head/helmet/power_armor/f13/tesla/lb2 = new
								lb.loc=src.loc
								lb2.loc=src.loc
								del src
								return
							if(7)
								var/obj/item/clothing/suit/armor/f13/power_armor/t45d/lb = new
								var/obj/item/clothing/head/helmet/power_armor/f13/t45d/lb2 = new
								var/obj/item/clothing/under/f13/recon/lb3 = new
								lb.loc=src.loc
								lb2.loc=src.loc
								lb3.loc=src.loc
								del src
								return
							if(8)
								var/obj/item/clothing/suit/armor/f13/power_armor/t51b/lb = new
								var/obj/item/clothing/head/helmet/power_armor/f13/t51b/lb2 = new
								var/obj/item/clothing/under/f13/recon/lb3 = new
								lb.loc=src.loc
								lb2.loc=src.loc
								lb3.loc=src.loc
								del src
								return
