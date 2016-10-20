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
		"76561198076424327", "0", "0"
	];

wolfeMedics = /* Medics */ 
	[
		"0", "0", "0",
		"0", "0", "0",
		"0", "0"
	];
	
wolfeEngineers = /* Engineers */ 
	[
		"0", "0", "0", "0"
	];
	
wolfeSnipers = /* Snipers (Recon)*/ 
	[
		"0", "0", "0", "0"
	];
	
wolfePilots = /* Pilots */ 
	[
		"0", "0", "0", "0"
	];
	
wolfeCommanders = GRLIB_whitelisted_steamids; /* Commanders, set in whitelist.sqf (to be used as a simpler reference in our code)*/
		
	