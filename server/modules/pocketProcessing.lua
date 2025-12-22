-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L9_2 = A0_2
    L8_2 = A0_2.canCarryItem
    L10_2 = L7_2.name
    L11_2 = type
    L12_2 = L7_2.amount
    L11_2 = L11_2(L12_2)
    if "number" == L11_2 then
      L11_2 = L7_2.amount
      if L11_2 then
        goto lbl_17
      end
    end
    L11_2 = L7_2.amount
    L11_2 = L11_2.max
    ::lbl_17::
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    if not L8_2 then
      L8_2 = false
      return L8_2
    end
  end
  L2_2 = true
  return L2_2
end
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L9_2 = A0_2
    L8_2 = A0_2.getItemCount
    L10_2 = L7_2.name
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = L7_2.amount
    if L8_2 < L9_2 then
      L8_2 = false
      return L8_2
    end
  end
  L2_2 = true
  return L2_2
end
L5_1 = lib
L5_1 = L5_1.callback
L5_1 = L5_1.register
L6_1 = "lunar_drugscreator:pocketProcessing:startProcessing"
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = Framework
  L3_2 = L3_2.getPlayerFromId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = nil
  L5_2 = 1
  L6_2 = ServerConfig
  L6_2 = L6_2.pocketProcessing
  L6_2 = #L6_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = ServerConfig
    L9_2 = L9_2.pocketProcessing
    L9_2 = L9_2[L8_2]
    L9_2 = L9_2.activationItem
    if L9_2 == A1_2 then
      L9_2 = ServerConfig
      L9_2 = L9_2.pocketProcessing
      L4_2 = L9_2[L8_2]
      break
    end
  end
  if not L4_2 then
    L5_2 = false
    return L5_2
  end
  L5_2 = L4_2.recipes
  L5_2 = L5_2[A2_2]
  L6_2 = L3_1
  L7_2 = L3_2
  L8_2 = L5_2.giveItems
  L6_2 = L6_2(L7_2, L8_2)
  if not L6_2 then
    L6_2 = false
    return L6_2
  end
  L6_2 = L4_1
  L7_2 = L3_2
  L8_2 = L5_2.requiredItems
  L6_2 = L6_2(L7_2, L8_2)
  if not L6_2 then
    L6_2 = false
    L7_2 = locale
    L8_2 = "missing_items"
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    return L6_2, L7_2, L8_2, L9_2
  end
  L6_2 = L2_1
  L6_2 = L6_2[A0_2]
  if L6_2 then
    L6_2 = false
    L7_2 = locale
    L8_2 = "already_processing"
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    return L6_2, L7_2, L8_2, L9_2
  end
  L6_2 = L2_1
  L6_2[A0_2] = true
  L6_2 = CreateThread
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L0_3 = lib
    L0_3 = L0_3.callback
    L0_3 = L0_3.await
    L1_3 = "lunar_drugscreator:pocketProcessing:animate"
    L2_3 = A0_2
    L3_3 = A1_2
    L4_3 = A2_2
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
    if L0_3 then
      L1_3 = L4_1
      L2_3 = L3_2
      L3_3 = L5_2.requiredItems
      L1_3 = L1_3(L2_3, L3_3)
      if not L1_3 then
        L2_3 = A0_2
        L1_3 = L2_1
        L1_3[L2_3] = nil
        L1_3 = false
        L2_3 = locale
        L3_3 = "missing_items"
        L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L2_3(L3_3)
        return L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
      end
      L1_3 = 1
      L2_3 = L5_2.requiredItems
      L2_3 = #L2_3
      L3_3 = 1
      for L4_3 = L1_3, L2_3, L3_3 do
        L5_3 = L5_2.requiredItems
        L5_3 = L5_3[L4_3]
        L6_3 = L3_2
        L7_3 = L6_3
        L6_3 = L6_3.removeItem
        L8_3 = L5_3.name
        L9_3 = L5_3.amount
        L6_3(L7_3, L8_3, L9_3)
      end
      L1_3 = {}
      L2_3 = 1
      L3_3 = L5_2.giveItems
      L3_3 = #L3_3
      L4_3 = 1
      for L5_3 = L2_3, L3_3, L4_3 do
        L6_3 = L5_2.giveItems
        L6_3 = L6_3[L5_3]
        L7_3 = math
        L7_3 = L7_3.random
        L8_3 = L6_3.amount
        L8_3 = L8_3.min
        L9_3 = L6_3.amount
        L9_3 = L9_3.max
        L7_3 = L7_3(L8_3, L9_3)
        L8_3 = L3_2
        L9_3 = L8_3
        L8_3 = L8_3.addItem
        L10_3 = L6_3.name
        L11_3 = L7_3
        L8_3(L9_3, L10_3, L11_3)
        L8_3 = #L1_3
        L8_3 = L8_3 + 1
        L9_3 = "%sx %s"
        L10_3 = L9_3
        L9_3 = L9_3.format
        L11_3 = L7_3
        L12_3 = L6_3.name
        L9_3 = L9_3(L10_3, L11_3, L12_3)
        L1_3[L8_3] = L9_3
        L8_3 = Stats
        L8_3 = L8_3.addProcessed
        L9_3 = L6_3.name
        L10_3 = L7_3
        L8_3(L9_3, L10_3)
      end
      L2_3 = SendLog
      L3_3 = A0_2
      L4_3 = "Crafted %s with pocket processing."
      L5_3 = L4_3
      L4_3 = L4_3.format
      L6_3 = table
      L6_3 = L6_3.concat
      L7_3 = L1_3
      L8_3 = ", "
      L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L6_3(L7_3, L8_3)
      L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    end
    L2_3 = A0_2
    L1_3 = L2_1
    L1_3[L2_3] = nil
  end
  L6_2(L7_2)
  L6_2 = true
  return L6_2
end
L5_1(L6_1, L7_1)
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = 1
  L1_2 = ServerConfig
  L1_2 = L1_2.pocketProcessing
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = ServerConfig
    L4_2 = L4_2.pocketProcessing
    L4_2 = L4_2[L3_2]
    L6_2 = L4_2.activationItem
    L5_2 = L0_1
    L5_2 = L5_2[L6_2]
    if not L5_2 then
      L5_2 = Framework
      L5_2 = L5_2.registerUsableItem
      L6_2 = L4_2.activationItem
      function L7_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3
        L1_3 = Framework
        L1_3 = L1_3.getPlayerFromId
        L2_3 = A0_3
        L1_3 = L1_3(L2_3)
        if not L1_3 then
          return
        end
        L3_3 = L4_2.activationItem
        L2_3 = L1_1
        L2_3 = L2_3[L3_3]
        if not L2_3 then
          return
        end
        L3_3 = L2_3
        L4_3 = L1_3
        L3_3(L4_3)
      end
      L5_2(L6_2, L7_2)
      L6_2 = L4_2.activationItem
      L5_2 = L0_1
      L5_2[L6_2] = true
    end
    L6_2 = L4_2.activationItem
    L5_2 = L1_1
    function L7_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      L1_3 = TriggerClientEvent
      L2_3 = "lunar_drugscreator:pocketProcessing:openMenu"
      L3_3 = A0_3.source
      L4_3 = L3_2
      L1_3(L2_3, L3_3, L4_3)
    end
    L5_2[L6_2] = L7_2
  end
end
L6_1 = {}
L6_1.field = "pocketProcessing"
L6_1.reload = L5_1
PocketProcessing = L6_1
