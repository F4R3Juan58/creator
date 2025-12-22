-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = false
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.activationItem
  L2_2 = A0_2.recipeIndex
  L3_2 = lib
  L3_2 = L3_2.callback
  L3_2 = L3_2.await
  L4_2 = "lunar_drugscreator:pocketProcessing:startProcessing"
  L5_2 = false
  L6_2 = L1_2
  L7_2 = L2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  if not L3_2 then
    L5_2 = LR
    L5_2 = L5_2.notify
    L6_2 = L4_2 or L6_2
    if not L4_2 then
      L6_2 = locale
      L7_2 = "missing_items"
      L6_2 = L6_2(L7_2)
    end
    L7_2 = "error"
    L5_2(L6_2, L7_2)
    return
  end
end
L2_1 = lib
L2_1 = L2_1.callback
L2_1 = L2_1.register
L3_1 = "lunar_drugscreator:pocketProcessing:animate"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = nil
  L3_2 = 1
  L4_2 = ServerConfig
  L4_2 = L4_2.pocketProcessing
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = ServerConfig
    L7_2 = L7_2.pocketProcessing
    L7_2 = L7_2[L6_2]
    L7_2 = L7_2.activationItem
    if L7_2 == A0_2 then
      L7_2 = ServerConfig
      L7_2 = L7_2.pocketProcessing
      L2_2 = L7_2[L6_2]
      break
    end
  end
  L3_2 = L2_2.recipes
  L3_2 = L3_2[A1_2]
  if not L2_2 or not L3_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = true
  L0_1 = L4_2
  L4_2 = L2_2.animation
  L4_2 = L4_2.dict
  if not L4_2 then
    L4_2 = L2_2.animation
    L4_2 = L4_2.scenario
    if not L4_2 then
      goto lbl_40
    end
  end
  L4_2 = L2_2.animation
  ::lbl_40::
  if not L4_2 then
    L4_2 = nil
  end
  L5_2 = L2_2.animationProp
  if L5_2 then
    L5_2 = L5_2.model
  end
  if L5_2 then
    L5_2 = IsModelValid
    L6_2 = L2_2.animationProp
    L6_2 = L6_2.model
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = L2_2.animationProp
      if L5_2 then
        goto lbl_57
      end
    end
  end
  L5_2 = nil
  ::lbl_57::
  L6_2 = FreezeEntityPosition
  L7_2 = cache
  L7_2 = L7_2.ped
  L8_2 = true
  L6_2(L7_2, L8_2)
  L6_2 = LR
  L6_2 = L6_2.progressBar
  L7_2 = L3_2.progress
  L8_2 = L3_2.duration
  L9_2 = true
  L10_2 = L4_2
  L11_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L7_2 = ClearPedTasks
  L8_2 = cache
  L8_2 = L8_2.ped
  L7_2(L8_2)
  L7_2 = FreezeEntityPosition
  L8_2 = cache
  L8_2 = L8_2.ped
  L9_2 = false
  L7_2(L8_2, L9_2)
  L7_2 = false
  L0_1 = L7_2
  return L6_2
end
L2_1(L3_1, L4_1)
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = {}
  L3_2 = 1
  L4_2 = A0_2.recipes
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2.recipes
    L7_2 = L7_2[L6_2]
    L8_2 = {}
    L9_2 = 1
    L10_2 = L7_2.requiredItems
    L10_2 = #L10_2
    L11_2 = 1
    for L12_2 = L9_2, L10_2, L11_2 do
      L13_2 = L7_2.requiredItems
      L13_2 = L13_2[L12_2]
      L14_2 = "%sx %s"
      L15_2 = L14_2
      L14_2 = L14_2.format
      L16_2 = L13_2.amount
      L17_2 = Utils
      L17_2 = L17_2.getItemLabel
      L18_2 = L13_2.name
      L17_2, L18_2 = L17_2(L18_2)
      L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
      L8_2[L12_2] = L14_2
    end
    L9_2 = {}
    L10_2 = Utils
    L10_2 = L10_2.getItemLabel
    L11_2 = L7_2.giveItems
    L11_2 = L11_2[1]
    L11_2 = L11_2.name
    L10_2 = L10_2(L11_2)
    L9_2.title = L10_2
    L10_2 = locale
    L11_2 = "required_items"
    L12_2 = table
    L12_2 = L12_2.concat
    L13_2 = L8_2
    L14_2 = ", "
    L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L12_2(L13_2, L14_2)
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L9_2.description = L10_2
    L10_2 = Editable
    L10_2 = L10_2.getInventoryIcon
    L11_2 = L7_2.giveItems
    L11_2 = L11_2[1]
    L11_2 = L11_2.name
    L10_2 = L10_2(L11_2)
    L9_2.icon = L10_2
    L10_2 = L1_1
    L9_2.onSelect = L10_2
    L10_2 = {}
    L11_2 = A0_2.activationItem
    L10_2.activationItem = L11_2
    L10_2.recipeIndex = L6_2
    L9_2.args = L10_2
    L2_2[L6_2] = L9_2
  end
  L3_2 = lib
  L3_2 = L3_2.registerContext
  L4_2 = {}
  L4_2.id = "pocket_recipes"
  L5_2 = locale
  L6_2 = "recipes"
  L5_2 = L5_2(L6_2)
  L4_2.title = L5_2
  L4_2.options = L2_2
  L3_2(L4_2)
  L3_2 = lib
  L3_2 = L3_2.showContext
  L4_2 = "pocket_recipes"
  L3_2(L4_2)
end
L3_1 = RegisterNetEvent
L4_1 = "lunar_drugscreator:pocketProcessing:openMenu"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1
  if L1_2 then
    L1_2 = LR
    L1_2 = L1_2.notify
    L2_2 = locale
    L3_2 = "already_processing"
    L2_2 = L2_2(L3_2)
    L3_2 = "error"
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = ServerConfig
  L1_2 = L1_2.pocketProcessing
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    return
  end
  L2_2 = L2_1
  L3_2 = L1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L3_1(L4_1, L5_1)
