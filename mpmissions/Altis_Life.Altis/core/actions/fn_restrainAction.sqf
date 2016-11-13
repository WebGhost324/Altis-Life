#include "..\..\script_macros.hpp"
/*
    File: fn_restrainAction.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Restrains the target.
*/
private ["_unit"];
_unit = cursorObject;
if (isNull _unit) exitWith {}; //Not valid
if (player distance _unit > 3) exitWith {};
if (_unit getVariable "restrained") exitWith {};
if (side _unit in [independent,east]) exitWith {};
if (player isEqualTo _unit) exitWith {};
if (side player isEqualTo west) then {
	if (life_inv_handcuffs < 1) exitWith { hint "Du hast keine Handschellen."; };
	life_inv_handcuffs = life_inv_handcuffs - 1;
};
if (side player isEqualTo civilian) then {
	if (!license_civ_rebel) exitWith { hint "Du benötigst das Rebellentraining um jemanden zu fesseln."; };
	if (life_inv_handcuffs < 1) exitWith { hint "Du hast keine Handschellen."; };
	life_inv_handcuffs = life_inv_handcuffs - 1;
};
if (!isPlayer _unit) exitWith {};
//Broadcast!

_unit setVariable ["restrained",true,true];
[player] remoteExec ["life_fnc_restrain",_unit];
playSound "handcuffs";
[0,"STR_NOTF_Restrained",true,[_unit getVariable ["realname", name _unit], profileName]] remoteExecCall ["life_fnc_broadcast",west];
