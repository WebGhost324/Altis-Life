#include "..\..\script_macros.hpp"
/*################################
#	(c) 2016 Global-Gamer		 #
#								 #
#	Author: Mahony		   		 #
################################*/
private["_posPlayer","_posVeh","_dirplayer","_dirveh","_veh""_marker1","_marker2","_marker3","_marker4","_Ziel","_marker5","_marker6","_marker7","_fnc_DamageCheck","_fnc_SpeedCheck","_fnc_nichtbestanden"];
closeDialog 0;
if (PKW_PruefungINUSE) exitWith {hint "Es macht grade schon jemand die Prüfung !";};
bestanden = False;
if(CASH < 1500) exitWith {hint "Du hast zu wenig Geld !";};
_posPlayer = [3956,13604,0.00151443];
_posVeh = [3952.80,13597,0.0256081];
_dirplayer = 194.167;
_dirveh = 135;
	PKW_PruefungINUSE = true;
	publicVariable "PKW_PruefungINUSE";
player allowDamage false;
//spielerVorbereitung
	player setPos _posPlayer;
	player setDir _dirplayer;
hint "Du bist nun bei der Fahrzeugprüfung ! Folge den nächsten Schritten !";
sleep 5;
//fahrzeug vorbereitung
	_veh = "C_SUV_01_F" createVehicle _posVeh;
	_veh setDir 135;
	_veh setObjectTextureGlobal [0,"textures\fahrschulauto.paa"];
	_veh setVehicleLock "locked";
	player moveindriver _veh;        
	clearWeaponCargo _veh;
    clearMagazineCargo _veh;
    clearItemCargo _veh;
    clearBackPackCargo _veh;
hint "Du bist nun in dem Fahrschulauto warte auf weitere Anweisungen !";
sleep 2;


hint "Folge den Pfeilen ! Nimm dabei keinen schaden ! Du darfst maximal 100 fahren !";
//Marker
	_marker1 = "Sign_Arrow_Direction_Cyan_F" createVehicleLocal [3963.36,13593.6,0];
	_marker1 enableSimulation false;
	_marker1 setDir 46.713501;
	_marker2 = "Sign_Arrow_Direction_Cyan_F" createVehicleLocal [4034.5,13676.1,0];
	_marker2 enableSimulation false;
	_marker2 setDir 38.412201;
	_marker3 = "Sign_Arrow_Direction_Cyan_F" createVehicleLocal [4240.43,13903.4,0];
	_marker3 enableSimulation false;
	_marker3 setDir 60.118;
	_marker4 = "Sign_Arrow_Direction_Cyan_F" createVehicleLocal [4471.56,14023.5,0];
	_marker4 enableSimulation false;
	_marker4 setDir 52.712799;
	_marker5 = "Sign_Arrow_Direction_Cyan_F" createVehicleLocal [4523.59,14060.1,0];
	_marker5 enableSimulation false;
	_marker5 setDir 46.713501;
	_marker6 = "Sign_Arrow_Direction_Cyan_F" createVehicleLocal [4968.53,14427.1,0];
	_marker6 enableSimulation false;
	_marker6 setDir 101.23;
	_marker7 = "Sign_Arrow_Large_Cyan_F" createVehicleLocal [5001.87,14427.6,0];
	_marker7 enableSimulation false;
	_marker7 setDir 101.23;
	_Ziel = createTrigger ["EmptyDetector", [4998.74,14426.4,0]];
	_Ziel setTriggerArea [8,8,0, false];
	_Ziel setTriggerActivation ["CIV", "PRESENT", false];
	_Ziel setTriggerStatements ["this",
		"
			bestanden = true;
		", 
		"this"];
//Damage- / SpeedCheck
	_fnc_nichtbestanden = {
		if(PKW_PruefungINUSE) exitWith {};
		deleteVehicle _marker1;
		deleteVehicle _marker2;
		deleteVehicle _marker3;
		deleteVehicle _marker4;
		deleteVehicle _marker5;
		deleteVehicle _marker6;
		deleteVehicle _marker7;
		deleteVehicle _Ziel;
		deleteVehicle _veh;
		disableUserinput true;
		player setPos oldpos;
		player setDamage 0;
		player allowDamage true;
		disableUserinput false;
		license_civ_driver = false;
		PKW_PruefungINUSE = false;
		publicVariable "PKW_PruefungINUSE";
	};
	_fnc_DamageCheck = {
		if
		(
        (_veh getHitPointDamage "HitLFWheel") > 0 ||  
        (_veh getHitPointDamage "HitLF2Wheel") > 0 || 
        (_veh getHitPointDamage "HitRFWheel") > 0 ||  
        (_veh getHitPointDamage "HitRF2Wheel") > 0 ||
        (_veh getHitPointDamage "HitFuel") > 0 ||
        (_veh getHitPointDamage "HitBody") > 0 ||     
        (_veh getHitPointDamage "HitEngine") > 0 ||
        (_veh getHitPointDamage "HitLGlass") > 0 ||           
        (_veh getHitPointDamage "HitRGlass") > 0)
		then 
		{
			hint "Das Fahrzeug hat schaden genommen Du hast nicht bestanden !";
			PKW_PruefungINUSE = false;
			publicVariable "PKW_PruefungINUSE";
			[] call _fnc_nichtbestanden;
		};
	};
	_fnc_SpeedCheck = 
	{
		if
		(
			speed _veh >= 90
		) then {
			hint "Pass auf bei 101 km/h wird der test abgebrochen !";
		};
		if 
		(
			speed _veh > 100
		) then {
			hint "Du warst zu schnell Du hast nicht bestanden !";
			PKW_PruefungINUSE = false;
			publicVariable "PKW_PruefungINUSE";
			[] call _fnc_nichtbestanden;
		};
	};
	_fnc_bestanden = 
	{	
		if(bestanden) then {
			hint "Du hast bestanden !";
			license_civ_driver = true;
			deleteVehicle _Ziel;
			deleteVehicle _marker1;
			deleteVehicle _marker3;
			deleteVehicle _marker2;
			deleteVehicle _marker4;
			deleteVehicle _marker5;
			deleteVehicle _marker7;
			deleteVehicle _marker6;
			deleteVehicle _veh;
			disableUserinput true;
			player setPos oldpos;
			player setDamage 0;
			player allowDamage true;
			disableUserinput false;
			PKW_PruefungINUSE = false;
			publicVariable "PKW_PruefungINUSE";
		};
	};
while {PKW_PruefungINUSE} do {
[] call _fnc_DamageCheck;
sleep 0.1;
[] call _fnc_SpeedCheck;
sleep 0.1;
[] call _fnc_bestanden;
sleep 0.1;
};