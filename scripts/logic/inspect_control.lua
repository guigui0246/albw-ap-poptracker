local MAP_TO_CHECK = {
    ["@Eastern Palace/F1/(1F) Left Door Chest/Chest"] = "ep_1f_left_door_chest_got_item",
    ["@Eastern Palace/F1/(1F) Switch Room/Chest"] = "ep_1f_switch_room_got_item",
    ["@Desert Palace/1F/(1F) Behind Rocks/Chest"] = "dp_1f_behind_rocks_got_item",
    ["@Desert Palace/1F/(1F) Big Chest (Behind Wall)/Chest"] = "dp_1f_big_chest_behind_wall_got_item",
    ["@House of Gales/East 1F/West 1F/(1F) West Room Secret/Chest"] = "hg_1f_west_room_secret_got_item",
    ["@House of Gales/East 1F/West 1F/2F/3F/(3F) Fire Bubbles/Chest"] = "hg_3f_fire_bubbles_got_item",
    ["@House of Gales/East 1F/West 1F/2F/3F/(3F) Rat Room/Chest"] = "hg_3f_rat_room_got_item",
    ["@Hyrule Overworld/Hyrule Castle Roof/Battlement/Chest"] = "battlement_got_item",
    ["@Ice Ruins/(B2) Long Merge Chest/Chest"] = "ir_b2_long_merge_chest_got_item",
    ["@Skull Woods/Outdoor Chest/Chest"] = "sw_outdoor_chest_got_item",
    ["@Lorule Castle/(1F) Center/Chest"] = "lc_1f_center_got_item",
    ["@Lorule Castle/(3F) Bomb Trial (1)/Chest"] = "lc_3f_bomb_trial_1_got_item",
    ["@Lorule Castle/(3F) Bomb Trial (2)/Chest"] = "lc_3f_bomb_trial_2_got_item",
    ["@Thieves' Hideout/(B1) Jail Cell/Chest"] = "tt_b1_jail_cell_got_item",
    ["@Thieves' Hideout/(B2) Eyegores/Chest"] = "tt_b2_eyegores_got_item",
    ["@Thieves' Hideout/(B3) Underwater/Chest"] = "tt_b3_underwater_got_item",
    ["@Thieves' Hideout/(B1) Behind Wall/Chest"] = "tt_b1_behind_wall_got_item",
    ["@Thieves' Hideout/(B1) Big Chest (Entrance)/Chest"] = "tt_b1_big_chest_entrance_got_item",
    ["@Hyrule Overworld/Death Bomb Cave/Death Mountain Blocked Cave/Chest"] = "dm_blocked_cave_got_item",
    ["@Hyrule Overworld/Death Fairy Cave/Death Mountain Fairy Cave/Chest"] = "dm_fairy_cave_got_item",
    ["@Hyrule Overworld/Donkey Cave Upper/Donkey Cave/Chest"] = "dm_donkey_cave_got_item",
    ["@Lorule Mountain/Ice Cave Ledge Chest/Chest"] = "dm_ice_cave_ledge_chest_got_item",
    ["@Hyrule Overworld/Lost Woods/Lost Woods behind large rock/Chest"] = "lost_woods_behind_large_rock_got_item",
    ["@Hyrule Overworld/Tornado Rod Dungeon/River Mini-Dungeon/Chest"] = "river_mini_dungeon_got_item",
    ["@Hyrule Overworld/Sanctuary Area/Sanctuary Pegs/Chest"] = "sanctuary_pegs_got_item",
    ["@Hyrule Overworld/Zora Domain Area/Zora's Domain Ledge/Chest"] = "zoras_domain_ledge_got_item",
    ["@Hyrule Overworld/Kakariko Jail Cell/Kakariko Jail/Chest"] = "kakariko_jail_got_item",
    ["@Hyrule Overworld/Eastern Ruins Upper/Hookshot Chest/Chest"] = "eastern_ruins_hookshot_chest_got_item",
    ["@Hyrule Overworld/Eastern Ruins Upper/Merge Chest/Chest"] = "eastern_ruins_merge_chest_got_item",
    ["@Hyrule Overworld/Southern Ruins/Southern Ruins Ledge/Chest"] = "southern_ruins_ledge_got_item",
    ["@Hyrule Overworld/Flippers Dungeon/Flippers Mini-Dungeon/Chest"] = "southern_ruins_flippers_mini_dungeon_got_item",
    ["@Hyrule Overworld/Lake Hylia Area/Lake Hylia Ledge/Chest"] = "lake_hylia_ledge_got_item",
    ["@Hyrule Overworld/Ice Rod Cave/Ice Rod Cave/Chest"] = "lake_hylia_ice_rod_cave_got_item",
    ["@Lorule Overworld/Philosopher's Cave/Chest"] = "philosophers_cave_got_item",
    ["@Lorule Overworld/Graveyard Peninsula/Chest"] = "graveyard_peninsula_got_item",
    ["@Lorule Overworld/Lorule Castle Area/Pegasus Boots Pyramid/Chest"] = "pegasus_boots_pyramid_got_item",
    ["@Lorule Overworld/Lorule Castle Area/Vacant House/Chest"] = "vacant_house_got_item",
    ["@Lorule Overworld/Lorule Castle Area/Lorule Field Hookshot Chest/Chest"] = "lorule_field_hookshot_chest_got_item",
    ["@Lorule Overworld/Misery Mire/Sand Mini-Dungeon/Chest"] = "misery_mire_sand_mini_dungeon_got_item",
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
            if got then
                got.CurrentStage = 1
            end
        end
    end
end

addToSync({
    check_inspectable_states
})
