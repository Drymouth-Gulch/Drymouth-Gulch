var/const/NCR					=(1<<0)
var/const/NCRCOLONEL			=(1<<0) //Job commented out under Code/Job/Job/NewNCR
var/const/NCRMAJOR			    =(1<<1) //Major now under title of Captain - Naming needs to be tidied up still.
var/const/NCRLIEUTENANT      	=(1<<2)
var/const/NCRSERGEANT        	=(1<<3)
var/const/NCRTROOPER        	=(1<<4)
var/const/NCRRECRUIT        	=(1<<5)
var/const/NCRVETRANGER			=(1<<6)
var/const/NCRRANGER       		=(1<<7)
var/const/NCRRECRANGER			=(1<<8)

var/const/LEGION			=(1<<1)
var/const/LEGLEGAT			=(1<<0) //Job commented out under Code/Job/Job/NewLegion
var/const/LEGCENTURION		=(1<<1)
//var/const/PRAEGUARD			=(1<<2)//commented out because its not finished, le woops.
var/const/LEGVEX			=(1<<2)
var/const/LEGDECAN			=(1<<3)
var/const/LEGVET			=(1<<4)
var/const/LEGIONARY			=(1<<5)

var/const/BOS				=(1<<2)
var/const/PALADIN			=(1<<0)
var/const/KNIGHT			=(1<<1)
var/const/SCRIBE			=(1<<2)
var/const/INITIATE			=(1<<3)

var/const/DEN				=(1<<3)
var/const/SHERIFF			=(1<<0)
var/const/SETTLER			=(1<<1)

var/const/VAULT				=(1<<4)
var/const/OVERSEER			=(1<<0)
var/const/DOCTOR			=(1<<1)
var/const/SCIENTIST			=(1<<2)
var/const/OFFICER			=(1<<3)
var/const/ENGINEER			=(1<<4)
var/const/DWELLER			=(1<<5)
var/const/AI				=(1<<6)
var/const/CYBORG			=(1<<7)

var/const/WASTELAND			=(1<<5)
var/const/CULTLEADER			=(1<<1)
var/const/WASTELANDER			=(1<<2)
var/const/RAIDER			=(1<<3)
var/const/PUSHER			=(1<<4)
var/const/PREACHER			=(1<<5)

var/const/ENCLAVE		=(1<<6)
var/const/USCOMMANDER	=(1<<0)
var/const/USMEDIC		=(1<<1)
var/const/USPRIVATE		=(1<<2)
var/const/USSCIENTIST	=(1<<3)
var/const/USENGINEER	=(1<<4)
var/const/USCOLONIST	=(1<<5)
/*var/const/ENGSEC			=(1<<0)

var/const/CAPTAIN			=(1<<0)
//var/const/LEGRECRUIT		=(1<<1)

//var/const/WARDEN			=(1<<2)

var/const/DETECTIVE			=(1<<3)

var/const/SHERIFF			=(1<<6)
var/const/SETTLER			=(1<<7)

//var/const/SQDLEAD			=(1<<8)
//var/const/TROOPER			=(1<<2)
//var/const/SERGEANT			=(1<<14)
//var/const/RANGER			=(1<<15)

var/const/OFFICER			=(1<<4)
//var/const/LEGDECAN			=(1<<5)
var/const/ENGINEER			=(1<<6)
//var/const/LEGVEX			=(1<<7)

//var/const/ROBOTICIST		=(1<<8)

//var/const/LEGCENTURION		=(1<<11)
//var/const/LEGLEGAT			=(1<<12)

var/const/MEDSCI			=(1<<1)

//var/const/RD				=(1<<0)
var/const/SCIENTIST			=(1<<1)

//var/const/CHEMIST			=(1<<2)

//var/const/CMO				=(1<<3)
var/const/DOCTOR			=(1<<4)
//var/const/GENETICIST		=(1<<5)
//var/const/VIROLOGIST		=(1<<6)


var/const/CIVILIAN			=(1<<2)

//var/const/HOP				=(1<<0)
//var/const/BARTENDER			=(1<<1)
//var/const/BOTANIST			=(1<<2)
//var/const/COOK				=(1<<3)
//var/const/JANITOR			=(1<<4)

//var/const/LIBRARIAN			=(1<<5)

//var/const/QUARTERMASTER		=(1<<6)
//var/const/CARGOTECH			=(1<<7)
//var/const/MINER				=(1<<8)

//var/const/LAWYER			=(1<<9)
//var/const/CHAPLAIN			=(1<<10)
//var/const/CLOWN				=(1<<11)
//var/const/MIME				=(1<<12)
var/const/ASSISTANT			=(1<<13)
var/const/WASTELANDER	=(1<<17)
var/const/RAIDER        	=(1<<18)


//~~Legion~~
var/const/LEGRECRUIT		=(1<<9)
var/const/LEGDECAN			=(1<<10)
var/const/LEGVEX			=(1<<11)
var/const/PRAEGUARD			=(1<<12)
var/const/LEGCENTURION		=(1<<13)
var/const/LEGLEGAT			=(1<<14)
var/const/LEGVET			=(1<<15)

//~~NCR~~
var/const/NCRLIEUTENANT      	=(1<<1)
var/const/NCRVETRANGER			=(1<<2)
var/const/NCRRECRUIT        	=(1<<3)
var/const/NCRSERGEANT        	=(1<<4)
var/const/NCRRANGER       		=(1<<5)
var/const/NCRTROOPER        	=(1<<6)
var/const/NCRCOLONEL			=(1<<7)
var/const/NCRRECRANGER			=(1<<8)
var/const/NCRMAJOR			    =(1<<9)
var/const/NCR        		=(1<<26)
var/const/WASTELANDWHORE	=(1<<27)
var/const/PUSHER			=(1<<28)
var/const/PREACHER			=(1<<29)*/
var/list/assistant_occupations = list()

var/list/wasteland_occupations = list(
	"Wastelander",
	"Raider",
	"Whore",
	"Pusher",
	"Preacher"
)

var/list/legion_positions = list(
	//"Legat",
	"Legion Centurion",
	//"Praetorian Guard",
	"Legion Vexillarius",
	"Legion Decanus",
	"Veteran Legionnaire",
	"Legionnaire Recruit"
)

var/list/ncr_positions = list(
	"NCR Colonel",
	"NCR Major",
	"NCR Lieutenant",
	"NCR Sergeant",
	"NCR Trooper",
	"NCR Recruit",
	"NCR Veteran Ranger",
	"NCR Ranger",
	"NCR Scout Ranger"
)

var/list/vault_occupations = list(
	"Overseer",
	"Engineer",
	"Doctor",
	"Officer",
	"Scientist",
	"Dweller"
)

var/list/bos_occupations = list(
	"BOS Paladin",
	"BOS Knight",
	"BOS Scribe",
	"BOS Initiate"
)

var/list/den_occupations = list(
	"Sheriff",
	"Settler"
)

var/list/enclave_occupations = list()

var/list/command_positions = list()


var/list/engineering_positions = list()


var/list/medical_positions = list()


var/list/science_positions = list()


var/list/supply_positions = list()


var/list/civilian_positions = list()


var/list/security_positions = list()


var/list/nonhuman_positions = list(
	//"AI",
	//"Cyborg",
	//"pAI"
)


/proc/guest_jobbans(job)
	return ((job in command_positions) || (job in nonhuman_positions) || (job in security_positions))



//this is necessary because antags happen before job datums are handed out, but NOT before they come into existence
//so I can't simply use job datum.department_head straight from the mind datum, laaaaame.
/proc/get_department_heads(var/job_title)
	if(!job_title)
		return list()

	for(var/datum/job/J in SSjob.occupations)
		if(J.title == job_title)
			return J.department_head //this is a list
