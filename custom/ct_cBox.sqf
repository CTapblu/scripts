/*
Глобальные переменные
Объявлем в INIT.SQF
*/

// Количество ящиков

cBoxDM61 = 40; // Tampella 120mm DM 61 HE
cBoxDM11 = 40; // Tampella 120mm DM 11 HE
cBoxDM35 = 20; // Tampella 120mm DM 35 BE HC

cBox82HE = 6; // 2B14 82 mm HE
cBox82WP = 4; // 2B14 82 mm WP

/*
Файл скрипта ct_cBox.sqf

Применение: В ините юнита прописываем "this addAction ["Выгрузить ящик","ct_cBox.sqf",0];", где
        param 1 - Текст меню при использовании колеса мыши;
        param 2 - Вызов файла скрипта;
        param 3 - ID, которые используется в скрипте для определения типа создаваемого ящика.
*/

private ["_count","_veh","_boxname","_cargoBox","_actID","_argID"];
_veh = _this select 0;
_actID = _this select 2;
_argID = _this select 3;

// Боеприпасы для Тампеллы

if (_veh == testveh && _argID == 0) then { // Tampella 120mm DM 61 HE (this addAction ["Выгрузить боеприпасы DM61HE","ct_cBox.sqf",0];)
		_count = cBoxDM61;
	
	if (_count > 0) then {
		_veh removeAction _actID;
		
		_cargoBox = createVehicle ["ace_arty_120mm_ammo_dm61", position player, [], 0, "NONE"];
		_cargoBox setVariable ["ace_sys_cargo_veh", "Tampella 120mm DM 61 HE", true];
		
		cBoxDM61 = cBoxDM61 - 1;
		_count = cBoxDM61;
		
		if (_count > 0) then {
			hint format ["Ящиков с боеприпасами DM61HE осталось: %1", _count];
			sleep 3.123;
			_veh addAction ["Выгрузить боеприпасы DM61HE","ammo\test.sqf",0];
		} else {
			hint format ["Ящиков с боеприпасами DM61HE не осталось!"];
		};
	};
};

if (_veh == testveh && _argID == 1) then { // Tampella 120mm DM 11 HE (this addAction ["Выгрузить боеприпасы DM11HE","ct_cBox.sqf",1];)
		_count = cBoxDM11;
	
	if (_count > 0) then {
		_veh removeAction _actID;
		
		_cargoBox = createVehicle ["ace_arty_120mm_ammo_dm11", position player, [], 0, "NONE"];
		_cargoBox setVariable ["ace_sys_cargo_veh", "Tampella 120mm DM 11 HE", true];
		
		cBoxDM11 = cBoxDM11 - 1;
		_count = cBoxDM11;
		
		if (_count > 0) then {
			hint format ["Ящиков с боеприпасами DM11HE осталось: %1", _count];
			sleep 3.123;
			_veh addAction ["Выгрузить боеприпасы DM11HE","ammo\test.sqf",1];
		} else {
			hint format ["Ящиков с боеприпасами DM11HE не осталось!"];
		};
	};
};

if (_veh == testveh && _argID == 2) then { // Tampella 120mm DM 35 BE HC (this addAction ["Выгрузить боеприпасы DM35HE","ct_cBox.sqf",2];)
		_count = cBoxDM35;
	
	if (_count > 0) then {
		_veh removeAction _actID;
		
		_cargoBox = createVehicle ["ace_arty_120mm_ammo_dm35", position player, [], 0, "NONE"];
		_cargoBox setVariable ["ace_sys_cargo_veh", "Tampella 120mm DM 35 BE HC", true];
		
		cBoxDM35 = cBoxDM35 - 1;
		_count = cBoxDM35;
		
		if (_count > 0) then {
			hint format ["Ящиков с боеприпасами DM35BEHC осталось: %1", _count];
			sleep 3.123;
			_veh addAction ["Выгрузить боеприпасы DM35BEHC","ammo\test.sqf",2];
		} else {
			hint format ["Ящиков с боеприпасами DM35BEHC не осталось!"];
		};
	};
};

// Тампелла

if (_veh == testveh2 && _argID == 0) then { // Tampella Barrel (this addAction ["Выгрузить Tampella Barrel","ct_cBox.sqf",0];)
	
	_veh removeAction _actID;
	
	_cargoBox = createVehicle ["ACE_120Tampella_Barrel", position player, [], 0, "NONE"];
	_cargoBox setVariable ["ace_sys_cargo_veh", "Tampella Barrel", true];

	hint format ["Tampella Barrel выгружено!"];
};

if (_veh == testveh2 && _argID == 1) then { // Tampella Baseplate (this addAction ["Выгрузить Tampella Baseplate","ct_cBox.sqf",1];)
	
	_veh removeAction _actID;
	
	_cargoBox = createVehicle ["ACE_120Tampella_Baseplate", position player, [], 0, "NONE"];
	_cargoBox setVariable ["ace_sys_cargo_veh", "Tampella Baseplate", true];

	hint format ["Tampella Baseplate выгружено!"];
};

// Боеприпасы для Подноса

if (_veh == testveh3 && _argID == 0) then { // 2B14 82 mm HE (this addAction ["Выгрузить боеприпасы 82MMHE","ct_cBox.sqf",0];)
		_count = cBox82HE;
	
	if (_count > 0) then {
		_veh removeAction _actID;
		
		_cargoBox = createVehicle ["ACE_Tbox_RU", position player, [], 0, "NONE"];
		_cargoBox setVariable ["ace_sys_cargo_veh", "2B14 82 mm HE", true];
		_cargoBox addMagazineCargo ["ACE_2B14HE_CSWDM", 10];
		
		cBox82HE = cBox82HE - 1;
		_count = cBox82HE;
		
		if (_count > 0) then {
			hint format ["Ящиков с боеприпасами 82MMHE осталось: %1", _count];
			sleep 3.123;
			_veh addAction ["Выгрузить боеприпасы 82MMHE","ammo\test.sqf",0];
		} else {
			hint format ["Ящиков с боеприпасами 82MMHE не осталось!"];
		};
	};
};

if (_veh == testveh3 && _argID == 1) then { // 2B14 82 mm WP (this addAction ["Выгрузить боеприпасы 82MMWP","ct_cBox.sqf",1];)
		_count = cBox82WP;
	
	if (_count > 0) then {
		_veh removeAction _actID;
		
		_cargoBox = createVehicle ["ACE_Tbox_RU", position player, [], 0, "NONE"];
		_cargoBox setVariable ["ace_sys_cargo_veh", "2B14 82 mm WP", true];
		_cargoBox addMagazineCargo ["ACE_2B14WP_CSWDM", 10];
		
		cBox82WP = cBox82WP - 1;
		_count = cBox82WP;
		
		if (_count > 0) then {
			hint format ["Ящиков с боеприпасами 82MMWP осталось: %1", _count];
			sleep 3.123;
			_veh addAction ["Выгрузить боеприпасы 82MMWP","ammo\test.sqf",1];
		} else {
			hint format ["Ящиков с боеприпасами 82MMWP не осталось!"];
		};
	};
};
