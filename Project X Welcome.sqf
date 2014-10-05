/*
	File: welcome.sqf
	Author: FDHk
	Server: Projet X Altis Life
*/

_onScreenTime = 7;

sleep 30; 
playsound "introSong";
 
_role1 = "Hallo,";
_role1names = ["Willkommen auf", "Project X Altis Life"];
_role2 = "Teamspeak3";
_role2names = ["212.224.121.2:3251"];
_role3 = "Leitung";
_role3names = ["#########"];
_role4 = "Du magst den Server?,";
_role4names = ["Dann spende für ihn"];
_role5 = "Vielen Dank an,";
_role5names = ["alle die den Server unterstützen!"];
_role6 = "Zum Schluss,";
_role6names = ["Die Serverleitung wünscht Dir viel Spaß auf dem Server. :)"];
 
{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.40' color='#f2cb0b' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [

[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names]
];
