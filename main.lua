local Mod = RegisterMod("Dad's Screwdriver", 1)
local game = Game()


TrinketType.TRINKET_SCREWDRIVER = Isaac.GetTrinketIdByName("Dad's Screwdriver")

function Mod:onUpdate(player)
    if game:GetFrameCount() == 1 then
        Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TRINKET, TrinketType.TRINKET_SCREWDRIVER, Vector(320,300), Vector(0,0), nil)
    end

    
end
Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.onUpdate)