if (isServer) then {
	private ["_pos","_unitName","_gearWeap","_gearMag","_gearMag0","_gearMag1","_gearMag2","_gearMag3","_gearMag4","_gearMag5","_unitDamage","_unitData","_unitSide","_unitFuel","_gearWeapC","_gearMagC"];
	{
		_pos = getPos _x;
		_unitName = typeOf _x;
		_unitDamage = getDammage _x;
		_unitSide = side _x;
		_gearWeap = weapons _x;
		_gearMag = magazines _x;
		_unitData = format ["UNIT_SAVED_DATA@[%1,%2,%6],%3,[%4,%5]", _unitName, _unitSide, _pos, _gearWeap, _gearMag, _unitDamage];
		diag_log str _unitData;
	} forEach allUnits;
	{
		_pos = getPos _x;
		_unitName = typeOf _x;
		_unitDamage = getDammage _x;
		_unitSide = side _x;	
		_gearWeapC = getWeaponCargo _x;
		_gearMagC = getMagazineCargo _x;
		_unitFuel = fuel _x;
		_gearMagD = _x magazinesTurret [-1];
		_gearMag0 = _x magazinesTurret [0];
		_gearMag1 = _x magazinesTurret [1];
		_gearMag2 = _x magazinesTurret [2];
		_gearMag3 = _x magazinesTurret [3];
		_gearMag4 = _x magazinesTurret [4];
		_unitData = format ["VEH_SAVED_DATA@[%1,%2,%6,%7],%3,[%4,%5,[%8,%9,%10,%11,%12,%13]]", _unitName, _unitSide, _pos, _gearWeapC, _gearMagC, _unitDamage, _unitFuel, _gearMagD, _gearMag0, _gearMag1, _gearMag2, _gearMag3, _gearMag4];
		diag_log str _unitData;
	} forEach vehicles;
	sleep 3.123;
};
