/* ----------------------------------------------------------------------------
Function: CBAP_fnc_players

Description:
    Reports all (human) player objects. Does not include headless client entities.

    Unlike "BIS_fnc_listPlayers", this function will not report the game logics of headless clients.

Parameters:
    None

Returns:
    List of all player objects <ARRAY>

Examples:
    (begin example)
        _onlyPlayers = call CBAP_fnc_players
    (end)

Author(s):
    commy2
---------------------------------------------------------------------------- */
(allUnits + allDeadMen) select {isPlayer _x && {!(_x isKindOf "HeadlessClient_F")}}