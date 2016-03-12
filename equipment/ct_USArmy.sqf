/*
	Структура US Army company:
		1. Company HQ 			- 2 страйкреа (М2), 2 хаммера, 2 грузовика (всего 8 человек)
		2. MGS Platoon 			- 3 страйкера (MGS) (всего 9 человек)
		3. Mortar section		- 2 страйкера (М2) (всего 10 человек)
		4. Medical evac team	- страйкер (MED) (всего 3 человека)
		5. Sniper team			- 1 хаммер (транспортный) (всего 3 человека)
		6. Fire support team	- 1 страйкер (модификация по ситуации) (всего 3 человека)
		7. Platoon HQ			- 1 страйкер (М2) (всего 6 человек)
		8. Rifle squad			- 1 страйкер (М2) (всего 11 человек)
		9. Weapons squad		- 2 хаммера (транспортных) (всего 7 человек)
		
		Источник: http://www.globalsecurity.org/military/library/policy/army/fm/3-21-11/c01.htm
*/

#include "macros.hpp"
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {
	
/*
	US Army company
	- в состав "US Army company" входит три "Rifle platoon"
*/
	
// Company HQ
	
case "CO_CDR": {		// Командир роты
};
case "RATELO": {		// x2 Радиотелефонист
};
case "XO": {			// Старший помощник командира
};

// Crew

case "VC": {			// Командир экипажа
};
case "DVR": {			// Механик-водитель
};

// MGS Platoon

case "PL": {			// Командир взвода 
};
case "PSG": {			// Взводный сержант
};
case "GNR": {			// х3 Механик-наводчик
};

	// х3 "DVR"
	// х1 "VC"

// Mortar section

case "SEC_LDR_MS": {	// Командир минометной секции
};
case "SQD_LDR_MS": {	// Командир минометного расчета
};
case "AG_MS": {			// x4 Помощник наводчика
};

	// x2 "DVR"
	// x2 "GNR"

// Medical evac team

case "SR_TRAUMA_SPC": {	// Командир санитарного отделения 
};
case "TRAUMA_SPC": {	// Санинструктор
};

	// x1 "DVR"

// Sniper team

case "SNIPER_XM107": {	// Снайпер М107
};
case "SNIPER_M24": {	// Снайпер М24
};
case "SNUPER_M203": {	// Снайпер М203
};

// Fire support team

case "FSO": {			// Командир экипажа (специалист)
};
case "FS_NCO": {		// Механик-водитель (специалист)
};
case "FS_SPC": {		// Мезаник-наводчик (специалист)
};

/*
	Rifle platoon
*/
	
	// Platoon HQ
	
	case "PLT_LDR": {	// Командир взвода
	};
	case "CO_MED": {	// Взводный санинструктор
	};
	case "FO": {		// Офицер
	};
	
		// x1 "PSG"
		// x1 "RATELO"
		// x1 "DVR"
	
	// Rifle squad
	
	case "SQD_LDR": {	// Командир отделения
	};
	case "TM_LDR": {	// x2 Команлир огневой группы
	};
	case "GREN": {		// x2 Гранатометчик
	};
	case "AR": {		// x2 Пулеметчик
	};
	case "RMAT": {		// ПТ специалист
	};
	case "DM": {		// Меткий стрелок
	};
	
		// x2 "DVR"
		// x2 "VC"
	
	// Weapons squad
	
	case "SL": {		// Командир отделения
	};
	case "MG": {		// x2 Пулеметчик М240
	};
	case "AG": {		// x2 Помощник пулеметчика
	};
	case "AB": {		// x2 ПОдносчик боеприпасов
	};
		
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};
