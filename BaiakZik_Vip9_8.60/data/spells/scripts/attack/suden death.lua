-----------------This Spell was made with Mindrage's Spell Maker v0.56b ---------
--Do not post the spells in any forum without this line or you will be caught!---
--This Software is free to use and can't be for for real-life values!------------
local combat1 = createCombatObject() 
setCombatParam(combat1, COMBAT_PARAM_TYPE, 1)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 17)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 10)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -7, -9, -2, -1)
--=======================================================================




local area1 = {
{0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0},
{0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0},
{0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0},
{0, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 0},
{0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0},
{0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0},
{0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0}}
--=======================================




setCombatArea(combat1, createCombatArea(area1))



function onCastSpell(cid, var)
addEvent(doCombat, 0, cid, combat1, var)
return true
end
