-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local isProcessingPocketRecipe = false
function StartPocketProcessingRecipe(selectedRecipe)
  local activationItem = selectedRecipe.activationItem
  local recipeIndex = selectedRecipe.recipeIndex
  local started, errorMessage = lib.callback.await("lunar_drugscreator:pocketProcessing:startProcessing", false, activationItem, recipeIndex)
  if not started then
    LR.notify(errorMessage or locale("missing_items"), "error")
    return
  end
end
lib.callback.register("lunar_drugscreator:pocketProcessing:animate", function(activationItem, recipeIndex)
  local processingConfig = nil
  for index = 1, #ServerConfig.pocketProcessing, 1 do
    local pocketRecipe = ServerConfig.pocketProcessing[index]
    if pocketRecipe.activationItem == activationItem then
      processingConfig = ServerConfig.pocketProcessing[index]
      break
    end
  end
  local recipe = processingConfig.recipes[recipeIndex]
  if not processingConfig or not recipe then
    return false
  end
  isProcessingPocketRecipe = true
  local animationConfig = processingConfig.animation
  if not animationConfig.dict and not animationConfig.scenario then
    animationConfig = nil
  end
  local animationProp = nil
  if processingConfig.animationProp and processingConfig.animationProp.model then
    if IsModelValid(processingConfig.animationProp.model) then
      animationProp = processingConfig.animationProp
    end
  end
  FreezeEntityPosition(cache.ped, true)
  local success = LR.progressBar(recipe.progress, recipe.duration, true, animationConfig, animationProp)
  ClearPedTasks(cache.ped)
  FreezeEntityPosition(cache.ped, false)
  isProcessingPocketRecipe = false
  return success
end)
function ShowPocketProcessingMenu(processorConfig, processorIndex)
  local recipeOptions = {}
  for recipeIndex = 1, #processorConfig.recipes, 1 do
    local recipe = processorConfig.recipes[recipeIndex]
    local formattedRequirements = {}
    for requirementIndex = 1, #recipe.requiredItems, 1 do
      local requiredItem = recipe.requiredItems[requirementIndex]
      formattedRequirements[requirementIndex] = ("%sx %s"):format(requiredItem.amount, Utils.getItemLabel(requiredItem.name))
    end
    local option = {}
    option.title = Utils.getItemLabel(recipe.giveItems[1].name)
    option.description = locale("required_items", table.concat(formattedRequirements, ", "))
    option.icon = Editable.getInventoryIcon(recipe.giveItems[1].name)
    option.onSelect = StartPocketProcessingRecipe
    option.args = {
      activationItem = processorConfig.activationItem,
      recipeIndex = recipeIndex
    }
    recipeOptions[recipeIndex] = option
  end
  lib.registerContext({
    id = "pocket_recipes",
    title = locale("recipes"),
    options = recipeOptions
  })
  lib.showContext("pocket_recipes")
end
RegisterNetEvent("lunar_drugscreator:pocketProcessing:openMenu", function(processorIndex)
  if isProcessingPocketRecipe then
    LR.notify(locale("already_processing"), "error")
    return
  end
  local processorConfig = ServerConfig.pocketProcessing[processorIndex]
  if not processorConfig then
    return
  end
  ShowPocketProcessingMenu(processorConfig, processorIndex)
end)
