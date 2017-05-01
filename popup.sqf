//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: FoxRazgriz/SSgt Schirf
// Version: 1.0
//////////////////////////////////////////////////////////////////

// ***** USABILITY *****
// Example Use: controlLaptop addAction["Sector 1 Targets","popup.sqf",[[target_1,target_2,target_3],0,1,true]];
// Use Format: controlStationName addAction["Action Title","popup.sqf",[[tar1, tar2, tar3],numRandomTargets,offset,display]];
// WHERE:
// - controlStationName (object variable name) is the variable name of your control station (laptop, flag pole, etc.)
// - tar1, tar2, tar3 (array of objects) are the variable names of the targets in the list of targets to be popped
// - numRandomTargets (integer) is how many targets to pick from list to pop (to not select targets randomly, enter 0)
// - offset (integer) is how far off the numRandomTargets you want the TRUE number of random targets to be (to not use offset, enter 0)
// - display (boolean) is whether or not you want a hint displayed telling you how many targets have been flipped

// ***** ADDITIONAL INFORMATION *****
// * Random Number of Targets *
// Say you have 10 targets, but only want 4 of those 10 flipped. Enter 4 as the numRandomTargets parameter, and the script will pick
// a random target from your list given, check to see if it's popped already, and if it's not popped, it will activate that target
// * Offset *
// Say you have 5 targets, and you set the offset to 2. That means you can have anywhere between 3 and 7 targets popped with this script.
// First, we pick a random number between the offset value given and zero. Then we pick which side of the zero it will be on, positive or
// negative, with a coin flip (0 or 1). We then add that value to the random number of targets to be popped.

// ***** ADD THIS CODE TO THE INIT OF EVERY POP-UP TARGET YOU WANT TO BE DOWN *****
// this animate["terc",1]

// ***** RESET YOUR TARGETS *****
// Use the following code block in order to reset all your targets to the "down" position
//{
//	_x setDamage 1;
//	_x animate["terc",1];
//} foreach [tar_1, tar_2, tar_3];

// ***** SCRIPT FORMAT *****
// 1. Get the following info from parameters:
// 	1a. Array of targets
// 	1b. Number of randomized targets
//	1c. Offset number (ammount of allowance above or below the randomized number of targets from parameter 2)
//	1d. Diplay Y/N
// 2. Apply offset (using method in ADDITIONAL INFORMATION above)
// 3. IF there IS a random number of targets
// 	3a. Start to fill the accepted targets array with a random target
//	3b. Continue filling, if needed, while checking to see if the randomly selected target is already in the accepted target array
// 4. IF there IS NOT a random number of targets
//	4a. Assign the accepted targets array to the array from parameter list
// 5. Pop up the array of accepted targets
//	5a. Print how many targets are popped

// ***** UPCOMING CHANGES *****
// - Add ability for free-fire mode, where all targets are standing
// - Make more black box
// - Add feature for monitoring how many targets are in play/where they are

// Check to make sure this script is executed on the server ONLY
if (!isServer) exitWith {};

// Ensure the targets do not pop up again once shot
nopop = true;

// Step 1a
_selection = _this select 3 select 0; // Gets the first element in the list (list is at index 3), should be array of targets
// Step 1b
_selectedRandom = _this select 3 select 1; // Gets the second element in the list (list is at index 3), should be an integer
// Step 1c
_offset = _this select 3 select 2; // Gets the third element in the list (list is at index 3), should be an integer
// Step 1d
_display = _this select 3 select 3; // Gets the fourth element in the list (list is at index 3), should be a boolean

// Step 2
_offset = round random _offset; // Where random returns floating point, round gets us an integer
_polarity = round random [0,0.5,1]; // [min,mid,max]
if (_polarity == 0) then {
	_offset = 0 - _offset; // Set to negative if the coin flip is zero
};
_selectedRandom = _selectedRandom + _offset;

// Initialize array of accepted targets (allows for global scope)
_targets = [];

if (_selectedRandom > 0) then
{
	// Step 3a
	_target = _selection call BIS_fnc_selectRandom;
	_targets = [_target];
	_selectedRandom = _selectedRandom - 1;
	// Step 3b
	while {_selectedRandom > 0} do
	{
		_target = _selection call BIS_fnc_selectRandom;
		while {_target in _targets} do
		{
			_target = _selection call BIS_fnc_selectRandom;
		};
		_targets append [_target];
		_selectedRandom = _selectedRandom - 1;
	};	
}
else
{
	// Step 4a
	_targets = +_selection;
};

// Step 5
{
	_x setDamage 0;
	_x animate["terc",0];
} foreach _targets;

// Step 5a
if (_display) then {
	hint format ["Targets: %1", count _targets];
};
