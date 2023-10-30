---OnEatEnergyDrink
---@param food Food
---@param character IsoGameCharacter
---@param percent float
function OnEatEnergyDrink(food, character, percent)
    ---@type Stats
    local stats = character:getStats()
    ---@type BodyDamage
    local damage = character:getBodyDamage()
    local hoursSinceDrink = 0
    local fatigueModifier = 0.2

    damage:setFoodSicknessLevel(damage:getFoodSicknessLevel() + (50 * percent))

    local function FatigueSideEffects()
        hoursSinceDrink = hoursSinceDrink + 1;

        if (hoursSinceDrink >= 8) then
            Events.EveryTenMinutes.Remove(FatigueSideEffects)
            return
        end

        if hoursSinceDrink > 3 then
            stats:setFatigue(stats:getFatigue() + (fatigueModifier * percent))
        end
    end

    Events.EveryTenMinutes.Add(FatigueSideEffects)
end
