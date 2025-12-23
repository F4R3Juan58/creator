-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



lib.callback.register("lunar_drugscreator:supplier:buyItem", function(source, supplierIndex, locationIndex, itemIndex, amount)
  local player = Framework.getPlayerFromId(source)
  local supplier = ServerConfig.suppliers[supplierIndex]
  local supplierItem = supplier and supplier.items[itemIndex]
  if not player or not supplier or not supplierItem or amount <= 0 then
    return false
  end
  local isNearby = Utils.distanceCheck(player.source, supplier.locations[locationIndex], 5.0)
  if not isNearby or not player.canCarryItem(supplierItem.name, amount) then
    return false
  end
  local totalPrice = supplierItem.price * amount
  local accountBalance = player.getAccountMoney(supplier.account)
  if totalPrice > accountBalance then
    return false, locale("not_enough_" .. supplier.account)
  end
  SetTimeout(1000, function()
    player.removeAccountMoney(supplier.account, totalPrice)
    SetTimeout(2000, function()
      player.addItem(supplierItem.name, amount)
      SendLog(source, ("Bought %sx %s from supplier."):format(amount, supplierItem.name))
    end)
  end)
  return true
end)
