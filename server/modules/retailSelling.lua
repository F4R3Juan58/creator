-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



lib.callback.register("lunar_drugscreator:retail:canStartSelling", function()
  local policeCount = Utils.getPoliceCount()
  local requiredPolice = ServerConfig.generalSettings.retailSellingMinPolice or 0
  return policeCount >= requiredPolice
end)
lib.callback.register("lunar_drugscreator:retail:getAvailableItems", function(source, zoneIndex)
  local availableItems = {}
  local player = Framework.getPlayerFromId(source)
  if not player then
    return availableItems
  end
  local zoneConfig = ServerConfig.retailSellingZones[zoneIndex]
  if not zoneConfig then
    return availableItems
  end
  for _, saleItem in pairs(zoneConfig.items) do
    local itemCount = player.getItemCount(saleItem.name)
    if itemCount >= saleItem.amount.min then
      availableItems[#availableItems + 1] = {
        name = saleItem.name,
        minCount = saleItem.amount.min,
        maxCount = math.min(saleItem.amount.max, itemCount)
      }
    end
  end
  return availableItems
end)
local processedRetailEntities = {}
RegisterNetEvent("lunar_drugscreator:retail:confirm", function(itemName, itemCount, itemPrice, targetNetId)
  local playerId = source
  local player = Framework.getPlayerFromId(playerId)
  if not player or processedRetailEntities[targetNetId] then
    return
  end
  local targetEntity = NetworkGetEntityFromNetworkId(targetNetId)
  if not targetEntity or not DoesEntityExist(targetEntity) then
    return
  end
  local populationType = GetEntityPopulationType(targetEntity)
  if populationType ~= 4 and populationType ~= 5 and populationType ~= 6 then
    return
  end
  local playerCoords = GetEntityCoords(GetPlayerPed(playerId))
  local isInsideZone = false
  local zoneIndex = nil
  for currentZoneIndex = 1, #ServerConfig.retailSellingZones, 1 do
    local zoneConfig = ServerConfig.retailSellingZones[currentZoneIndex]
    for _, location in ipairs(zoneConfig.locations) do
      if #(playerCoords - location.coords) <= location.radius then
        isInsideZone = true
        zoneIndex = currentZoneIndex
        break
      end
    end
    if isInsideZone then
      break
    end
  end
  if not isInsideZone or not zoneIndex then
    return
  end
  local zoneConfig = ServerConfig.retailSellingZones[zoneIndex]
  local saleItemConfig = nil
  for _, saleItem in pairs(zoneConfig.items) do
    if saleItem.name == itemName then
      saleItemConfig = saleItem
      break
    end
  end
  if not saleItemConfig then
    return
  end
  if itemCount < saleItemConfig.amount.min or itemCount > saleItemConfig.amount.max then
    return
  end
  if itemPrice <= 0 then
    return
  end
  local maximumPrice = saleItemConfig.price * (1 + zoneConfig.priceTolerance)
  if itemPrice > maximumPrice then
    return
  end
  if itemCount > player.getItemCount(itemName) then
    return
  end
  processedRetailEntities[targetNetId] = true
  player.removeItem(itemName, itemCount)
  player.addAccountMoney(zoneConfig.account, itemCount * itemPrice)
  Stats.addSold(itemName, itemCount)
  Editable.onRetailSale(player, itemName, itemCount, itemPrice)
  if math.random() <= (zoneConfig.reportChance or 0) then
    Dispatch.call(GetEntityCoords(targetEntity), {
      Code = locale("dispatch_retail_code"),
      Title = locale("dispatch_retail_title"),
      Message = locale("dispatch_retail_message")
    })
  end
end)
