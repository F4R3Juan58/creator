-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1
L0_1 = lib
L0_1 = L0_1.callback
L0_1 = L0_1.register
L1_1 = "lunar_drugscreator:retail:canStartSelling"
function L2_1()
  local L0_2, L1_2
  L0_2 = Utils
  L0_2 = L0_2.getPoliceCount
  L0_2 = L0_2()
  L1_2 = ServerConfig
  L1_2 = L1_2.generalSettings
  L1_2 = L1_2.retailSellingMinPolice
  if not L1_2 then
    L1_2 = 0
  end
  L0_2 = L0_2 >= L1_2
  return L0_2
end
L0_1(L1_1, L2_1)
L0_1 = lib
L0_1 = L0_1.callback
L0_1 = L0_1.register
L1_1 = "lunar_drugscreator:retail:getAvailableItems"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = {}
  L3_2 = Framework
  L3_2 = L3_2.getPlayerFromId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return L2_2
  end
  L4_2 = ServerConfig
  L4_2 = L4_2.retailSellingZones
  L4_2 = L4_2[A1_2]
  if not L4_2 then
    return L2_2
  end
  L5_2 = pairs
  L6_2 = L4_2.items
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L12_2 = L3_2
    L11_2 = L3_2.getItemCount
    L13_2 = L10_2.name
    L11_2 = L11_2(L12_2, L13_2)
    L12_2 = L10_2.amount
    L12_2 = L12_2.min
    if L11_2 >= L12_2 then
      L12_2 = table
      L12_2 = L12_2.insert
      L13_2 = L2_2
      L14_2 = {}
      L15_2 = L10_2.name
      L14_2.name = L15_2
      L15_2 = L10_2.amount
      L15_2 = L15_2.min
      L14_2.minCount = L15_2
      L15_2 = math
      L15_2 = L15_2.min
      L16_2 = L10_2.amount
      L16_2 = L16_2.max
      L17_2 = L11_2
      L15_2 = L15_2(L16_2, L17_2)
      L14_2.maxCount = L15_2
      L12_2(L13_2, L14_2)
    end
  end
  return L2_2
end
L0_1(L1_1, L2_1)
L0_1 = {}
L1_1 = RegisterNetEvent
L2_1 = "lunar_drugscreator:retail:confirm"
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L4_2 = source
  L5_2 = Framework
  L5_2 = L5_2.getPlayerFromId
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L6_2 = L0_1
    L6_2 = L6_2[A3_2]
    if not L6_2 then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L6_2 = NetworkGetEntityFromNetworkId
  L7_2 = A3_2
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L7_2 = DoesEntityExist
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      goto lbl_24
    end
  end
  do return end
  ::lbl_24::
  L7_2 = GetEntityPopulationType
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  if 4 ~= L7_2 and 5 ~= L7_2 and 6 ~= L7_2 then
    return
  end
  L8_2 = GetEntityCoords
  L9_2 = GetPlayerPed
  L10_2 = L4_2
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L9_2(L10_2)
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L9_2 = false
  L10_2 = nil
  L11_2 = 1
  L12_2 = ServerConfig
  L12_2 = L12_2.retailSellingZones
  L12_2 = #L12_2
  L13_2 = 1
  for L14_2 = L11_2, L12_2, L13_2 do
    L15_2 = ServerConfig
    L15_2 = L15_2.retailSellingZones
    L15_2 = L15_2[L14_2]
    L16_2 = 1
    L17_2 = L15_2.locations
    L17_2 = #L17_2
    L18_2 = 1
    for L19_2 = L16_2, L17_2, L18_2 do
      L20_2 = L15_2.locations
      L20_2 = L20_2[L19_2]
      L21_2 = L20_2.coords
      L21_2 = L8_2 - L21_2
      L21_2 = #L21_2
      L22_2 = L20_2.radius
      if L21_2 <= L22_2 then
        L9_2 = true
        L10_2 = L14_2
        break
      end
    end
    if L9_2 then
      break
    end
  end
  if not L9_2 or not L10_2 then
    return
  end
  L11_2 = ServerConfig
  L11_2 = L11_2.retailSellingZones
  L11_2 = L11_2[L10_2]
  L12_2 = false
  L13_2 = nil
  L14_2 = pairs
  L15_2 = L11_2.items
  L14_2, L15_2, L16_2, L17_2 = L14_2(L15_2)
  for L18_2, L19_2 in L14_2, L15_2, L16_2, L17_2 do
    L20_2 = L19_2.name
    if L20_2 == A0_2 then
      L12_2 = true
      L13_2 = L19_2
      break
    end
  end
  if not L12_2 or not L13_2 then
    return
  end
  L14_2 = L13_2.amount
  L14_2 = L14_2.min
  if not (A1_2 < L14_2) then
    L14_2 = L13_2.amount
    L14_2 = L14_2.max
    if not (A1_2 > L14_2) then
      goto lbl_108
    end
  end
  do return end
  ::lbl_108::
  if not (A2_2 <= 0) then
    L14_2 = L13_2.price
    L15_2 = L11_2.priceTolerance
    L15_2 = 1 + L15_2
    L14_2 = L14_2 * L15_2
    if not (A2_2 > L14_2) then
      goto lbl_119
    end
  end
  do return end
  ::lbl_119::
  L15_2 = L5_2
  L14_2 = L5_2.getItemCount
  L16_2 = A0_2
  L14_2 = L14_2(L15_2, L16_2)
  if A1_2 > L14_2 then
    return
  end
  L15_2 = L0_1
  L15_2[A3_2] = true
  L16_2 = L5_2
  L15_2 = L5_2.removeItem
  L17_2 = A0_2
  L18_2 = A1_2
  L15_2(L16_2, L17_2, L18_2)
  L16_2 = L5_2
  L15_2 = L5_2.addAccountMoney
  L17_2 = L11_2.account
  L18_2 = A1_2 * A2_2
  L15_2(L16_2, L17_2, L18_2)
  L15_2 = Stats
  L15_2 = L15_2.addSold
  L16_2 = A0_2
  L17_2 = A1_2
  L15_2(L16_2, L17_2)
  L15_2 = Editable
  L15_2 = L15_2.onRetailSale
  L16_2 = L5_2
  L17_2 = A0_2
  L18_2 = A1_2
  L19_2 = A2_2
  L15_2(L16_2, L17_2, L18_2, L19_2)
  L15_2 = math
  L15_2 = L15_2.random
  L15_2 = L15_2()
  L16_2 = L11_2.reportChance
  if not L16_2 then
    L16_2 = 0
  end
  if L15_2 <= L16_2 then
    L15_2 = Dispatch
    L15_2 = L15_2.call
    L16_2 = GetEntityCoords
    L17_2 = L6_2
    L16_2 = L16_2(L17_2)
    L17_2 = {}
    L18_2 = locale
    L19_2 = "dispatch_retail_code"
    L18_2 = L18_2(L19_2)
    L17_2.Code = L18_2
    L18_2 = locale
    L19_2 = "dispatch_retail_title"
    L18_2 = L18_2(L19_2)
    L17_2.Title = L18_2
    L18_2 = locale
    L19_2 = "dispatch_retail_message"
    L18_2 = L18_2(L19_2)
    L17_2.Message = L18_2
    L15_2(L16_2, L17_2)
  end
end
L1_1(L2_1, L3_1)
