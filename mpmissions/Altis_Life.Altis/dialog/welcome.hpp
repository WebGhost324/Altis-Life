class life_welcome_screen
{
	idd = 9875; // 1234567899

	name= "life_welcome_screen";
    movingEnable = 0;
    enableSimulation = 0;
	onLoad = "";
 
	class controlsBackground
	{
		class Willkommensbild: Life_RscPicture
		{
			idc = 1200;
			text = "images\bg.jpg";
			x = 0.0 * safezoneW + safezoneX;
			y = 0.0 * safezoneH + safezoneY;
			w = 1.0 * safezoneW;
			h = 1.0 * safezoneH;
		};
	};
	 
	class controls
	{ 
		class ZurInsel: Life_RscButtonMenu
		{
			idc = 2400;
			text = "Zur Insel"; //--- ToDo: Localize;
			x = 0.0202016 * safezoneW + safezoneX;
			y = 0.797127 * safezoneH + safezoneY;
			w = 0.0464063 * safezoneW;
			h = 0.022 * safezoneH; 
			onButtonClick = "closeDialog 0;";
			// onButtonClick = "closeDialog 0;";
			colorBackground[] = {-1,-1,-1,-1};
			
			size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
			
			class TextPos
			{
				left = "0.25 * (((safezoneW / safezoneH) min 1.2) / 40)";
				top = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) - (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
				right = 0.005;
				bottom = 0.0;
			};
			class Attributes
			{
				font = "PuristaLight";
				color = "#E5E5E5";
				align = "left";
				shadow = "false";
			};
		};
		class ZumForum: Life_RscButtonMenu
		{
			idc = 2401;
			text = "Forum"; //--- ToDo: Localize;
			x = 0.102774 * safezoneW + safezoneX;
			y = 0.797127 * safezoneH + safezoneY;
			w = 0.0464063 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {-1,-1,-1,-1};
			
			size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
			
			class TextPos
			{
				left = "0.25 * (((safezoneW / safezoneH) min 1.2) / 40)";
				top = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) - (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
				right = 0.005;
				bottom = 0.0;
			};
			class Attributes
			{
				font = "PuristaLight";
				color = "#E5E5E5";
				align = "left";
				shadow = "false";
			};
		};
		class ZurWebsite: Life_RscButtonMenu
		{
			idc = 2402;
			text = "Website"; //--- ToDo: Localize;
			x = 0.18532 * safezoneW + safezoneX;
			y = 0.797127 * safezoneH + safezoneY;
			w = 0.0464063 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {-1,-1,-1,-1};
			// onButtonClick = "https://github.com/AsYetUntitled/Framework"
			
			size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
			
			class TextPos
			{
				left = "0.25 * (((safezoneW / safezoneH) min 1.2) / 40)";
				top = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) - (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
				right = 0.005;
				bottom = 0.0;
			};
			class Attributes
			{
				font = "PuristaLight";
				color = "#E5E5E5";
				align = "left";
				shadow = "false";
			};
		};
		class ZurueckZurLobby: Life_RscButtonMenu
		{
			idc = 2403;
			text = "Zurück"; //--- ToDo: Localize;
			x = 0.26784 * safezoneW + safezoneX;
			y = 0.797127 * safezoneH + safezoneY;
			w = 0.0464063 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick = "closeDialog 0;";
			// onButtonClick = "closeDialog 0; [""lobby"",false,true] call BIS_fnc_endMission;";
			colorBackground[] = {-1,-1,-1,-1};
			
			size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
			
			class TextPos
			{
				left = "0.25 * (((safezoneW / safezoneH) min 1.2) / 40)";
				top = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) - (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
				right = 0.005;
				bottom = 0.0;
			};
			class Attributes
			{
				font = "PuristaLight";
				color = "#E5E5E5";
				align = "left";
				shadow = "false";
			};
		};
		class Infos: Life_RscStructuredText
		{
			idc = 1100;
			text = "";
			x = 0.0204687 * safezoneW + safezoneX;
			y = 0.038 * safezoneH + safezoneY;
			w = 0.293906 * safezoneW;
			h = 0.715 * safezoneH;
		};
	};
};