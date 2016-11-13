#include "..\..\script_macros.hpp"
/*################################
#	(c) 2016 Global-Gamer		 #
#								 #
#	Author: Mahony		   		 #
################################*/
private["_counter","_fnc_DamageCheck","_fnc_abschleppcarcheck","_fnc_timer","_time"];
closeDialog 0;
if(HELI_PruefungINUSE) exitWith {};
HELI_PruefungINUSE = true;
publicVariable "HELI_PruefungINUSE";



	Pruefungheli = "B_Heli_Light_01_F" createVehicle [4985.75,19528.5,0.00221252];
	clearWeaponCargo Pruefungheli;
    clearMagazineCargo Pruefungheli;
    clearItemCargo Pruefungheli;
    clearBackPackCargo Pruefungheli;
	Pruefungheli setDir 140.505;
	Pruefungheli setVehicleLock "locked";
	
	
	player setPos [4975.41,19519.9,0.00169373];
	player setDir 60.2653;
	player moveindriver Pruefungheli;
hint "Du bist nun bei der Flugprüfung ! Warte auf weitere anweisungen !";
sleep 5;
hint "Fliege zunächst auf eine höhe von 25 Metern !";
waituntil {sleep 0.1,(((getPos Pruefungheli) select 2) >=24)};
hint "Soweit so gut !";
sleep 1;
hint "Fliege nun zu dem Marker auf der Map mit der Aufschrift ""hierhin""";
sleep 1;
hint "Hover dort auf der höhe von 10 Metern ";
	helimarker1 = createMarkerLocal ["hierhin", [5618.56,20019.5,0.00141907]];
	helimarker1 setMarkerColorLocal "ColorRed";
	helimarker1 setMarkerTypeLocal "mil_warning";
	helimarker1 setMarkerTextLocal "hierhin";
	heliTrigger1 = createTrigger ["EmptyDetector", [5618.56,20019.5,0.00141907]];
	heliTrigger1 setTriggerArea [10,10,0, false];
	heliTrigger1 setTriggerActivation ["CIV", "PRESENT", false];
	heliTrigger1 setTriggerStatements ["this",
		"
			pos_abschleppcar = true;
		", 
		"this"];
	_fnc_stillAlive = {
		if(!(alive player)) then {
			[] spawn fnc_HELInichtbestanden;
		};
		if((damage Pruefungheli) > 0.1) then {
			[] spawn fnc_HELInichtbestanden;
		};
	};
//antitroll
			esctrigger = createTrigger ["EmptyDetector", [5598.62,20025.3,0]];
			esctrigger setTriggerArea [4250,4250,0, false];
			esctrigger setTriggerActivation ["CIV", "PRESENT", true];
			esctrigger setTriggerStatements ["this","this","HELIescaped = true;"];
//////
	_fnc_abschleppcarcheck = {
		if(pos_abschleppcar) then {
			waituntil {sleep 0.1,(((getPos Pruefungheli) select 2) <= 10)};
			heliabschleppcar = "C_Offroad_01_F" createVehicle [3000,3000,10000];
			heliabschleppcar allowDamage false;
			heliabschleppcar setDamage 0.6;
			pos_abschleppcar = false;
			hint "Gut gemacht !";
			heliabschleppcar allowDamage true;
			heliabschleppcar attachTo [Pruefungheli,[0,0,-3]];
			sleep 1;
			hint "Bringe das Fahrzeug zu dem Marker auf der Map mit der aufschrifft ""abschmeissen""";
			deleteMarkerLocal helimarker1;
			deleteVehicle heliTrigger1;
			helimarker2 = createMarkerLocal ["abschmeissen", [4826.17,21944.4,0.00149536]];
			helimarker2 setMarkerColorLocal "ColorRed";
			helimarker2 setMarkerTypeLocal "mil_warning";
			helimarker2 setMarkerTextLocal "abschmeissen";
			heliTrigger2 = createTrigger ["EmptyDetector", [4826.17,21944.4,0.00149536]];
			heliTrigger2 setTriggerArea [10,10,0, false];
			heliTrigger2 setTriggerActivation ["CIV", "PRESENT", false];
			heliTrigger2 setTriggerStatements ["this",
				"
					pos_abschmeissen = true;
					pos_abschleppcar = false;
				", 
				"this"];
			hint "Hover dort auf der höhe von 25 Metern ";
		};
		if(pos_abschmeissen) then {
			waituntil {sleep 0.1,(((getPos Pruefungheli) select 2) <= 25)};
			pos_abschmeissen = false;
			hint "Gut gemacht !";
			detach heliabschleppcar;
			heliabschleppcar allowDamage false;
			heliabschleppcar setDamage 0;
			deleteVehicle heliabschleppcar;
			deleteMarkerLocal helimarker2;
			deleteVehicle heliTrigger2;
			helimarker3 = createMarkerLocal ["Flieg_hierher", [9518.52,20314.7,0.00164795]];
			helimarker3 setMarkerColorLocal "ColorRed";
			helimarker3 setMarkerTypeLocal "mil_warning";
			helimarker3 setMarkerTextLocal "Flieg hierher !";
			sleep 2;
			hint "Das fahrzeug wurde nun repariert und von seinem eigentümer abgeholt !";
			sleep 1;
			sleep 5;
			hint "Fliege nun zu dem Marker auf der Map ! (""Flieg hierher !"")";
			sleep 3;
			hint "Lande dort !";
			heliTimer = true;
			heliTrigger3 = createTrigger ["EmptyDetector", [9518.52,20314.7,0.00164795]];
			heliTrigger3 setTriggerArea [10,10,0, false];
			heliTrigger3 setTriggerActivation ["CIV", "PRESENT", false];
			heliTrigger3 setTriggerStatements ["this",
				"
					pos_fliegen = true;
					pos_abschmeissen = false;
				", 
				"this"];
		};
		
		if(pos_fliegen) then {
			waituntil {sleep 0.1,(((getPos Pruefungheli) select 2) <= 2)};
			hint "Gut gemacht ! Dir wird nun die Lizenz ausgestellt ! Viel Spaß damit !";
			[] spawn fnc_HELIbestanden;
			pos_fliegen = false;
		};
	};
	fnc_HELIbestanden = {
		sleep 1;
		hint "Du hast den Test geschafft :) Wir wünschen dir viel spaß mit deiner Lizenz";
		license_civ_pilot = true;
		disableUserInput true;
		player setPos oldpos;
		player allowDamage true;
		disableUserInput false;
		deleteMarkerLocal helimarker1;
		deleteMarkerLocal helimarker2;
		deleteMarkerLocal helimarker3;
		deleteVehicle heliTrigger1;
		deleteVehicle heliTrigger2;
		deleteVehicle esctrigger;
		deleteVehicle heliTrigger3;
		deleteVehicle Pruefungheli;
		deleteVehicle heliabschleppcar;
		HELI_PruefungINUSE = false;
		publicVariable "HELI_PruefungINUSE";
		heliTimer = false;
	};
	fnc_HELInichtbestanden = {
		hint "Du hast den Test nicht geschafft :( Wir wünschen dir viel glück bei deinem nächsten versuch !";
		license_civ_pilot = false;
		disableUserInput true;
		player setPos oldpos;
		player allowDamage true;
		disableUserInput false;
		deleteMarkerLocal helimarker1;
		deleteMarkerLocal helimarker2;
		deleteMarkerLocal helimarker3;
		deleteVehicle heliTrigger1;
		deleteVehicle heliTrigger2;
		deleteVehicle heliTrigger3;
		deleteVehicle esctrigger;
		deleteVehicle Pruefungheli;
		deleteVehicle heliabschleppcar;
		HELI_PruefungINUSE = false;
		publicVariable "HELI_PruefungINUSE";
		heliTimer = false;
	};
				
		_fnc_fuckclient = {
			if(HELIescaped) then {
				hint "Da du versucht hast abzuhauen wurde dein Geld auf 0 gesetzt";
				BANK = 0;
				CASH = 0;
				sleep 2;
				hint "Bei fragen melde dich bitte im TS !";
				[] spawn fnc_HELInichtbestanden;
				};
		};
while {HELI_PruefungINUSE} do {
[] spawn _fnc_abschleppcarcheck;
sleep 0.1;
[] spawn _fnc_fuckclient;
sleep 0.1;
[] spawn _fnc_stillAlive;
sleep 0.1
};