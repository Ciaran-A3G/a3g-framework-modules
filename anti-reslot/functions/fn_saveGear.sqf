private ["_unit", "_uid"];

_unit = _this select 0;
_uid = _this select 1;


// General stuff
[_uid, "UID", _uid] call AntiReslot_fnc_SaveLoadoutSegment;
[getPosASL _unit, "posASL", _uid] call AntiReslot_fnc_SaveLoadoutSegment;
[_unit, "body", _uid] call AntiReslot_fnc_SaveLoadoutSegment;
[vehicle _unit != _unit, "inVehicle", _uid] call AntiReslot_fnc_SaveLoadoutSegment;
[vehicle _unit, "vehicle", _uid] call AntiReslot_fnc_SaveLoadoutSegment;


// Containers
[uniform _unit, "uniform", _uid] call AntiReslot_fnc_SaveLoadoutSegment;
[vest _unit, "vest", _uid] call AntiReslot_fnc_SaveLoadoutSegment;
[backpack _unit, "backpack", _uid] call AntiReslot_fnc_SaveLoadoutSegment;


// Weapons + loaded magazines
[weapons _unit, "weapons", _uid] call AntiReslot_fnc_SaveLoadoutSegment;
[primaryWeaponMagazine _unit + secondaryWeaponMagazine _unit + handgunMagazine _unit, "weaponMagazines", _uid] call AntiReslot_fnc_SaveLoadoutSegment;


// Items & Magazines
[uniformItems _unit + uniformMagazines _unit, "uniformItems", _uid] call AntiReslot_fnc_SaveLoadoutSegment;
[vestItems _unit + vestMagazines _unit, "vestItems", _uid] call AntiReslot_fnc_SaveLoadoutSegment;
[backpackItems _unit + backpackMagazines _unit, "backpackItems", _uid] call AntiReslot_fnc_SaveLoadoutSegment;


// Linked Items
[assignedItems _unit + [headgear _unit] + [goggles _unit], "linkedItems", _uid] call AntiReslot_fnc_SaveLoadoutSegment;