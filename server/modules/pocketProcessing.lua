-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local registeredActivationItems = {}
local activationHandlers = {}
local activePocketProcessors = {}
function CanCarryPocketRewards(player, rewards)
  for _, reward in pairs(rewards) do
    local rewardAmount = reward.amount
    if "number" ~= type(reward.amount) then
      rewardAmount = reward.amount.max
    end
    if not player.canCarryItem(reward.name, rewardAmount) then
      return false
    end
  end
  return true
end
function HasRequiredPocketItems(player, requiredItems)
  for _, requiredItem in pairs(requiredItems) do
    local ownedAmount = player.getItemCount(requiredItem.name)
    if ownedAmount < requiredItem.amount then
      return false
    end
  end
  return true
end
lib.callback.register("lunar_drugscreator:pocketProcessing:startProcessing", function(source, activationItem, recipeIndex)
  local player = Framework.getPlayerFromId(source)
  if not player then
    return false
  end
  local processingConfig = nil
  for index = 1, #ServerConfig.pocketProcessing, 1 do
    local recipe = ServerConfig.pocketProcessing[index]
    if recipe.activationItem == activationItem then
      processingConfig = ServerConfig.pocketProcessing[index]
      break
    end
  end
  if not processingConfig then
    return false
  end
  local recipe = processingConfig.recipes[recipeIndex]
  if not CanCarryPocketRewards(player, recipe.giveItems) then
    return false
  end
  if not HasRequiredPocketItems(player, recipe.requiredItems) then
    return false, locale("missing_items")
  end
  if activePocketProcessors[source] then
    return false, locale("already_processing")
  end
  activePocketProcessors[source] = true
  CreateThread(function()
    local completed = lib.callback.await("lunar_drugscreator:pocketProcessing:animate", source, activationItem, recipeIndex)
    if completed then
      if not HasRequiredPocketItems(player, recipe.requiredItems) then
        activePocketProcessors[source] = nil
        return false, locale("missing_items")
      end
      for index = 1, #recipe.requiredItems, 1 do
        local requiredItem = recipe.requiredItems[index]
        player.removeItem(requiredItem.name, requiredItem.amount)
      end
      local rewardMessages = {}
      for index = 1, #recipe.giveItems, 1 do
        local reward = recipe.giveItems[index]
        local rewardAmount = math.random(reward.amount.min, reward.amount.max)
        player.addItem(reward.name, rewardAmount)
        rewardMessages[#rewardMessages + 1] = ("%sx %s"):format(rewardAmount, reward.name)
        Stats.addProcessed(reward.name, rewardAmount)
      end
      SendLog(source, ("Crafted %s with pocket processing."):format(table.concat(rewardMessages, ", ")))
    end
    activePocketProcessors[source] = nil
  end)
  return true
end)
function ReloadPocketProcessing()
  for processorIndex = 1, #ServerConfig.pocketProcessing, 1 do
    local processor = ServerConfig.pocketProcessing[processorIndex]
    if not registeredActivationItems[processor.activationItem] then
      Framework.registerUsableItem(processor.activationItem, function(playerId)
        local player = Framework.getPlayerFromId(playerId)
        if not player then
          return
        end
        local activationHandler = activationHandlers[processor.activationItem]
        if not activationHandler then
          return
        end
        activationHandler(player)
      end)
      registeredActivationItems[processor.activationItem] = true
    end
    activationHandlers[processor.activationItem] = function(player)
      TriggerClientEvent("lunar_drugscreator:pocketProcessing:openMenu", player.source, processorIndex)
    end
  end
end
PocketProcessing = {
  field = "pocketProcessing",
  reload = ReloadPocketProcessing
}
