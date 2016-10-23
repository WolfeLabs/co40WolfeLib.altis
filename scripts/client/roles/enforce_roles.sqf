private [ "_target", "_playerType", "_idmatch"];

waitUntil { alive player };
sleep 1;

_target = player;
_playerType = typeOf _target;

if ( !isNull _target ) then {
	if (!([] call F_isAdmin)) then {

		[] call compileFinal preprocessFileLineNumbers "roles\roles.sqf";

		_idmatch = false;

		if ( !isNil "wolfeAdmins" ) then { //Full Access, no typeOf checks.
			if ( ( getPlayerUID _target ) in wolfeAdmins ) then {
				_idmatch = true;
			};
		};
		
		if ( _playerType == "B_medic_F" ) then {
			if ( ( getPlayerUID _target ) in wolfeMedics ) then {
				_idmatch = true;
			};
		};

		if ( _playerType == "B_engineer_F" ) then {
			if ( ( getPlayerUID _target ) in wolfeEngineers ) then {
				_idmatch = true;
			};
		};
		
		if ( _playerType == "B_recon_F" ) then {
			if ( ( getPlayerUID _target ) in wolfeSnipers ) then {
				_idmatch = true;
			};
		};
		
		if ( _playerType == "B_Helipilot_F" ) then {
			if ( ( getPlayerUID _target ) in wolfePilots ) then {
				_idmatch = true;
			};
		};
		 
		if ( !isNil "wolfeCommanders" ) then { // Full Access, they're trusted.
			if ( ( getPlayerUID _target ) in wolfeCommanders ) then {
				_idmatch = true;
			};
		};
		
		if( _playerType == "B_Soldier_F" ) then { //Rifleman, No Checks Needed.
				_idmatch = true;
		};
		
	if ( !(_idmatch ) ) then { //All Checks Failed, Lobby Kick.

			sleep 1;
			if ( alive _target ) then {
				endMission "End2";
			};
		};
	};
};
