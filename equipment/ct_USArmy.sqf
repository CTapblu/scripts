/*
	Структура US Army company:
		1. Company HQ 			- 2 страйкреа (М2), 2 хаммера, 2 грузовика (всего 7 человек);
		2. MGS Platoon 			- 3 страйкера MGS (всего 9 человек);
		3. Mortar section		- 2 страйкера (М2) (всего 10 человек);
		4. Medical evac team	-
		5. Sniper team			-
		6. Fire support team	-
		7. Platoon HQ			-
		8. Rifle squad			-
		9. Weapons squad		-
*/

#include "macros.hpp"
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {
	
	/*
		US Army company
	*/
	
	// Company HQ
	
	// MGS Platoon

	// Mortar section
	
	// Medical evac team
	
	// Sniper team
	
	// Fire support team
	
	/*
		Rifle platoon
	*/
	
		// Platoon HQ
	
		// Rifle squad
	
		// Weapons squad
		
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};
