local Mod = RegisterMod("Dads Screwdriver", 1)
local game = Game()
local screwSwap

TrinketType.TRINKET_SCREWDRIVER = Isaac.GetTrinketIdByName("Dads Screwdriver")

function Mod:onUpdate(player)
    if game:GetFrameCount() == 1 then
        local roll = player:GetTrinketRNG(TrinketType.TRINKET_SCREWDRIVER)
        screwSwap = roll:RandomInt(TrinketType.NUM_TRINKETS)
    end

    for _, entity in pairs(Isaac.GetRoomEntities()) do
        if entity.Type == EntityType.ENTITY_PICKUP and entity.Variant == PickupVariant.PICKUP_TRINKET and entity.SubType == screwSwap then
            entity.SubType = TrinketType.TRINKET_SCREWDRIVER
        end
    end
end
Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.onUpdate)