-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1
L0_1 = {}
L1_1 = {}
L2_1 = nil
L3_1 = {}
L4_1 = nil
L5_1 = false
L6_1 = {}
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  while true do
    L0_2 = ServerConfig
    if L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = 100
    L0_2(L1_2)
  end
  L0_2 = 1
  L1_2 = L6_1
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L6_1
    L4_2 = L4_2[L3_2]
    L4_2 = L4_2.remove
    L4_2()
  end
  L0_2 = table
  L0_2 = L0_2.wipe
  L1_2 = L6_1
  L0_2(L1_2)
  L0_2 = pairs
  L1_2 = ServerConfig
  L1_2 = L1_2.laboratories
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.blipEnabled
    if not L6_2 then
    else
      L6_2 = L5_2.purchaseable
      if L6_2 then
        L6_2 = pairs
        L7_2 = L5_2.entrances
        L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
        for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
          L12_2 = "%s_%s"
          L13_2 = L12_2
          L12_2 = L12_2.format
          L14_2 = L4_2
          L15_2 = L10_2
          L12_2 = L12_2(L13_2, L14_2, L15_2)
          L13_2 = L1_1
          L13_2 = L13_2[L12_2]
          if L13_2 then
            L14_2 = L13_2.identifier
            L15_2 = Framework
            L15_2 = L15_2.getIdentifier
            L15_2 = L15_2()
            if L14_2 ~= L15_2 then
              L14_2 = lib
              L14_2 = L14_2.table
              L14_2 = L14_2.contains
              L15_2 = L13_2.keys
              L16_2 = Framework
              L16_2 = L16_2.getIdentifier
              L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L16_2()
              L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
              if not L14_2 then
                goto lbl_104
              end
            end
            L14_2 = L6_1
            L14_2 = #L14_2
            L15_2 = L14_2 + 1
            L14_2 = L6_1
            L16_2 = Utils
            L16_2 = L16_2.createBlip
            L17_2 = L11_2.coords
            L18_2 = {}
            L19_2 = Config
            L19_2 = L19_2.blipsFont
            if L19_2 then
              L19_2 = Config
              L19_2 = L19_2.blipsFont
              if "" ~= L19_2 then
                L19_2 = "<font face=\"%s\">%s</font>"
                L20_2 = L19_2
                L19_2 = L19_2.format
                L21_2 = Config
                L21_2 = L21_2.blipsFont
                L22_2 = L5_2.label
                L19_2 = L19_2(L20_2, L21_2, L22_2)
                if L19_2 then
                  goto lbl_90
                end
              end
            end
            L19_2 = L5_2.label
            ::lbl_90::
            L18_2.name = L19_2
            L19_2 = L5_2.blipData
            L19_2 = L19_2.sprite
            L18_2.sprite = L19_2
            L19_2 = L5_2.blipData
            L19_2 = L19_2.color
            L18_2.color = L19_2
            L19_2 = L5_2.blipData
            L19_2 = L19_2.size
            L19_2 = L19_2 + 0.0
            L18_2.size = L19_2
            L16_2 = L16_2(L17_2, L18_2)
            L14_2[L15_2] = L16_2
          end
          ::lbl_104::
        end
      else
        L6_2 = pairs
        L7_2 = L5_2.entrances
        L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
        for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
          L12_2 = L6_1
          L12_2 = #L12_2
          L13_2 = L12_2 + 1
          L12_2 = L6_1
          L14_2 = Utils
          L14_2 = L14_2.createBlip
          L15_2 = L11_2.coords
          L16_2 = {}
          L17_2 = Config
          L17_2 = L17_2.blipsFont
          if L17_2 then
            L17_2 = Config
            L17_2 = L17_2.blipsFont
            if "" ~= L17_2 then
              L17_2 = "<font face=\"%s\">%s</font>"
              L18_2 = L17_2
              L17_2 = L17_2.format
              L19_2 = Config
              L19_2 = L19_2.blipsFont
              L20_2 = L5_2.label
              L17_2 = L17_2(L18_2, L19_2, L20_2)
              if L17_2 then
                goto lbl_139
              end
            end
          end
          L17_2 = L5_2.label
          ::lbl_139::
          L16_2.name = L17_2
          L17_2 = L5_2.blipData
          L17_2 = L17_2.sprite
          L16_2.sprite = L17_2
          L17_2 = L5_2.blipData
          L17_2 = L17_2.color
          L16_2.color = L17_2
          L17_2 = L5_2.blipData
          L17_2 = L17_2.size
          L17_2 = L17_2 + 0.0
          L16_2.size = L17_2
          L14_2 = L14_2(L15_2, L16_2)
          L12_2[L13_2] = L14_2
        end
      end
    end
  end
end
L8_1 = {}
L9_1 = {}
L9_1.model = 1149677738
L10_1 = vector3
L11_1 = 1101.5493
L12_1 = -3199.6074
L13_1 = -38.9159
L10_1 = L10_1(L11_1, L12_1, L13_1)
L9_1.coords = L10_1
L10_1 = {}
L10_1.model = 2116540373
L11_1 = vector3
L12_1 = 1101.5175
L13_1 = -3199.5862
L14_1 = -38.8791
L11_1 = L11_1(L12_1, L13_1, L14_1)
L10_1.coords = L11_1
L8_1[1] = L9_1
L8_1[2] = L10_1
L9_1 = 1
L10_1 = #L8_1
L11_1 = 1
for L12_1 = L9_1, L10_1, L11_1 do
  L13_1 = L8_1[L12_1]
  L14_1 = CreateModelHide
  L15_1 = L13_1.coords
  L15_1 = L15_1.x
  L16_1 = L13_1.coords
  L16_1 = L16_1.y
  L17_1 = L13_1.coords
  L17_1 = L17_1.z
  L18_1 = 0.5
  L19_1 = L13_1.model
  L20_1 = false
  L14_1(L15_1, L16_1, L17_1, L18_1, L19_1, L20_1)
end
L8_1 = CreateThread
function L9_1()
  local L0_2, L1_2
  L0_2 = Framework
  L0_2 = L0_2.onPlayerLoaded
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = Wait
    L1_3 = 1000
    L0_3(L1_3)
    L0_3 = "drugscreator:last:"
    L1_3 = Framework
    L1_3 = L1_3.getIdentifier
    L1_3 = L1_3()
    L2_3 = L1_3
    L1_3 = L1_3.sub
    L3_3 = 1
    L4_3 = 5
    L1_3 = L1_3(L2_3, L3_3, L4_3)
    L0_3 = L0_3 .. L1_3
    L1_3 = GetResourceKvpString
    L2_3 = L0_3
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L2_3 = json
      L2_3 = L2_3.decode
      L3_3 = L1_3
      L2_3 = L2_3(L3_3)
      L1_3 = L2_3
      L2_3 = SetEntityCoords
      L3_3 = cache
      L3_3 = L3_3.ped
      L4_3 = L1_3.x
      L5_3 = L1_3.y
      L6_3 = L1_3.z
      L2_3(L3_3, L4_3, L5_3, L6_3)
      L2_3 = SetEntityHeading
      L3_3 = cache
      L3_3 = L3_3.ped
      L4_3 = L1_3.w
      L2_3(L3_3, L4_3)
      L2_3 = DeleteResourceKvp
      L3_3 = L0_3
      L2_3(L3_3)
    end
  end
  L0_2(L1_2)
end
L8_1(L9_1)
function L8_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L4_1
  if not L0_2 then
    return
  end
  L0_2 = L4_1
  L1_2 = L0_2
  L0_2 = L0_2.match
  L2_2 = "^(%d+)_(%d+)$"
  L0_2, L1_2 = L0_2(L1_2, L2_2)
  L2_2 = tonumber
  L3_2 = L0_2
  return L2_2(L3_2)
end
GetInsideLab = L8_1
L8_1 = SetTimeout
L9_1 = 500
function L10_1()
  local L0_2, L1_2
  L0_2 = TriggerServerEvent
  L1_2 = "lunar_drugscreator:laboratories:getData"
  L0_2(L1_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = "lunar_drugscreator:laboratories:initData"
function L10_1(A0_2, A1_2)
  local L2_2
  L1_1 = A0_2
  L3_1 = A1_2
  L2_2 = L7_1
  L2_2()
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = "lunar_drugscreator:laboratories:addName"
function L10_1(A0_2, A1_2)
  local L2_2
  L2_2 = L3_1
  L2_2[A0_2] = A1_2
end
L8_1(L9_1, L10_1)
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = GetOffsetFromEntityInWorldCoords
  L1_2 = cache
  L1_2 = L1_2.ped
  L2_2 = 2.0
  L3_2 = -0.25
  L4_2 = 0.5
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
  L1_2 = CreateCamWithParams
  L2_2 = "DEFAULT_SCRIPTED_CAMERA"
  L3_2 = L0_2.x
  L4_2 = L0_2.y
  L5_2 = L0_2.z
  L6_2 = 0.0
  L7_2 = 0.0
  L8_2 = 0.0
  L9_2 = 50.0
  L10_2 = true
  L11_2 = 2
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L2_1 = L1_2
  L1_2 = GetOffsetFromEntityInWorldCoords
  L2_2 = cache
  L2_2 = L2_2.ped
  L3_2 = 0.0
  L4_2 = -0.1
  L5_2 = 0.5
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = PointCamAtCoord
  L3_2 = L2_1
  L4_2 = L1_2.x
  L5_2 = L1_2.y
  L6_2 = L1_2.z
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = RenderScriptCams
  L3_2 = true
  L4_2 = false
  L5_2 = 1
  L6_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L2_1
  if L0_2 then
    L0_2 = RenderScriptCams
    L1_2 = false
    L2_2 = false
    L3_2 = 1
    L4_2 = false
    L0_2(L1_2, L2_2, L3_2, L4_2)
    L0_2 = DestroyCam
    L1_2 = L2_1
    L2_2 = true
    L0_2(L1_2, L2_2)
    L0_2 = nil
    L2_1 = L0_2
  end
end
function L10_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = L5_1
  if L4_2 then
    return
  end
  L4_2 = true
  L5_1 = L4_2
  if A2_2 then
    L4_2 = lib
    L4_2 = L4_2.requestAnimDict
    L5_2 = "anim@apt_trans@hinge_l"
    L4_2(L5_2)
    L4_2 = CreateThread
    function L5_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
      L0_3 = SetEntityCoords
      L1_3 = cache
      L1_3 = L1_3.ped
      L2_3 = A0_2.x
      L3_3 = A0_2.y
      L4_3 = A0_2.z
      L4_3 = L4_3 - 1.0
      L0_3(L1_3, L2_3, L3_3, L4_3)
      L0_3 = SetEntityHeading
      L1_3 = cache
      L1_3 = L1_3.ped
      L2_3 = A0_2.w
      L2_3 = L2_3 + 180.0
      L0_3(L1_3, L2_3)
      L0_3 = L8_1
      L0_3()
      L0_3 = GetOffsetFromEntityInWorldCoords
      L1_3 = cache
      L1_3 = L1_3.ped
      L2_3 = 0.0
      L3_3 = -1.75
      L4_3 = 0.0
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
      L1_3 = SetEntityCoords
      L2_3 = cache
      L2_3 = L2_3.ped
      L3_3 = L0_3.x
      L4_3 = L0_3.y
      L5_3 = L0_3.z
      L5_3 = L5_3 - 1.0
      L1_3(L2_3, L3_3, L4_3, L5_3)
      L1_3 = TaskPlayAnim
      L2_3 = cache
      L2_3 = L2_3.ped
      L3_3 = "anim@apt_trans@hinge_l"
      L4_3 = "ext_player"
      L5_3 = 8.0
      L6_3 = 8.0
      L7_3 = 2000
      L8_3 = 1
      L9_3 = 1.0
      L10_3 = false
      L11_3 = false
      L12_3 = false
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    end
    L4_2(L5_2)
    L4_2 = Wait
    L5_2 = 800
    L4_2(L5_2)
  end
  L4_2 = DoScreenFadeOut
  L5_2 = 750
  L4_2(L5_2)
  L4_2 = RequestCollisionAtCoord
  L5_2 = A1_2.x
  L6_2 = A1_2.y
  L7_2 = A1_2.z
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = Wait
  L5_2 = 1000
  L4_2(L5_2)
  L4_2 = L9_1
  L4_2()
  L4_2 = SetEntityVisible
  L5_2 = cache
  L5_2 = L5_2.ped
  L6_2 = false
  L7_2 = false
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = SetEntityCoords
  L5_2 = cache
  L5_2 = L5_2.ped
  L6_2 = A1_2.x
  L7_2 = A1_2.y
  L8_2 = A1_2.z
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = SetEntityHeading
  L5_2 = cache
  L5_2 = L5_2.ped
  L6_2 = A1_2.w
  L4_2(L5_2, L6_2)
  L4_2 = SetGameplayCamRelativeHeading
  L5_2 = 0.0
  L4_2(L5_2)
  L4_2 = PlaceObjectOnGroundProperly
  L5_2 = cache
  L5_2 = L5_2.ped
  L4_2(L5_2)
  L4_2 = Wait
  L5_2 = 950
  L4_2(L5_2)
  L4_2 = DoScreenFadeIn
  L5_2 = 500
  L4_2(L5_2)
  L4_2 = SetEntityVisible
  L5_2 = cache
  L5_2 = L5_2.ped
  L6_2 = true
  L7_2 = false
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = "drugscreator:last:"
  L5_2 = Framework
  L5_2 = L5_2.getIdentifier
  L5_2 = L5_2()
  L6_2 = L5_2
  L5_2 = L5_2.sub
  L7_2 = 1
  L8_2 = 5
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L4_2 .. L5_2
  if A3_2 then
    L5_2 = SetResourceKvp
    L6_2 = L4_2
    L7_2 = json
    L7_2 = L7_2.encode
    L8_2 = A3_2
    L7_2, L8_2 = L7_2(L8_2)
    L5_2(L6_2, L7_2, L8_2)
  else
    L5_2 = DeleteResourceKvp
    L6_2 = L4_2
    L5_2(L6_2)
  end
  L5_2 = false
  L5_1 = L5_2
end
L11_1 = nil
L12_1 = nil
L13_1 = nil
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = A0_2
  L1_2 = L3_2.index
  L2_2 = L3_2.entranceIndex
  L3_2 = "%s_%s"
  L4_2 = L3_2
  L3_2 = L3_2.format
  L5_2 = L1_2
  L6_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = ServerConfig
  L4_2 = L4_2.laboratories
  L4_2 = L4_2[L1_2]
  L4_2 = L4_2.entrances
  L4_2 = L4_2[L2_2]
  L5_2 = L1_1
  L5_2 = L5_2[L3_2]
  L6_2 = lib
  L6_2 = L6_2.registerContext
  L7_2 = {}
  L7_2.id = "laptop"
  L8_2 = locale
  L9_2 = "laptop_title"
  L8_2 = L8_2(L9_2)
  L7_2.title = L8_2
  L8_2 = {}
  L9_2 = {}
  L10_2 = locale
  L11_2 = "give_keys"
  L10_2 = L10_2(L11_2)
  L9_2.title = L10_2
  L10_2 = locale
  L11_2 = "give_keys_description"
  L10_2 = L10_2(L11_2)
  L9_2.description = L10_2
  L9_2.icon = "key"
  function L10_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = lib
    L0_3 = L0_3.inputDialog
    L1_3 = locale
    L2_3 = "give_keys_header"
    L1_3 = L1_3(L2_3)
    L2_3 = {}
    L3_3 = {}
    L3_3.type = "number"
    L4_3 = locale
    L5_3 = "server_id"
    L4_3 = L4_3(L5_3)
    L3_3.label = L4_3
    L3_3.min = 1
    L3_3.required = true
    L2_3[1] = L3_3
    L0_3 = L0_3(L1_3, L2_3)
    if not L0_3 then
      return
    end
    L1_3 = TriggerServerEvent
    L2_3 = "lunar_drugscreator:laboratories:giveKeys"
    L3_3 = L3_2
    L4_3 = L0_3[1]
    L1_3(L2_3, L3_3, L4_3)
  end
  L9_2.onSelect = L10_2
  L10_2 = {}
  L11_2 = locale
  L12_2 = "manage_access"
  L11_2 = L11_2(L12_2)
  L10_2.title = L11_2
  L11_2 = locale
  L12_2 = "manage_access_description"
  L11_2 = L11_2(L12_2)
  L10_2.description = L11_2
  L10_2.icon = "users"
  L10_2.arrow = true
  L11_2 = L5_2.keys
  L11_2 = #L11_2
  if L11_2 > 0 then
    L11_2 = "manage_access"
    if L11_2 then
      goto lbl_60
    end
  end
  L11_2 = nil
  ::lbl_60::
  L10_2.menu = L11_2
  L11_2 = L5_2.keys
  L11_2 = #L11_2
  if 0 == L11_2 then
    function L11_2()
      local L0_3, L1_3, L2_3
      L0_3 = LR
      L0_3 = L0_3.notify
      L1_3 = locale
      L2_3 = "no_keys"
      L1_3 = L1_3(L2_3)
      L2_3 = "error"
      L0_3(L1_3, L2_3)
    end
    if L11_2 then
      goto lbl_69
    end
  end
  L11_2 = nil
  ::lbl_69::
  L10_2.onSelect = L11_2
  L11_2 = {}
  L12_2 = locale
  L13_2 = "transfer_ownership"
  L12_2 = L12_2(L13_2)
  L11_2.title = L12_2
  L12_2 = locale
  L13_2 = "transfer_ownership_description"
  L12_2 = L12_2(L13_2)
  L11_2.description = L12_2
  L11_2.icon = "exchange"
  function L12_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = lib
    L0_3 = L0_3.inputDialog
    L1_3 = locale
    L2_3 = "transfer_ownership_header"
    L1_3 = L1_3(L2_3)
    L2_3 = {}
    L3_3 = {}
    L3_3.type = "number"
    L4_3 = locale
    L5_3 = "server_id"
    L4_3 = L4_3(L5_3)
    L3_3.label = L4_3
    L3_3.min = 1
    L3_3.required = true
    L2_3[1] = L3_3
    L0_3 = L0_3(L1_3, L2_3)
    if not L0_3 then
      return
    end
    L1_3 = TriggerServerEvent
    L2_3 = "lunar_drugscreator:laboratories:transferOwnership"
    L3_3 = L3_2
    L4_3 = L0_3[1]
    L1_3(L2_3, L3_3, L4_3)
  end
  L11_2.onSelect = L12_2
  L12_2 = {}
  L13_2 = locale
  L14_2 = "sell_laboratory"
  L13_2 = L13_2(L14_2)
  L12_2.title = L13_2
  L13_2 = locale
  L14_2 = "sell_laboratory_description"
  L13_2 = L13_2(L14_2)
  L12_2.description = L13_2
  L12_2.icon = "money-bill"
  function L13_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = lib
    L0_3 = L0_3.alertDialog
    L1_3 = {}
    L2_3 = locale
    L3_3 = "sell_confirmation"
    L2_3 = L2_3(L3_3)
    L1_3.header = L2_3
    L2_3 = locale
    L3_3 = "sell_confirmation_content"
    L4_3 = math
    L4_3 = L4_3.ceil
    L5_3 = L4_2.price
    L6_3 = ServerConfig
    L6_3 = L6_3.generalSettings
    L6_3 = L6_3.sellDivisor
    L5_3 = L5_3 / L6_3
    L4_3, L5_3, L6_3 = L4_3(L5_3)
    L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3)
    L1_3.content = L2_3
    L1_3.centered = true
    L1_3.cancel = true
    L0_3 = L0_3(L1_3)
    if "confirm" == L0_3 then
      L1_3 = TriggerServerEvent
      L2_3 = "lunar_drugscreator:laboratories:sellLaboratory"
      L3_3 = L3_2
      L1_3(L2_3, L3_3)
    end
  end
  L12_2.onSelect = L13_2
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L8_2[4] = L12_2
  L7_2.options = L8_2
  L6_2(L7_2)
  L6_2 = {}
  L7_2 = 1
  L8_2 = L5_2.keys
  L8_2 = #L8_2
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = L5_2.keys
    L12_2 = L11_2[L10_2]
    L11_2 = L3_1
    L11_2 = L11_2[L12_2]
    L12_2 = #L6_2
    L12_2 = L12_2 + 1
    L13_2 = {}
    L13_2.title = L11_2
    L14_2 = locale
    L15_2 = "remove_keys_description"
    L14_2 = L14_2(L15_2)
    L13_2.description = L14_2
    function L14_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = lib
      L0_3 = L0_3.alertDialog
      L1_3 = {}
      L2_3 = locale
      L3_3 = "remove_keys_confirmation"
      L2_3 = L2_3(L3_3)
      L1_3.header = L2_3
      L2_3 = locale
      L3_3 = "remove_keys_confirmation_content"
      L4_3 = L11_2
      L2_3 = L2_3(L3_3, L4_3)
      L1_3.content = L2_3
      L1_3.centered = true
      L1_3.cancel = true
      L0_3 = L0_3(L1_3)
      if "confirm" == L0_3 then
        L1_3 = TriggerServerEvent
        L2_3 = "lunar_drugscreator:laboratories:removeKeys"
        L3_3 = L3_2
        L4_3 = L10_2
        L1_3(L2_3, L3_3, L4_3)
      end
    end
    L13_2.onSelect = L14_2
    L6_2[L12_2] = L13_2
  end
  L7_2 = lib
  L7_2 = L7_2.registerContext
  L8_2 = {}
  L8_2.id = "manage_access"
  L9_2 = locale
  L10_2 = "manage_access"
  L9_2 = L9_2(L10_2)
  L8_2.title = L9_2
  L8_2.menu = "laptop"
  L8_2.options = L6_2
  L7_2(L8_2)
  L7_2 = lib
  L7_2 = L7_2.showContext
  L8_2 = "laptop"
  L7_2(L8_2)
end
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2
  L1_2 = L3_2.index
  L2_2 = L3_2.entranceIndex
  L3_2 = ServerConfig
  L3_2 = L3_2.laboratories
  L3_2 = L3_2[L1_2]
  L4_2 = L3_2.entrances
  L4_2 = L4_2[L2_2]
  L5_2 = L3_2.requiredItem
  if L5_2 then
    L5_2 = L3_2.requiredItem
    if "" ~= L5_2 then
      L5_2 = Framework
      L5_2 = L5_2.hasItem
      L6_2 = L3_2.requiredItem
      L5_2 = L5_2(L6_2)
      if not L5_2 then
        L5_2 = LR
        L5_2 = L5_2.notify
        L6_2 = locale
        L7_2 = "missing_item"
        L8_2 = Utils
        L8_2 = L8_2.getItemLabel
        L9_2 = L3_2.requiredItem
        L8_2, L9_2, L10_2 = L8_2(L9_2)
        L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
        L7_2 = "error"
        L5_2(L6_2, L7_2)
        return
      end
    end
  end
  L5_2 = L3_2.iplTier
  if L5_2 then
    L5_2 = Editable
    L5_2 = L5_2.updateInteriorTier
    L6_2 = L3_2.exit
    L6_2 = L6_2.coords
    L7_2 = L3_2.iplTier
    L5_2(L6_2, L7_2)
  end
  L5_2 = "%s_%s"
  L6_2 = L5_2
  L5_2 = L5_2.format
  L7_2 = L1_2
  L8_2 = L2_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_1 = L5_2
  L5_2 = TriggerServerEvent
  L6_2 = "lunar_drugscreator:laboratories:enter"
  L7_2 = L1_2
  L8_2 = L2_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = L10_1
  L6_2 = L4_2.coords
  L7_2 = L3_2.exit
  L7_2 = L7_2.coords
  L8_2 = L4_2.disableAnim
  L8_2 = not L8_2
  L9_2 = L3_2.entrances
  L9_2 = L9_2[L2_2]
  L9_2 = L9_2.coords
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = L11_1
  if L5_2 then
    L5_2 = L11_1.remove
    L5_2()
  end
  L5_2 = L3_2.purchaseable
  if L5_2 then
    L5_2 = Utils
    L5_2 = L5_2.createInteractionPoint
    L6_2 = {}
    L7_2 = L3_2.laptop
    L6_2.coords = L7_2
    L6_2.radius = 1.25
    L7_2 = {}
    L8_2 = {}
    L9_2 = locale
    L10_2 = "open_laptop"
    L9_2 = L9_2(L10_2)
    L8_2.label = L9_2
    L8_2.icon = "laptop"
    L9_2 = L14_1
    L8_2.onSelect = L9_2
    L9_2 = {}
    L9_2.index = L1_2
    L9_2.entranceIndex = L2_2
    L8_2.args = L9_2
    function L9_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = "%s_%s"
      L1_3 = L0_3
      L0_3 = L0_3.format
      L2_3 = L1_2
      L3_3 = L2_2
      L0_3 = L0_3(L1_3, L2_3, L3_3)
      L1_3 = L1_1
      L1_3 = L1_3[L0_3]
      L2_3 = L1_3.identifier
      L3_3 = Framework
      L3_3 = L3_3.getIdentifier
      L3_3 = L3_3()
      L2_3 = L2_3 == L3_3
      return L2_3
    end
    L8_2.canInteract = L9_2
    L7_2[1] = L8_2
    L6_2.options = L7_2
    L7_2 = L3_2.target
    L5_2 = L5_2(L6_2, L7_2)
    L13_1 = L5_2
  end
  L5_2 = Utils
  L5_2 = L5_2.createInteractionPoint
  L6_2 = {}
  L7_2 = L3_2.exit
  L7_2 = L7_2.target
  L6_2.coords = L7_2
  L6_2.radius = 1.25
  L7_2 = {}
  L8_2 = {}
  L9_2 = locale
  L10_2 = "exit"
  L9_2 = L9_2(L10_2)
  L8_2.label = L9_2
  L8_2.icon = "door-open"
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = TriggerServerEvent
    L1_3 = "lunar_drugscreator:laboratories:leave"
    L0_3(L1_3)
    L0_3 = L11_1.remove
    L0_3()
    L0_3 = L13_1
    if L0_3 then
      L0_3 = L13_1.remove
      L0_3()
    end
    L0_3 = ClearInterval
    L1_3 = L12_1
    L0_3(L1_3)
    L0_3 = nil
    L4_1 = L0_3
    L0_3 = L10_1
    L1_3 = L3_2.exit
    L1_3 = L1_3.coords
    L2_3 = L4_2.coords
    L3_3 = true
    L0_3(L1_3, L2_3, L3_3)
  end
  L8_2.onSelect = L9_2
  L7_2[1] = L8_2
  L6_2.options = L7_2
  L7_2 = L3_2.target
  L5_2 = L5_2(L6_2, L7_2)
  L11_1 = L5_2
  L5_2 = SetInterval
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = Utils
    L0_3 = L0_3.distanceCheck
    L1_3 = cache
    L1_3 = L1_3.ped
    L2_3 = L3_2.exit
    L2_3 = L2_3.coords
    L3_3 = 100.0
    L0_3 = L0_3(L1_3, L2_3, L3_3)
    if not L0_3 then
      L0_3 = L11_1
      if L0_3 then
        L0_3 = L11_1.remove
        L0_3()
      end
      L0_3 = L13_1
      if L0_3 then
        L0_3 = L13_1.remove
        L0_3()
      end
      L0_3 = ClearInterval
      L1_3 = L12_1
      L0_3(L1_3)
      L0_3 = nil
      L4_1 = L0_3
      L0_3 = TriggerServerEvent
      L1_3 = "lunar_drugscreator:laboratories:leave"
      L2_3 = L1_2
      L0_3(L1_3, L2_3)
    end
  end
  L7_2 = 1000
  L5_2 = L5_2(L6_2, L7_2)
  L12_1 = L5_2
end
L16_1 = RegisterNetEvent
L17_1 = "lunar_drugscreator:laboratories:updatePurchased"
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_1 = A0_2
  L1_2 = L7_1
  L1_2()
  L1_2 = Framework
  L1_2 = L1_2.getIdentifier
  L1_2 = L1_2()
  L2_2 = L4_1
  if L2_2 then
    L3_2 = L4_1
    L2_2 = L1_1
    L2_2 = L2_2[L3_2]
    if L2_2 then
      L3_2 = L4_1
      L2_2 = L1_1
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.identifier
      if L2_2 == L1_2 then
        goto lbl_55
      end
      L2_2 = lib
      L2_2 = L2_2.table
      L2_2 = L2_2.contains
      L4_2 = L4_1
      L3_2 = L1_1
      L3_2 = L3_2[L4_2]
      L3_2 = L3_2.keys
      L4_2 = L1_2
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 then
        goto lbl_55
      end
    end
    L2_2 = L4_1
    L3_2 = L2_2
    L2_2 = L2_2.match
    L4_2 = "^(%d+)_(%d+)$"
    L2_2, L3_2 = L2_2(L3_2, L4_2)
    L4_2 = ServerConfig
    L4_2 = L4_2.laboratories
    L5_2 = tonumber
    L6_2 = L2_2
    L5_2 = L5_2(L6_2)
    L4_2 = L4_2[L5_2]
    L5_2 = L4_2.entrances
    L6_2 = tonumber
    L7_2 = L3_2
    L6_2 = L6_2(L7_2)
    L5_2 = L5_2[L6_2]
    L6_2 = L10_1
    L7_2 = L4_2.exit
    L7_2 = L7_2.coords
    L8_2 = L5_2.coords
    L9_2 = false
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = nil
    L4_1 = L6_2
  end
  ::lbl_55::
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNetEvent
L17_1 = "lunar_drugscreator:laboratories:kickPlayer"
function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = Framework
  L2_2 = L2_2.getIdentifier
  L2_2 = L2_2()
  if A0_2 == L2_2 then
    L2_2 = L4_1
    if L2_2 == A1_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L3_2 = A1_2
  L2_2 = A1_2.match
  L4_2 = "^(%d+)_(%d+)$"
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  L4_2 = ServerConfig
  L4_2 = L4_2.laboratories
  L5_2 = tonumber
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  L4_2 = L4_2[L5_2]
  L5_2 = L4_2.entrances
  L6_2 = tonumber
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2[L6_2]
  L6_2 = L10_1
  L7_2 = L4_2.exit
  L7_2 = L7_2.coords
  L8_2 = L5_2.coords
  L9_2 = false
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = nil
  L4_1 = L6_2
  L6_2 = TriggerServerEvent
  L7_2 = "lunar_drugscreator:laboratories:leave"
  L8_2 = tonumber
  L9_2 = L2_2
  L8_2, L9_2 = L8_2(L9_2)
  L6_2(L7_2, L8_2, L9_2)
end
L16_1(L17_1, L18_1)
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L0_2 = 1
  L1_2 = L0_1
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L0_1
    L4_2 = L4_2[L3_2]
    L4_2 = L4_2.remove
    L4_2()
  end
  L0_2 = table
  L0_2 = L0_2.wipe
  L1_2 = L0_1
  L0_2(L1_2)
  L0_2 = L7_1
  L0_2()
  L0_2 = pairs
  L1_2 = ServerConfig
  L1_2 = L1_2.laboratories
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = pairs
    L7_2 = L5_2.entrances
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
    for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
      L12_2 = L0_1
      L12_2 = #L12_2
      L13_2 = L12_2 + 1
      L12_2 = L0_1
      L14_2 = Utils
      L14_2 = L14_2.createInteractionPoint
      L15_2 = {}
      L16_2 = L11_2.target
      L15_2.coords = L16_2
      L15_2.radius = 1.25
      L16_2 = {}
      L17_2 = {}
      L18_2 = locale
      L19_2 = "enter"
      L18_2 = L18_2(L19_2)
      L17_2.label = L18_2
      L17_2.icon = "door-open"
      L18_2 = L15_1
      L17_2.onSelect = L18_2
      L18_2 = {}
      L18_2.index = L4_2
      L18_2.entranceIndex = L10_2
      L17_2.args = L18_2
      function L18_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3
        L0_3 = "%s_%s"
        L1_3 = L0_3
        L0_3 = L0_3.format
        L2_3 = L4_2
        L3_3 = L10_2
        L0_3 = L0_3(L1_3, L2_3, L3_3)
        L1_3 = L1_1
        L1_3 = L1_3[L0_3]
        L2_3 = L2_1
        L2_3 = L5_2.purchaseable
        L2_3 = L1_3 or L2_3
        if L1_3 then
          L2_3 = L1_3.identifier
          L3_3 = Framework
          L3_3 = L3_3.getIdentifier
          L3_3 = L3_3()
          L2_3 = lib
          L2_3 = L2_3.table
          L2_3 = L2_3.contains
          L3_3 = L1_3.keys
          L4_3 = Framework
          L4_3 = L4_3.getIdentifier
          L4_3 = L4_3()
          L2_3 = not L2_3 and L2_3
        end
        return L2_3
      end
      L17_2.canInteract = L18_2
      L18_2 = {}
      L19_2 = locale
      L20_2 = "purchase"
      L19_2 = L19_2(L20_2)
      L18_2.label = L19_2
      L18_2.icon = "cart-shopping"
      function L19_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3
        L0_3 = lib
        L0_3 = L0_3.alertDialog
        L1_3 = {}
        L2_3 = L5_2.label
        L1_3.header = L2_3
        L2_3 = locale
        L3_3 = "purchase_lab_content"
        L4_3 = L11_2.price
        L2_3 = L2_3(L3_3, L4_3)
        L1_3.content = L2_3
        L1_3.cancel = true
        L1_3.centered = true
        L0_3 = L0_3(L1_3)
        L0_3 = "confirm" == L0_3
        if L0_3 then
          L1_3 = TriggerServerEvent
          L2_3 = "lunar_drugscreator:laboratories:purchase"
          L3_3 = L4_2
          L4_3 = L10_2
          L1_3(L2_3, L3_3, L4_3)
        end
      end
      L18_2.onSelect = L19_2
      function L19_2()
        local L0_3, L1_3, L2_3, L3_3
        L0_3 = "%s_%s"
        L1_3 = L0_3
        L0_3 = L0_3.format
        L2_3 = L4_2
        L3_3 = L10_2
        L0_3 = L0_3(L1_3, L2_3, L3_3)
        L1_3 = L5_2.purchaseable
        if L1_3 then
          L1_3 = L1_1
          L1_3 = L1_3[L0_3]
          L1_3 = not L1_3
        end
        return L1_3
      end
      L18_2.canInteract = L19_2
      L16_2[1] = L17_2
      L16_2[2] = L18_2
      L15_2.options = L16_2
      L16_2 = L5_2.target
      L14_2 = L14_2(L15_2, L16_2)
      L12_2[L13_2] = L14_2
    end
  end
end
L17_1 = {}
L17_1.reload = L16_1
Laboratories = L17_1
