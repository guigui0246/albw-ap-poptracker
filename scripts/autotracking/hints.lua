HINT_SOURCES = {
}

TUTORIAL_TEXT = "" ..
"Welcome to the tracker!\n" ..
"Don't forget to press the AP button in\n" ..
"the top bar to connect to your\n" ..
"Archipelago server.\n" ..
"The antenna icon is a popup window for\n" ..
"broadcasting.\n" ..
"The server and cog icon in between are\n" ..
"the settings for the tracker.\n"

-- Items and regions follow the canonical lists used by the pack's hint generator
-- (see upstream Hints.py). Add generic Archipelago categories as requested.
IMPORTANT_ITEMS = {
    [1] = "Bow",
    [2] = "Boomerang",
    [3] = "Hookshot",
    [4] = "Bombs",
    [5] = "Fire Rod",
    [6] = "Ice Rod",
    [7] = "Hammer",
    [8] = "Sand Rod",
    [9] = "Tornado Rod",
    [10] = "Boots",
    [11] = "Flippers",
    [12] = "Lamp",
    [13] = "Quake",
    [14] = "Bracelet",
    [15] = "Sword",
    [16] = "Glove",
    [17] = "Merge"
}

REGION_NAMES = {
    [1] = "Graveyard",
    [2] = "Castle",
    [3] = "Forest",
    [4] = "Catacombs",
    [5] = "Lake",
    [6] = "Church",
    [7] = "Mountain",
    [8] = "Village",
    [9] = "Desert",
    [10] = "Swamp",
    [11] = "Thieves",
    [12] = "Skull",
    [13] = "Ice",
    [14] = "Gales",
    [15] = "Turtle",
    [16] = "Eastern",
    [17] = "Hyrule",
    [18] = "Lorule",
    [19] = "Multiworld"
}

local customHintText = nil
local changed = true
local old = nil

-- nil restores automatic hints; an empty string clears the text panel.
-- Keep the override separate so auto-tracking refreshes cannot overwrite it.
function SetHintText(text)
    assert(text == nil or type(text) == "string", "SetHintText expects a string or nil")
    customHintText = text
    changed = true
    RefreshHintSystem()
end

function ResetHintState()
    HINT_SOURCES = {}
    customHintText = nil
    changed = true
    RefreshHintSystem()
end

function BuildImportantHintList()
    local output = ""

    for _, source in ipairs(HINT_SOURCES) do
        local item = source.item
        local region = source.region

        if item and region then
            output = output .. region .. " -> " .. item .. "\n"
        end
    end

    local text = customHintText
    if text == nil then
        text = output ~= "" and output or TUTORIAL_TEXT
    end
    if text == old and not changed then
        return
    end
    changed = false
    old = text

    local lines = {}
    for line in (text .. "\n"):gmatch("(.-)\n") do
        table.insert(lines, line)
    end
    for _, _ in ipairs({1, 2, 3, 4, 5, 6, 7, 8, 9, 10}) do
        table.insert(lines, "")
    end

    Tracker.BulkUpdate = true
    for i, text in ipairs(lines) do
        if i >= 10 then
            break
        end
        local panel = Tracker:FindObjectForCode("important_hint_panel_line_" .. i)
        if panel then
            panel:SetOverlay(text)
        end
    end
    Tracker.BulkUpdate = false
end

function RefreshHintSystem()
    -- If we don't try to access the content of the table, poptracker optimizes it away.
    dump_table(HINT_SOURCES)
    BuildImportantHintList()
end

function RemoveHint(region_name)
    print("Removing hint for region: " .. region_name)
    for i, source in ipairs(HINT_SOURCES) do
        if source.region == region_name then
            table.remove(HINT_SOURCES, i)
            RefreshHintSystem()
            return
        end
    end
end

function AddHint(item_name, region_name)
    RemoveHint(region_name)
    table.insert(HINT_SOURCES, {
        item = item_name,
        region = region_name
    })
    RefreshHintSystem()
end

RefreshHintSystem()
