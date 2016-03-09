if (isServer) then {
    private [_cx, _cy];
    _cx = getMarkerPos randomSpawn select 0;
    _cy = getMarkerPos randomSpawn select 1;
    
    if (_x == isPlayer) then {
        _x setPos [_cx + round(random 100), _cy + round(random 100), 0];
    } forEach units group this;
};
