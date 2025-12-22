-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
ServerConfig = nil
L0_1 = {}
L1_1 = Laboratories
L2_1 = ProcessingZones
L3_1 = Suppliers
L4_1 = RetailSelling
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
L0_1[4] = L4_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = ipairs
  L1_2 = L0_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.reload
    L6_2()
  end
  L0_2 = UI
  L0_2 = L0_2.sendMessage
  L1_2 = "updateServerConfig"
  L2_2 = {}
  L3_2 = ServerConfig
  L2_2.config = L3_2
  L2_2.force = false
  L0_2(L1_2, L2_2)
end
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = ""
  L3_2 = 1
  L4_2 = #A0_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = string
    L7_2 = L7_2.byte
    L8_2 = A1_2
    L9_2 = #A1_2
    L9_2 = L6_2 % L9_2
    L9_2 = L9_2 + 1
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L2_2
    L9_2 = string
    L9_2 = L9_2.char
    L10_2 = string
    L10_2 = L10_2.byte
    L11_2 = A0_2
    L12_2 = L6_2
    L10_2 = L10_2(L11_2, L12_2)
    L10_2 = L10_2 ~ L7_2
    L9_2 = L9_2(L10_2)
    L8_2 = L8_2 .. L9_2
    L2_2 = L8_2
  end
  L3_2 = json
  L3_2 = L3_2.decode
  L4_2 = L2_2
  return L3_2(L4_2)
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if nil ~= A0_2 then
    L1_2 = type
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if "number" ~= L1_2 then
      L1_2 = type
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if "string" ~= L1_2 then
        L1_2 = type
        L2_2 = A0_2
        L1_2 = L1_2(L2_2)
        if "boolean" ~= L1_2 then
          L1_2 = type
          L2_2 = A0_2
          L1_2 = L1_2(L2_2)
          if "function" ~= L1_2 then
            goto lbl_24
          end
        end
      end
    end
  end
  do return A0_2 end
  ::lbl_24::
  L1_2 = A0_2.x
  if nil ~= L1_2 then
    L1_2 = A0_2.y
    if nil ~= L1_2 then
      L1_2 = A0_2.z
      if nil ~= L1_2 then
        L1_2 = A0_2.w
        if nil ~= L1_2 then
          L1_2 = vector4
          L2_2 = A0_2.x
          L3_2 = A0_2.y
          L4_2 = A0_2.z
          L5_2 = A0_2.w
          return L1_2(L2_2, L3_2, L4_2, L5_2)
        else
          L1_2 = vector3
          L2_2 = A0_2.x
          L3_2 = A0_2.y
          L4_2 = A0_2.z
          return L1_2(L2_2, L3_2, L4_2)
        end
      end
    end
  end
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L6_2
    L9_2 = type
    L10_2 = L6_2
    L9_2 = L9_2(L10_2)
    if "string" == L9_2 then
      L9_2 = tonumber
      L10_2 = L6_2
      L9_2 = L9_2(L10_2)
      if L9_2 then
        L8_2 = L9_2
        L1_2[L6_2] = nil
      end
    end
    L9_2 = type
    L10_2 = L7_2
    L9_2 = L9_2(L10_2)
    if "string" == L9_2 and "" == L7_2 then
      L1_2[L8_2] = nil
    else
      L9_2 = L3_1
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      L1_2[L8_2] = L9_2
    end
  end
  return L1_2
end
L4_1 = CreateThread
function L5_1()
  local L0_2, L1_2
  while true do
    L0_2 = Framework
    L0_2 = L0_2.isPlayerLoaded
    L0_2 = L0_2()
    if L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = 100
    L0_2(L1_2)
  end
  L0_2 = TriggerServerEvent
  L1_2 = "lunar_drugscreator:init"
  L0_2(L1_2)
end
L4_1(L5_1)
L4_1 = RegisterNetEvent
L5_1 = "lunar_drugscreator:init"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  if not A0_2 then
    return
  end
  L1_2 = L2_1
  L2_2 = A0_2
  L3_2 = "PUDI6iaaIBish2g71o0QKJVmMnTWAKGviIpuO"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L3_1
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  ServerConfig = L2_2
  L2_2 = L1_1
  L2_2()
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "lunar_drugscreator:updateServerConfig"
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = ServerConfig
  if not L2_2 then
    return
  end
  L2_2 = ServerConfig
  L3_2 = 1
  L4_2 = #A0_2
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2[L6_2]
    L2_2 = L2_2[L7_2]
  end
  L3_2 = #A0_2
  L3_2 = A0_2[L3_2]
  L4_2 = L3_1
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L2_2[L3_2] = L4_2
  L3_2 = L1_1
  L3_2()
end
L4_1(L5_1, L6_1)
