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
		"76561198076424327", "76561197964255133", "76561198082992671", "76561198136964498"
	];

wolfeMedics = /* Medics */ 
	[
		"76561198201126286", "0", "0",
		"0", "0", "0",
		"0", "0"
	];
	
wolfeEngineers = /* Engineers */ 
	[
		"76561198053326389", "0", "0", "0"
	];
	
wolfeSnipers = /* Snipers (Recon)*/ 
	[
		"0", "0", "0", "0"
	];
	
wolfePilots = /* Pilots */ 
	[
		"76561198053326389", "0", "0", "0"
	];
	
wolfeCommanders = GRLIB_whitelisted_steamids; /* Commanders, set in whitelist.sqf (to be used as a simpler reference in our code)*/
		
	
