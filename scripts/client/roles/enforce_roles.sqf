private [ "_target", "_tagmatch", "_idmatch", "_namematch" ];

waitUntil { alive player };
sleep 1;

_target = [] call F_getCommander;
if ( !isNull _target ) then {
	if ( player == _target && !([] call F_isAdmin)) then {

		[] call compileFinal preprocessFileLineNumbers "whitelist.sqf";

		_idmatch = false;

		if ( !isNil "GRLIB_whitelisted_steamids" ) then {
			if ( ( getPlayerUID _target ) in GRLIB_whitelisted_steamids ) then {
				_idmatch = true;
			};
		};

	

	if ( !(_idmatch ) ) then { //All Checks Failed, Lobby Kick.

			sleep 1;
			if ( alive _target ) then {
				endMission "END2";
			};
		};
	};
};
