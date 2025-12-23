-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local registeredConsumables = {}
local consumableHandlers = {}
function ReloadConsumables()
  for index = 1, #ServerConfig.consumables, 1 do
    local consumable = ServerConfig.consumables[index]
    local itemName = consumable.name
    if not registeredConsumables[itemName] then
      Framework.registerUsableItem(itemName, function(playerId)
        local player = Framework.getPlayerFromId(playerId)
        if not player or not player.hasItem(itemName) then
          return
        end
        local handler = consumableHandlers[itemName]
        if not handler then
          return
        end
        handler(player)
      end)
      registeredConsumables[itemName] = true
    end
    consumableHandlers[itemName] = function(player)
      if not player.hasItem(itemName) then
        return
      end
      player.removeItem(itemName, 1)
      TriggerClientEvent("lunar_drugscreator:consumables:consume", player.source, index)
    end
  end
end
Consumables = {
  field = "consumables",
  reload = ReloadConsumables
}
