SLOT_CODES =
{

    -- {
    --    ["pedestal_requirement"] = 1,
    --    ["chest_size_matches_contents"] = 1,
    --    ["crack_shuffle"] = 0,
    --    ["maiamai_mayhem"] = 1,
    --    ["no_progression_enemies"] = 1,
    --    ["minigames_excluded"] = 1,
    --    ["nice_items"] = 1,
    --    ["weather_vanes"] = 2,
    --    ["open_trials_door"] = 0,
    --    ["dark_rooms_lampless"] = 0,
    --    ["logic_mode"] = 0,
    --    ["lorule_castle_requirement"] = 3,
    --    ["initial_crack_state"] = 1,
    --    ["seed"] = 1512959087,
    --    ["lamp_and_net_as_weapons"] = 0,
    --    ["swordless_mode"] = 0,
    --    ["trials_required"] = 1,
    -- }

    chest_size_matches_contents =
    {
        code = "csmc",
        mapping =
        {
            [0] = 0, -- CSMC off
            [1] = 1  -- CSMC on
        }
    },
    minigames_excluded =
    {
        code = "minigames",
        mapping =
        {
            [0] = 0, -- Minigames on
            [1] = 1  -- Minigames off
        }
    },
    logic_mode =
    {
        code = "logic_mode",
        mapping =
        {
            [0] = 0,   -- Normal
            [1] = 1,   -- Hard
            [2] = 2,   -- Glitched
            [3] = 3,   -- AdvGlitched
            [4] = 4    -- Hell
            -- [5] = 5     -- No logic
        }
    },
    lorule_castle_requirement =
    {
        code = "lorule_castle_requirement",
        mapping =
        {
            [0] = 7,  -- No sages
            [1] = 6,  -- 1 sage
            [2] = 5,  -- 2 sages
            [3] = 4,  -- 3 sages
            [4] = 3,  -- 4 sages
            [5] = 2,  -- 5 sages
            [6] = 1,  -- 6 sages
            [7] = 0   -- 7 sages
        }
    },
    pedestal_requirement =
    {
        code = "pedestal_requirement",
        mapping =
        {
            [0] = 1, -- Vanilla (2)
            [1] = 0  -- Standard (3)
        }
    },
    lamp_and_net_as_weapons =
    {
        code = "lamp_and_net_as_weapons",
        mapping =
        {
            [0] = 0, -- Lamp and net not weapons
            [1] = 1  -- Lamp and net as weapons
        }
    },
    maiamai_mayhem =
    {
        code = "maiamai_mayhem",
        mapping =
        {
            [0] = 0, -- Maiamais default
            [1] = 1  -- Maiamais shuffled
        }
    },
    nice_items =
    {
        code = "nice_items",
        mapping =
        {
            [0] = 1,  -- Nice Items Vanilla
            [1] = 2,  -- Nice Items Shuffled (Junked)
            [2] = 0   -- Nice Items Off (Junked)
        }
    },
    no_progression_enemies =
    {
        code = "no_progression_enemies",
        mapping =
        {
            [0] = 0, -- Bawmbs included
            [1] = 1  -- Bawmbs excluded
        }
    },
    -- trials_required =
    -- {
    --     code = "lc_trials_door",
    --     mapping =
    --     {
    --         [0] = 1,  -- Door open
    --         [1] = 0,  -- 1 trial
    --         [2] = 0,  -- 2 trials
    --         [3] = 0,  -- 3 trials
    --         [4] = 0   -- 4 trials
    --     }
    -- },
    -- open_trials_door =
    -- {
    --     code = "lc_trials_door",
    --     mapping =
    --     {
    --         [0] = 0,
    --         [1] = 1
    --     }
    -- },
    dark_rooms_lampless =
    {
        code = "dark_rooms_lampless",
        mapping =
        {
            [0] = 0, -- Lamp needed
            [1] = 1  -- No lamp needed
        }
    },
    crack_shuffle =
    {
        code = "crack_shuffle",
        mapping =
        {
            [0] = 0,  -- Off, Cracks are not shuffled
            [1] = 1,  -- Cross World Pairs
            [2] = 1,  -- Any World Pairs
            [3] = 1,  -- Mirrored Cross World Pairs
            [4] = 1   -- Mirrored Any World Pairs
        }
    },
    weather_vanes =
    {
        code = "weather_vanes",
        mapping =
        {
            [0] = 0,  -- Standard
            [1] = 1,  -- Shuffled
            [2] = 0,  -- Convinient
            [3] = 0,  -- Hyrule
            [4] = 0,  -- Lorule
            [5] = 0   -- All
        }
    },
    -- swordless_mode =
    -- {
    --     code = "p_sword",
    --     mapping =
    --     {
    --         [0] = 1,  -- Swordful
    --         [1] = 0   -- Swordless
    --     }
    -- },
    initial_crack_state =
    {
        code = "quake",
        mapping =
        {
            [0] = 0, -- No quake
            [1] = 1, -- Quake
            [2] = 0  -- Progressive Merge
        }
    },
    shuffle_maiamai_rewards =
    {
        code = "shuffle_maiamai_rewards",
        mapping =
        {
            [0] = 0, -- Mother Maiamai default
            [1] = 1  -- Mother Maiamai shuffled
        }
    },
    maiamai_limit =
    {
        code = "maiamai_limit",
        mapping =
        {
            [0] = 0,
            [1] = 1,
            [2] = 2,
            [3] = 3,
            [4] = 4,
            [5] = 5,
            [6] = 6,
            [7] = 7,
            [8] = 8,
            [9] = 9,
            [10] = 10,
            [11] = 11,
            [12] = 12,
            [13] = 13,
            [14] = 14,
            [15] = 15,
            [16] = 16,
            [17] = 17,
            [18] = 18,
            [19] = 19,
            [20] = 20,
            [21] = 21,
            [22] = 22,
            [23] = 23,
            [24] = 24,
            [25] = 25,
            [26] = 26,
            [27] = 27,
            [28] = 28,
            [29] = 29,
            [30] = 30,
            [31] = 31,
            [32] = 32,
            [33] = 33,
            [34] = 34,
            [35] = 35,
            [36] = 36,
            [37] = 37,
            [38] = 38,
            [39] = 39,
            [40] = 40,
            [41] = 41,
            [42] = 42,
            [43] = 43,
            [44] = 44,
            [45] = 45,
            [46] = 46,
            [47] = 47,
            [48] = 48,
            [49] = 49,
            [50] = 50,
            [51] = 51,
            [52] = 52,
            [53] = 53,
            [54] = 54,
            [55] = 55,
            [56] = 56,
            [57] = 57,
            [58] = 58,
            [59] = 59,
            [60] = 60,
            [61] = 61,
            [62] = 62,
            [63] = 63,
            [64] = 64,
            [65] = 65,
            [66] = 66,
            [67] = 67,
            [68] = 68,
            [69] = 69,
            [70] = 70,
            [71] = 71,
            [72] = 72,
            [73] = 73,
            [74] = 74,
            [75] = 75,
            [76] = 76,
            [77] = 77,
            [78] = 78,
            [79] = 79,
            [80] = 80,
            [81] = 81,
            [82] = 82,
            [83] = 83,
            [84] = 84,
            [85] = 85,
            [86] = 86,
            [87] = 87,
            [88] = 88,
            [89] = 89,
            [90] = 90,
            [91] = 91,
            [92] = 92,
            [93] = 93,
            [94] = 94,
            [95] = 95,
            [96] = 96,
            [97] = 97,
            [98] = 98,
            [99] = 99,
            [100] = 100
        }
    },
    hint_ghosts =
    {
        code = "hint_ghosts",
        mapping =
        {
            [0] = 0, -- Ghosts Off
            [1] = 1, -- Ghosts Always On
            [2] = 2  -- Shuffled Glasses Required
        }
    },
}
