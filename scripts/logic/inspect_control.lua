local MAP_TO_CHECK = {
    ["@Eastern Palace/(1F) Left Door Chest/Chest"] = "ep_1f_left_door_chest_got_item",
    ["@Eastern Palace/(1F) Switch Room/Chest"] = "ep_1f_switch_room_got_item",
    ["@Desert Palace/(1F) Behind Rocks/Chest"] = "dp_1f_behind_rocks_got_item",
    ["@Desert Palace/(1F) Big Chest (Behind Wall)/Chest"] = "dp_1f_big_chest_behind_wall_got_item",
}

function check_inspectable_states()
    for inspectable, got_item in pairs(MAP_TO_CHECK) do
        local insp = Tracker:FindObjectForCode(inspectable)
        local got = Tracker:FindObjectForCode(got_item)
        if insp and got then
            if insp.AccessibilityLevel == AccessibilityLevel.SequenceBreak then
                got.CurrentStage = 0
            else
                got.CurrentStage = 1
            end
        else
            print("Error: Inspectable or Got item not found for code: " .. inspectable)
        end
    end
end

addToSync({
    check_inspectable_states
})
