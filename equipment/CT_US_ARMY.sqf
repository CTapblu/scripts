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
	addMagazines("ACE_30Rnd_556x45_S_Stanag",3);
	addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
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
	addItems ["R","B","N","M"];
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
	addItems ["R","N","M"];
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
	addItems ["R","B","N","D","M","MT","G"];
};
case "TRAUMA_SPC": {	// Санинструктор
	addMagazines("ACE_30Rnd_556x45_S_Stanag",4);
	addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
	addMagazines("SmokeShellGreen",2);
	addMagazines("SmokeShellRed",2);
	addMagazines("ACE_Medkit",1);
	addMagazines("15Rnd_9x19_M9",2);
	addWeapons ["ACE_M4A1_Aim_F","ACE_Rucksack_MOLLE_ACU_Medic","M9"];
	addItems ["R","N","M","G"];
};

	// x1 "DVR"

// Sniper team

case "SNIPER_XM107": {	// Снайпер М107
	addMagazines("10Rnd_127x99_m107",6);
	addMagazines("SmokeShell",2);
	addMagazines("HandGrenade_West",2);
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
	addMagazines("HandGrenade_West",2);
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
	addMagazines("HandGrenade_West",2);
	addMagazines("ACE_Medkit",1);
	addMagazines("15Rnd_9x19_M9",2);
	addMagazines("ACE_1Rnd_HE_M203",4);
	addWeapons ["ACE_M4A1_GL","ACE_Rucksack_MOLLE_ACU","M9"];
	addItems ["R","N","M","G"];
	_unit setVariable ["ACE_RuckMagContents",[["ACE_30Rnd_556x45_S_Stanag",2],["ACE_30Rnd_556x45_T_Stanag",2],["ACE_1Rnd_HE_M203",8],["1Rnd_SmokeGreen_M203",4],["1Rnd_SmokeRed_M203",4],["1Rnd_SmokeYellow_M203",4]]];
};

// Fire support team

case "FSO": {			// Командир экипажа (специалист)
	addMagazines("ACE_30Rnd_556x45_S_Stanag",3);
	addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
	addMagazines("SmokeShell",2);
	addMagazines("ACE_Medkit",1);
	addMagazines("15Rnd_9x19_M9",2);
	addWeapons ["ACE_M4A1_F","M9"];
	addItems ["R","B","N","D","M","MT","G"];
};
case "FS_NCO": {		// Механик-водитель (специалист)
	addMagazines("ACE_30Rnd_556x45_S_Stanag",3);
	addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
	addMagazines("SmokeShell",2);
	addMagazines("ACE_Medkit",1);
	addMagazines("15Rnd_9x19_M9",2);
	addWeapons ["ACE_M4A1_F","M9"];
	addItems ["R","N","M"];
};
case "FS_SPC": {		// Мезаник-наводчик (специалист)
	addMagazines("ACE_30Rnd_556x45_S_Stanag",3);
	addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
	addMagazines("SmokeShell",2);
	addMagazines("ACE_Medkit",1);
	addMagazines("15Rnd_9x19_M9",2);
	addWeapons ["ACE_M4A1_F","M9"];
	addItems ["R","N","M"];
};

/*
	Rifle platoon
*/
	
	// Platoon HQ
	
	case "PLT_LDR": {	// Командир взвода
		addMagazines("ACE_30Rnd_556x45_S_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_Medkit",1);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["ACE_M4A1_ACOG","M9"];
		addItems ["R","B","N","D","M","MT","G"];
	};
	case "CO_MED": {	// Взводный санинструктор
		addMagazines("ACE_30Rnd_556x45_S_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShellGreen",2);
		addMagazines("SmokeShellRed",2);
		addMagazines("ACE_Medkit",1);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["ACE_M4A1_Aim_F","ACE_Rucksack_MOLLE_ACU_Medic","M9"];
		addItems ["R","N","M","G"];
	};
	case "FO": {		// Офицер
		addMagazines("ACE_30Rnd_556x45_S_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("ACE_Medkit",1);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["ACE_M4A1_ACOG","M9"];
		addItems ["R","B","N","G","M"];
	};
	
		// x1 "PSG"
		// x1 "RATELO"
		// x1 "DVR"
	
	// Rifle squad
	
	case "SQD_LDR": {	// Командир отделения
		addMagazines("ACE_30Rnd_556x45_S_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("ACE_Medkit",1);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["ACE_M4A1_ACOG","ACE_PRC119_ACU","M9"];
		addItems ["R","B","N","D","M","MT","G"];
	};
	case "TM_LDR": {	// x2 Команлир огневой группы
		addMagazines("ACE_30Rnd_556x45_S_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("ACE_Medkit",1);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["ACE_M4A1_ACOG","M9"];
		addItems ["R","B","N","M","G"];
	};
	case "GREN": {		// x2 Гранатометчик
		addMagazines("ACE_30Rnd_556x45_S_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("ACE_1Rnd_HE_M203",4);
		addMagazines("ACE_Medkit",1);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["ACE_M4A1_GL","ACE_Rucksack_MOLLE_ACU","M9"];
		addItems ["R","N","M"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_SmokeYellow_M203",4],["1Rnd_SmokeGreen_M203",4],["1Rnd_SmokeRed_M203",4],["1Rnd_Smoke_M203",4],["ACE_1Rnd_HE_M203",8]]];
	};
	case "AR": {		// x2 Пулеметчик
		addMagazines("200Rnd_556x45_M249",2);
		addMagazines("ACE_200Rnd_556x45_T_M249",1);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("ACE_Medkit",1);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["M249_EP1","M9"];
		addItems ["R","N","M","E"];
	};
	case "RMAT": {		// ПТ специалист
		addMagazines("ACE_30Rnd_556x45_S_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("Javelin",2);
		addMagazines("ACE_Medkit",1);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["ACE_M4A1_F","M9","Javelin"];
		addItems ["R","N","M"];
	};
	case "DM": {		// Меткий стрелок
		addMagazines("ACE_20Rnd_762x51_S_M110",4);
		addMagazines("ACE_20Rnd_762x51_T_M110",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("ACE_Medkit",1);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["ACE_M110","M9"];
		addItems ["R","N","M"];
	};
	
		// x1 "DVR"
		// x1 "VC"
	
	// Weapons squad
	
	case "SL": {		// Командир отделения
		addMagazines("ACE_30Rnd_556x45_S_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("ACE_Medkit",1);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["ACE_M4A1_ACOG","ACE_PRC119_ACU","M9"];
		addItems ["R","B","N","D","M","MT","G","E"];
	};
	case "MG": {		// x2 Пулеметчик М240
		addMagazines("100Rnd_762x51_M240",4);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_Medkit",1);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["ACE_M240L_M145","M9"];
		addItems ["R","N","M","E"];
	};
	case "AG": {		// x2 Помощник пулеметчика
		addMagazines("ACE_30Rnd_556x45_S_Stanag",2);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",6);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("ACE_Medkit",1);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["ACE_M4A1_F","M9","ACE_Rucksack_MOLLE_ACU"];
		addItems ["R","N","M","E","B"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x51_M240",2],["ACE_30Rnd_556x45_T_Stanag",4]]];
	};
	case "AB": {		// x2 Подносчик боеприпасов
		addMagazines("ACE_30Rnd_556x45_S_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("ACE_Medkit",1);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["ACE_M4A1_F","M9","ACE_Rucksack_MOLLE_ACU"];
		addItems ["R","N","M","E"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x51_M240",2]]];
	};
	
/*
	Дополнительные юниты
*/

	case "ADD_1": {		// Pilot
		addMagazines("ACE_30Rnd_556x45_S_Stanag",2);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",6);
		addMagazines("HandGrenade_West",2);
		addMagazines("ACE_Medkit",1);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["ACE_M4A1_F","ACE_ParachuteRoundPack"];
		addItems ["R","N","M","G"];
	};
	case "ADD_2": {		// SIGINT Operator
		addMagazines("ACE_30Rnd_556x45_S_Stanag",3);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_Medkit",1);
		addMagazines("15Rnd_9x19_M9",2);
		addWeapons ["ACE_M4A1_F","M9","ACE_PRC119_ACU"];
		addItems ["R","N","M","G"];
	};
		
	default { hintC format["Equipment %1 not found for %2", _type, _unit] };
};