#include "..\..\script_macros.hpp"
/*
    File: fn_adacLoadout.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Loads the medic out with the default gear.
*/
private ["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

player AddUniform "U_B_HeliPilotCoveralls";
player addBackpack "B_Kitbag_cbr";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";

[] call life_fnc_playerSkins;
[] call life_fnc_saveGear;