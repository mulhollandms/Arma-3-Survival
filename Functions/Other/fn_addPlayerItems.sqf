params [
	["_player",player,[objNull]]
];

if(BLWK_playersStartWith_pistol) then {
	_player addMagazine "16Rnd_9x21_Mag";
	_player addMagazine "16Rnd_9x21_Mag";
	_player addWeapon "hgun_P07_F";
};
if (BLWK_playersStartWith_map) then {
	_player linkItem "ItemMap";
};
if (BLWK_playersStartWith_NVGs) then {
	_player linkItem "Integrated_NVG_F";
};
if (BLWK_playersStartWith_compass) then {
	_player linkItem "itemCompass";
};
if (BLWK_playersStartWith_radio) then {
	_player linkItem "itemCompass";
};
if (BLWK_playersStartWith_radio) then {
	if (isClass (configfile >> "CfgVehicles" >> "tfar_anprc152")) then {
		_player linkItem "tf_anprc152";
	} else {
		_player linkItem "itemRadio";
	};
};
if (BLWK_playersStartWith_mineDetector) then {
	_player addItem "mineDetector";
};