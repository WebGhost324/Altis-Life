class life_theoFAH {
		idd = 10001;
		name= "life_theoFAH";
		movingEnable = 0;
		enableSimulation = 0;
		onUnload = "if(theoPunkte == 7) exitWith {}; [] spawn life_fnc_theoScript;";
	class controlsBackground {
		class MainBackground: life_RscText
		{
			idc = 1000;
			x = 0.0875;
			y = 0.18;
			w = 0.75;
			h = 0.66;
			colorBackground[] = {0,0,0,0.6};
		};
	};
	class controls {
		class text: life_RscStructuredText
		{
			idc = 1001;
			x = 0.1;
			y = 0.2;
			w = 0.725;
			h = 0.3;
			colorBackground[] = {0,0,0,1};
		};
		class btn1: life_RscButtonMenu
		{
			idc = 2400;
			x = 0.125;
			y = 0.56;
			w = 0.2;
			h = 0.08;
			colorBackground[] = {0,0,0,1};
		};
		class btn2: life_RscButtonMenu
		{
			idc = 2401;
			x = 0.125;
			y = 0.68;
			w = 0.2;
			h = 0.08;
			colorBackground[] = {0,0,0,1};
		};
		class btn3: life_RscButtonMenu
		{
			idc = 2402;
			x = 0.6;
			y = 0.56;
			w = 0.2;
			h = 0.08;
			colorBackground[] = {0,0,0,1};
		};
		class btn4: life_RscButtonMenu
		{
			idc = 2403;
			x = 0.6;
			y = 0.684;
			w = 0.2;
			h = 0.08;
			colorBackground[] = {0,0,0,1};
		};
	};
};