local Mod = RegisterMod("Dad's Screwdriver", 1)
local game = Game()
local screwId = Isaac.GetTrinketIdByName("Dad's Screwdriver")

function Mod:onUpdate(player)
    if game:GetFrameCount() == 1 then
        Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TRINKET, screwId, Vector(320,300), Vector(0,0), nil)
    end

end
Mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, Mod.onUpdate)