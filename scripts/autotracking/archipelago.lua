ScriptHost:LoadScript("scripts/autotracking/item_mapping.lua")
ScriptHost:LoadScript("scripts/autotracking/location_mapping.lua")
ScriptHost:LoadScript("scripts/autotracking/setting_mapping.lua")
ScriptHost:LoadScript("scripts/autotracking/crack_map.lua")

-- ScriptHost:LoadScript("scripts/autotracking/vane_map.lua")
VANE_MAP = {
    ["Death Mountain (Hyrule) Weather Vane"] = "wv_death_hyrule",
    ["Tower of Hera Weather Vane"] = "wv_hera",
    ["Skull Woods Weather Vane"] = "wv_skull",
    ["Treacherous Tower Weather Vane"] = "wv_treacherous_tower",
    ["Death Mountain (Lorule) Weather Vane"] = "wv_death_lorule",
    ["Ice Ruins Weather Vane"] = "wv_ice",
    ["Kakariko Village Weather Vane"] = "wv_kakariko",
    ["Sanctuary Weather Vane"] = "wv_sanctuary",
    ["Witch's House Weather Vane"] = "wv_witch",
    ["Eastern Palace Weather Vane"] = "wv_eastern",
    ["Lorule Castle Weather Vane"] = "wv_lorule_castle",
    ["Graveyard Weather Vane"] = "wv_graveyard",
    ["Dark Palace Weather Vane"] = "wv_dark",
    ["Your House Weather Vane"] = "wv_your_house",
    ["Thieves' Town Weather Vane"] = "wv_thieves",
    ["Blacksmith Weather Vane"] = "wv_blacksmith",
    ["Vacant House Weather Vane"] = "wv_vacant_house",
    ["Desert Palace Weather Vane"] = "wv_desert",
    ["House of Gales Weather Vane"] = "wv_gales",
    ["Misery Mire Weather Vane"] = "wv_mire",
    ["Swamp Palace Weather Vane"] = "wv_swamp",
    ["Turtle Rock Weather Vane"] = "wv_turtle"
}


-- ScriptHost:LoadScript("scripts/autotracking/flags_map.lua")
FLAGS_MAP = {
    ["shady_guy"] = "shadyguy",
    ["pendant_courage"] = "courage_flag",
    ["pendant_wisdom"] = "wisdom_flag",
    ["pendant_power"] = "power_flag",
    ["portrait_gulley"] = "gulley_flag",
    ["portrait_oren"] = "oren_flag",
    ["portrait_seres"] = "seres_flag",
    ["portrait_osfala"] = "osfala_flag",
    ["portrait_rosso"] = "rosso_flag",
    ["portrait_irene"] = "irene_flag",
    ["portrait_impa"] = "impa_flag",
    ["crack_stylish_woman"] = "crack_stylish_woman",
    ["crack_your_house"] = "crack_your_house",
    ["crack_paradox_lower_hyrule"] = "crack_right_hyrule_paradox",
    ["crack_paradox_upper_hyrule"] = "crack_left_hyrule_paradox",
    ["crack_waterfall_hyrule"] = "crack_waterfall",
    ["crack_eastern_ruins_pillar"] = "crack_eastern_ruins_pillar",
    ["crack_eastern_ruins_se"] = "crack_eastern_ruins_se",
    ["crack_lost_woods"] = "crack_lost_woods_pillar",
    ["crack_sahasrahlas_house"] = "crack_sahasrahlas_house",
    ["crack_rossos_house"] = "crack_rossos_house",
    ["crack_to_misery_mire"] = "crack_mire_entrance",
    ["crack_desert_pillar_right"] = "crack_desert_pillar_right",
    ["crack_desert_pillar_left"] = "crack_desert_pillar_left",
    ["crack_desert_middle"] = "crack_desert_middle",
    ["crack_desert_sw"] = "crack_desert_sw",
    ["crack_to_zaganaga"] = "crack_desert_palace",
    ["crack_desert_north"] = "crack_desert_north",
    ["crack_dm_west_hyrule"] = "crack_dm_west",
    ["crack_rossos_ore_mine_hyrule"] = "crack_rom",
    ["crack_river_hyrule"] = "crack_river",
    ["crack_lake_hylia"] = "crack_lake_hylia",
    ["crack_hyrule_hotfoot"] = "crack_hyrule_hotfoot",
    ["crack_sanctuary"] = "crack_sanctuary",
    ["crack_graveyard_ledge_hyrule"] = "crack_graveyard",
    ["crack_floating_island_hyrule"] = "crack_hyfi",
    ["crack_swamp_pillar_hyrule"] = "crack_swamp_pillar",
    ["crack_zoras_domain"] = "crack_zoras_domain",
    ["crack_thieves_town"] = "crack_thieves_town",
    ["crack_vacant_house"] = "crack_vacant_house",
    ["crack_paradox_upper_lorule"] = "crack_right_lorule_paradox",
    ["crack_paradox_lower_lorule"] = "crack_left_lorule_paradox",
    ["crack_waterfall_lorule"] = "crack_waterfall_lorule",
    ["crack_dark_ruins_pillar"] = "crack_dark_ruins_pillar",
    ["crack_dark_maze_se"] = "crack_dark_ruins_se",
    ["crack_skull_woods_pillar"] = "crack_skull_woods_pillar",
    ["crack_n_shaped_house"] = "crack_n-shaped_house",
    ["crack_destroyed_house"] = "crack_destroyed_house",
    ["crack_misery_mire_exit"] = "crack_mire_exit",
    ["crack_mire_pillar_right"] = "crack_mire_pillar_right",
    ["crack_mire_pillar_left"] = "crack_mire_pillar_left",
    ["crack_mire_middle"] = "crack_mire_middle",
    ["crack_mire_sw"] = "crack_mire_sw",
    ["crack_zaganaga_exit"] = "crack_zaganaga",
    ["crack_mire_north"] = "crack_mire_north",
    ["crack_dm_west_lorule"] = "crack_lorule_dm_west",
    ["crack_rossos_ore_mine_lorule"] = "crack_rom_lorule",
    ["crack_river_lorule"] = "crack_river_lorule",
    ["crack_lorule_lake_west"] = "crack_lake_lorule",
    ["crack_lorule_coldfoot"] = "crack_lorule_hotfoot",
    ["crack_philosophers_cave"] = "crack_philosopher",
    ["crack_graveyard_ledge_lorule"] = "crack_graveyard_lorule",
    ["crack_floating_island_lorule"] = "crack_lofi",
    ["crack_swamp_pillar_lorule"] = "crack_swamp_pillar_lorule",
    ["crack_kus_domain"] = "crack_kus_domain",
    ["vane_your_house"] = "wv_your_house",
    ["vane_kakariko_village"] = "wv_kakariko",
    ["vane_eastern_palace"] = "wv_eastern",
    ["vane_house_of_gales"] = "wv_gales",
    ["vane_tower_of_hera"] = "wv_hera",
    ["vane_witchs_house"] = "wv_witch",
    ["vane_death_mtn_hyrule"] = "wv_death_hyrule",
    ["vane_desert_palace"] = "wv_desert",
    ["vane_sanctuary"] = "wv_sanctuary",
    ["vane_skull_woods"] = "wv_skull",
    ["vane_treacherous_tower"] = "wv_treacherous_tower",
    ["vane_ice_ruins"] = "wv_ice",
    ["vane_lorule_castle"] = "wv_lorule_castle",
    ["vane_graveyard"] = "wv_graveyard",
    ["vane_thieves_town"] = "wv_thieves",
    ["vane_dark_palace"] = "wv_dark",
    ["vane_blacksmith"] = "wv_blacksmith",
    ["vane_vacant_house"] = "wv_vacant_house",
    ["vane_misery_mire"] = "wv_mire",
    ["vane_swamp_palace"] = "wv_swamp",
    ["vane_turtle_rock"] = "wv_turtle",
    ["vane_death_mtn_lorule"] = "wv_death_lorule",
    ["scoot_fruit"] = "scootfruit",
    ["golden_bee"] = "goldenbee"
}

-- ScriptHost:LoadScript("scripts/autotracking/prize_map.lua")
PRIZE_MAP = {
    ["[EP] Prize"] = "eastern_",
    ["eastern_"] = "[EP] Prize",
    ["[HG] Prize"] = "gales_",
    ["gales_"] = "[HG] Prize",
    ["[TH] Prize"] = "hera_",
    ["hera_"] = "[TH] Prize",
    ["[PD] Prize"] = "dark_",
    ["dark_"] = "[PD] Prize",
    ["[SP] Prize"] = "swamp_",
    ["swamp_"] = "[SP] Prize",
    ["[SW] Prize"] = "skull_",
    ["skull_"] = "[SW] Prize",
    ["[TT] Prize"] = "thieves_",
    ["thieves_"] = "[TT] Prize",
    ["[TR] Prize"] = "turtle_",
    ["turtle_"] = "[TR] Prize",
    ["[DP] Prize"] = "desert_",
    ["desert_"] = "[DP] Prize",
    ["[IR] Prize"] = "ice_",
    ["ice_"] = "[IR] Prize",

    ["Rescue Gulley"] = "gulley_flag",
    ["gulley_flag"] = "Rescue Gulley",
    ["Rescue Oren"] = "oren_flag",
    ["oren_flag"] = "Rescue Oren",
    ["Rescue Seres"] = "seres_flag",
    ["seres_flag"] = "Rescue Seres",
    ["Rescue Osfala"] = "osfala_flag",
    ["osfala_flag"] = "Rescue Osfala",
    ["Rescue Impa"] = "impa_flag",
    ["impa_flag"] = "Rescue Impa",
    ["Rescue Irene"] = "irene_flag",
    ["irene_flag"] = "Rescue Irene",
    ["Rescue Rosso"] = "rosso_flag",
    ["rosso_flag"] = "Rescue Rosso",

    ["Pendant of Power"] = "power_flag",
    ["power_flag"] = "Pendant of Power",
    ["Pendant of Wisdom"] = "wisdom_flag",
    ["wisdom_flag"] = "Pendant of Wisdom",
    ["Pendant of Courage"] = "courage_flag",
    ["courage_flag"] = "Pendant of Courage"
}

CUR_INDEX = -1
PLAYER_ID = -1
TEAM_NUMBER = 0

LOCAL_ITEMS = {}
GLOBAL_ITEMS = {}
HOSTED = {}
CRACK_MAPPING = {}
VANE_MAPPING = {}
PRIZE_MAPPING = {}

DEBUG_ON_CLEAR = true
DEBUG_ON_ITEM = true
DEBUG_ON_LOCATION = true
DEBUG_ON_STORAGE = true
DEBUG_ON_SCOUT = true
DEBUG_ON_BOUNCE = true

function resetItems(mapping_table)
    for _, value in pairs(mapping_table) do
        if value[1] and value[2] then
            local object = Tracker:FindObjectForCode(value[1])
            if object then
                if value[2] == "toggle" then
                    object.Active = false
                elseif value[2] == "progressive" then
                    object.CurrentStage = 0
                    object.Active = false
                elseif value[2] == "consumable" then
                    object.AcquiredCount = 0
                elseif AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_CLEAR then
                    print(string.format("onClear: unknown item type %s for code %s", value[2], value[1]))
                end
                -- handle sword starting at index 1
                if value[1] == "p_sword" then
                    object.CurrentStage = 1
                end
            elseif AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_CLEAR then
                print(string.format("onClear: could not find object for code %s", value[1]))
            end
        end
    end
    for _, value in pairs(FLAGS_MAP) do
        if value then
            local object = Tracker:FindObjectForCode(value)
            if object then
                object.Active = false
            elseif AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_CLEAR then
                print(string.format("onClear: could not find object for flag code %s", value))
            end
        end
    end
    for _, value in ipairs({"eastern_", "gales_", "hera_", "dark_", "swamp_", "skull_", "thieves_", "turtle_", "desert_", "ice_"}) do
        local object = Tracker:FindObjectForCode(value)
        if object then
            object.Active = false
        end
    end
end

function resetLocations()
    for _, value in pairs(LOCATION_MAPPING) do
        if value[1] then
            if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_CLEAR then
                print(string.format("onClear: clearing location %s", value[1]))
            end
            local object = Tracker:FindObjectForCode(value[1])
            if object then
                if value[1]:sub(1, 1) == "@" then
                    object.AvailableChestCount = object.ChestCount
                else
                    object.Active = false
                end
            elseif AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_CLEAR then
                print(string.format("onClear: could not find object for code %s", value[1]))
            end
        end
    end
end

-- from https://stackoverflow.com/questions/9168058/how-to-dump-a-table-to-console
-- dumps a table in a readable string
function dump_table(o, depth)
    if depth == nil then
        depth = 0
    end
    if type(o) == 'table' then
        local tabs = ('\t'):rep(depth)
        local tabs2 = ('\t'):rep(depth + 1)
        local s = '{\n'
        for k, v in pairs(o) do
            if type(k) ~= 'number' then
                k = '"' .. k .. '"'
            end
            s = s .. tabs2 .. '[' .. k .. '] = ' .. dump_table(v, depth + 1) .. ',\n'
        end
        return s .. tabs .. '}'
    else
        return tostring(o)
    end
end

function hasAmount(item, amount)
    return Tracker:ProviderCountForCode(item) >= amount
end

function has_crack_map()
    if CRACK_MAPPING and next(CRACK_MAPPING) then
        return true
    end
    return false
end

function updateCracks(important)
    if CRACK_MAPPING then
        for entrance, destination in pairs(CRACK_MAPPING) do
            local location_code = CRACK_MAP[entrance]
            local dest_code = CRACK_MAP[destination]
            if location_code and dest_code then
                if dest_code ~= important then
                    local dest = Tracker:FindObjectForCode(dest_code)
                    if dest then
                        if has(location_code) then
                            dest.Active = true
                        else
                            if location_code == important then
                                dest.Active = false
                            end
                        end
                    else
                        if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_ITEM then
                            print(string.format("syncDisplay: could not find destination for code %s", dest_code))
                        end
                    end
                end
            else
                if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_ITEM then
                    if not location_code then
                        print(string.format("syncDisplay: could not find location code for name %s", entrance))
                    end
                    if not dest_code then
                        print(string.format("syncDisplay: could not find destination code for name %s", destination))
                    end
                end
            end
        end
    else
        if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_ITEM then
            print("syncDisplay: CRACK_MAPPING table is nil:")
        end
    end
end

function updateVanes(important)
    if VANE_MAPPING then
        for entrance, destination in pairs(VANE_MAPPING) do
            local location_code = VANE_MAP[entrance]
            local dest_code = VANE_MAP[destination]
            if location_code and dest_code then
                if dest_code ~= important then
                    local dest = Tracker:FindObjectForCode(dest_code)
                    if dest then
                        if has(location_code) then
                            dest.Active = true
                        else
                            if location_code == important then
                                dest.Active = false
                            end
                        end
                    else
                        if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_ITEM then
                            print(string.format("syncDisplay: could not find destination for code %s", dest_code))
                        end
                    end
                end
            else
                if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_ITEM then
                    if not location_code then
                        print(string.format("syncDisplay: could not find location code for name %s", entrance))
                    end
                    if not dest_code then
                        print(string.format("syncDisplay: could not find destination code for name %s", destination))
                    end
                end
            end
        end
    else
        if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_ITEM then
            print("syncDisplay: VANE_MAPPING table is nil:")
        end
    end
end

function onRetrieved(key, value)
    if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_STORAGE then
        print(string.format("Retrieved %s = %s", key, dump_table(value)))
    end

    if key == "albw_maiamai_" .. tostring(PLAYER_NUMBER) then
        local obj = Tracker:FindObjectForCode("maiamai")
        if obj then
            obj.CurrentStage = value
        else
            if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_STORAGE then
                print("onRetrieved: could not find object for code maiamai")
            end
        end
    end

    if key == "albw_flags_" .. tostring(PLAYER_NUMBER) then
        for flag, val in pairs(value) do
            local name = FLAGS_MAP[flag]
            if name then
                local obj = Tracker:FindObjectForCode(name)
                if obj then
                    obj.Active = val
                    if name == "goldenbee" and val then
                        local bottles = Tracker:FindObjectForCode("p_bottle")
                        if bottles then
                            bottles.CurrentStage = 2
                        else
                            if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_STORAGE then
                                print("onRetrieved: could not find object for code p_bottle")
                            end
                        end
                    end
                else
                    if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_STORAGE then
                        print(string.format("onRetrieved: could not find object for flag %s with code %s", flag, name))
                    end
                end
            else
                if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_STORAGE then
                    print(string.format("onRetrieved: could not find code for flag %s", flag))
                end
            end
        end
    end
    syncDisplay()
end

function syncDisplay(code)
    local bracelet = Tracker:FindObjectForCode("p_bracelet")
    local quake = Tracker:FindObjectForCode("quake")
    local merge = Tracker:FindObjectForCode("p_merge")
    if not bracelet and AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_ITEM then
        print("syncMergeDisplay: could not find object for code p_bracelet")
    end
    if not quake and AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_ITEM then
        print("syncMergeDisplay: could not find object for code quake")
    end
    if not merge and AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_ITEM then
        print("syncMergeDisplay: could not find object for code p_merge")
    end

    if hasAmount("p_merge", 1) and bracelet and bracelet.CurrentStage < 2 then
        bracelet.CurrentStage = 2
    end

    if merge and merge.CurrentStage >= 2 and quake and quake.CurrentStage < 1 then
        quake.CurrentStage = 1
    end

    local bottles = Tracker:FindObjectForCode("p_bottle")
    local bee = Tracker:FindObjectForCode("@Hyrule Overworld/Kakariko Village/Bee House/Bee Badge reward (Need golden bee)")
    if not bee and AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_ITEM then
        print("syncDisplay: could not find location for code @Hyrule Overworld/Kakariko Village/Bee House/Bee Badge reward (Need golden bee)")
    end
    if not bottles and AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_ITEM then
        print("syncDisplay: could not find object for code p_bottle")
    end
    if bottles and bottles.Active and bee and bee.AvailableChestCount == 0 then
        bottles.CurrentStage = 2
    end

    if has("u_icerod") and has("p_icerod") then
        local iceRod = Tracker:FindObjectForCode("p_icerod")
        if iceRod and iceRod.CurrentStage < 2 then
            iceRod.CurrentStage = 2
        end
    end
    if has("u_sandrod") and has("p_sandrod") then
        local sandRod = Tracker:FindObjectForCode("p_sandrod")
        if sandRod and sandRod.CurrentStage < 2 then
            sandRod.CurrentStage = 2
        end
    end
    if has("u_tornadorod") and has("p_tornadorod") then
        local tornadoRod = Tracker:FindObjectForCode("p_tornadorod")
        if tornadoRod and tornadoRod.CurrentStage < 2 then
            tornadoRod.CurrentStage = 2
        end
    end
    if has("u_bombs") and has("p_bombs") then
        local bombs = Tracker:FindObjectForCode("p_bombs")
        if bombs and bombs.CurrentStage < 2 then
            bombs.CurrentStage = 2
        end
    end
    if has("u_firerod") and has("p_firerod") then
        local fireRod = Tracker:FindObjectForCode("p_firerod")
        if fireRod and fireRod.CurrentStage < 2 then
            fireRod.CurrentStage = 2
        end
    end
    if has("u_hookshot") and has("p_hookshot") then
        local hookshot = Tracker:FindObjectForCode("p_hookshot")
        if hookshot and hookshot.CurrentStage < 2 then
            hookshot.CurrentStage = 2
        end
    end
    if has("u_boomerang") and has("p_boomerang") then
        local boomerang = Tracker:FindObjectForCode("p_boomerang")
        if boomerang and boomerang.CurrentStage < 2 then
            boomerang.CurrentStage = 2
        end
    end
    if has("u_hammer") and has("p_hammer") then
        local hammer = Tracker:FindObjectForCode("p_hammer")
        if hammer and hammer.CurrentStage < 2 then
            hammer.CurrentStage = 2
        end
    end
    if has("u_bow") and has("p_bow") then
        local bow = Tracker:FindObjectForCode("p_bow")
        if bow and bow.CurrentStage < 2 then
            bow.CurrentStage = 2
        end
    end
    if has("u_lamp") and has("p_lamp") then
        local lamp = Tracker:FindObjectForCode("p_lamp")
        if lamp and lamp.CurrentStage < 2 then
            lamp.CurrentStage = 2
        end
    end
    if has("u_net") and has("p_net") then
        local net = Tracker:FindObjectForCode("p_net")
        if net and net.CurrentStage < 2 then
            net.CurrentStage = 2
        end
    end

    for i, name in ipairs({"gulley_flag", "oren_flag", "seres_flag", "osfala_flag", "impa_flag", "irene_flag", "rosso_flag", "power_flag", "wisdom_flag", "courage_flag"}) do
        local flag = Tracker:FindObjectForCode(name)
        if flag.Active then
            for _, dungeon in ipairs({"eastern_", "gales_", "hera_", "dark_", "swamp_", "skull_", "thieves_", "turtle_", "desert_", "ice_"}) do
                local pendant = Tracker:FindObjectForCode(dungeon)
                if pendant then
                    if PRIZE_MAPPING and PRIZE_MAP and PRIZE_MAP[dungeon] and PRIZE_MAPPING[PRIZE_MAP[dungeon]] == PRIZE_MAP[name] then
                        pendant.CurrentStage = i
                    end
                    if pendant.CurrentStage == i then
                        pendant.Active = true
                    end
                else
                    if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_ITEM then
                        print(string.format("syncDisplay: could not find object for code %s", dungeon))
                    end
                end
            end
        end
    end

    if has("keyring_hs") then
        local keys = Tracker:FindObjectForCode("hs_small_key")
        if keys then
            keys.AcquiredCount = 1
        end
    end
    if has("keyring_ls") then
        local keys = Tracker:FindObjectForCode("ls_small_key")
        if keys then
            keys.AcquiredCount = 1
        end
    end
    if has("keyring_ep") then
        local keys = Tracker:FindObjectForCode("ep_small_keys")
        if keys then
            keys.AcquiredCount = 2
        end
    end
    if has("keyring_hg") then
        local keys = Tracker:FindObjectForCode("hg_small_keys")
        if keys then
            keys.AcquiredCount = 4
        end
    end
    if has("keyring_th") then
        local keys = Tracker:FindObjectForCode("th_small_keys")
        if keys then
            keys.AcquiredCount = 2
        end
    end
    if has("keyring_pd") then
        local keys = Tracker:FindObjectForCode("pd_small_keys")
        if keys then
            keys.AcquiredCount = 4
        end
    end
    if has("keyring_sp") then
        local keys = Tracker:FindObjectForCode("sp_small_keys")
        if keys then
            keys.AcquiredCount = 4
        end
    end
    if has("keyring_sw") then
        local keys = Tracker:FindObjectForCode("sw_small_keys")
        if keys then
            keys.AcquiredCount = 3
        end
    end
    if has("keyring_tt") then
        local keys = Tracker:FindObjectForCode("tt_small_key")
        if keys then
            keys.AcquiredCount = 1
        end
    end
    if has("keyring_tr") then
        local keys = Tracker:FindObjectForCode("tr_small_keys")
        if keys then
            keys.AcquiredCount = 3
        end
    end
    if has("keyring_dp") then
        local keys = Tracker:FindObjectForCode("dp_small_keys")
        if keys then
            keys.AcquiredCount = 5
        end
    end
    if has("keyring_ir") then
        local keys = Tracker:FindObjectForCode("ir_small_keys")
        if keys then
            keys.AcquiredCount = 3
        end
    end
    if has("keyring_lc") then
        local keys = Tracker:FindObjectForCode("lc_small_keys")
        if keys then
            keys.AcquiredCount = 5
        end
    end

end

function onSetReply(key, value, old)
end

function toggleWeatherVanes(value)
    if value == 2 then -- Convenient
        Tracker:FindObjectForCode("wv_your_house").Active = true
        Tracker:FindObjectForCode("wv_kakariko").Active = true
        Tracker:FindObjectForCode("wv_witch").Active = true
        Tracker:FindObjectForCode("wv_sanctuary").Active = true
        if notCracksanity() then
            Tracker:FindObjectForCode("wv_lorule_castle").Active = true
            Tracker:FindObjectForCode("wv_thieves").Active = true
            Tracker:FindObjectForCode("wv_blacksmith").Active = true
            Tracker:FindObjectForCode("wv_vacant_house").Active = true
        end
    elseif value == 3 then -- Hyrule
        Tracker:FindObjectForCode("wv_your_house").Active = true
        Tracker:FindObjectForCode("wv_kakariko").Active = true
        Tracker:FindObjectForCode("wv_witch").Active = true
        Tracker:FindObjectForCode("wv_sanctuary").Active = true
        Tracker:FindObjectForCode("wv_eastern").Active = true
        Tracker:FindObjectForCode("wv_gales").Active = true
        Tracker:FindObjectForCode("wv_hera").Active = true
        Tracker:FindObjectForCode("wv_death_hyrule").Active = true
        Tracker:FindObjectForCode("wv_desert").Active = true
    elseif value == 4 then -- Lorule
        Tracker:FindObjectForCode("wv_lorule_castle").Active = true
        Tracker:FindObjectForCode("wv_thieves").Active = true
        Tracker:FindObjectForCode("wv_blacksmith").Active = true
        Tracker:FindObjectForCode("wv_vacant_house").Active = true
        Tracker:FindObjectForCode("wv_skull").Active = true
        Tracker:FindObjectForCode("wv_treacherous_tower").Active = true
        Tracker:FindObjectForCode("wv_ice").Active = true
        Tracker:FindObjectForCode("wv_graveyard").Active = true
        Tracker:FindObjectForCode("wv_dark").Active = true
        Tracker:FindObjectForCode("wv_mire").Active = true
        Tracker:FindObjectForCode("wv_swamp").Active = true
        Tracker:FindObjectForCode("wv_turtle").Active = true
        Tracker:FindObjectForCode("wv_death_lorule").Active = true
    elseif value == 5 then -- All
        Tracker:FindObjectForCode("wv_your_house").Active = true
        Tracker:FindObjectForCode("wv_kakariko").Active = true
        Tracker:FindObjectForCode("wv_witch").Active = true
        Tracker:FindObjectForCode("wv_sanctuary").Active = true
        Tracker:FindObjectForCode("wv_eastern").Active = true
        Tracker:FindObjectForCode("wv_gales").Active = true
        Tracker:FindObjectForCode("wv_hera").Active = true
        Tracker:FindObjectForCode("wv_death_hyrule").Active = true
        Tracker:FindObjectForCode("wv_desert").Active = true
        Tracker:FindObjectForCode("wv_lorule_castle").Active = true
        Tracker:FindObjectForCode("wv_thieves").Active = true
        Tracker:FindObjectForCode("wv_blacksmith").Active = true
        Tracker:FindObjectForCode("wv_vacant_house").Active = true
        Tracker:FindObjectForCode("wv_skull").Active = true
        Tracker:FindObjectForCode("wv_treacherous_tower").Active = true
        Tracker:FindObjectForCode("wv_ice").Active = true
        Tracker:FindObjectForCode("wv_graveyard").Active = true
        Tracker:FindObjectForCode("wv_dark").Active = true
        Tracker:FindObjectForCode("wv_mire").Active = true
        Tracker:FindObjectForCode("wv_swamp").Active = true
        Tracker:FindObjectForCode("wv_turtle").Active = true
        Tracker:FindObjectForCode("wv_death_lorule").Active = true
    end
end

function Jsondecode(jsonString)
    local result = {}

    if type(jsonString) ~= "string" then
        return jsonString
    end

    for key, value in string.gmatch(jsonString, '"([^"]+)":"([^"]+)"') do
        result[key] = value
    end

    return result
end

function onClear(slot_data)
    CUR_INDEX = -1
    PLAYER_NUMBER = Archipelago.PlayerNumber or -1
    TEAM_NUMBER = Archipelago.TeamNumber or 0
    Tracker.BulkUpdate = true
    LOCAL_ITEMS = {}
    GLOBAL_ITEMS = {}
    resetItems(ITEM_MAPPING)
    resetLocations()
    CRACK_MAPPING = {}
    VANE_MAPPING = {}
    PRIZE_MAPPING = {}
    if slot_data and slot_data["crack_map"] then
        CRACK_MAPPING = Jsondecode(slot_data["crack_map"])
    end
    if slot_data and slot_data["vane_map"] then
        VANE_MAPPING = Jsondecode(slot_data["vane_map"])
    end
    if slot_data and slot_data["prize_map"] then
        PRIZE_MAPPING = Jsondecode(slot_data["prize_map"])
    end
    if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_CLEAR then
        print(string.format("called onClear, slot_data:\n%s", dump_table(slot_data)))
        print(string.format("crack mapping:\n%s", dump_table(CRACK_MAPPING)))
        print(string.format("vane mapping:\n%s", dump_table(VANE_MAPPING)))
        print(string.format("prize mapping:\n%s", dump_table(PRIZE_MAPPING)))
    end

    local wv_value = 0
    for key, value in pairs(slot_data) do
        if key == "swordless_mode" then
            if value == 1 then
                local object = Tracker:FindObjectForCode("p_sword")
                object.CurrentStage = 0
            end
        elseif key == "weather_vanes" then
            wv_value = value
        elseif (key == "trials_required" and value == 0) or (key == "open_trials_door" and value == 1) then
            Tracker:FindObjectForCode("lc_trials_door").CurrentStage = 1
        end

        if SLOT_CODES[key] then
            if SLOT_CODES[key].code and SLOT_CODES[key].mapping and SLOT_CODES[key].mapping[value] ~= nil then
                Tracker:FindObjectForCode(SLOT_CODES[key].code).CurrentStage = SLOT_CODES[key].mapping[value]
            else
                print(string.format("onClear: invalid slot code configuration for key %s", key))
            end
        elseif AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_CLEAR then
            print(string.format("onClear: could not find setting for id %s", key))
        end
    end
    toggleWeatherVanes(wv_value)
    if PLAYER_NUMBER ~= -1 then
        Archipelago:AddRetrievedHandler("albw_maiamai_" .. tostring(PLAYER_NUMBER), onRetrieved)
        Archipelago:AddRetrievedHandler("albw_flags_" .. tostring(PLAYER_NUMBER), onRetrieved)
        Archipelago:AddSetReplyHandler("albw_maiamai_" .. tostring(PLAYER_NUMBER), onRetrieved)
        Archipelago:AddSetReplyHandler("albw_flags_" .. tostring(PLAYER_NUMBER), onRetrieved)
        Archipelago:SetNotify({"albw_maiamai_" .. tostring(PLAYER_NUMBER)})
        Archipelago:SetNotify({"albw_flags_" .. tostring(PLAYER_NUMBER)})
        Archipelago:Get({"albw_maiamai_" .. tostring(PLAYER_NUMBER)})
        Archipelago:Get({"albw_flags_" .. tostring(PLAYER_NUMBER)})
    end
    Tracker.BulkUpdate = false
    syncDisplay()
end

-- called when an item gets collected
function onItem(index, item_id, item_name, player_number)
    if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_ITEM then
        print(string.format("called onItem: %s, %s, %s, %s, %s", index, item_id, item_name, player_number, CUR_INDEX))
    end
    if not AUTOTRACKER_ENABLE_ITEM_TRACKING and DEBUG_ON_ITEM then
        return
    end
    if index <= CUR_INDEX then
        return
    end
    local is_local = player_number == Archipelago.PlayerNumber
    CUR_INDEX = index;
    local item = ITEM_MAPPING[item_id]
    if not item then
        if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_ITEM then
            print(string.format("onItem: could not find item mapping for id %s", item_id))
        end
        return
    end
    if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_ITEM then
        print(string.format("onItem: code: %s, type %s", item[1], item[2]))
    end
    if not item[1] then
        return
    end
    local item_object = Tracker:FindObjectForCode(item[1])
    if item_object then
        if item[2] == "toggle" then
            item_object.Active = true
        elseif item[2] == "progressive" then
            if not item[3] then
                if item_object.Active then
                    item_object.CurrentStage = item_object.CurrentStage + 1
                else
                    item_object.Active = true
                end
            else
                if item_object.Active then
                    item_object.CurrentStage = item_object.CurrentStage + item[3]
                else
                    item_object.Active = true
                    item_object.CurrentStage = item_object.CurrentStage + (item[3] - 1)
                end
            end
        elseif item[2] == "consumable" then
            item_object.AcquiredCount = item_object.AcquiredCount + item_object.Increment
        elseif AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_ITEM then
            print(string.format("onItem: unknown item type %s for code %s", item[2], item[1]))
        end
    elseif AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_ITEM then
        print(string.format("onItem: could not find object for code %s", item[1]))
    end
    -- track local items via snes interface
    if is_local then
        if LOCAL_ITEMS[item[1]] then
            LOCAL_ITEMS[item[1]] = LOCAL_ITEMS[item[1]] + 1
        else
            LOCAL_ITEMS[item[1]] = 1
        end
    else
        if GLOBAL_ITEMS[item[1]] then
            GLOBAL_ITEMS[item[1]] = GLOBAL_ITEMS[item[1]] + 1
        else
            GLOBAL_ITEMS[item[1]] = 1
        end
    end
    if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_ITEM then
        print(string.format("local items: %s", dump_table(LOCAL_ITEMS)))
        print(string.format("global items: %s", dump_table(GLOBAL_ITEMS)))
    end
end

-- called when a location gets cleared
function onLocation(location_id, location_name)
    if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_LOCATION then
        print(string.format("called onLocation: %s, %s", location_id, location_name))
    end
    if not AUTOTRACKER_ENABLE_LOCATION_TRACKING then
        return
    end
    local locations = LOCATION_MAPPING[location_id]
    if not locations and AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_LOCATION then
        print(string.format("onLocation: could not find location mapping for id %s", location_id))
    end
    if not locations[1] then
        return
    end
    for _, value in pairs(locations) do
        if value ~= "toggle" then
            local location_object = Tracker:FindObjectForCode(value)
            if location_object then
                if value:sub(1, 1) == "@" then
                    location_object.AvailableChestCount = location_object.AvailableChestCount - 1
                else
                    location_object.Active = true
                end
            elseif AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_LOCATION then
                print(string.format("onLocation: could not find object for code %s", value))
            end
        end
    end
end

-- called when a locations is scouted
function onScout(location_id, location_name, item_id, item_name, item_player)
    if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_SCOUT then
        print(string.format("called onScout: %s, %s, %s, %s, %s", location_id, location_name, item_id, item_name,
            item_player))
    end
end

-- called when a bounce message is received
function onBounce(value)
    if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP and DEBUG_ON_BOUNCE then
        print(string.format("called onBounce: %s", dump_table(value)))
    end

    -- if not value then
    --     return
    -- end

    -- local slots = value["slots"]

    -- if not slots or not (slots[1] == Archipelago.PlayerNumber and slots[2] == nil) then
    --     return
    -- end

    -- local data = value["data"]
    -- if not data then
    --     return
    -- end

    -- onMap(data)
end

-- add AP callbacks
-- un-/comment as needed
Archipelago:AddClearHandler("clear handler", onClear)
if AUTOTRACKER_ENABLE_ITEM_TRACKING then
    Archipelago:AddItemHandler("item handler", onItem)
end
if AUTOTRACKER_ENABLE_LOCATION_TRACKING then
    Archipelago:AddLocationHandler("location handler", onLocation)
end
Archipelago:AddSetReplyHandler("set reply handler", onSetReply)
Archipelago:AddScoutHandler("scout handler", onScout)
Archipelago:AddBouncedHandler("bounce handler", onBounce)

ON_SYNC = {
    syncDisplay,
    updateCracks,
    updateVanes,
    can_finish
}

function syncDisplayCallback(code)
    for _, callback in ipairs(ON_SYNC) do
        callback(code)
    end
end

ScriptHost:AddWatchForCode("syncDisplay", "*", syncDisplayCallback)
ScriptHost:AddOnLocationSectionChangedHandler("syncDisplayLocation", syncDisplayCallback)

function addToSync(callback_list)
    for _, callback in ipairs(callback_list) do
        table.insert(ON_SYNC, callback)
    end
end
