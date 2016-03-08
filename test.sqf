/*
Скрипт спауна юнита относительно координат/объекта (3 юнита в разных координатах).
Скрипт исполняется в ините любого юнита/объекта.
*/

if (isDedicated) then {
	private [_spawncenter1, _posx1, _posx2, _posx3, _posy1, _posy2, _posy3, _posz, _position1, _position2, _position3, _endpos1, _endpos2, _endpos3];
		_spawncenter1 = getPosASL sp1; // получаем координаты объекта (нулевые координаты для спауна)
		_posz = _spawncenter1 select 2; // выводим координату Z в отдельную переменную для удобства
	
		_posx1 = (_spawncenter1 select 0) + (round(random 100)); // увеличиваем координату X относительно нулевой на 1-100
		_posy1 = (_spawncenter1 select 1) + (round(random 100)); // увеличиваем координату Y относительно нулевой на 1-100
		_endpos1 = [_posx1,_posy1,_posz]; // получаем случайные координаты для точки спауна
		_position1 = _endpos1 findEmptyPosition [0,100]; // получаем конечные координаты для точки спауна, исключая возможность спауна внутри другого объекта
		u1 setPosASL _position1; // задаем координаты для спауна юнита с уникальным именем 'u1'
	
		_posx2 = (_spawncenter1 select 0) - (round(random 100));
		_posy2 = (_spawncenter1 select 1) + (round(random 100));
		_endpos2 = [_posx2,_posy2,_posz];
		_position2 = _endpos2 findEmptyPosition [0,100];
		u2 setPosASL _position2;
	
		_posx3 = (_spawncenter1 select 0) - (round(random 100));
		_posy3 = (_spawncenter1 select 1) - (round(random 100));
		_endpos3 = [_posx3,_posy3,_posz];
		_position3 = _endpos3 findEmptyPosition [0,100];
		u3 setPosASL _position3;
};
