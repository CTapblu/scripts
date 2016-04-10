/*
Глобальные переменные
Объявлем в INIT.SQF
*/

// Количество ящиков

veh1 addAction ["Выгрузить боеприпасы DM61HE","ct_cBox.sqf",0];
veh1 addAction ["Выгрузить боеприпасы DM11HE","ct_cBox.sqf",1];
veh1 addAction ["Выгрузить боеприпасы DM35HE","ct_cBox.sqf",2];

veh2 addAction ["Выгрузить Tampella Barrel","ct_cBox.sqf",0];
veh2 addAction ["Выгрузить Tampella Baseplate","ct_cBox.sqf",1];

veh3 addAction ["Выгрузить боеприпасы 82MMHE","ct_cBox.sqf",0];
veh3 addAction ["Выгрузить боеприпасы 82MMWP","ct_cBox.sqf",1];

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

if (isServer) then {
	private ["_count","_veh","_boxname","_cargoBox","_actID","_argID"];
	_veh = _this select 0;
	_actID = _this select 2;
	_argID = _this select 3;
	
	// Боеприпасы для Тампеллы
	
	if (_veh == veh1 && _argID == 0) then {
		if (cBoxDM61 > 0) then {
			_veh removeAction _actID;
			_cargoBox = createVehicle ["ace_arty_120mm_ammo_dm61", position player, [], 0, "NONE"];
			_cargoBox setVariable ["ace_sys_cargo_name", "Tampella 120mm DM 61 HE", true];
			cBoxDM61 = cBoxDM61 - 1;
			if (cBoxDM61 > 0) then {
				sleep 3.123;
				_veh addAction [format ["Выгрузить боеприпасы DM61HE (Осталось: %1)", cBoxDM61],"ct_cBox.sqf",0];
			};
		};
	};
	
	if (_veh == veh1 && _argID == 1) then {
		if (cBoxDM11 > 0) then {
			_veh removeAction _actID;
			_cargoBox = createVehicle ["ace_arty_120mm_ammo_dm11", position player, [], 0, "NONE"];
			_cargoBox setVariable ["ace_sys_cargo_name", "Tampella 120mm DM 11 HE", true];
			cBoxDM11 = cBoxDM11 - 1;
			if (cBoxDM11 > 0) then {
				sleep 3.123;
				_veh addAction [format ["Выгрузить боеприпасы DM11HE (Осталось: %1)", cBoxDM11],"ct_cBox.sqf",1];
			};
		};
	};
	
	if (_veh == veh1 && _argID == 2) then {
		if (cBoxDM35 > 0) then {
			_veh removeAction _actID;
			_cargoBox = createVehicle ["ace_arty_120mm_ammo_dm35", position player, [], 0, "NONE"];
			_cargoBox setVariable ["ace_sys_cargo_name", "Tampella 120mm DM 35 BE HC", true];
			cBoxDM35 = cBoxDM35 - 1;
			if (cBoxDM35 > 0) then {
				sleep 3.123;
				_veh addAction [format ["Выгрузить боеприпасы DM35BEHC (Осталось: %1)", cBoxDM35],"ct_cBox.sqf",2];
			};
		};
	};
	
	// Тампелла
	
	if (_veh == veh2 && _argID == 0) then {
		_veh removeAction _actID;
		_cargoBox = createVehicle ["ACE_120Tampella_Barrel", position player, [], 0, "NONE"];
		_cargoBox setVariable ["ace_sys_cargo_name", "Tampella Barrel", true];
		hint format ["Tampella Barrel выгружено!"];
	};
	
	if (_veh == veh2 && _argID == 1) then {
		_veh removeAction _actID;
		_cargoBox = createVehicle ["ACE_120Tampella_Baseplate", position player, [], 0, "NONE"];
		_cargoBox setVariable ["ace_sys_cargo_name", "Tampella Baseplate", true];
		hint format ["Tampella Baseplate выгружено!"];
	};
	
	// Боеприпасы для Подноса
	
	if (_veh == veh3 && _argID == 0) then {
		if (cBox82HE > 0) then {
			_veh removeAction _actID;
			_cargoBox = createVehicle ["ACE_Tbox_RU", position player, [], 0, "NONE"];
			_cargoBox setVariable ["ace_sys_cargo_name", "2B14 82 mm HE", true];
			_cargoBox addMagazineCargo ["ACE_2B14HE_CSWDM", 10];
			cBox82HE = cBox82HE - 1;
			if (cBox82HE > 0) then {
				sleep 3.123;
				_veh addAction [format ["Выгрузить боеприпасы 82MMHE (Осталось: %1)", cBox82HE],"ct_cBox.sqf",0];
			};
		};
	};
	
	if (_veh == veh3 && _argID == 1) then {
		if (cBox82WP > 0) then {
			_veh removeAction _actID;
			_cargoBox = createVehicle ["ACE_Tbox_RU", position player, [], 0, "NONE"];
			_cargoBox setVariable ["ace_sys_cargo_name", "2B14 82 mm WP", true];
			_cargoBox addMagazineCargo ["ACE_2B14WP_CSWDM", 10];
			cBox82WP = cBox82WP - 1;
			if (cBox82WP > 0) then {
				sleep 3.123;
				_veh addAction [format ["Выгрузить боеприпасы 82MMWP (Осталось: %1)", cBox82WP],"ct_cBox.sqf",1];
			};
		};
	};
};
