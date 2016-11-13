disableSerialization;

createDialog "life_welcome_screen";
(findDisplay 9875) displaySetEventHandler ["keyDown","_this call life_fnc_displayHandler"];
waitUntil {!isNull (findDisplay 9875)};
_display = findDisplay 9875;

_setText = _display displayCtrl 1100;
// Laut der Performance Guideline von BI ist format schneller als 10.000 _x = _x + "bla";
_message = format["<t align='left'>%1%2<br/>%3<br/>%4%5<br/>%6%7%8<br/>%9%10%11<br/>%12%13%14%15<br/>%16%17<br/>%18%19%20%21%22</t>",
	"<t color='#b2b0b0'>Willkommen auf unseren Team Heidelberg Tanoa Life Server.</t><br/>",
	"<t color='#b2b0b0'>Klicke ZUR INSEL um ins Spiel zu gelangen...</t><br/>",
	"<t color='#3e96c9'>UNSERE ADMINS:</t><br/>",
	"<t color='#3e96c9'>GAMEMASTER</t><br/>",
	"<t color='#b2b0b0'>Shooter</t><br/>",
	"<t color='#3e96c9'>PROGRAMMIERER</t><br/>",
	"<t color='#b2b0b0'>Steve</t><br/>",
	"<t color='#b2b0b0'>Shooter</t><br/>",
	"<t color='#3e96c9'>GRAFIKER</t><br/>",
	"<t color='#b2b0b0'>Noize</t><br/>",
	"<t color='#b2b0b0'>Shooter</t><br/>",
	"<t color='#3e96c9'>GUI-DESIGNER</t><br/>",
	"<t color='#b2b0b0'>Steve</t><br/>",
	"<t color='#b2b0b0'>Noize</t><br/>",
	"<t color='#b2b0b0'>Shooter</t><br/>",
	"<t color='#3e96c9'>MOVING/PHISIX</t><br/>",
	"<t color='#b2b0b0'>Shooter</t><br/>",
	"<t color='#3e96c9'>SUPPORT</t><br/>",
	"<t color='#b2b0b0'>Noize</t><br/>",
	"<t color='#b2b0b0'>Traginix</t><br/>",
	"<t color='#b2b0b0'>Mr.Languste</t><br/>",
	"<t color='#b2b0b0'>Shooter</t><br/>"
];
		
_setText ctrlSetStructuredText (parseText _message);