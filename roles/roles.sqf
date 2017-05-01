/*
	This should, when complete, allow for whitelisted roles on the server.
	
	It will acommplish this through typeOf and UID checks. 
	
*/

/*
	TEAM DEV NOTES (Remove on release)
	
		-Leaders of all types, and Crewmen WILL MERGE/CONVERT to Rifleman Class. (mission.sqf)
	
*/

waitUntil { alive player };
sleep 2;

wolfeAdmins = /* Full Access */
	[
		"76561198076424327", //Patches
		"76561197964255133", //Reaper
		"76561198082992671", //Phantom
		"76561198136964498", //Viking Actual | Odin Actual
		"76561198023469897",  //Anthony
		"76561198084795031"  //Steven
	];

wolfeMedics = /* Medics */ 
	[
		"76561198201126286", //Diesel
		"76561198196194405", //SBG
		"76561198106057414", //Madie
		"0", 
		"0", 
		"0",
		"0", 
		"0"
	];
	
wolfeEngineers = /* Engineers */ 
	[
		"76561198053326389", //aNUL | Greg
		"76561198199754407", //Cole
		"0", 
		"0", 
		"0"
	];
	
wolfeSnipers = /* Snipers (Recon)*/ 
	[
		"76561198106057414", //Madie
		"76561198199754407", //Cole
		"0", 
		"0", 
		"0"
	];
	
wolfePilots = /* Pilots */ 
	[
		"76561198053326389", //aNUL | Greg
		"76561198106057414", //Madie
		"0", 
		"0", 
		"0"
	];
	
// wolfeCommanders = GRLIB_whitelisted_steamids; /* Commanders, set in whitelist.sqf (to be used as a simpler reference in our code)*/
		
	