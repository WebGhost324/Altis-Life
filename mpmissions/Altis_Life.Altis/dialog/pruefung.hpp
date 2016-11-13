class life_pruefungen {
    idd = 1000010;
    name= "life_pruefungen";
    movingEnable = 0;
    enableSimulation = 0;

class controlsBackground {
        class MainBackground: Life_RscText
        {
            idc = 1000;
            x = 0.0125;
            y = 0.02;
            w = 0.975;
            h = 0.96;
            colorBackground[] = {0,0,0,0.5};
        };
        class Title: Life_RscTitle
        {
            idc = 1001;
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
            text = "Fahrschule";
            x = 0.0125;
            y = -0.024;
            w = 0.975;
            h = 0.04;
        };
  };
class controls {
        class btncar: Life_RscButtonMenu
        {
            idc = 2400;
            text = "Car";
            x = 0.0875;
            y = 0.12;
            w = 0.225;
            h = 0.08;
            onButtonClick = "[""Car""] spawn life_fnc_abfrage";
            colorBackground[] = {0,0,0,1};
        };
        class btnlkw: Life_RscButtonMenu
        {
            idc = 2401;
            text = "Lkw";
            x = 0.0875;
            y = 0.32;
            w = 0.225;
            h = 0.08;
            onButtonClick = "[""Lkw""] spawn life_fnc_abfrage";
            colorBackground[] = {0,0,0,1};
        };
        class btnheli: Life_RscButtonMenu
        {
            idc = 2402;
            text = "Heli";
            x = 0.0875;
            y = 0.52;
            w = 0.225;
            h = 0.08;
            onButtonClick = "[""Heli""] spawn life_fnc_abfrage";
            colorBackground[] = {0,0,0,1};
        };
        class Info: Life_RscStructuredText
        {
            idc = 1100;
            x = 0.475;
            y = 0.08;
            w = 0.475;
            h = 0.8;
        };
		// class ButtonClose: Life_RscButtonMenu {
            // idc = -1;
            // shortcuts[] = {0x00050000 + 2};
            // text = "$STR_Global_Close";
            // onButtonClick = "closeDialog 0;";
            // x = 0.48;
            // y = 0.68 - (1 / 25);
            // w = (6.25 / 40);
            // h = (1 / 25);
        // };
    };
};