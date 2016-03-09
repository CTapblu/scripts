/*
    Функция захвата триггера, при условии его удержания в течении заданного времени.
    
    Примечание:
        Функция вызывается из инита.
        
    Пременные:
        select 0    - уникальное название целевого триггера.
        select 1    - время, необходимое на удержание целевого триггера.
        
    Автор: Kuzia
*/

fnc_ct_triggerCapture = {
    if (isServer) then {
        private ["_notcaptured","_capturing","_capturetime","_capturestarttime","_checktimeout"];
        _area = _this select 0;
        _capturelimit = _this select 1;
        [_area,_capturelimit] spawn {
            _area = _this select 0;
            _capturelimit = _this select 1;
            _checktimeout = triggerTimeout _area;
            _checktimeout = _checktimeout select 1;
            _notcaptured = true;
            _capturing = false;
            _capturestarttime = 0;
            while {_notcaptured} do {
                if (triggerActivated target_1) then {
                    if (_capturing) then {
                        if ((diag_tickTime - _capturestarttime) >= _capturelimit) then {
                            _notcaptured = false;
                            ["Войска РФ одержали победу, выполнив поставленную задачу!"] call SerP_endMission;      // завершаем миссию победой атаки
                        };
						} else {
							_capturestarttime = diag_tickTime;
							_capturing = true;
						};
                    } else {
                        _capturestarttime = 0;
                        _capturing = false;
					};
                sleep _checktimeout;
            };
        };
    };
};

[target_1,1800] call fnc_ct_triggerCapture;                                                                         // вызываем функцию для триггера "target_1", который нужно ужерживать в течении 1800 секунд
