-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = nil
L1_1 = false
L2_1 = MySQL
L2_1 = L2_1.ready
function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = MySQL
  L0_2 = L0_2.single
  L0_2 = L0_2.await
  L1_2 = "SELECT * FROM lunar_drugscreator WHERE `key` = ?"
  L2_2 = {}
  L3_2 = "webhook"
  L2_2[1] = L3_2
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = L0_2
  if L1_2 then
    L1_2 = L1_2.data
  end
  L0_1 = L1_2
  L1_2 = true
  L1_1 = L1_2
end
L2_1(L3_1)
L2_1 = lib
L2_1 = L2_1.callback
L2_1 = L2_1.register
L3_1 = "lunar_drugscreator:getWebhook"
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = IsPlayerAdmin
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  while true do
    L1_2 = L1_1
    if L1_2 then
      break
    end
    L1_2 = Wait
    L2_2 = 100
    L1_2(L2_2)
  end
  L1_2 = L0_1
  if not L1_2 then
    L1_2 = ""
  end
  return L1_2
end
L2_1(L3_1, L4_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if not A0_2 or "" == A0_2 then
    L1_2 = nil
    L0_1 = L1_2
    L1_2 = MySQL
    L1_2 = L1_2.update
    L1_2 = L1_2.await
    L2_2 = "DELETE FROM lunar_drugscreator WHERE `key` = ?"
    L3_2 = {}
    L4_2 = "webhook"
    L3_2[1] = L4_2
    L1_2(L2_2, L3_2)
  else
    L0_1 = A0_2
    L1_2 = MySQL
    L1_2 = L1_2.update
    L1_2 = L1_2.await
    L2_2 = "REPLACE INTO lunar_drugscreator (`key`, `data`) VALUES (?, ?)"
    L3_2 = {}
    L4_2 = "webhook"
    L5_2 = A0_2
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L1_2(L2_2, L3_2)
  end
end
UpdateWebhook = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L0_1
  if L2_2 then
    L2_2 = L0_1
    if "" ~= L2_2 then
      L2_2 = Utils
      L2_2 = L2_2.logToDiscord
      L3_2 = A0_2
      L4_2 = L0_1
      L5_2 = A1_2
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
SendLog = L2_1
