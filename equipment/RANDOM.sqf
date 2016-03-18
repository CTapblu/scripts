#include "macros.hpp"
_unit = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
	case "CIA" : {
		_list = [
			["pzn_akmn","ACE_30Rnd_762x39_S_AK47"],
			["pzn_aks_74n","ACE_30Rnd_545x39_S_AK"],
			["ACE_M16A4_Iron","ACE_30Rnd_556x45_S_Stanag"],
			["ACE_M4","ACE_30Rnd_556x45_S_Stanag"],
			["ACE_M4A1_F","ACE_30Rnd_556x45_S_Stanag"]
		];
		_weapon = _list select round(random(count _list));
		_unit addMagazine (_weapon select 1);
		_unit addMagazine (_weapon select 1);
		addMagazines("PipeBomb",1);
		_unit addWeapon (_weapon select 0);
		addWeapons ["M9","ACE_P159_RD99"];
		addMagazines("15Rnd_9x19_M9",2);
		addItems ["R","M","G","M","N"];
	};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};