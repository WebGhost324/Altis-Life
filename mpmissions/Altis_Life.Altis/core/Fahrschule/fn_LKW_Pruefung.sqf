#include "..\..\script_macros.hpp"
/*################################
#	(c) 2016 Global-Gamer		 #
#								 #
#	Author: Mahony		   		 #
################################*/
private[];
closeDialog 0;
if(LKW_PruefunginUSE) exitWith {};
LKW_PruefunginUSE = true;
publicVariable "LKW_PruefunginUSE";
angekommen = false;
ziel = false;
	//LKW
		LKW = "B_Truck_01_covered_F" createVehicle [4557.25,15441.4,0.0015564];
		LKW setDir 35.4883;
		clearWeaponCargo LKW;
		clearMagazineCargo LKW;
		clearItemCargo LKW;
		clearBackPackCargo LKW;
		LKW setVehiclelock "locked";
	//player
		player setPos [4553.07,15453.5,0.000793457];
		player setDir 151.426;
		sleep 2;
		player moveindriver LKW;
		player allowDamage false;
	hint parseText "Du bist nun angekommen !<br /> Warte auf weitere anweisungen !";
	abschleppcar = "O_G_Offroad_01_F" createVehicle [2000,2000,10000];
	abschleppcar allowDamage false;
	abschleppcar setDamage 0.6;
	sleep 1;
	hint "Folge den Pfeilen und warte dann auf weitere Anweisungen !";
	//marker
		_marker1 = "Sign_Arrow_Direction_Cyan_F" createVehicleLocal [4570.32,15465.8,0.00166321];
		_marker1 setDir 30.6965;
		_marker2 = "Sign_Arrow_Direction_Cyan_F" createVehicleLocal [4618.68,15499.9,0.00187683];
		_marker2 setDir 13.9879;
		_marker3 = "Sign_Arrow_Direction_Cyan_F" createVehicleLocal [4577.63,15624.8,0.00143433];
		_marker3 setDir 29.4206;
		_marker4 = "Sign_Arrow_Direction_Cyan_F" createVehicleLocal [4990.88,15905,0.00149536];
		_marker4 setDir 315.737;
		_marker5 = "Sign_Arrow_Direction_Cyan_F" createVehicleLocal [4760.48,15975.4,0.0014801];
		_marker5 setDir 251.749;
		_marker6 = "Sign_Arrow_Direction_Cyan_F" createVehicleLocal [4227.12,15774.8,0.00151062];
		_marker6 setDir 240.033;
		_marker7 = "Sign_Arrow_Direction_Cyan_F" createVehicleLocal [4064.29,15506.7,0.00159073];
		_marker7 setDir 217.969;
		_marker8 = "Sign_Arrow_Direction_Cyan_F" createVehicleLocal [4137.85,15048.6,0.00151634];
		_marker8 setDir 92.7492;
		_marker9 = "Sign_Arrow_Large_Cyan_F" createVehicleLocal [4162.27,15058.3,0.00170326];
		_trigger1 = createTrigger ["EmptyDetector", [4162.27,15058.3,0.00170326]];
		_trigger1 setTriggerArea [8,8,0, false];
		_trigger1 setTriggerActivation ["CIV", "PRESENT", false];
		_trigger1 setTriggerStatements ["this",
			"
				hint ""Bringe das Fahrzeug wieder zurück auf den Berg dort wird es repariert und abgeholt ! Folge dazu einfach wieder den pfeilen nur umgekehrt"";
				abschleppcar attachTo [LKW,[0,-2,0.7]];
				angekommen = true;
				abschleppcar allowDamage true;
			", 
			"this"];
			
	//funktionen
	
	_fnc_angekommen = {
		if(angekommen) then {
			_marker1 setDir 203.744;
			_marker2 setDir 194.846;
			_marker3 setDir 177.279;
			_marker4 setDir 184.839;
			_marker5 setDir 78.9944;
			_marker6 setDir 112.153;
			_marker7 setDir 43.688;
			_marker8 setDIr 18.5378;
			deleteVehicle _trigger1;
			_trigger2 = createTrigger ["EmptyDetector", [4557.25,15441.4,0.0015564]];
			_trigger2 setTriggerArea [8,8,0, false];
			_trigger2 setTriggerActivation ["CIV", "PRESENT", false];
			_trigger2 setTriggerStatements ["this",
				"
					abschleppcar attachTo [LKW,[0,-6,0]];
					detach abschleppcar;
					abschleppcar setDamage 0;
					ziel = true;
					hint ""Du bist angekommen und hast den Ritt unbeschadet überstanden ! Viel Spaß mit der Lizenz !"";
				", 
				"this"];
			angekommen = false;
		};
		if(ziel) then {
			[] call _fnc_bestanden;
		};
	};
	
	_fnc_bestanden = {
		deleteVehicle _marker1;
		deleteVehicle _marker2;
		deleteVehicle _marker3;
		deleteVehicle _marker4;
		deleteVehicle _marker5;
		deleteVehicle _marker6;
		deleteVehicle _marker7;
		deleteVehicle _marker8;
		deleteVehicle _trigger1;
		license_civ_trucking = true;
		LKW_PruefunginUSE = false;
		publicVariable "LKW_PruefunginUSE";	
		disableUserinput true;
		player setPos oldpos;
		player setDamage 0;
		player allowDamage true;
		disableUserinput false;
		deleteVehicle LKW;
		deleteVehicle abschleppcar;
	};
	
	_fnc_bestandenfortrigger = {
		deleteVehicle _marker1;
		deleteVehicle _marker2;
		deleteVehicle _marker3;
		deleteVehicle _marker4;
		deleteVehicle _marker5;
		deleteVehicle _marker6;
		deleteVehicle _marker7;
		deleteVehicle _marker8;
		deleteVehicle _trigger1;
		license_civ_trucking = true;
		LKW_PruefunginUSE = false;
		publicVariable "LKW_PruefunginUSE";
		disableUserinput true;
		player setPos oldpos;
		player setDamage 0;
		player allowDamage true;
		disableUserinput false;
		deleteVehicle LKW;
		deleteVehicle abschleppcar;
	};
	
	_fnc_nichtbestanden = {
		deleteVehicle _marker1;
		deleteVehicle _marker2;
		deleteVehicle _marker3;
		deleteVehicle _marker4;
		deleteVehicle _marker5;
		deleteVehicle _marker6;
		deleteVehicle _marker7;
		deleteVehicle _marker8;
		deleteVehicle _trigger1;
		license_civ_trucking = false;
		LKW_PruefunginUSE = false;
		publicVariable "LKW_PruefunginUSE";
		disableUserinput true;
		player setPos oldpos;
		player setDamage 0;
		player allowDamage true;
		disableUserinput false;
		deleteVehicle LKW;
		deleteVehicle abschleppcar;
		hint parseText "Du hast nicht bestanden !<br/> Versuch es später vielleicht noch einmal";
	};
	_fnc_SpeedCheck = 
	{
		if
		(
			speed LKW >= 65
		) then {
			hint "Pass auf bei 76 km/h wird der test abgebrochen !";
		};
		if 
		(
			speed LKW > 75
		) then {
			hint "Du warst zu schnell Du hast nicht bestanden !";
			[] call _fnc_nichtbestanden;
		};
	};
	_fnc_DamageCheck = {
		if
		(
        (LKW getHitPointDamage "HitLFWheel") > 0 ||
        (LKW getHitPointDamage "HitLF2Wheel") > 0 ||
        (LKW getHitPointDamage "HitRFWheel") > 0 ||
        (LKW getHitPointDamage "HitRF2Wheel") > 0 ||
        (LKW getHitPointDamage "HitFuel") > 0 ||
        (LKW getHitPointDamage "HitBody") > 0 ||
        (LKW getHitPointDamage "HitEngine") > 0 ||
        (LKW getHitPointDamage "HitLGlass") > 0 ||
        (LKW getHitPointDamage "HitRGlass") > 0)
		then 
		{
			hint "Das Fahrzeug hat schaden genommen Du hast nicht bestanden !";
			[] call _fnc_nichtbestanden;
		};
	};
	
while {LKW_PruefunginUSE} do {
[] call _fnc_angekommen;
sleep 0.1;
[] call _fnc_SpeedCheck;
sleep 0.1;
[] call _fnc_DamageCheck;
sleep 0.1;
};