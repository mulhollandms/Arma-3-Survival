if (!isServer) exitWith {};

// create bulwark
bulwarkBox = createVehicle ["B_supplyCrate_F", [0,0,0], [], 0, "NONE"];
publicVariable "bulwarkBox";

clearItemCargoGlobal bulwarkBox;
clearWeaponCargoGlobal bulwarkBox;
clearMagazineCargoGlobal bulwarkBox;
clearBackpackCargoGlobal bulwarkBox;
bulwarkBox allowDamage false;

// create laptop
private _bulwarkLaptop = createVehicle ["Land_Laptop_device_F", [0,0,0], [], 0, "NONE"];
_bulwarkLaptop allowDamage false;
_bulwarkLaptop setObjectTextureGlobal [0,"preview.paa"];
//[_bulwarkLaptop,[0,"preview.paa"]] remoteExec ["setObjectTexture",BLWK_allPlayersTargetID,true];
_bulwarkLaptop attachTo [bulwarkBox, [0,0.1,0.6]];
_bulwarkLaptop setDir 180;



// push player relavent actions and the loop to show the bulwark icon
[bulWarkBox] remoteExecCall ["BLWK_fnc_addBulwarkActions",BLWK_allPlayersTargetID,true];
null = remoteExec ["BLWK_fnc_drawBulwarkIcon",BLWK_allPlayersTargetID,true];

// add medkits
if (BLWK_numMedKits > 0) then {
	bulwarkBox addItemCargoGlobal ["Medikit", BLWK_numMedKits];
};

// tell players about how tomake medkits
bulwarkBox addEventHandler ["ContainerOpened",{
	if !(BLWK_useACEMedical) then {
		hint "You can place 15 First Aid Kits in the Bulwark to make automatically make a Medkit";
		removeEventHandler ["ContainerOpened",_thisEventHanlder];
	};
}];

// start and end medkit check loop on server when openned and closed
bulwarkBox addEventHandler ["ContainerOpened",{
	if !(BLWK_useACEMedical) then {
		
	};
}];
bulwarkBox addEventHandler ["ContainerClosed",{
	if !(BLWK_useACEMedical) then {
		
	};
}];

private _marker1 = createMarker ["Mission Area", BLWK_playAreaCenter];
_marker1 setMarkerShape "ELLIPSE";
_marker1 setMarkerSize [BLWK_playAreaRadius, BLWK_playAreaRadius];
_marker1 setMarkerColor "ColorWhite";