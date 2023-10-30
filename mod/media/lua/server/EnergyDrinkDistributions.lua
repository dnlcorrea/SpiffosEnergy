--require "Items/SuburbsDistributions"

local DrinkBottle = "SpiffoEnergyBooster.EnergyDrinkBottle"


-- TODO: GAs Station ain't working too well

local BottleDistribution = {
    { "CrateSodaBottles", 20 },
    { "FridgeOffice", 1 },
    { "FridgeRich", 0.8 },
    { "FridgeSoda", 20 },
    { "GigamartBottles", 20 },
    { "CratePaperBagSpiffos", 40 },
    --{ "SpiffosDiningCounter", 40 },
    { "SpiffosKitchenBags", 40 },
    { "SpiffosKitchenCounter", 40 },
    { "SpiffosKitchenFreezer", 40 },
    { "SpiffosKitchenFridge", 40 },
}

for i = 1, #BottleDistribution do
    table.insert(ProceduralDistributions["list"][BottleDistribution[i][1]].items, DrinkBottle);
    table.insert(ProceduralDistributions["list"][BottleDistribution[i][1]].items, BottleDistribution[i][2]);
end


