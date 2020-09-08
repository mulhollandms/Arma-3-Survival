/**
*  bulwark/purchase
*
*  Actor for the "Purchase building" dialog button
*
*  Domain: Client
**/

_index = lbCurSel 1500;
shopVehic = objNull;

_shopPrice = (BLWK_buildableObjects_array select _index) select 0;
_shopName  = (BLWK_buildableObjects_array select _index) select 1;
_shopClass = (BLWK_buildableObjects_array select _index) select 2;
_shopDir   = (BLWK_buildableObjects_array select _index) select 3;
_VecRadius = (BLWK_buildableObjects_array select _index) select 4;
_vechAi    = (BLWK_buildableObjects_array select _index) select 5;

// Script was passed an invalid number
if(_shopClass == "") exitWith {};

if(missionNamespace getVariable ["BLWK_playerKillPoints",0] >= _shopPrice && !(player getVariable "buildItemHeld")) then {
    [player, _shopPrice] remoteExec ["killPoints_fnc_spend", 2];
    if (_vechAi) then {
        _vechWithAi = [[0,0,300], 0, _shopClass, west] call BIS_fnc_spawnVehicle;
        shopVehic = _vechWithAi select 0;
    }else{
        shopVehic = _shopClass createVehicle [0,0,0];
    };
    shopVehic setVariable ["shopPrice", _shopPrice, true];
    shopVehic setVariable ["Radius", _VecRadius, true];
    objPurchase = true;
} else {
    if(missionNamespace getVariable ["BLWK_playerKillPoints",0] < _shopPrice) then {
        [format ["<t size='0.6' color='#ff3300'>Not enough points for %1!</t>", _shopName], -0, -0.02, 2, 0.1] call BIS_fnc_dynamicText;
        objPurchase = false;
    }else{
        [format ["<t size='0.6' color='#ff3300'>You're already carrying an object!</t>", _shopName], -0, -0.02, 2, 0.1] call BIS_fnc_dynamicText;
        objPurchase = false;
    };
};

sleep 0.1;





if (objPurchase) then {
    closeDialog 0;

    // If it's a container, make sure it's empty
    clearItemCargoGlobal shopVehic;
    clearWeaponCargoGlobal shopVehic;
    clearMagazineCargoGlobal shopVehic;
    clearBackpackCargoGlobal shopVehic;

	[shopVehic, ShopCaller, [0,_VecRadius + 1.5,0.02], _shopDir] call BLWK_fnc_pickup;
};