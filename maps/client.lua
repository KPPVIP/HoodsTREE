Citizen.CreateThread(function()
    local isLoaded = 0;
    RequestIpl("gabz_pillbox_milo_")
    while true do
        if isLoaded > 5 then
            return
        else
            isLoaded = isLoaded + 1;
            interiorID = GetInteriorAtCoords(311.2546, -592.4204, 42.32737)
            if IsValidInterior(interiorID) then
                RemoveIpl("rc12b_fixed")
                RemoveIpl("rc12b_destroyed")
                RemoveIpl("rc12b_default")
                RemoveIpl("rc12b_hospitalinterior_lod")
                RemoveIpl("rc12b_hospitalinterior")
                RefreshInterior(interiorID)
            end
        end
        Citizen.Wait(5000)
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(100)
        ClearAreaOfPeds(1787.004, 2593.1984, 45.7978, 300, 1)
        ClearAreaOfPeds(440.84, -983.14, 30.69, 300, 1)
    end
end)

RegisterNetEvent('esx_faction:alarmOn')
AddEventHandler('esx_faction:alarmOn', function()
    local alarmIpl = GetInteriorAtCoordsWithType(1787.004, 2593.1984, 45.7978, "int_prison_main")
    
    RefreshInterior(alarmIpl)
    EnableInteriorProp(alarmIpl, "prison_alarm")
    
    Citizen.CreateThread(function()
        while not PrepareAlarm("PRISON_ALARMS") do
            Citizen.Wait(100)
        end
        StartAlarm("PRISON_ALARMS", true)
    end)
end)

RegisterNetEvent('esx_faction:alarmOff')
AddEventHandler('esx_faction:alarmOff', function()
    local alarmIpl = GetInteriorAtCoordsWithType(1787.004, 2593.1984, 45.7978, "int_prison_main")
    
    RefreshInterior(alarmIpl)
    DisableInteriorProp(alarmIpl, "prison_alarm")
    
    Citizen.CreateThread(function()
        while not PrepareAlarm("PRISON_ALARMS") do
            Citizen.Wait(100)
        end
        StopAllAlarms(true)
    end)
end)