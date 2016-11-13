/*################################
#	(c) 2016 Global-Gamer		 #
#								 #
#	Author: Mahony		   		 #
################################*/
private["_display","_fragen","_btn1","_btn2","_btn3","_btn4","_fragen","_fragen1","_fragen2","_fragen3","_fragen4","_fragen5","_fragen6","_fnc_punkte"];
		closeDialog 0;
		if (!dialog) then {createDialog "life_theoFAH";};
		disableSerialization;
		_display = findDisplay 10001;
		_fragen = _display displayCtrl 1001;
		_btn1 = _display displayCtrl 2400;
		_btn2 = _display displayCtrl 2401;
		_btn3 = _display displayCtrl 2402;
		_btn4 = _display displayCtrl 2403;
		_fragen1 = 
		"<t size='1' color='#FFFFFF' shadow='1' shadowColor='#000000' align='center'> Wie schnell darf man am </t> 
		<t size='1' color='#FF0000' shadow='1' shadowColor='#000000' align='center'> Kavala Markt </t> 
		<t size='1' color='#FFFFFF' shadow='1' shadowColor='#000000' align='center'> fahren ? </t> ";
		_fragen2 = 
		"<t size='1' color='#FFFFFF' shadow='1' shadowColor='#000000' align='center'> Wie schnell darf man </t> 
		<t size='1' color='#FF0000' shadow='1' shadowColor='#000000' align='center'> Innerorts </t> 
		<t size='1' color='#FFFFFF' shadow='1' shadowColor='#000000' align='center'> fahren ? </t> ";
		_fragen3 = 
		"<t size='1' color='#FFFFFF' shadow='1' shadowColor='#000000' align='center'> Wie schnell darf man </t> 
		<t size='1' color='#FF0000' shadow='1' shadowColor='#000000' align='center'> Außerorts </t> 
		<t size='1' color='#FFFFFF' shadow='1' shadowColor='#000000' align='center'> fahren ? </t> ";
		_fragen4 = 
		"<t size='1' color='#FFFFFF' shadow='1' shadowColor='#000000' align='center'> Auf welcher Straßenseite musst du fahren ? </t>";
		_fragen5 = 
		"<t size='1' color='#FFFFFF' shadow='1' shadowColor='#000000' align='center'> Wie verhältst du dich wenn </t> 
		<t size='1' color='#FF0000' shadow='1' shadowColor='#000000' align='center'> die Polizei </t> 
		<t size='1' color='#FFFFFF' shadow='1' shadowColor='#000000' align='center'> hinter dir fährt (mit Blaulicht) ? </t> ";
		_fragen6 = 
		"<t size='1' color='#FFFFFF' shadow='1' shadowColor='#000000' align='center'> Wie verhältst du dich wenn </t> 
		<t size='1' color='#FF0000' shadow='1' shadowColor='#000000' align='center'> der Krankenwagen </t> 
		<t size='1' color='#FFFFFF' shadow='1' shadowColor='#000000' align='center'> hinter dir fährt (mit Blaulicht) ? </t> ";
		
		
		
		
		
		
		_fnc_punkte =
		{
			if(theoPunkte == 0) then {
				_fragen ctrlSetStructuredText parseText  (_fragen1);
				_btn1 ctrlsettext "30";
				_btn1 buttonSetAction "theoPunkte = theoPunkte + 1; hint ""Richtig !""; closeDialog 0; [] spawn life_fnc_theoScript";
				_btn2 ctrlsettext "50";
				_btn2 buttonSetAction "closeDialog 0; hint ""Du hast nicht bestanden !""; theoPunkte = 0; theoInProg = false;";
				_btn3 ctrlsettext "15";
				_btn3 buttonSetAction "closeDialog 0; hint ""Du hast nicht bestanden !""; theoPunkte = 0; theoInProg = false;";
				_btn4 ctrlsettext "60";
				_btn4 buttonSetAction "closeDialog 0; hint ""Du hast nicht bestanden !""; theoPunkte = 0; theoInProg = false;";
			};
			if(theoPunkte == 1) then {
				_fragen ctrlSetStructuredText parseText  (_fragen2);
				_btn1 ctrlsettext "70";
				_btn1 buttonSetAction "closeDialog 0; hint ""Du hast nicht bestanden !""; theoPunkte = 0; theoInProg = false;";
				_btn2 ctrlsettext "45";
				_btn2 buttonSetAction "closeDialog 0; hint ""Du hast nicht bestanden !""; theoPunkte = 0; theoInProg = false;";
				_btn3 ctrlsettext "50";
				_btn3 buttonSetAction "theoPunkte = theoPunkte + 1; hint ""Richtig !""; closeDialog 0; [] spawn life_fnc_theoScript";
				_btn4 ctrlsettext "60";
				_btn4 buttonSetAction "closeDialog 0; hint ""Du hast nicht bestanden !""; theoPunkte = 0; theoInProg = false;";
			};
			if(theoPunkte == 2) then {
				_fragen ctrlSetStructuredText parseText  (_fragen3);
				_btn1 ctrlsettext "100";
				_btn1 buttonSetAction "closeDialog 0; hint ""Du hast nicht bestanden !""; theoPunkte = 0; theoInProg = false;";
				_btn2 ctrlsettext "120";
				_btn2 buttonSetAction "theoPunkte = theoPunkte + 1; hint ""Richtig !""; closeDialog 0; [] spawn life_fnc_theoScript";
				_btn3 ctrlsettext "135";
				_btn3 buttonSetAction "closeDialog 0; hint ""Du hast nicht bestanden !""; theoPunkte = 0; theoInProg = false;";
				_btn4 ctrlsettext "200";
				_btn4 buttonSetAction "closeDialog 0; hint ""Du hast nicht bestanden !""; theoPunkte = 0; theoInProg = false;";
			};
			if(theoPunkte == 3) then {
				_fragen ctrlSetStructuredText parseText  (_fragen4);
				_btn1 ctrlsettext "rechts";
				_btn1 buttonSetAction "theoPunkte = theoPunkte + 1; hint ""Richtig !""; closeDialog 0; [] spawn life_fnc_theoScript";
				_btn2 ctrlshow false;
				_btn3 ctrlshow false;
				_btn4 ctrlsettext "links";
				_btn4 buttonSetAction "closeDialog 0; hint ""Du hast nicht bestanden !""; theoPunkte = 0; theoInProg = false;";
			};
			if(theoPunkte == 4) then {
				_btn2 ctrlshow true;
				_btn3 ctrlshow true;
				_fragen ctrlSetStructuredText parseText  (_fragen5);
				_btn1 ctrlsettext "Schießen";
				_btn1 buttonSetAction "closeDialog 0; hint ""Du hast nicht bestanden !""; theoPunkte = 0; theoInProg = false;";
				_btn2 ctrlsettext "Stehen bleiben";
				_btn2 buttonSetAction "closeDialog 0; hint ""Du hast nicht bestanden !""; theoPunkte = 0; theoInProg = false;";
				_btn3 ctrlsettext "Rechts ran";
				_btn3 buttonSetAction "theoPunkte = theoPunkte + 1; hint ""Richtig !""; closeDialog 0; [] spawn life_fnc_theoScript";
				_btn4 ctrlsettext "Behindern";
				_btn4 buttonSetAction "closeDialog 0; hint ""Du hast nicht bestanden !""; theoPunkte = 0; theoInProg = false;";
			};
			if(theoPunkte == 5) then {
				_fragen ctrlSetStructuredText parseText  (_fragen6);
				_btn1 ctrlsettext "Schießen";
				_btn1 buttonSetAction "closeDialog 0; hint ""Du hast nicht bestanden !""; theoPunkte = 0; theoInProg = false; endMission ""Regeln"";";
				_btn2 ctrlsettext "Stehen bleiben";
				_btn2 buttonSetAction "closeDialog 0; hint ""Du hast nicht bestanden !""; theoPunkte = 0; theoInProg = false;";
				_btn3 ctrlsettext "Rechts ran";
				_btn3 buttonSetAction "theoPunkte = theoPunkte + 1; hint ""Richtig !""; closeDialog 0; [] spawn life_fnc_theoScript";
				_btn4 ctrlsettext "Behindern";
				_btn4 buttonSetAction "closeDialog 0; hint ""Du hast nicht bestanden !""; theoPunkte = 0; theoInProg = false;";
			};
			if(theoPunkte == 6) then {
				_fragen ctrlsettext "Du hast bestanden und wirst nun zum praktischenteil geleitet ! ";
				[] spawn life_fnc_PKW_Pruefung;
				_btn1 ctrlshow false;
				_btn2 ctrlshow false;
				_btn3 ctrlshow false;
				_btn4 ctrlShow false;
				theoPunkte = theoPunkte + 1;
			};
		};
[] call _fnc_punkte;