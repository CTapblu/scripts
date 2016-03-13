/*
	Функция перемещения юнита/отделения на случайную позицию относительно центра заданного маркера.
	
	Примечание:
		При перемещении отделения, мы вызываем функцию только для КО.
		Для корректной работы вызываем функцию в преините.
	
	Параметры:
		select 0 	- уникальное имя юнита.
		select 1	- уникальное имя маркера (задается в кавычках).
		select 2	- максимальное расстояние по оси X, на которое может переместиться юнит
				относительно маркера (может быть отрицательным).
		select 3	- максимальное расстояние по оси Y, на которое может переместиться юнит
				относительно маркера (может быть отрицательным).
				
	Автор: Kuzia
*/

fnc_ct_randomSpawn = {
	if (isServer) then {
		private ["_unit","_marker","_rx","_ry","_cx","_cy","_safepos"];
		
		_unit = _this select 0;
		_marker = _this select 1;
		_rx = _this select 2;
		_ry = _this select 3;
		
		_cx = getMarkerPos _marker select 0;
		_cy = getMarkerPos _marker select 1;
		_cx = _cx + round(random _rx);
		_cy = _cy + round(random _ry);
		
		{
			_safepos = [[_cx,_cy,0],1,10,1,0,10,0] call BIS_fnc_findSafePos;
			_x setPos _safepos;
		} foreach units group _unit;
	};
};

[u1,"randomSpawn",100,100] call fnc_ct_randomSpawn;								// телепортируем юнит "u1" относительно маркера "randomSpawn"
[u2,"randomSpawn",100,-100] call fnc_ct_randomSpawn;							// телепортируем юнит "u1" относительно маркера "randomSpawn
[u3,"randomSpawn",-100,-100] call fnc_ct_randomSpawn;							// телепортируем юнит "u2" относительно маркера "randomSpawn
