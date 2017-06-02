//#define WHITELISTFILE 'data/whitelist.txt'
mob/var/donator=0
mob/var/donatorrank="None"
var/list/whitelist
mob/proc/loadwhitelist()
	var/text = file2text("data/whitelist.txt")
	if (!text)
	else
		var/list/lines = text2list(text, "\n")
		for(var/line in lines)
			if (!line)
				continue
			if (copytext(line, 1, 2) == ";")
				continue
			var/dkey = copytext(line, 1, length(line)+1)
			if("[dkey]"=="[usr.key] = 5")
				whitelist += usr.ckey
				usr.donator=1
				usr.donatorrank=5
				usr << "Whitelist Reloaded: Your rank is now Diamond Donator."
			if("[dkey]"=="[usr.key] = 4")
				whitelist += usr.ckey
				usr.donator=1
				usr.donatorrank=4
				usr << "Whitelist Reloaded: Your rank is now Platinum Donator."
			if("[dkey]"=="[usr.key] = 3")
				whitelist += usr.ckey
				usr.donator=1
				usr.donatorrank=3
				usr << "Whitelist Reloaded: Your rank is now Gold Donator."
			if("[dkey]"=="[usr.key] = 2")
				whitelist += usr.ckey
				usr.donator=1
				usr.donatorrank=2
				usr << "Whitelist Reloaded: Your rank is now Silver Donator."
			if("[dkey]"=="[usr.key] = 1")
				whitelist += usr.ckey
				usr.donator=1
				usr.donatorrank=1
				usr << "Whitelist Reloaded: Your rank is now Bronze Donator."

/proc/check_whitelist(mob/M , var/rank = null)
	//if(M.ckey in whitelist)
		//return 1
	//if(!config.usewhitelist)
		//return 1
	//if(M.in_whitelist != -1 && rank == null)
		//return M.in_whitelist
	//if(check_whitelist_db(M, rank))
		//M.in_whitelist = 1
		//return M.in_whitelist
	//if(check_rights(0, 0))
		//M.in_whitelist = 1
		//return 1
	//if(!whitelist)
		//M.in_whitelist = 0
		//return 0
	//if(rank != null)
	//	return 0
	M.in_whitelist = ("[M.ckey]" in whitelist)
	return M.in_whitelist

/proc/check_whitelist_db(mob/M, var/rank = null)
	establish_db_connection()
	if(!dbcon.IsConnected())
		log_game("SQL ERROR while whitelist checking. Failed to connect.")
		return 0
	var/DBQuery/query = dbcon.NewQuery("SELECT * FROM [format_table_name("whitelist")] WHERE ckey = '[sanitizeSQL(M.ckey)]'")
	query.Execute()
	while(query.NextRow())
		var/list/row_data = query.GetRowData()
		if(rank != null)
			if(findtext(row_data["rank"], rank))
				return 1
			else
				return 0
		return 1
	return 0

//#undef WHITELISTFILE