
mob

    var/blindspots = list()
    var/complex_blind = 0
    var/masked_from[0]



    proc/RefreshView()
        Blindspots(1)
        for (var/mob/M in view())
            CanSee(M)

    proc/RefreshViewers()
        for(var/mob/P in view())
            P.CanSee(src)

    proc/Blindspots(recalc)
        if (recalc)
            blindspots = list()
            if (!client && !complex_blind)
            //NPCs don't need big blindspot calculation for now but have that var there just in case
                if (dir == SOUTH)
                    blindspots += locate(x, y + 1, z)
                if (dir == NORTH)
                    blindspots += locate(x, y - 1, z)
                if (dir == EAST)
                    blindspots += locate(x - 1, y, z)
                if (dir == WEST)
                    blindspots += locate(x + 1, y, z)
                return
            var/p
            var/newy = y
            var/newx = x
            var/xref = x
            var/yref = y
            var/loops = 0
            if (dir == SOUTH)
                for(p=0, p<9, p++)
                    newy = newy + 1
                    blindspots += locate(newx, newy, z)
                    if (loops)
                        for(p=0, p<loops, p++)
                            newx = newx + 1
                            blindspots += locate(newx, newy, z)
                        newx = xref
                        for(p=0, p<loops, p++)
                            newx = newx - 1
                            blindspots += locate(newx, newy, z)
                        newx = xref
                    loops++
            if (dir == NORTH)
                for(p=0, p<9, p++) //p<howevermany tiles the screen extends from the player
                    newy = newy - 1
                    blindspots += locate(newx, newy, z)
                    if (loops)
                        for(p=0, p<loops, p++)
                            newx = newx + 1
                            blindspots += locate(newx, newy, z)
                        newx = xref
                        for(p=0, p<loops, p++) // The tiles immediately in the player's rear peripheral aren't made a 'blind spot' this way
                            newx = newx - 1
                            blindspots += locate(newx, newy, z)
                        newx = xref
                    loops++
            if (dir == EAST)
                for(p=0, p<9, p++)
                    newx = newx - 1
                    blindspots += locate(newx, newy, z)
                    if (loops)
                        for(p=0, p<loops, p++)
                            newy = newy + 1
                            blindspots += locate(newx, newy, z)
                        newy = yref
                        for(p=0, p<loops, p++)
                            newy = newy - 1
                            blindspots += locate(newx, newy, z)
                        newy = yref
                    loops++
            if (dir == WEST)
                for(p=0, p<9, p++)
                    newx = newx + 1
                    blindspots += locate(newx, newy, z)
                    if (loops)
                        for(p=0, p<loops, p++)
                            newy = newy + 1
                            blindspots += locate(newx, newy, z)
                        newy = yref
                        for(p=0, p<loops, p++)
                            newy = newy - 1
                            blindspots += locate(newx, newy, z)
                        newy = yref
                    loops++



    proc/CanSee(mob/M)
        var/T
        if (src.key in M.masked_from)
            for (T in blindspots)
                if (M.loc == T)
                    return 0
            if (client)
                del M.masked_from[src.key]
                M.masked_from -= src.key
            return 1
        else
            for (T in blindspots)
                if (M.loc == T)
                    if (client)
                        var/image/mask = image(null, loc = M)
                        M.masked_from[src.key] = mask
                        mask.override = 1
                        src << mask
                    return 0
/world
	mob = /mob/new_player
	turf = /turf/ground/desert
	area = /area/awaymission
	view = "15x15"
	cache_lifespan = 7
	visibility=1
var/global/list/map_transition_config = MAP_TRANSITION_CONFIG

/world/New()
	map_ready = 1
//#if (PRELOAD_RSC == 0)
	//external_rsc_urls = file2list("config/external_rsc_urls.txt","\n")
	//var/i=1
	//while(i<=external_rsc_urls.len)
		//if(external_rsc_urls[i])
			//i++
		//else
			//external_rsc_urls.Cut(i,i+1)
//#endif
	//logs
	var/date_string = time2text(world.realtime, "YYYY/MM-Month/DD-Day")
	href_logfile = file("data/logs/[date_string] hrefs.htm")
	diary = file("data/logs/[date_string].log")
	diaryofmeanpeople = file("data/logs/[date_string] Attack.log")
	diary << "\n\nStarting up. [time2text(world.timeofday, "hh:mm.ss")]\n---------------------"
	diaryofmeanpeople << "\n\nStarting up. [time2text(world.timeofday, "hh:mm.ss")]\n---------------------"
	changelog_hash = md5('html/changelog.html')					//used for telling if the changelog has changed recently

	make_datum_references_lists()	//initialises global lists for referencing frequently used datums (so that we only ever do it once)

	load_configuration()
	load_mode()
	load_motd()
	load_admins()
	//if(config.usewhitelist)
	//load_whitelist()
	appearance_loadbanfile()
	LoadBans()
	//investigate_reset()

	if(config && config.server_name != null && config.server_suffix && world.port > 0)
		config.server_name += " #[(world.port % 1000) / 100]"

	timezoneOffset = text2num(time2text(0,"hh")) * 36000

	if(config.sql_enabled)
		if(!setup_database_connection())
			world.log << "Your server failed to establish a connection with the database."
		else
			world.log << "Database connection established."


	data_core = new /datum/datacore()

	spawn(10)
		Master.Setup()

	process_teleport_locs()			//Sets up the wizard teleport locations
	SortAreas()						//Build the list of all existing areas and sort it alphabetically

	#ifdef MAP_NAME
	map_name = "[MAP_NAME]"
	#else
	map_name = "Unknown"
	#endif

	return


/world/Topic(T, addr, master, key)
	diary << "TOPIC: \"[T]\", from:[addr], master:[master], key:[key]"

	if (T == "ping")
		var/x = 1
		for (var/client/C in clients)
			x++
		return x

	else if(T == "players")
		var/n = 0
		for(var/mob/M in player_list)
			if(M.client)
				n++
		return n

	else if (T == "status")
		var/list/s = list()
		// Please add new status indexes under the old ones, for the server banner (until that gets reworked)
		s["version"] = game_version
		s["mode"] = master_mode
		s["respawn"] = config ? abandon_allowed : 0
		s["enter"] = enter_allowed
		s["vote"] = config.allow_vote_mode
		s["ai"] = config.allow_ai
		s["host"] = host ? host : null

		var/admins = 0
		for(var/client/C in clients)
			if(C.holder)
				if(C.holder.fakekey)
					continue	//so stealthmins aren't revealed by the hub
				admins++

		s["active_players"] = get_active_player_count()
		s["players"] = clients.len
		s["revision"] = revdata.revision
		s["revision_date"] = revdata.date
		s["admins"] = admins
		s["gamestate"] = 1
		if(ticker)
			s["gamestate"] = ticker.current_state
		s["map_name"] = map_name ? map_name : "Unknown"

		return list2params(s)
	else if (copytext(T,1,9) == "announce")
		var/input[] = params2list(T)
		if(global.comms_allowed)
			if(input["key"] != global.comms_key)
				return "Bad Key"
			else
#define CHAT_PULLR	64 //defined in preferences.dm, but not available here at compilation time
				for(var/client/C in clients)
					if(C.prefs && (C.prefs.chat_toggles & CHAT_PULLR))
						C << "<span class='announce'>PR: [input["announce"]]</span>"
#undef CHAT_PULLR

/world/Reboot(var/reason, var/feedback_c, var/feedback_r, var/time)
	if (reason == 1) //special reboot, do none of the normal stuff
		if (usr)
			log_admin("[key_name(usr)] Has requested an immediate world restart via client side debugging tools")
			message_admins("[key_name_admin(usr)] Has requested an immediate world restart via client side debugging tools")
		world << "<span class='boldannounce'>Rebooting World immediately due to host request</span>"
		return ..(1)
	var/delay
	if(time)
		delay = time
	else
		delay = config.round_end_countdown * 10
	if(ticker.delay_end)
		world << "<span class='boldannounce'>An admin has delayed the round end.</span>"
		return
	world << "<span class='boldannounce'>Rebooting World in [delay/10] [delay > 10 ? "seconds" : "second"]. [reason]</span>"
	sleep(delay)
	if(blackbox)
		blackbox.save_all_data_to_sql()
	if(ticker.delay_end)
		world << "<span class='boldannounce'>Reboot was cancelled by an admin.</span>"
		return
	feedback_set_details("[feedback_c]","[feedback_r]")
	log_game("<span class='boldannounce'>Rebooting World. [reason]</span>")
	kick_clients_in_lobby("<span class='boldannounce'>The round came to an end with you in the lobby.</span>", 1) //second parameter ensures only afk clients are kicked
	#ifdef dellogging
	var/log = file("data/logs/del.log")
	log << time2text(world.realtime)
	for(var/index in del_counter)
		var/count = del_counter[index]
		if(count > 10)
			log << "#[count]\t[index]"
#endif
	spawn(0)
		if(ticker && ticker.round_end_sound)
			world << sound(ticker.round_end_sound)
		else
			world << sound(pick('sound/misc/warneverchanges.ogg','sound/misc/wheresthekaboom.ogg','sound/misc/joker.ogg','sound/misc/metalgear.ogg','sound/misc/gameover.ogg')) // random end sounds!! - LastyBatsy
	for(var/client/C in clients)
		if(config.server)	//if you set a server location in config.txt, it sends you there instead of trying to reconnect to the same world address. -- NeoFite
			C << link("byond://[config.server]")
	shell("sh /root/Reboot.sh")
	..(0)


/world/proc/load_mode()
	var/list/Lines = file2list("data/mode.txt")
	if(Lines.len)
		if(Lines[1])
			master_mode = Lines[1]
			diary << "Saved mode is '[master_mode]'"

/world/proc/save_mode(the_mode)
	var/F = file("data/mode.txt")
	fdel(F)
	F << the_mode

/world/proc/load_motd()
	join_motd = file2text("config/motd.txt")

/world/proc/load_configuration()
	protected_config = new /datum/protected_configuration()
	config = new /datum/configuration()
	config.load("config/config.txt")
	config.load("config/game_options.txt","game_options")
	config.loadsql("config/dbconfig.txt")
	if (config.maprotation && SERVERTOOLS)
		config.loadmaplist("config/maps.txt")

	// apply some settings from config..
	abandon_allowed = config.respawn


/world/proc/update_status()
	var/s = ""

	if (config && config.server_name)
		s += "<b>[config.server_name]</b> &#8212; "

	s += "<b>[station_name()]</b>";
	s += " ("
	s += "<a href=[config.discordurl]>" //Change this to wherever you want the hub to link to.
//	s += "[game_version]"
	s += "Discord Channel"  //Replace this with something else. Or ever better, delete it and uncomment the game version.
	s += "</a>"
	s += ")<br>"
	s += "<img src='http://i.imgur.com/bwkdv8N.gif'><br>"
	s += "Hosted by KING <b>[config.hostedby]</b>"
/*
	var/list/features = list()
	if(!ticker)
		//if(master_mode)
			//features += master_mode
	//else
		features += "<b>STARTING</b>"
/*
	if (!enter_allowed)
		features += "closed"

	features += abandon_allowed ? "respawn" : "no respawn"

	if (config && config.allow_vote_mode)
		features += "vote"

	if (config && config.allow_ai)
		features += "AI allowed"

	var/n = 0
	for (var/mob/M in player_list)
		if (M.client)
			n++

	if (n > 1)
		features += "~[n] players"
	else if (n > 0)
		features += "~[n] player"
*/
	/*
	is there a reason for this? the byond site shows 'hosted by X' when there is a proper host already.
	if (host)
		features += "hosted by <b>[host]</b>"
	*/

	if (!host && config && config.hostedby)
		features += "Under <b>[config.hostedby]</b> Protectorate"

	if (features)
		s += " [list2text(features, ", ")]"
*/
	/* does this help? I do not know */
	if (src.status != s)
		src.status = s

#define FAILED_DB_CONNECTION_CUTOFF 5
var/failed_db_connections = 0

/proc/setup_database_connection()

	if(failed_db_connections >= FAILED_DB_CONNECTION_CUTOFF)	//If it failed to establish a connection more than 5 times in a row, don't bother attempting to connect anymore.
		return 0

	if(!dbcon)
		dbcon = new()

	var/user = sqlfdbklogin
	var/pass = sqlfdbkpass
	var/db = sqlfdbkdb
	var/address = sqladdress
	var/port = sqlport

	dbcon.Connect("dbi:mysql:[db]:[address]:[port]","[user]","[pass]")
	. = dbcon.IsConnected()
	if ( . )
		failed_db_connections = 0	//If this connection succeeded, reset the failed connections counter.
	else
		failed_db_connections++		//If it failed, increase the failed connections counter.
		if(config.sql_enabled)
			world.log << "SQL error: " + dbcon.ErrorMsg()

	return .

//This proc ensures that the connection to the feedback database (global variable dbcon) is established
/proc/establish_db_connection()
	if(failed_db_connections > FAILED_DB_CONNECTION_CUTOFF)
		return 0

	if(!dbcon || !dbcon.IsConnected())
		return setup_database_connection()
	else
		return 1

#undef FAILED_DB_CONNECTION_CUTOFF


/proc/maprotate()
	if (!SERVERTOOLS)
		return
	var/players = clients.len
	var/list/mapvotes = list()
	//count votes
	for (var/client/c in clients)
		var/vote = c.prefs.preferred_map
		if (!vote)
			if (config.defaultmap)
				mapvotes[config.defaultmap.name] += 1
			continue
		mapvotes[vote] += 1

	//filter votes
	for (var/map in mapvotes)
		if (!map)
			mapvotes.Remove(map)
		if (!(map in config.maplist))
			mapvotes.Remove(map)
			continue
		var/datum/votablemap/VM = config.maplist[map]
		if (!VM)
			mapvotes.Remove(map)
			continue
		if (VM.voteweight <= 0)
			mapvotes.Remove(map)
			continue
		if (VM.minusers > 0 && players < VM.minusers)
			mapvotes.Remove(map)
			continue
		if (VM.maxusers > 0 && players > VM.maxusers)
			mapvotes.Remove(map)
			continue

		mapvotes[map] = mapvotes[map]*VM.voteweight

	var/pickedmap = pickweight(mapvotes)
	if (!pickedmap)
		return
	var/datum/votablemap/VM = config.maplist[pickedmap]
	message_admins("Randomly rotating map to [VM.name]([VM.friendlyname])")
	. = changemap(VM)
	if (. == 0)
		world << "<span class='boldannounce'>Map rotation has chosen [VM.friendlyname] for next round!</span>"

var/datum/votablemap/nextmap

/proc/changemap(var/datum/votablemap/VM)
	if (!SERVERTOOLS)
		return
	if (!istype(VM))
		return

	log_game("Changing map to [VM.name]([VM.friendlyname])")
	var/file = file("setnewmap.bat")
	file << "\nset MAPROTATE=[VM.name]\n"
	. = shell("..\\bin\\maprotate.bat")
	switch (.)
		if (null)
			message_admins("Failed to change map: Could not run map rotator")
			log_game("Failed to change map: Could not run map rotator")
		if (0)
			log_game("Changed to map [VM.friendlyname]")
			nextmap = VM
		//1x: file errors
		if (11)
			message_admins("Failed to change map: File error: Map rotator script couldn't find file listing new map")
			log_game("Failed to change map: File error: Map rotator script couldn't find file listing new map")
		if (12)
			message_admins("Failed to change map: File error: Map rotator script couldn't find tgstation-server framework")
			log_game("Failed to change map: File error: Map rotator script couldn't find tgstation-server framework")
		//2x: conflicting operation errors
		if (21)
			message_admins("Failed to change map: Conflicting operation error: Current server update operation detected")
			log_game("Failed to change map: Conflicting operation error: Current server update operation detected")
		if (22)
			message_admins("Failed to change map: Conflicting operation error: Current map rotation operation detected")
			log_game("Failed to change map: Conflicting operation error: Current map rotation operation detected")
		//3x: external errors
		if (31)
			message_admins("Failed to change map: External error: Could not compile new map:[VM.name]")
			log_game("Failed to change map: External error: Could not compile new map:[VM.name]")

		else
			message_admins("Failed to change map: Unknown error: Error code #[.]")
			log_game("Failed to change map: Unknown error: Error code #[.]")
