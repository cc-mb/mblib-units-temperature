local Type = require "mb.units.base.type"

local Temperature = require "mb.units.temperature"
local Time = require "mb.units.time"

--- Heat exchange units.
local HeatExchange = Type.new()

--- Units cross product.
---@param a string[] Temperature units.
---@param b string[] Time units.
local function cross_product(a, b)
  for _, temperature in ipairs(a) do
    for _, time in ipairs(b) do
      HeatExchange:register(Temperature[temperature] / Time[time])
    end
  end
end

HeatExchange:register_base(Temperature["base"] / Time["base"])
cross_product({"K", "*C", "R", "*F"}, {"t", "s"})

return HeatExchange
