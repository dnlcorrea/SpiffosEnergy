fatigueHours = 0

---OnEatEnergyDrink
---@param food table
---@param character IsoGameCharacter
---@param percent table
function OnEatEnergyDrink(food, character, percent)
    ---@type Stats
    stats = character:getStats()

    fatigueYo = function()
        fatigueHours = fatigueHours + 1;

        if (fatigueHours >= 8) then
            fatigueHours = 0
            Events.EveryHour.Remove(fatigueYo)
            return
        end

        if fatigueHours > 4 then
            stats:setFatigue(stats:getFatigue() + 0.33)
        end
    end

    Events.EveryHour.Add(fatigueYo)
end
