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

-- nil restores automatic hints; an empty string clears the text panel.
-- Keep the override separate so auto-tracking refreshes cannot overwrite it.
function SetHintText(text)
    assert(text == nil or type(text) == "string", "SetHintText expects a string or nil")
    customHintText = text
    BuildImportantHintList()
end

function ResetHintState()
    for _, source in ipairs(HINT_SOURCES) do
        local itemObject = Tracker:FindObjectForCode(source.item_code)
        local regionObject = Tracker:FindObjectForCode(source.region_code)

        if itemObject then
            itemObject.CurrentStage = 0
        end

        if regionObject then
            regionObject.CurrentStage = 0
        end
    end
end

function BuildImportantHintList()
    local output = ""

    for _, source in ipairs(HINT_SOURCES) do
        local item = source.item
        local region = source.region

        if item and region then
            output = output .. item .. " -> " .. region .. "\n"
        end
    end

    local text = customHintText
    if text == nil then
        text = output ~= "" and output or TUTORIAL_TEXT
    end

    local lines = {}
    for line in (text .. "\n"):gmatch("(.-)\n") do
        table.insert(lines, line)
    end
    for _, _ in ipairs({1, 2, 3, 4, 5, 6, 7, 8, 9, 10}) do
        table.insert(lines, "")
    end
    print(dump_table(lines))

    for i, text in ipairs(lines) do
        local panel = Tracker:FindObjectForCode("important_hint_panel_line_" .. i)
        print(i, panel, text)
        if panel then
            panel:SetOverlay(text)
        end
    end
end

function RefreshHintSystem()
    BuildImportantHintList()
end

function RegisterHintWatches()
    for _, source in ipairs(HINT_SOURCES) do
        ScriptHost:AddWatchForCode(
            source.name .. "_item_watch",
            source.item_code,
            RefreshHintSystem
        )

        ScriptHost:AddWatchForCode(
            source.name .. "_region_watch",
            source.region_code,
            RefreshHintSystem
        )
    end
end

RegisterHintWatches()

function AddHint(item_name, region_name)
    table.insert(HINT_SOURCES, {
        item = item_name,
        region = region_name
    })
    RefreshHintSystem()
end
