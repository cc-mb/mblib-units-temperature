local Unit = require "mb.units.base.unit"
local Type = require "mb.units.base.type"

--- Temperature units.
local Temperature = Type.new()

Temperature:register_base(Unit.BASE .. "K") -- Define Kelvin as a base unit.
Temperature:register(Temperature["K"] - 273.15 .. "*C") -- Celsius.
Temperature:register(Temperature["K"] * 1.8 .. "*R") -- Rankine.
Temperature:register(Temperature["R"] - 459.67 .. "*F") -- Fahrenheit.

return Temperature
