#include "..\..\script_macros.hpp"
/*################################
#	(c) 2016 Global-Gamer		 #
#								 #
#	Author: Mahony		   		 #
################################*/
private["_what","PKW_PruefungINUSE","LKW_PruefunginUSE","HELI_PruefunginUSE"];
_what = _this select 0;
if(playerSide != civilian) exitWith {hint "Du bist kein Zivilist. Du musst andere Prüfungen machen !";};
oldpos = getPos player;
pweapon = primaryWeapon player;
sweapon = secondaryWeapon player;
uni = uniform player;
ves = vest player;
back = backpack player;
switch(_what) do {
	case "Car" :{ 
	if (PKW_PruefungINUSE) exitWith {hint "Es macht schon jemand die Prüfung warte einen moment !";};
	if (license_civ_driver) exitWith {}; 
	if (CASH < 1500) exitWith {hint "Du hast zu wenig Geld";};
	CASH = CASH - 1500;
	[] spawn life_fnc_theoScript;
	};
	case "Lkw" :{ 
	if(LKW_PruefunginUSE) exitWith {hint "Es macht schon jemand die Prüfung warte einen moment !";};
	if (license_civ_trucking) exitWith {}; 
	if (CASH < 20000) exitWith {hint "Du hast zu wenig Geld";};
	CASH = CASH - 20000;
	[] spawn life_fnc_LKW_Pruefung;
	};
	case "Heli" :{ 
	if(HELI_PruefunginUSE) exitWith {hint "Es macht schon jemand die Prüfung warte einen moment !";};
	if (license_civ_pilot) exitWith {}; 
	if (CASH < 25000) exitWith {hint "Du hast zu wenig Geld";};
	CASH = CASH - 25000;
	[] spawn life_fnc_HELI_Pruefung;
	};
};