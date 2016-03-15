#include "macros.hpp"
_unit = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
	case "CIA" : {
		removeAllItems _unit;
		_unit addMagazine "PipeBomb";
		_unit addWeapon "ItemWatch";
		_unit addWeapon "ItemRadio";
		_unit addWeapon "ACE_Map";
		_unit addWeapon "ItemGPS";
		_unit addWeapon "ItemCompass";
		_unit addWeapon "NVGoggles";
		_list = [
			["pzn_akmn","ACE_30Rnd_762x39_S_AK47"],
			["pzn_aks_74n","ACE_30Rnd_545x39_S_AK"],
			["ACE_M16A4_Iron","ACE_30Rnd_556x45_S_Stanag"],
			["ACE_M4","ACE_30Rnd_556x45_S_Stanag"],
			["Sa58V_EP1","30Rnd_762x39_SA58"],
			["ACE_M4A1_F","ACE_30Rnd_556x45_S_Stanag"]
		];
		_weapon = _list select round(random(count _list));
		_unit addMagazine (_weapon select 1);
		_unit addMagazine (_weapon select 1);
		_unit addMagazine ("15Rnd_9x19_M9",4);
		_unit addWeapon (_weapon select 0);
		_unit addWeapon "M9";
		_unit addWeapon "ACE_P159_RD99";
		_unit addMagazine "ACE_Bandage";
		_unit addMagazine "ACE_Bandage";
	};
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};