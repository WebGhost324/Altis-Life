private["_display","_title","_btncar","_btnlkw","_btnheli"];
if (!dialog) then {createDialog "life_pruefungen";};
disableSerialization;
		_display = findDisplay 1000010;
		_title = _display displayCtrl 1001;
		_btncar = _display displayCtrl 2400;
		_btnlkw = _display displayCtrl 2401;
		_btnheli = _display displayCtrl 2402;
		// _btn4 = _display displayCtrl 2403;