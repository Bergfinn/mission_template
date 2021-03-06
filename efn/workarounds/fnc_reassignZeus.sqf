#include "script_component.hpp"

params ["_unit"];

if !(isServer) exitWith {};

private _curator = _unit getVariable QGVAR(zeus_logic);
if (isNil "_curator") exitWith {};

unassignCurator _curator;
[{
    params ["_unit", "_curator"];
    _unit assignCurator _curator;
}, [_unit, _curator], 5] call CBA_fnc_waitAndExecute;

