#include "..\..\script_macros.hpp"
/*
    File: fn_playerSkins.sqf
    Author: Daniel Stuart

    Description:
    Sets skins for players by their side and uniform.
*/
private ["_skinName"];

switch (playerSide) do {
    case civilian: {
        if (LIFE_SETTINGS(getNumber,"civ_skins") isEqualTo 1) then {
            if (uniform player isEqualTo "U_C_Poloshirt_blue") then {
                player setObjectTextureGlobal [0, "textures\civilian_uniform_1.jpg"];
            };
            if (uniform player isEqualTo "U_C_Poloshirt_burgundy") then {
                player setObjectTextureGlobal [0, "textures\civilian_uniform_2.jpg"];
            };
            if (uniform player isEqualTo "U_C_Poloshirt_stripped") then {
                player setObjectTextureGlobal [0, "textures\civilian_uniform_3.jpg"];
            };
            if (uniform player isEqualTo "U_C_Poloshirt_tricolour") then {
                player setObjectTextureGlobal [0, "textures\civilian_uniform_4.jpg"];
            };
            if (uniform player isEqualTo "U_C_Poloshirt_salmon") then {
                player setObjectTextureGlobal [0, "textures\civilian_uniform_5.jpg"];
            };
            if (uniform player isEqualTo "U_C_Poloshirt_redwhite") then {
                player setObjectTextureGlobal [0, "textures\civilian_uniform_6.jpg"];
            };
            if (uniform player isEqualTo "U_C_Commoner1_1") then {
                player setObjectTextureGlobal [0, "textures\civilian_uniform_7.jpg"];
            };
        };
    };

    case west: {
            if (LIFE_SETTINGS(getNumber,"cop_extendedSkins") isEqualTo 1) then {
				if (uniform player isEqualTo "U_Rangemaster" && (FETCH_CONST(life_coplevel) == 11)) then {
					player setObjectTextureGlobal [0, "textures\cop\cop_uniform_11.paa"];
				};
				if (uniform player isEqualTo "U_Rangemaster" && (FETCH_CONST(life_coplevel) ==10)) then {
					player setObjectTextureGlobal [0, "textures\cop\cop_uniform_11.paa"];
				};
                if (uniform player isEqualTo "U_B_CombatUniform_mcam_worn" && (FETCH_CONST(life_coplevel) ==9)) then {
					player setObjectTextureGlobal [0, "textures\cop\cop_uniform_9.paa"];
				};
				if (uniform player isEqualTo "U_B_CombatUniform_mcam_worn" && (FETCH_CONST(life_coplevel) ==8)) then {
					player setObjectTextureGlobal [0, "textures\cop\cop_uniform_all.paa"];
				};
				if (uniform player isEqualTo "U_B_CombatUniform_mcam_worn" && (FETCH_CONST(life_coplevel) ==7)) then {
					player setObjectTextureGlobal [0, "textures\cop\cop_uniform_all.paa"];
				};
				if (uniform player isEqualTo "U_B_CombatUniform_mcam_worn" && (FETCH_CONST(life_coplevel) ==6)) then {
					player setObjectTextureGlobal [0, "textures\cop\cop_uniform_all.paa"];
				};
				if (uniform player isEqualTo "U_B_CombatUniform_mcam_worn" && (FETCH_CONST(life_coplevel) ==5)) then {
					player setObjectTextureGlobal [0, "textures\cop\cop_uniform_all.paa"];
				};
				if (uniform player isEqualTo "U_B_CombatUniform_mcam_worn" && (FETCH_CONST(life_coplevel) ==4)) then {
					player setObjectTextureGlobal [0, "textures\cop\cop_uniform_all.paa"];
				};
				if (uniform player isEqualTo "U_B_CombatUniform_mcam_worn" && (FETCH_CONST(life_coplevel) ==3)) then {
					player setObjectTextureGlobal [0, "textures\cop\cop_uniform_all.paa"];
				};
				if (uniform player isEqualTo "U_B_CombatUniform_mcam_worn" && (FETCH_CONST(life_coplevel) ==2)) then {
					player setObjectTextureGlobal [0, "textures\cop\cop_uniform_all.paa"];
				};
				if (uniform player isEqualTo "U_B_CombatUniform_mcam_worn" && (FETCH_CONST(life_coplevel) ==1)) then {
					player setObjectTextureGlobal [0, "textures\cop\cop_uniform_1.paa"];
				};
				
				if (uniform player isEqualTo "U_B_CombatUniform_mcam" && (FETCH_CONST(life_seklevel) ==5)) then {
					player setObjectTextureGlobal [0, "textures\cop\sek_uniform_all.paa"];
				};
				if (uniform player isEqualTo "U_B_CombatUniform_mcam" && (FETCH_CONST(life_seklevel) ==4)) then {
					player setObjectTextureGlobal [0, "textures\cop\sek_uniform_all.paa"];
				};
				if (uniform player isEqualTo "U_B_CombatUniform_mcam" && (FETCH_CONST(life_seklevel) ==3)) then {
					player setObjectTextureGlobal [0, "textures\cop\sek_uniform_all.paa"];
				};
				if (uniform player isEqualTo "U_B_CombatUniform_mcam" && (FETCH_CONST(life_seklevel) ==2)) then {
					player setObjectTextureGlobal [0, "textures\cop\sek_uniform_all.paa"];
				};
				if (uniform player isEqualTo "U_B_CombatUniform_mcam" && (FETCH_CONST(life_seklevel) ==1)) then {
					player setObjectTextureGlobal [0, "textures\cop\sek_uniform_1.paa"];
				};
				
				if(backpack player == "B_Bergen_blk") then {
					(unitBackpack player) setObjectTextureGlobal [0, "textures\cop\cop_backpack.paa"];
				};
            };

        };

  
    case independent: {
        if (uniform player isEqualTo "U_C_Scientist") then {
            player setObjectTextureGlobal [0, "textures\medic\medic_uniform.paa"];
        };
		if(backpack player == "B_TacticalPack_blk") then {
			(unitBackpack player) setObjectTextureGlobal [0, "textures\medic\medic_backpack.paa"];
		};
    };
	
	case east: {
		if(uniform player == "U_C_Scientist") then {
			player setObjectTextureGlobal [0, "textures\adac\adac_uniform_1.paa"];
		};
		if(uniform player == "U_Rangemaster") then {
			player setObjectTextureGlobal [0, "textures\adac\adac_uniform_2.paa"];
		};
		if(backpack player == "B_Kitbag_cbr") then {
			(unitBackpack player) setObjectTextureGlobal [0, "textures\adac\adac_backpack.paa"];
		};
	};
};
