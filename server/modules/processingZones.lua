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
L6_1 = "lunar_drugscreator:processing:startProcessing"
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = Framework
  L3_2 = L3_2.getPlayerFromId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = ServerConfig
  L4_2 = L4_2.processingZones
  L4_2 = L4_2[A1_2]
  L5_2 = L4_2.locations
  L5_2 = L5_2[A2_2]
  if L3_2 and L4_2 and L5_2 then
    L6_2 = Utils
    L6_2 = L6_2.distanceCheck
    L7_2 = A0_2
    L8_2 = L5_2.coords
    L9_2 = 6.0
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    if L6_2 then
      goto lbl_25
    end
  end
  do return end
  ::lbl_25::
  L6_2 = L3_1
  L7_2 = L3_2
  L8_2 = L4_2.giveItems
  L6_2 = L6_2(L7_2, L8_2)
  if not L6_2 then
    L6_2 = false
    return L6_2
  end
  L6_2 = L4_1
  L7_2 = L3_2
  L8_2 = L4_2.requiredItems
  L6_2 = L6_2(L7_2, L8_2)
  if not L6_2 then
    L6_2 = false
    L7_2 = L4_2.errorMessage
    if not L7_2 then
      L7_2 = locale
      L8_2 = "missing_items"
      L7_2 = L7_2(L8_2)
    end
    return L6_2, L7_2
  end
  L6_2 = L0_1
  L6_2 = L6_2[A0_2]
  if L6_2 then
    L6_2 = false
    L7_2 = locale
    L8_2 = "already_processing"
    L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2)
    return L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  end
  L6_2 = GetPlayerRoutingBucket
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L7_2 = L6_2
  L8_2 = "_"
  L9_2 = A1_2
  L10_2 = "_"
  L11_2 = A2_2
  L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2
  L8_2 = L4_2.syncedScene
  if L8_2 then
    L8_2 = L1_1
    L8_2 = L8_2[L7_2]
    if L8_2 then
      L8_2 = false
      L9_2 = locale
      L10_2 = "location_busy"
      L9_2, L10_2, L11_2 = L9_2(L10_2)
      return L8_2, L9_2, L10_2, L11_2
    end
  end
  L8_2 = L0_1
  L8_2[A0_2] = true
  L8_2 = L4_2.syncedScene
  if L8_2 then
    L8_2 = L1_1
    L8_2[L7_2] = true
    L8_2 = L2_1
    L8_2[A0_2] = L7_2
  end
  L8_2 = CreateThread
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L0_3 = lib
    L0_3 = L0_3.callback
    L0_3 = L0_3.await
    L1_3 = "lunar_drugscreator:processing:animate"
    L2_3 = A0_2
    L3_3 = A1_2
    L4_3 = A2_2
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
    L1_3 = Framework
    L1_3 = L1_3.getPlayerFromId
    L2_3 = A0_2
    L1_3 = L1_3(L2_3)
    if not L1_3 then
      L2_3 = A0_2
      L1_3 = L0_1
      L1_3[L2_3] = nil
      L1_3 = L4_2.syncedScene
      if L1_3 then
        L2_3 = A0_2
        L1_3 = L2_1
        L1_3 = L1_3[L2_3]
        L2_3 = L7_2
        if L1_3 == L2_3 then
          L2_3 = L7_2
          L1_3 = L1_1
          L1_3[L2_3] = nil
          L2_3 = A0_2
          L1_3 = L2_1
          L1_3[L2_3] = nil
        end
      end
      return
    end
    L1_3 = Utils
    L1_3 = L1_3.distanceCheck
    L2_3 = A0_2
    L3_3 = L5_2.coords
    L4_3 = 6.0
    L1_3 = L1_3(L2_3, L3_3, L4_3)
    if not L1_3 then
      L2_3 = A0_2
      L1_3 = L0_1
      L1_3[L2_3] = nil
      L1_3 = L4_2.syncedScene
      if L1_3 then
        L2_3 = A0_2
        L1_3 = L2_1
        L1_3 = L1_3[L2_3]
        L2_3 = L7_2
        if L1_3 == L2_3 then
          L2_3 = L7_2
          L1_3 = L1_1
          L1_3[L2_3] = nil
          L2_3 = A0_2
          L1_3 = L2_1
          L1_3[L2_3] = nil
        end
      end
      return
    end
    L1_3 = L0_3
    if L1_3 then
      L2_3 = Framework
      L2_3 = L2_3.getPlayerFromId
      L3_3 = A0_2
      L2_3 = L2_3(L3_3)
      L3_2 = L2_3
      L2_3 = L3_2
      if L2_3 then
        L2_3 = L3_1
        L3_3 = L3_2
        L4_3 = L4_2.giveItems
        L2_3 = L2_3(L3_3, L4_3)
        if not L2_3 then
        else
          L2_3 = L4_1
          L3_3 = L3_2
          L4_3 = L4_2.requiredItems
          L2_3 = L2_3(L3_3, L4_3)
          if not L2_3 then
            L2_3 = LR
            L2_3 = L2_3.notify
            L3_3 = A0_2
            L4_3 = L4_2.errorMessage
            if not L4_3 then
              L4_3 = locale
              L5_3 = "missing_items"
              L4_3 = L4_3(L5_3)
            end
            L5_3 = "error"
            L2_3(L3_3, L4_3, L5_3)
          else
            L2_3 = true
            L3_3 = 1
            L4_3 = L4_2.requiredItems
            L4_3 = #L4_3
            L5_3 = 1
            for L6_3 = L3_3, L4_3, L5_3 do
              L7_3 = L4_2.requiredItems
              L7_3 = L7_3[L6_3]
              L8_3 = L3_2
              L9_3 = L8_3
              L8_3 = L8_3.removeItem
              L10_3 = L7_3.name
              L11_3 = L7_3.amount
              L8_3 = L8_3(L9_3, L10_3, L11_3)
              if false == L8_3 then
                L2_3 = false
                break
              end
            end
            if L2_3 then
              L3_3 = {}
              L4_3 = 1
              L5_3 = L4_2.giveItems
              L5_3 = #L5_3
              L6_3 = 1
              for L7_3 = L4_3, L5_3, L6_3 do
                L8_3 = L4_2.giveItems
                L8_3 = L8_3[L7_3]
                L9_3 = math
                L9_3 = L9_3.random
                L10_3 = L8_3.amount
                L10_3 = L10_3.min
                L11_3 = L8_3.amount
                L11_3 = L11_3.max
                L9_3 = L9_3(L10_3, L11_3)
                L10_3 = L3_2
                L11_3 = L10_3
                L10_3 = L10_3.addItem
                L12_3 = L8_3.name
                L13_3 = L9_3
                L10_3 = L10_3(L11_3, L12_3, L13_3)
                if L10_3 then
                  L10_3 = #L3_3
                  L10_3 = L10_3 + 1
                  L11_3 = "%sx %s"
                  L12_3 = L11_3
                  L11_3 = L11_3.format
                  L13_3 = L9_3
                  L14_3 = L8_3.name
                  L11_3 = L11_3(L12_3, L13_3, L14_3)
                  L3_3[L10_3] = L11_3
                  L10_3 = Stats
                  L10_3 = L10_3.addProcessed
                  L11_3 = L8_3.name
                  L12_3 = L9_3
                  L10_3(L11_3, L12_3)
                else
                end
              end
              L4_3 = #L3_3
              if L4_3 > 0 then
                L4_3 = SendLog
                L5_3 = A0_2
                L6_3 = "Processed %s in processing zone."
                L7_3 = L6_3
                L6_3 = L6_3.format
                L8_3 = table
                L8_3 = L8_3.concat
                L9_3 = L3_3
                L10_3 = ", "
                L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3 = L8_3(L9_3, L10_3)
                L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
                L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
              end
            end
          end
        end
      end
    end
    L3_3 = A0_2
    L2_3 = L0_1
    L2_3[L3_3] = nil
    L2_3 = L4_2.syncedScene
    if L2_3 then
      L3_3 = A0_2
      L2_3 = L2_1
      L2_3 = L2_3[L3_3]
      L3_3 = L7_2
      if L2_3 == L3_3 then
        L3_3 = L7_2
        L2_3 = L1_1
        L2_3[L3_3] = nil
        L3_3 = A0_2
        L2_3 = L2_1
        L2_3[L3_3] = nil
      end
    end
  end
  L8_2(L9_2)
  L8_2 = true
  return L8_2
end
L5_1(L6_1, L7_1)
L5_1 = AddEventHandler
L6_1 = "playerDropped"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = source
  L2_2 = L2_1
  L2_2 = L2_2[L1_2]
  if L2_2 then
    L3_2 = L1_1
    L3_2[L2_2] = nil
    L3_2 = L2_1
    L3_2[L1_2] = nil
    L3_2 = L0_1
    L3_2 = L3_2[L1_2]
    if L3_2 then
      L3_2 = L0_1
      L3_2[L1_2] = nil
    end
  end
end
L5_1(L6_1, L7_1)
