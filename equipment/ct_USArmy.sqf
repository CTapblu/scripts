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
	addMagazines("ACE_30Rnd_556x45_S_Stanag",4);
	addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
	addMagazines("SmokeShell",2);
	addMagazines("ACE_Medkit",1);
	addMagazines("15Rnd_9x19_M9",2);
	addWeapons ["ACE_M4A1_ACOG","M9"];
	addItems ["R","B","N","D","M","MT","G"];
};
case "RATELO": {		// x2 Радиотелефонист
	addMagazines("ACE_30Rnd_556x45_S_Stanag",4);
	addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
	addMagazines("SmokeShell",2);
	addMagazines("ACE_Medkit",1);
	addMagazines("15Rnd_9x19_M9",2);
	addWeapons ["ACE_M4A1_Aim_F","ACE_PRC119_ACU","M9"];
	addItems ["R","B","N","M","MT","G"];
};
case "XO": {			// Старший помощник командира
	addMagazines("ACE_30Rnd_556x45_S_Stanag",4);
	addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
	addMagazines("SmokeShell",2);
	addMagazines("ACE_Medkit",1);
	addMagazines("15Rnd_9x19_M9",2);
	addWeapons ["ACE_M4A1_ACOG","M9"];
	addItems ["R","B","N","D","M","MT","G"];
};

	// x2 "VC"
	// x2 "DVR"

// Crew

case "VC": {			// Командир экипажа
	addMagazines("ACE_30Rnd_556x45_S_Stanag",3);
	addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
	addMagazines("SmokeShell",2);
	addMagazines("ACE_Medkit",1);
	addMagazines("15Rnd_9x19_M9",2);
	addWeapons ["ACE_M4A1_F","M9"];
	addItems ["R","B","N","M","G"];
};
case "DVR": {			// Механик-водитель
	addMagazines("ACE_30Rnd_556x45_S_Stanag",3);
	addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
	addMagazines("SmokeShell",2);
	addMagazines("ACE_Medkit",1);
	addMagazines("15Rnd_9x19_M9",2);
	addWeapons ["ACE_M4A1_F","M9"];
	addItems ["R","N","M"];
};

// MGS Platoon

case "PL": {			// Командир взвода
	addMagazines("ACE_30Rnd_556x45_S_Stanag",3);
	addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
	addMagazines("SmokeShell",2);
	addMagazines("ACE_Medkit",1);
	addMagazines("15Rnd_9x19_M9",2);
	addWeapons ["ACE_M4A1_F","M9"];
	addItems ["R","B","N","D","M","MT","G"];
};
case "PSG": {			// Взводный сержант
	addMagazines("ACE_30Rnd_556x45_S_Stanag",3);
	addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
	addMagazines("SmokeShell",2);
	addMagazines("ACE_Medkit",1);
	addMagazines("15Rnd_9x19_M9",2);
	addWeapons ["ACE_M4A1_F","M9"];
	addItems ["R","B","N","D","M","MT","G"];
};
case "GNR": {			// х3 Механик-наводчик
	addMagazines("ACE_30Rnd_556x45_S_Stanag",3);
	addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
	addMagazines("SmokeShell",2);
	addMagazines("ACE_Medkit",1);
	addMagazines("15Rnd_9x19_M9",2);
	addWeapons ["ACE_M4A1_F","M9"];
	addItems ["R","N","M"];
};

	// х3 "DVR"
	// х1 "VC"

// Mortar section

case "SEC_LDR_MS": {	// Командир минометной секции
	addMagazines("ACE_30Rnd_556x45_S_Stanag",3);
	addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
	addMagazines("SmokeShell",2);
	addMagazines("ACE_Medkit",1);
	addMagazines("15Rnd_9x19_M9",2);
	addWeapons ["ACE_M4A1_Aim_F","ACE_PRC119_ACU","M9","ace_arty_rangeTable_tampella"];
	addItems ["R","B","N","D","M","MT","G"];
};
case "SQD_LDR_MS": {	// Командир минометного расчета
	addMagazines("ACE_30Rnd_556x45_S_Stanag",3);
	addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
	addMagazines("SmokeShell",2);
	addMagazines("ACE_Medkit",1);
	addMagazines("15Rnd_9x19_M9",2);
	addWeapons ["ACE_M4A1_Aim_F","ACE_PRC119_ACU","M9","ace_arty_rangeTable_tampella"];
	addItems ["R","B","N","D","M","MT","G"];
};
case "AG_MS": {			// x4 Помощник наводчика
	addMagazines("ACE_30Rnd_556x45_S_Stanag",3);
	addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
	addMagazines("SmokeShell",2);
	addMagazines("ACE_Medkit",1);
	addMagazines("15Rnd_9x19_M9",2);
	addWeapons ["ACE_M4A1_Aim_F","ACE_Rucksack_MOLLE_ACU","M9"];
	addItems ["R","N","M","G"];
};

	// x2 "DVR"
	// x2 "GNR"

// Medical evac team

case "SR_TRAUMA_SPC": {	// Командир санитарного отделения 
	addMagazines("ACE_30Rnd_556x45_S_Stanag",4);
	addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
	addMagazines("SmokeShellGreen",2);
	addMagazines("SmokeShellRed",2);
	addMagazines("ACE_Medkit",1);
	addMagazines("15Rnd_9x19_M9",2);
	addWeapons ["ACE_M4A1_Aim_F","ACE_Rucksack_MOLLE_ACU_Medic","M9"];
	addItems ["R","N","M","G"];
};
case "TRAUMA_SPC": {	// Санинструктор
};

	// x1 "DVR"

// Sniper team

case "SNIPER_XM107": {	// Снайпер М107
	addMagazines("10Rnd_127x99_m107",6);
	addMagazines("SmokeShell",2);
	addMagazines("ACE_Battery_Rangefinder",1);
	addMagazines("ACE_Medkit",1);
	addMagazines("15Rnd_9x19_M9",2);
	addWeapons ["m107","M9","Binocular_Vector"];
	addItems ["R","N","M","MT","G","K","D"];
};
case "SNIPER_M24": {	// Снайпер М24
	addMagazines("5Rnd_762x51_M24",4);
	addMagazines("ACE_5Rnd_762x51_T_M24",2);
	addMagazines("SmokeShell",2);
	addMagazines("ACE_Medkit",1);
	addMagazines("15Rnd_9x19_M9",2);
	addWeapons ["M24_des_EP1","M9","ACE_SpottingScope","ACE_MX2A","ACE_Rucksack_MOLLE_ACU"];
	addItems ["R","N","M","MT","G","K","D"];
	_unit setVariable ["ACE_RuckMagContents",[["5Rnd_762x51_M24",4],["ACE_5Rnd_762x51_T_M24",2],["10Rnd_127x99_m107",4],["ACE_CLAYMORE_M",2]]];
};
case "SNUPER_M203": {	// Снайпер М203
	addMagazines("ACE_30Rnd_556x45_S_Stanag",4);
	addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
	addMagazines("SmokeShell",2);
	addMagazines("ACE_Medkit",1);
	addMagazines("15Rnd_9x19_M9",2);
	addMagazines("ACE_1Rnd_HE_M203",4);
	addWeapons ["ACE_M4A1_GL","M9"];
	addItems ["R","N","M","G"];
	_unit setVariable ["ACE_RuckMagContents",[["ACE_30Rnd_556x45_S_Stanag",2],["ACE_30Rnd_556x45_T_Stanag",2],["ACE_1Rnd_HE_M203",8],["1Rnd_SmokeGreen_M203",4],["1Rnd_SmokeRed_M203",4],["1Rnd_SmokeYellow_M203",4]]];
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