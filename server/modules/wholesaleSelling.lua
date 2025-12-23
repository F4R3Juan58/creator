-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local activeWholesalePlayers = {}
local pendingWholesaleOffers = {}
local reservedWholesaleLocations = {}
local wholesalePhoneRegistered = false
function GetWholesaleSellableItems(player)
  local sellableItems = {}
  for _, item in ipairs(ServerConfig.wholesaleSettings.items) do
    local ownedCount = player.getItemCount(item.name)
    if ownedCount >= item.amount.min then
      sellableItems[#sellableItems + 1] = {
        name = item.name,
        maxCount = ownedCount,
        price = item.price,
        amount = item.amount
      }
    end
  end
  return sellableItems
end
function StartWholesaleCycle(playerId, isInitialCycle)
  TriggerClientEvent("lunar_drugscreator:wholesale:started", playerId, isInitialCycle)
  local intervalSeconds = math.random(ServerConfig.wholesaleSettings.clientInterval.min, ServerConfig.wholesaleSettings.clientInterval.max)
  local player = Framework.getPlayerFromId(playerId)
  if not player then
    return
  end
  local sellableItems = GetWholesaleSellableItems(player)
  if #sellableItems == 0 then
    activeWholesalePlayers[playerId] = nil
    TriggerClientEvent("lunar_drugscreator:wholesale:stop", playerId, true)
    return
  end
  SetTimeout(intervalSeconds * 1000, function()
    if not activeWholesalePlayers[playerId] then
      return
    end
    local refreshedPlayer = Framework.getPlayerFromId(playerId)
    if not refreshedPlayer then
      return
    end
    local refreshedItems = GetWholesaleSellableItems(refreshedPlayer)
    if #refreshedItems == 0 then
      LR.notify(playerId, locale("no_items_to_sell"), "error")
      activeWholesalePlayers[playerId] = nil
      return
    end
    local selectedItem = Utils.randomFromTable(refreshedItems)
    local maxAllowedCount = math.min(selectedItem.maxCount, selectedItem.amount.max)
    local offerCount = math.random(selectedItem.amount.min, maxAllowedCount)
    local offerPrice = math.random(selectedItem.price.min, selectedItem.price.max)
    pendingWholesaleOffers[playerId] = {
      name = selectedItem.name,
      count = offerCount,
      price = offerPrice
    }
    TriggerClientEvent("lunar_drugscreator:wholesale:offer", playerId, selectedItem.name, offerCount, offerPrice)
  end)
end
RegisterNetEvent("lunar_drugscreator:wholesale:accept", function()
  local playerId = source
  local player = Framework.getPlayerFromId(playerId)
  if not player or not activeWholesalePlayers[playerId] or not pendingWholesaleOffers[playerId] then
    return
  end
  if lib.table.contains(reservedWholesaleLocations, playerId) then
    return
  end
  local locationIndex = nil
  repeat
    locationIndex = math.random(1, #ServerConfig.wholesaleSettings.locations)
  until not reservedWholesaleLocations[locationIndex]
  reservedWholesaleLocations[locationIndex] = playerId
  TriggerClientEvent("lunar_drugscreator:wholesale:mission", playerId, locationIndex, math.random(1, 3))
end)
RegisterNetEvent("lunar_drugscreator:wholesale:decline", function()
  local playerId = source
  if not activeWholesalePlayers[playerId] or not pendingWholesaleOffers[playerId] then
    return
  end
  pendingWholesaleOffers[playerId] = nil
  StartWholesaleCycle(playerId)
  for locationIndex, reservedPlayerId in pairs(reservedWholesaleLocations) do
    if reservedPlayerId == playerId then
      reservedWholesaleLocations[locationIndex] = nil
    end
  end
end)
RegisterNetEvent("lunar_drugscreator:wholesale:completeOffer", function()
  local playerId = source
  local player = Framework.getPlayerFromId(playerId)
  local offer = pendingWholesaleOffers[playerId]
  if not player or not activeWholesalePlayers[playerId] or not offer then
    return
  end
  local totalPayment = offer.price * offer.count
  local ownedCount = player.getItemCount(offer.name)
  if ownedCount < offer.count then
    LR.notify(playerId, locale("missing_items"), "error")
    return
  end
  pendingWholesaleOffers[playerId] = nil
  player.removeItem(offer.name, offer.count)
  player.addAccountMoney(ServerConfig.wholesaleSettings.account, totalPayment)
  Stats.addSold(offer.name, offer.count)
  StartWholesaleCycle(playerId)
  for locationIndex, reservedPlayerId in pairs(reservedWholesaleLocations) do
    if reservedPlayerId == playerId then
      reservedWholesaleLocations[locationIndex] = nil
    end
  end
end)
WholesaleSelling = {
  field = "wholesaleSettings",
  reload = function()
    if not ServerConfig.wholesaleSettings.enabled or wholesalePhoneRegistered then
      return
    end
    wholesalePhoneRegistered = true
    Framework.registerUsableItem(ServerConfig.wholesaleSettings.phoneItem, function(playerId)
      local player = Framework.getPlayerFromId(playerId)
      if not player then
        return
      end
      local vehicle = GetVehiclePedIsIn(GetPlayerPed(playerId), false)
      if vehicle ~= 0 then
        return
      end
      if activeWholesalePlayers[playerId] then
        LR.notify(playerId, locale("cancelled_wholesale"), "error")
        TriggerClientEvent("lunar_drugscreator:wholesale:stop", playerId, false)
        activeWholesalePlayers[playerId] = nil
        return
      end
      local sellableItems = GetWholesaleSellableItems(player)
      if #sellableItems == 0 then
        LR.notify(playerId, locale("no_items_to_sell"), "error")
        return
      end
      activeWholesalePlayers[playerId] = true
      StartWholesaleCycle(playerId, true)
    end)
  end
}
