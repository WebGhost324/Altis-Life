#include "..\..\script_macros.hpp"
/*
    File: fn_unrestrain.sqf
    Author:

    Description:

*/
private ["_unit"];
_unit = param [0,objNull,[objNull]];
if (isNull _unit || !(_unit getVariable ["restrained",false])) exitWith {}; //Error check?
if (side player isEqualTo west) then {
  if (life_inv_key > 0) then {
    life_inv_handcuffs = life_inv_handcuffs + 1;
  };
};
if (side player isEqualTo civilian) then {
  if (life_inv_key > 0) then {
    life_inv_handcuffs = life_inv_handcuffs + 1;
  };
};

_unit setVariable ["restrained",false,true];
_unit setVariable ["Escorting",false,true];
_unit setVariable ["transporting",false,true];
detach _unit;

[0,"STR_NOTF_Unrestrain",true,[_unit getVariable ["realname",name _unit], profileName]] remoteExecCall ["life_fnc_broadcast",west];
