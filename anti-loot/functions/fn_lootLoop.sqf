private ["_allAi"];

AntiLoot_var_Mode = getNumber (missionConfigFile >> "Modules" >> "AntiLoot" >> "Settings" >> "AntiLoot_var_Mode");

while { true } do {
  _allAi = allUnits - ( playableUnits + switchableUnits );
  {
    if( isNil { _x getVariable "AntiLoot_var_HasLootEH" }) then {
      _x addEventHandler ["Killed", AntiLoot_fnc_RemoveLoot];
      _x setVariable ["AntiLoot_var_HasLootEH", true];
    };
  } forEach _allAi;
  sleep 1;
};
