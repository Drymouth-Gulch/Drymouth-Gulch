datum/f13_faction/BOS
	name = "BOS"
	first_spawn = 1
	late_join = 0
	color = "#020080"
	head_status = "Paladin"
	flag = "bos"
	verbs = list(/mob/proc/begin_head_voting)
	welcome_text = "Your current objectives:<br>\
1. As an Brother your job is to find and protect pre-war tech.<br>\
2. You shall never leave a brother behind and always take vengence in his name.<br>\
3. Serve your superior brothers with dignity and honor.<br>"
	craft_recipes = list(/datum/table_recipe/ncr_combat_armor, /datum/table_recipe/ncr_encryption_key)