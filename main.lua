--Random Shit Not Worth Explaining--
local myPed = PlayerPedId()
local localPed = PlayerId()

    function notify(string)
        SetNotificationTextEntry("STRING")
        AddTextComponentString(string)
        DrawNotification(true, false)
    end

    function giveWeapon(weaponHash)
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(weaponHash), 999, false)
    end

    function weaponComponent(weaponHash, component)
        if HasPedGotWeapon(PlayerPedId(), GetHashKey(weaponHash), false) then
            GiveWeaponComponentToPed(PlayerPedId(), GetHashKey(weaponHash), GetHashKey(component))
         end
    end


    --PD LOADOUT--
    TriggerEvent('chat:addSuggestion', '/locop', 'Loads the Police Dept. loadout!')
    RegisterCommand('locop', function()
        --Gives the player weapons
        giveWeapon("weapon_combatpistol")
            weaponComponent("weapon_combatpistol", "COMPONENT_AT_PI_FLSH")
        giveWeapon("weapon_carbinerifle")
            weaponComponent("weapon_carbinerifle", "COMPONENT_AT_AR_FLSH")
            weaponComponent("weapon_carbinerifle", "COMPONENT_AT_AR_AFGRIP")
            weaponComponent("weapon_carbinerifle", "COMPONENT_AT_SCOPE_MEDIUM")
        giveWeapon("weapon_flare")
        giveWeapon("weapon_pumpshotgun")
            weaponComponent("weapon_pumpshotgun", "COMPONENT_AT_AR_FLSH")
        giveWeapon("weapon_stungun")
        giveWeapon("weapon_nightstick")
        giveWeapon("weapon_flashlight")
        notify("~b~~h~Police~h~~w~ Loadout Loaded.")
    end, false)



    --SWAT LOADOUT--
    TriggerEvent('chat:addSuggestion', '/loswat', 'Loads the SWAT Team loadout!')
    RegisterCommand('loswat', function()
        giveWeapon("weapon_combatpistol")
            weaponComponent("weapon_combatpistol", "COMPONENT_AT_PI_FLSH")
        giveWeapon("weapon_carbinerifle")
            weaponComponent("weapon_carbinerifle", "COMPONENT_AT_AR_FLSH")
            weaponComponent("weapon_carbinerifle", "COMPONENT_AT_AR_AFGRIP")
            weaponComponent("weapon_carbinerifle", "COMPONENT_AT_SCOPE_MEDIUM")
        giveWeapon("weapon_specialcarbine")
            weaponComponent("weapon_specialcarbine", "COMPONENT_SPECIALCARBINE_CLIP_03")
            weaponComponent("weapon_specialcarbine", "COMPONENT_AT_AR_FLSH")
            weaponComponent("weapon_specialcarbine", "COMPONENT_AT_AR_AFGRIP")
            weaponComponent("weapon_specialcarbine", "COMPONENT_AT_SCOPE_MEDIUM")
        giveWeapon("weapon_assaultshotgun")
            weaponComponent("weapon_assaultshotgun", "COMPONENT_ASSAULTSHOTGUN_CLIP_02")
            weaponComponent("weapon_assaultshotgun", "COMPONENT_AT_AR_FLSH")
            weaponComponent("weapon_assaultshotgun", "COMPONENT_AT_AR_AFGRIP")
        giveWeapon("weapon_flare")
        giveWeapon("weapon_pumpshotgun")
            weaponComponent("weapon_pumpshotgun", "COMPONENT_AT_AR_FLSH")
        giveWeapon("weapon_flashlight")
        notify("~b~~h~SWAT~h~~w~ Loadout Loaded.")
    end, false)


    --EMS LOADOUT--
    RegisterCommand('loems', function()
        TriggerEvent('chat:addSuggestion', '/loems', 'Loads the Paramedic loadout')
        giveWeapon("weapon_stungun")
        giveWeapon("weapon_flashlight")
        giveWeapon("weapon_switchblade")
        notify("~b~~h~EMS~h~~w~ Loadout Loaded.")
    end, false)

    --FIRE DEPT. LOADOUT--
    TriggerEvent('chat:addSuggestion', '/lofire', 'Loads the Firefighter loadout')
    RegisterCommand('lofire', function()
        giveWeapon('WEAPON_FIREEXTINGUISHER')
        giveWeapon('WEAPON_HATCHET')
        giveWeapon('WEAPON_FLASHLIGHT')
        giveWeapon('WEAPON_FLARE')
        giveWeapon('WEAPON_CROWBAR')
    end, false)

    --REMOVES ALL WEAPONS--
TriggerEvent('chat:addSuggestion', '/loremove', 'Removes all weapons')
 RegisterCommand('loremove', function()
        RemoveAllPedWeapons(myPed, true)
        notify("~g~All Weapons Removed")
    end, false)

    