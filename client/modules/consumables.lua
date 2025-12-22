-- ============================================
-- More exclusive content you will find here:
-- Cleaned and working - hot scripts and more.
--
-- https://unlocknow.net/releases
-- https://discord.gg/unlocknoww
-- ============================================



local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1
L0_1 = false
L1_1 = 0.0
L2_1 = {}
L3_1 = 0.0
L4_1 = false
L5_1 = CreateThread
function L6_1()
  local L0_2, L1_2
  while true do
    L0_2 = Wait
    L1_2 = 60000
    L0_2(L1_2)
    L0_2 = L1_1
    if L0_2 > 0.0 then
      L0_2 = L1_1
      L0_2 = L0_2 - 0.05
      L1_1 = L0_2
      L0_2 = L1_1
      if L0_2 < 0.0 then
        L0_2 = 0.0
        L1_1 = L0_2
      end
    end
  end
end
L5_1(L6_1)
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A0_2 then
    L2_2 = A0_2.visualEffect
    if L2_2 then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L2_2 = A1_2 or L2_2
  if not A1_2 then
    L2_2 = 1.0
  end
  L3_2 = SetTimecycleModifier
  L4_2 = A0_2.visualEffect
  L4_2 = L4_2.type
  L3_2(L4_2)
  L3_2 = SetTimecycleModifierStrength
  L4_2 = A0_2.visualEffect
  L4_2 = L4_2.intensity
  L4_2 = L4_2 * L2_2
  L3_2(L4_2)
end
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = ClearTimecycleModifier
  L0_2()
  L0_2 = StopGameplayCamShaking
  L1_2 = true
  L0_2(L1_2)
  L0_2 = SetPedMoveRateOverride
  L1_2 = cache
  L1_2 = L1_2.ped
  L2_2 = 1.0
  L0_2(L1_2, L2_2)
  L0_2 = SetRunSprintMultiplierForPlayer
  L1_2 = cache
  L1_2 = L1_2.playerId
  L2_2 = 1.0
  L0_2(L1_2, L2_2)
  L0_2 = SetPedIsDrunk
  L1_2 = cache
  L1_2 = L1_2.ped
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SetPedMotionBlur
  L1_2 = cache
  L1_2 = L1_2.ped
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = SetPedConfigFlag
  L1_2 = cache
  L1_2 = L1_2.ped
  L2_2 = 100
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = ResetPedMovementClipset
  L1_2 = cache
  L1_2 = L1_2.ped
  L2_2 = 0.0
  L0_2(L1_2, L2_2)
  L0_2 = 1
  L1_2 = L2_1
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L2_1
    L4_2 = L4_2[L3_2]
    L4_2 = L4_2.timer
    if L4_2 then
      L4_2 = L2_1
      L4_2 = L4_2[L3_2]
      L4_2.timer = nil
    end
  end
  L0_2 = {}
  L2_1 = L0_2
  L0_2 = 0.0
  L3_1 = L0_2
  L0_2 = false
  L0_1 = L0_2
  L0_2 = false
  L4_1 = L0_2
end
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A0_2 then
    L2_2 = A0_2.cameraShake
    if L2_2 then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L2_2 = L4_1
  if not L2_2 then
    L2_2 = ShakeGameplayCam
    L3_2 = A0_2.cameraShake
    L3_2 = L3_2.type
    L4_2 = 0.1
    L2_2(L3_2, L4_2)
    L2_2 = true
    L4_1 = L2_2
  end
  L2_2 = math
  L2_2 = L2_2.min
  L3_2 = A0_2.cameraShake
  L3_2 = L3_2.intensity
  L3_2 = L3_2 * A1_2
  L3_2 = L3_2 * 2.0
  L4_2 = 2.0
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = SetGameplayCamShakeAmplitude
  L4_2 = L2_2
  L3_2(L4_2)
end
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A0_2 then
    L2_2 = A0_2.walkClipSet
    if L2_2 then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L2_2 = lib
  L2_2 = L2_2.requestAnimSet
  L3_2 = A0_2.walkClipSet
  L2_2(L3_2)
  L2_2 = SetPedMovementClipset
  L3_2 = cache
  L3_2 = L3_2.ped
  L4_2 = A0_2.walkClipSet
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = SetPedToRagdoll
  L1_2 = cache
  L1_2 = L1_2.ped
  L2_2 = 1500
  L3_2 = 1500
  L4_2 = 0
  L5_2 = true
  L6_2 = true
  L7_2 = false
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = cache
  L1_2 = L1_2.vehicle
  if not L1_2 then
    return
  end
  L1_2 = math
  L1_2 = L1_2.random
  L2_2 = -50
  L3_2 = 50
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2 * 0.01
  L1_2 = L1_2 * L2_2
  L2_2 = SetVehicleSteerBias
  L3_2 = cache
  L3_2 = L3_2.vehicle
  L4_2 = L1_2 + 0.0
  L2_2(L3_2, L4_2)
  L2_2 = math
  L2_2 = L2_2.random
  L2_2 = L2_2()
  L3_2 = 0.7
  if L2_2 > L3_2 then
    L2_2 = SetControlNormal
    L3_2 = 0
    L4_2 = 71
    L5_2 = math
    L5_2 = L5_2.random
    L5_2 = L5_2()
    L5_2 = L5_2 * A0_2
    L5_2 = L5_2 * 0.3
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = math
    L2_2 = L2_2.random
    L2_2 = L2_2()
    L3_2 = 0.7
    if L2_2 > L3_2 then
      L2_2 = SetControlNormal
      L3_2 = 0
      L4_2 = 72
      L5_2 = math
      L5_2 = L5_2.random
      L5_2 = L5_2()
      L5_2 = L5_2 * A0_2
      L5_2 = L5_2 * 0.3
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
function L11_1(A0_2)
  local L1_2, L2_2
  if A0_2 then
    L1_2 = A0_2.tripChance
    if L1_2 then
      L1_2 = A0_2.tripChance
      if not (L1_2 <= 0) then
        goto lbl_10
      end
    end
  end
  do return end
  ::lbl_10::
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L1_3 = A0_2.duration
    L0_3 = L0_3 + L1_3
    while true do
      L1_3 = GetGameTimer
      L1_3 = L1_3()
      if not (L0_3 > L1_3) then
        break
      end
      L1_3 = math
      L1_3 = L1_3.random
      L1_3 = L1_3()
      L2_3 = A0_2.tripChance
      if L1_3 < L2_3 then
        L1_3 = LR
        L1_3 = L1_3.progressActive
        L1_3 = L1_3()
        if not L1_3 then
          L1_3 = L9_1
          L1_3()
        end
      end
      L1_3 = L1_1
      if L1_3 >= 1.0 then
        return
      end
      L1_3 = Wait
      L2_3 = 1000
      L1_3(L2_3)
    end
  end
  L1_2(L2_2)
end
function L12_1(A0_2, A1_2)
  local L2_2, L3_2
  if A0_2 then
    L2_2 = A0_2.speed
    if L2_2 then
      L2_2 = A0_2.speed
      if 1.0 ~= L2_2 then
        goto lbl_10
      end
    end
  end
  do return end
  ::lbl_10::
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L1_3 = A1_2
    L1_3 = L0_3 + L1_3
    L2_3 = 1.0
    L3_3 = A0_2.speed
    while true do
      L4_3 = GetGameTimer
      L4_3 = L4_3()
      if not (L1_3 > L4_3) then
        break
      end
      L4_3 = L1_1
      if L4_3 >= 1.0 then
        L4_3 = SetRunSprintMultiplierForPlayer
        L5_3 = cache
        L5_3 = L5_3.playerId
        L6_3 = 1.0
        L4_3(L5_3, L6_3)
        L4_3 = SetPedMoveRateOverride
        L5_3 = cache
        L5_3 = L5_3.ped
        L6_3 = 1.0
        L4_3(L5_3, L6_3)
        return
      end
      L4_3 = GetGameTimer
      L4_3 = L4_3()
      L4_3 = L4_3 - L0_3
      L5_3 = A1_2
      L4_3 = L4_3 / L5_3
      L5_3 = math
      L5_3 = L5_3.cos
      L6_3 = math
      L6_3 = L6_3.pi
      L6_3 = L6_3 * L4_3
      L5_3 = L5_3(L6_3)
      L5_3 = 0.5 * L5_3
      L6_3 = 0.5
      L5_3 = L6_3 - L5_3
      L6_3 = nil
      L7_3 = 0.2
      if L4_3 < L7_3 then
        L7_3 = L3_3 - L2_3
        L8_3 = L4_3 / 0.2
        L7_3 = L7_3 * L8_3
        L6_3 = L2_3 + L7_3
      else
        L7_3 = 0.8
        if L4_3 > L7_3 then
          L7_3 = L4_3 - 0.8
          L7_3 = L7_3 / 0.2
          L8_3 = L2_3 - L3_3
          L8_3 = L8_3 * L7_3
          L6_3 = L3_3 + L8_3
        else
          L6_3 = L3_3
        end
      end
      L7_3 = SetRunSprintMultiplierForPlayer
      L8_3 = cache
      L8_3 = L8_3.playerId
      L9_3 = L6_3
      L7_3(L8_3, L9_3)
      L7_3 = SetPedMoveRateOverride
      L8_3 = cache
      L8_3 = L8_3.ped
      L9_3 = L6_3
      L7_3(L8_3, L9_3)
      L7_3 = Wait
      L8_3 = 100
      L7_3(L8_3)
    end
    L4_3 = SetRunSprintMultiplierForPlayer
    L5_3 = cache
    L5_3 = L5_3.playerId
    L6_3 = 1.0
    L4_3(L5_3, L6_3)
    L4_3 = SetPedMoveRateOverride
    L5_3 = cache
    L5_3 = L5_3.ped
    L6_3 = 1.0
    L4_3(L5_3, L6_3)
  end
  L2_2(L3_2)
end
function L13_1(A0_2, A1_2)
  local L2_2, L3_2
  if A0_2 then
    L2_2 = A0_2.health
    if L2_2 then
      L2_2 = A0_2.health
      if 0 ~= L2_2 then
        goto lbl_10
      end
    end
  end
  do return end
  ::lbl_10::
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L1_3 = A1_2
    L1_3 = L0_3 + L1_3
    L2_3 = cache
    L2_3 = L2_3.ped
    L3_3 = GetEntityHealth
    L4_3 = L2_3
    L3_3 = L3_3(L4_3)
    L4_3 = GetEntityMaxHealth
    L5_3 = L2_3
    L4_3 = L4_3(L5_3)
    L5_3 = nil
    L6_3 = A0_2.health
    if L6_3 > 0 then
      L6_3 = math
      L6_3 = L6_3.min
      L7_3 = L4_3
      L8_3 = A0_2.health
      L8_3 = L3_3 + L8_3
      L6_3 = L6_3(L7_3, L8_3)
      L5_3 = L6_3
    else
      L6_3 = math
      L6_3 = L6_3.max
      L7_3 = 1
      L8_3 = A0_2.health
      L8_3 = L3_3 + L8_3
      L6_3 = L6_3(L7_3, L8_3)
      L5_3 = L6_3
    end
    L6_3 = L5_3 - L3_3
    if 0 == L6_3 then
      return
    end
    while true do
      L7_3 = GetGameTimer
      L7_3 = L7_3()
      if not (L1_3 > L7_3) then
        break
      end
      L7_3 = IsEntityDead
      L8_3 = L2_3
      L7_3 = L7_3(L8_3)
      if not L7_3 then
        L7_3 = L1_1
        if not (L7_3 >= 1.0) then
          goto lbl_53
        end
      end
      do return end
      ::lbl_53::
      L7_3 = GetGameTimer
      L7_3 = L7_3()
      L7_3 = L7_3 - L0_3
      L8_3 = A1_2
      L7_3 = L7_3 / L8_3
      L8_3 = math
      L8_3 = L8_3.min
      L9_3 = L7_3
      L10_3 = 1.0
      L8_3 = L8_3(L9_3, L10_3)
      L7_3 = L8_3
      L8_3 = math
      L8_3 = L8_3.floor
      L9_3 = L6_3 * L7_3
      L8_3 = L8_3(L9_3)
      L8_3 = L3_3 + L8_3
      L9_3 = GetEntityHealth
      L10_3 = L2_3
      L9_3 = L9_3(L10_3)
      if L6_3 > 0 and L8_3 > L9_3 or L6_3 < 0 and L8_3 < L9_3 then
        L10_3 = math
        L10_3 = L10_3.max
        L11_3 = 1
        L12_3 = math
        L12_3 = L12_3.min
        L13_3 = L4_3
        L14_3 = L8_3
        L12_3, L13_3, L14_3 = L12_3(L13_3, L14_3)
        L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3)
        L11_3 = SetEntityHealth
        L12_3 = L2_3
        L13_3 = L10_3
        L11_3(L12_3, L13_3)
      end
      L10_3 = math
      L10_3 = L10_3.max
      L11_3 = 100
      L12_3 = math
      L12_3 = L12_3.min
      L13_3 = 500
      L14_3 = A1_2
      L14_3 = L14_3 / 20
      L12_3, L13_3, L14_3 = L12_3(L13_3, L14_3)
      L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3)
      L11_3 = Wait
      L12_3 = L10_3
      L11_3(L12_3)
    end
    L7_3 = IsEntityDead
    L8_3 = L2_3
    L7_3 = L7_3(L8_3)
    if not L7_3 then
      L7_3 = L1_1
      if L7_3 < 1.0 then
        L7_3 = math
        L7_3 = L7_3.max
        L8_3 = 1
        L9_3 = math
        L9_3 = L9_3.min
        L10_3 = L4_3
        L11_3 = L5_3
        L9_3, L10_3, L11_3, L12_3, L13_3, L14_3 = L9_3(L10_3, L11_3)
        L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
        L8_3 = SetEntityHealth
        L9_3 = L2_3
        L10_3 = L7_3
        L8_3(L9_3, L10_3)
      end
    end
  end
  L2_2(L3_2)
end
function L14_1(A0_2, A1_2)
  local L2_2, L3_2
  if A0_2 then
    L2_2 = A0_2.armour
    if L2_2 then
      L2_2 = A0_2.armour
      if 0 ~= L2_2 then
        goto lbl_10
      end
    end
  end
  do return end
  ::lbl_10::
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L1_3 = A1_2
    L1_3 = L0_3 + L1_3
    L2_3 = cache
    L2_3 = L2_3.ped
    L3_3 = GetPedArmour
    L4_3 = L2_3
    L3_3 = L3_3(L4_3)
    L4_3 = 100
    L5_3 = nil
    L6_3 = A0_2.armour
    if L6_3 > 0 then
      L6_3 = math
      L6_3 = L6_3.min
      L7_3 = L4_3
      L8_3 = A0_2.armour
      L8_3 = L3_3 + L8_3
      L6_3 = L6_3(L7_3, L8_3)
      L5_3 = L6_3
    else
      L6_3 = math
      L6_3 = L6_3.max
      L7_3 = 0
      L8_3 = A0_2.armour
      L8_3 = L3_3 + L8_3
      L6_3 = L6_3(L7_3, L8_3)
      L5_3 = L6_3
    end
    L6_3 = L5_3 - L3_3
    if 0 == L6_3 then
      return
    end
    while true do
      L7_3 = GetGameTimer
      L7_3 = L7_3()
      if not (L1_3 > L7_3) then
        break
      end
      L7_3 = IsEntityDead
      L8_3 = L2_3
      L7_3 = L7_3(L8_3)
      if not L7_3 then
        L7_3 = L1_1
        if not (L7_3 >= 1.0) then
          goto lbl_51
        end
      end
      do return end
      ::lbl_51::
      L7_3 = GetGameTimer
      L7_3 = L7_3()
      L7_3 = L7_3 - L0_3
      L8_3 = A1_2
      L7_3 = L7_3 / L8_3
      L8_3 = math
      L8_3 = L8_3.min
      L9_3 = L7_3
      L10_3 = 1.0
      L8_3 = L8_3(L9_3, L10_3)
      L7_3 = L8_3
      L8_3 = math
      L8_3 = L8_3.floor
      L9_3 = L6_3 * L7_3
      L8_3 = L8_3(L9_3)
      L8_3 = L3_3 + L8_3
      L9_3 = GetPedArmour
      L10_3 = L2_3
      L9_3 = L9_3(L10_3)
      if L6_3 > 0 and L8_3 > L9_3 or L6_3 < 0 and L8_3 < L9_3 then
        L10_3 = math
        L10_3 = L10_3.max
        L11_3 = 0
        L12_3 = math
        L12_3 = L12_3.min
        L13_3 = L4_3
        L14_3 = L8_3
        L12_3, L13_3, L14_3 = L12_3(L13_3, L14_3)
        L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3)
        L11_3 = SetPedArmour
        L12_3 = L2_3
        L13_3 = L10_3
        L11_3(L12_3, L13_3)
      end
      L10_3 = math
      L10_3 = L10_3.max
      L11_3 = 100
      L12_3 = math
      L12_3 = L12_3.min
      L13_3 = 500
      L14_3 = A1_2
      L14_3 = L14_3 / 20
      L12_3, L13_3, L14_3 = L12_3(L13_3, L14_3)
      L10_3 = L10_3(L11_3, L12_3, L13_3, L14_3)
      L11_3 = Wait
      L12_3 = L10_3
      L11_3(L12_3)
    end
    L7_3 = IsEntityDead
    L8_3 = L2_3
    L7_3 = L7_3(L8_3)
    if not L7_3 then
      L7_3 = L1_1
      if L7_3 < 1.0 then
        L7_3 = math
        L7_3 = L7_3.max
        L8_3 = 0
        L9_3 = math
        L9_3 = L9_3.min
        L10_3 = L4_3
        L11_3 = L5_3
        L9_3, L10_3, L11_3, L12_3, L13_3, L14_3 = L9_3(L10_3, L11_3)
        L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
        L8_3 = SetPedArmour
        L9_3 = L2_3
        L10_3 = L7_3
        L8_3(L9_3, L10_3)
      end
    end
  end
  L2_2(L3_2)
end
function L15_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = 0.0
  L1_2 = 1
  L2_2 = L2_1
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L2_1
    L5_2 = L5_2[L4_2]
    L6_2 = GetGameTimer
    L6_2 = L6_2()
    L7_2 = L5_2.startTime
    L7_2 = L6_2 - L7_2
    L8_2 = L5_2.duration
    L8_2 = L8_2 - L7_2
    L9_2 = 0.0
    L10_2 = 10000
    if L7_2 < L10_2 then
      L9_2 = L7_2 / 10000
    else
      L10_2 = 5000
      if L8_2 < L10_2 then
        L9_2 = L8_2 / 5000
      else
        L9_2 = 1.0
      end
    end
    L5_2.currentIntensity = L9_2
    L0_2 = L0_2 + L9_2
  end
  L1_2 = math
  L1_2 = L1_2.min
  L2_2 = L0_2
  L3_2 = 3.0
  return L1_2(L2_2, L3_2)
end
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L2_1
  L0_2 = #L0_2
  if 0 == L0_2 then
    return
  end
  L0_2 = L15_1
  L0_2 = L0_2()
  L3_1 = L0_2
  L0_2 = L2_1
  L0_2 = L0_2[1]
  L0_2 = L0_2.effects
  L1_2 = L5_1
  L2_2 = L0_2
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
  L1_2 = L7_1
  L2_2 = L0_2
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
  L1_2 = L8_1
  L2_2 = L0_2
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
end
L17_1 = CreateThread
function L18_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  while true do
    L0_2 = Wait
    L1_2 = 500
    L0_2(L1_2)
    L0_2 = L2_1
    L0_2 = #L0_2
    if L0_2 > 0 then
      L0_2 = L1_1
      if L0_2 >= 1.0 then
        L0_2 = Wait
        L1_2 = 10000
        L0_2(L1_2)
        L0_2 = L6_1
        L0_2()
        L0_2 = Wait
        L1_2 = 500
        L0_2(L1_2)
      else
        L0_2 = L16_1
        L0_2()
        L0_2 = GetGameTimer
        L0_2 = L0_2()
        L1_2 = L2_1
        L1_2 = #L1_2
        L2_2 = 1
        L3_2 = -1
        for L4_2 = L1_2, L2_2, L3_2 do
          L5_2 = L2_1
          L5_2 = L5_2[L4_2]
          L5_2 = L5_2.startTime
          L6_2 = L2_1
          L6_2 = L6_2[L4_2]
          L6_2 = L6_2.duration
          L5_2 = L5_2 + L6_2
          if L0_2 > L5_2 then
            L5_2 = table
            L5_2 = L5_2.remove
            L6_2 = L2_1
            L7_2 = L4_2
            L5_2(L6_2, L7_2)
          end
        end
        L1_2 = L2_1
        L1_2 = #L1_2
        if 0 == L1_2 then
          L1_2 = L6_1
          L1_2()
        end
      end
    end
  end
end
L17_1(L18_1)
L17_1 = CreateThread
function L18_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  while true do
    L0_2 = 1000
    L1_2 = L3_1
    if L1_2 > 0 then
      L1_2 = cache
      L1_2 = L1_2.vehicle
      if L1_2 then
        L1_2 = GetPedInVehicleSeat
        L2_2 = cache
        L2_2 = L2_2.vehicle
        L3_2 = -1
        L1_2 = L1_2(L2_2, L3_2)
        L2_2 = cache
        L2_2 = L2_2.ped
        if L1_2 == L2_2 then
          L1_2 = L1_1
          if L1_2 >= 1.0 then
            L1_2 = Wait
            L2_2 = 1000
            L1_2(L2_2)
          else
            L1_2 = math
            L1_2 = L1_2.max
            L2_2 = 100
            L3_2 = L3_1
            L3_2 = L3_2 * 300
            L4_2 = 1000
            L3_2 = L4_2 - L3_2
            L1_2 = L1_2(L2_2, L3_2)
            L0_2 = L1_2
            L1_2 = L10_1
            L2_2 = L3_1
            L1_2(L2_2)
            L1_2 = Wait
            L2_2 = L0_2
            L1_2(L2_2)
          end
      end
    end
    else
      L1_2 = Wait
      L2_2 = 1000
      L1_2(L2_2)
    end
  end
end
L17_1(L18_1)
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  while true do
    L1_2 = ServerConfig
    if L1_2 then
      break
    end
    L1_2 = Wait
    L2_2 = 100
    L1_2(L2_2)
  end
  L1_2 = L0_1
  if L1_2 then
    return
  end
  L1_2 = true
  L0_1 = L1_2
  L1_2 = ServerConfig
  L1_2 = L1_2.consumables
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    L2_2 = false
    L0_1 = L2_2
    return
  end
  L2_2 = L1_2.animation
  L2_2 = L2_2.dict
  if not L2_2 then
    L2_2 = L1_2.animation
    L2_2 = L2_2.scenario
    if not L2_2 then
      goto lbl_33
    end
  end
  L2_2 = L1_2.animation
  ::lbl_33::
  if not L2_2 then
    L2_2 = nil
  end
  L3_2 = L1_2.animationProp
  if L3_2 then
    L3_2 = L3_2.model
  end
  if L3_2 then
    L3_2 = IsModelValid
    L4_2 = L1_2.animationProp
    L4_2 = L4_2.model
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = L1_2.animationProp
      if L3_2 then
        goto lbl_50
      end
    end
  end
  L3_2 = nil
  ::lbl_50::
  L4_2 = LR
  L4_2 = L4_2.progressBar
  L5_2 = L1_2.progress
  L6_2 = L1_2.progressDuration
  L7_2 = false
  L8_2 = L2_2
  L9_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  if L4_2 then
    L4_2 = L1_2.effects
    L5_2 = L1_1
    L6_2 = L4_2.overdoseLevel
    L5_2 = L5_2 + L6_2
    L1_1 = L5_2
    L5_2 = L1_1
    if L5_2 >= 1.0 then
      L5_2 = CreateThread
      function L6_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
        L0_3 = SetTimecycleModifier
        L1_3 = "death"
        L0_3(L1_3)
        L0_3 = SetTimecycleModifierStrength
        L1_3 = 1.0
        L0_3(L1_3)
        L0_3 = ShakeGameplayCam
        L1_3 = "DEATH_FAIL_IN_EFFECT_SHAKE"
        L2_3 = 1.0
        L0_3(L1_3, L2_3)
        L0_3 = AnimpostfxPlay
        L1_3 = "DeathFailOut"
        L2_3 = 0
        L3_3 = true
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = SetPedToRagdoll
        L1_3 = cache
        L1_3 = L1_3.ped
        L2_3 = 5000
        L3_3 = 5000
        L4_3 = 0
        L5_3 = true
        L6_3 = true
        L7_3 = false
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
        L0_3 = Wait
        L1_3 = 5000
        L0_3(L1_3)
        L0_3 = SetEntityHealth
        L1_3 = cache
        L1_3 = L1_3.ped
        L2_3 = 0
        L0_3(L1_3, L2_3)
        L0_3 = LR
        L0_3 = L0_3.notify
        L1_3 = locale
        L2_3 = "overdosed"
        L1_3 = L1_3(L2_3)
        L2_3 = "error"
        L0_3(L1_3, L2_3)
        L0_3 = Wait
        L1_3 = 2000
        L0_3(L1_3)
        L0_3 = AnimpostfxStop
        L1_3 = "DeathFailOut"
        L0_3(L1_3)
        L0_3 = L6_1
        L0_3()
      end
      L5_2(L6_2)
      return
    end
    L5_2 = L2_1
    L5_2 = #L5_2
    L5_2 = L5_2 + 1
    L6_2 = L2_1
    L7_2 = {}
    L8_2 = GetGameTimer
    L8_2 = L8_2()
    L7_2.startTime = L8_2
    L8_2 = L4_2.duration
    L7_2.duration = L8_2
    L7_2.effects = L4_2
    L7_2.currentIntensity = 0.0
    L6_2[L5_2] = L7_2
    L6_2 = L11_1
    L7_2 = L4_2
    L6_2(L7_2)
    L6_2 = L12_1
    L7_2 = L4_2
    L8_2 = L4_2.duration
    L6_2(L7_2, L8_2)
    L6_2 = L13_1
    L7_2 = L4_2
    L8_2 = L4_2.duration
    L6_2(L7_2, L8_2)
    L6_2 = L14_1
    L7_2 = L4_2
    L8_2 = L4_2.duration
    L6_2(L7_2, L8_2)
    L6_2 = L4_2.hunger
    if L6_2 then
      L6_2 = L4_2.hunger
      if 0 ~= L6_2 then
        L6_2 = Editable
        L6_2 = L6_2.addHunger
        L7_2 = L4_2.hunger
        L6_2(L7_2)
      end
    end
    L6_2 = L4_2.thirst
    if L6_2 then
      L6_2 = L4_2.thirst
      if 0 ~= L6_2 then
        L6_2 = Editable
        L6_2 = L6_2.addThirst
        L7_2 = L4_2.thirst
        L6_2(L7_2)
      end
    end
    L6_2 = Editable
    if L6_2 then
      L6_2 = Editable
      L6_2 = L6_2.usedConsumable
      if L6_2 then
        L6_2 = Editable
        L6_2 = L6_2.usedConsumable
        L7_2 = L1_2.name
        L6_2(L7_2)
      end
    end
  end
  L4_2 = false
  L0_1 = L4_2
end
L18_1 = RegisterNetEvent
L19_1 = "lunar_drugscreator:consumables:consume"
L20_1 = L17_1
L18_1(L19_1, L20_1)
