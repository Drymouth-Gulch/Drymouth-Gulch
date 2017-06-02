/obj/item/weapon/gun/proc/setgundamage()
	for(var/obj/item/ammo_box/magazine/M in src.contents)
		for(var/obj/item/ammo_casing/C in M.contents)
			for(var/obj/item/projectile/bullet/B in C.contents)
				if(B.gundamageapplied==0)
					B.damage+=src.damageG
					B.armour_penetration+=src.damageA
					B.stamina+=src.damageS
					B.range+=src.rangeG
					B.gundamageapplied=1
					spawn(10)
						src.setgundamage()
/*/obj/item/weapon/proc/setgundamagereload(var/damageG,var/damageA,var/damageS,/var/rangeG)
	for(var/obj/item/ammo_box/magazine/M in src.contents)
		for(var/obj/item/ammo_casing/C in M.contents)
			for(var/obj/item/projectile/bullet/B in C.contents)
				if(B.gundamageapplied==0)
					B.damage+=damageG
					B.armour_penetration+=damageA
					B.stamina+=damageS
					B.range+=rangeG
					B.gundamageapplied=1*/