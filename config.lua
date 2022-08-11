Config = {}

--[[
    kakao -> schokolade
    Kies -> eisen -> stahl
    fasern -> kevlar
    hünchen -> chickenburger
    kohle -> rohdiamant -> diamant
    altgummi -> gummi
    tabakblatt -> tabak -> zigaretten
    birne -> birnensaft
    apfel -> apfelsaft
    trauben -> traubensaft

]]--

Config.npcs = {
    --{x,y,z,h,hash,name}--
    {4446.7803, -4444.0195, 6.2369, 109.0509,0x60E6A7D8,"ig_omega"}, -- Zigaretten Verkäufer
    {1552.0671, 2189.6855, 77.8429, 357.5704,0xEDA0082D,"ig_jimmyboston"}, -- Birnen Verkäufer
    {380.9404, 356.4162, 101.5884, 342.2019,0xBE204C9B,"ig_joeminuteman"}, -- Apfel Verkäufer
    {-156.8370, 6327.9868, 30.5808, 308.6208,0x9A1E5E52,"u_m_o_taphillbilly"}, -- Trauben Verkäufer
    {171.6836, -1064.5007, 28.3234, 330.5822,0x8B7D3766,"u_m_y_burgerdrug_01"}, -- Hühnchen Verkäufer
    {1715.6504, 3323.9297, 40.2235, 187.5577,0x62CC28E2,"s_m_y_armymech_01"}, -- Gummi Verkäufer
    {1657.8777, 4839.0708, 41.0274, 275.7315,0xAD9EF1BB,"s_m_o_busker_01"}, -- Kakao Verkäufer
    {1231.4990, -3006.6975, 8.3193, 90.6521,0xD7DA9E99,"s_m_y_construct_01"}, -- Stahl Verkäufer


}
    

Config.farms = {
    {
        location = vector3(2330.4788, 5023.3740, 43.0778),
        radius = 20,
        item = {
            label = "Kakao",
            item = "cocoa",
            color = "o",
            count = 1,
        },
        blip = {
            enabled = true,
            label = "Kakao Farm",
            blip = 478,
            color= 16,
        },
        animation = {
            duration = 800,
            animation = "pickup_low",
            dictionary = "random@domestic",
            name= "Pickup",
        },
        cooldown = 2
    },
    {
        location = vector3(2945.1367, 2788.2034, 40.2039),
        radius = 55,
        item = {
            label = "Kies",
            item = "gravel",
            color = "c",
            count = 1,
        },
        blip = {
            enabled = true,
            label = "Stahl Farm",
            blip = 478,
            color= 62,
        },
        animation = {
            duration = 800,
            animation = "pickup_low",
            dictionary = "random@domestic",
            name= "Pickup",
        },
        cooldown = 2
    },
    {
        location = vector3(-1147.1477, 4938.8208, 222.2685),
        radius = 20,
        item = {
            label = "Fasern",
            item = "fasern",
            color = "w",
            count = 1,
        },
        blip = {
            enabled = true,
            label = "Westen Farm",
            blip = 478,
            color= 45,
        },
        animation = {
            duration = 800,
            animation = "pickup_low",
            dictionary = "random@domestic",
            name= "Pickup",
        },
        cooldown = 2
    },
    {
        location = vector3(-64.8395, 6243.2476, 31.0857),
        radius = 20,
        item = {
            label = "Hühnchen",
            item = "chicken",
            color = "o",
            count = 1,
        },
        blip = {
            enabled = true,
            label = "Hühnchen Farm",
            blip = 478,
            color= 35,
        },
        animation = {
            duration = 800,
            animation = "pickup_low",
            dictionary = "random@domestic",
            name= "Pickup",
        },
        cooldown = 2
    },
    {
        location = vector3(-565.7577, 1886.4896, 123.0350),
        radius = 20,
        item = {
            label = "Kohle",
            item = "coal",
            color = "b",
            count = 1,
        },
        blip = {
            enabled = false,
            label = "Diamant Farm",
            blip = 478,
            color= 38,
        },
        animation = {
            duration = 800,
            animation = "pickup_low",
            dictionary = "random@domestic",
            name= "Pickup",
        },
        cooldown = 2
    },
    {
        location = vector3(2426.8445, 3157.4177, 48.4981),
        radius = 20,
        item = {
            label = "Altgummi",
            item = "alt_gummi",
            color = "m",
            count = 1,
        },
        blip = {
            enabled = true,
            label = "Gummi Farm",
            blip = 478,
            color= 40,
        },
        animation = {
            duration = 800,
            animation = "pickup_low",
            dictionary = "random@domestic",
            name= "Pickup",
        },
        cooldown = 2
    },
    {
        location = vector3(5382.5708, -5264.1006, 34.5251),
        radius = 53,
        item = {
            label = "Tabak Blatt",
            item = "tabak_blatt",
            color = "r",
            count = 1,
        },
        blip = {
            enabled = true,
            label = "Tabak Farm",
            blip = 478,
            color= 59,
        },
        animation = {
            duration = 800,
            animation = "pickup_low",
            dictionary = "random@domestic",
            name= "Pickup",
        },
        cooldown = 2
    },
    {
        location = vector3(-141.0066, 1884.9220, 197.6826),
        radius = 10,
        item = {
            label = "Birne",
            item = "birne",
            color = "y",
            count = 1,
        },
        blip = {
            enabled = true,
            label = "Birnen Farm",
            blip = 478,
            color= 70,
        },
        animation = {
            duration = 800,
            animation = "pickup_low",
            dictionary = "random@domestic",
            name= "Pickup",
        },
        cooldown = 2
    },    
    {
        location = vector3(-1818.6573, 1962.5194, 135.4386),
        radius = 20,
        item = {
            label = "Apfel",
            item = "apfel",
            color = "g",
            count = 1,
        },
        blip = {
            enabled = true,
            label = "Apfel Farm",
            blip = 478,
            color= 69,
        },
        animation = {
            duration = 800,
            animation = "pickup_low",
            dictionary = "random@domestic",
            name= "Pickup",
        },
        cooldown = 2
    },
    {
        location = vector3(-1919.7097, 1872.7903, 171.3214),
        radius = 20,
        item = {
            label = "Trauben",
            item = "trauben",
            color = "p",
            count = 1,
        },
        blip = {
            enabled = true,
            label = "Trauben Farm",
            blip = 478,
            color= 27,
        },
        animation = {
            duration = 800,
            animation = "pickup_low",
            dictionary = "random@domestic",
            name= "Pickup",
        },
        cooldown = 2
    },
    {
        location = vector3(5507.5703, -5290.0601, 14.1343),
        radius = 10,
        item = {
            label = "Kokain Blätter",
            item = "kokainblatt",
            color = "r",
            count = 1,
        },
        blip = {
            enabled = false,
            label = "Trauben Farm",
            blip = 478,
            color= 27,
        },
        animation = {
            duration = 800,
            animation = "pickup_low",
            dictionary = "random@domestic",
            name= "Pickup",
        },
        cooldown = 2
    },
}

Config.workers = {
    {
        location = vector3(2443.4167, 4974.6943, 46.8106),
        radius = 3,
        item = {
            label = "Kakao",
            item = "cocoa",
            count = 5,
        },
        reward = {
            label = "Schokolade",
            item = "chocolate",
            count = 1,
            color = "o",
        },
        blip = {
            enabled = true,
            label = "Kakao Verarbeiter",
            blip = 478,
            color= 16,
        },
        animation = {
            duration = 800,
            animation = "pickup_low",
            dictionary = "random@domestic",
            name= "Pickup",
        },
        cooldown = 2
    },
    {
        location = vector3(2682.2771, 2796.8894, 40.4508),
        radius = 3,
        item = {
            label = "Kies",
            item = "gravel",
            count = 5,
        },
        reward = {
            label = "Eisen",
            item = "iron",
            count = 1,
            color = "c",
        },
        blip = {
            enabled = true,
            label = "Stahl Verarbeiter",
            blip = 478,
            color= 62,
        },
        animation = {
            duration = 800,
            animation = "pickup_low",
            dictionary = "random@domestic",
            name= "Pickup",
        },
        cooldown = 2
    },
    {
        location = vector3(1093.4205, -1997.1215, 29.6258),
        radius = 3,
        item = {
            label = "Eisen",
            item = "iron",
            count = 5,
        },
        reward = {
            label = "Stahl",
            item = "steal",
            count = 1,
            color = "c",
        },
        blip = {
            enabled = true,
            label = "Stahl Verarbeiter",
            blip = 478,
            color= 62,
        },
        animation = {
            duration = 800,
            animation = "pickup_low",
            dictionary = "random@domestic",
            name= "Pickup",
        },
        cooldown = 2
    },
    {
        location = vector3(6.1153, 6508.0786, 31.8778),
        radius = 3,
        item = {
            label = "Fasern",
            item = "fasern",
            count = 5,
        },
        reward = {
            label = "Kevlar",
            item = "kevlar",
            count = 1,
            color = "w",
        },
        blip = {
            enabled = true,
            label = "Westen Verarbeiter",
            blip = 478,
            color= 45,
        },
        animation = {
            duration = 800,
            animation = "pickup_low",
            dictionary = "random@domestic",
            name= "Pickup",
        },
        cooldown = 2
    },
    {
        location = vector3(-176.4634, 6151.4678, 42.6374),
        radius = 3,
        item = {
            label = "Kevlar",
            item = "kevlar",
            count = 5,
        },
        reward = {
            label = "Westen",
            item = "t4_armour",
            count = 1,
            color = "w",
        },
        blip = {
            enabled = true,
            label = "Westen Verarbeiter",
            blip = 478,
            color= 45,
        },
        animation = {
            duration = 800,
            animation = "pickup_low",
            dictionary = "random@domestic",
            name= "Pickup",
        },
        cooldown = 2
    },
    {
        location = vector3(-102.0712, 6208.8335, 31.0250),
        radius = 3,
        item = {
            label = "Chicken",
            item = "chicken",
            count = 5,
        },
        reward = {
            label = "Chicken Burger",
            item = "chicken_burger",
            count = 1,
            color = "o",
        },
        blip = {
            enabled = true,
            label = "Hühnchen Verarbeiter",
            blip = 478,
            color= 35,
        },
        animation = {
            duration = 800,
            animation = "pickup_low",
            dictionary = "random@domestic",
            name= "Pickup",
        },
        cooldown = 2
    },
    {
        location = vector3(4999.7192, -5164.8438, 2.7644),
        radius = 3,
        item = {
            label = "Kohle",
            item = "coal",
            count = 5,
        },
        reward = {
            label = "Rohdiamant",
            item = "raw_diamound",
            count = 1,
            color = "b",
        },
        blip = {
            enabled = false,
            label = "Diamant Verarbeiter",
            blip = 478,
            color= 38,
        },
        animation = {
            duration = 800,
            animation = "pickup_low",
            dictionary = "random@domestic",
            name= "Pickup",
        },
        cooldown = 2
    },
    {
        location = vector3(-631.4908, -229.6556, 38.0571),
        radius = 3,
        item = {
            label = "Rohdiamant",
            item = "raw_diamound",
            count = 5,
        },
        reward = {
            label = "Diamant",
            item = "diamound",
            count = 1,
            color = "b",
        },
        blip = {
            enabled = false,
            label = "Diamant Verarbeiter",
            blip = 478,
            color= 38,
        },
        animation = {
            duration = 800,
            animation = "pickup_low",
            dictionary = "random@domestic",
            name= "Pickup",
        },
        cooldown = 2
    },
    {
        location = vector3(1487.2025, 1130.2430, 114.3367),
        radius = 3,
        item = {
            label = "Alt Gummi",
            item = "alt_gummi",
            count = 5,
        },
        reward = {
            label = "Gummi",
            item = "gummi",
            count = 1,
            color = "m",
        },
        blip = {
            enabled = true,
            label = "Gummi Verarbeiter",
            blip = 478,
            color= 40,
        },
        animation = {
            duration = 800,
            animation = "pickup_low",
            dictionary = "random@domestic",
            name= "Pickup",
        },
        cooldown = 2
    },
    {
        location = vector3(4925.4399, -5274.1860, 5.6614),
        radius = 3,
        item = {
            label = "Tabak Blatt",
            item = "tabak_blatt",
            count = 5,
        },
        reward = {
            label = "Tabak",
            item = "Tabak",
            count = 1,
            color = "r",
        },
        blip = {
            enabled = true,
            label = "Tabak Verarbeiter",
            blip = 478,
            color= 59,
        },
        animation = {
            duration = 800,
            animation = "pickup_low",
            dictionary = "random@domestic",
            name= "Pickup",
        },
        cooldown = 2
    },
    {
        location = vector3(5065.9824, -4590.3481, 2.8572),
        radius = 3,
        item = {
            label = "Tabak",
            item = "tabak",
            count = 5,
        },
        reward = {
            label = "Zigaretten",
            item = "zigaretten",
            count = 1,
            color = "r",
        },
        blip = {
            enabled = true,
            label = "Tabak Verarbeiter",
            blip = 478,
            color= 59,
        },
        animation = {
            duration = 800,
            animation = "pickup_low",
            dictionary = "random@domestic",
            name= "Pickup",
        },
        cooldown = 2
    },
    {
        location = vector3(1208.7368, 1855.3143, 78.9116),
        radius = 3,
        item = {
            label = "Birne",
            item = "birne",
            count = 5,
        },
        reward = {
            label = "Birnensaft",
            item = "birnensaft",
            count = 1,
            color = "y",
        },
        blip = {
            enabled = true,
            label = "Birnen Verarbeiter",
            blip = 478,
            color= 70,
        },
        animation = {
            duration = 800,
            animation = "pickup_low",
            dictionary = "random@domestic",
            name= "Pickup",
        },
        cooldown = 2
    },
    {
        location = vector3(828.4456, 2191.3953, 52.3495),
        radius = 3,
        item = {
            label = "Apfel",
            item = "apfel",
            count = 5,
        },
        reward = {
            label = "Apfelsaft",
            item = "apfelsaft",
            count = 1,
            color = "g",
        },
        blip = {
            enabled = true,
            label = "Apfel Verarbeiter",
            blip = 478,
            color= 69,
        },
        animation = {
            duration = 800,
            animation = "pickup_low",
            dictionary = "random@domestic",
            name= "Pickup",
        },
        cooldown = 2
    },
    {
        location = vector3(-772.2127, 5597.9419, 33.6044),
        radius = 3,
        item = {
            label = "Trauben",
            item = "trauben",
            count = 5,
        },
        reward = {
            label = "Traubensaft",
            item = "traubensaft",
            count = 1,
            color = "p",
        },
        blip = {
            enabled = true,
            label = "Trauben Verarbeiter",
            blip = 478,
            color= 27,
        },
        animation = {
            duration = 800,
            animation = "pickup_low",
            dictionary = "random@domestic",
            name= "Pickup",
        },
        cooldown = 2
    },
    {
        location = vector3(5185.1987, -5152.5654, 4.4780),
        radius = 2,
        item = {
            label = "Kokain Blatt",
            item = "kokainblatt",
            count = 5,
        },
        reward = {
            label = "Koks",
            item = "koks",
            count = 1,
            color = "r",
        },
        blip = {
            enabled = false,
            label = "Trauben Verarbeiter",
            blip = 478,
            color= 27,
        },
        animation = {
            duration = 800,
            animation = "pickup_low",
            dictionary = "random@domestic",
            name= "Pickup",
        },
        cooldown = 2
    },
    {
        location = vector3(5186.4048, -5147.0786, 4.5043),
        radius = 2,
        item = {
            label = "Kokain Blatt",
            item = "kokainblatt",
            count = 5,
        },
        reward = {
            label = "Koks",
            item = "koks",
            count = 1,
            color = "r",
        },
        blip = {
            enabled = false,
            label = "Trauben Verarbeiter",
            blip = 478,
            color= 27,
        },
        animation = {
            duration = 800,
            animation = "pickup_low",
            dictionary = "random@domestic",
            name= "Pickup",
        },
        cooldown = 2
    },
}

Config.sellers = {
    {
        location = vector3(1657.7887, 4839.0254, 42.0265),
        radius = 2,
        item = {
            label = "Schokolade",
            color = "o",
            item = "chocolate",
            count = 5,
        },
        reward = {
            isBlack = false,
            money = 2500,
        },
        blip = {
            enabled = true,
            label = "Kakao Verkäufer",
            blip = 478,
            color= 16,
        },
        animation = {
            duration = 800,
            animation = "pickup_low",
            dictionary = "random@domestic",
            name= "Pickup",
        },
        cooldown = 2
    },
    {
        location = vector3(1231.3060, -3006.7048, 9.3193),
        radius = 2,
        item = {
            label = "Stahl",
            color = "c",
            item = "steal",
            count = 5,
        },
        reward = {
            isBlack = false,
            money = 5000,
        },
        blip = {
            enabled = true,
            label = "Stahl Verkäufer",
            blip = 478,
            color= 62,
        },
        animation = {
            duration = 800,
            animation = "pickup_low",
            dictionary = "random@domestic",
            name= "Pickup",
        },
        cooldown = 2
    },
    {
        location = vector3(171.8994, -1064.3818, 29.3234),
        radius = 2,
        item = {
            label = "Chickenburger",
            color = "o",
            item = "chicken_burger",
            count = 5,
        },
        reward = {
            isBlack = false,
            money = 3500,
        },
        blip = {
            enabled = true,
            label = "Hühnchen Verkäufer",
            blip = 478,
            color= 35,
        },
        animation = {
            duration = 800,
            animation = "pickup_low",
            dictionary = "random@domestic",
            name= "Pickup",
        },
        cooldown = 2
    },
    {
        location = vector3(1716.0234, 3323.5852, 41.2235),
        radius = 2,
        item = {
            label = "Gummi",
            color = "m",
            item = "gummi",
            count = 5,
        },
        reward = {
            isBlack = false,
            money = 1500,
        },
        blip = {
            enabled = true,
            label = "Gummi Verkäufer",
            blip = 478,
            color= 40,
        },
        animation = {
            duration = 800,
            animation = "pickup_low",
            dictionary = "random@domestic",
            name= "Pickup",
        },
        cooldown = 2
    },
    {
        location = vector3(4447.3159, -4443.9707, 7.2369),
        radius = 2,
        item = {
            label = "Zigaretten",
            color = "r",
            item = "zigaretten",
            count = 5,
        },
        reward = {
            isBlack = false,
            money = 6000,
        },
        blip = {
            enabled = true,
            label = "Tabak Verkäufer",
            blip = 478,
            color= 59,
        },
        animation = {
            duration = 800,
            animation = "pickup_low",
            dictionary = "random@domestic",
            name= "Pickup",
        },
        cooldown = 2
    },
    {
        location = vector3(1552.1796, 2189.6145, 78.8433),
        radius = 2,
        item = {
            label = "Birnensaft",
            color = "y",
            item = "birnensaft",
            count = 5,
        },
        reward = {
            isBlack = false,
            money = 2300,
        },
        blip = {
            enabled = true,
            label = "Birnen Verkäufer",
            blip = 478,
            color= 70,
        },
        animation = {
            duration = 800,
            animation = "pickup_low",
            dictionary = "random@domestic",
            name= "Pickup",
        },
        cooldown = 2
    },
    {
        location = vector3(380.4631, 357.7068, 102.5493),
        radius = 2,
        item = {
            label = "Apfelsaft",
            color = "g",
            item = "apfelsaft",
            count = 5,
        },
        reward = {
            isBlack = false,
            money = 2100,
        },
        blip = {
            enabled = true,
            label = "Apfel Verkäufer",
            blip = 478,
            color= 69,
        },
        animation = {
            duration = 800,
            animation = "pickup_low",
            dictionary = "random@domestic",
            name= "Pickup",
        },
        cooldown = 2
    },
    {
        location = vector3(-155.7897, 6327.2446, 31.5808),
        radius = 2,
        item = {
            label = "Traubensaft",
            color = "p",
            item = "traubensaft",
            count = 5,
        },
        reward = {
            isBlack = false,
            money = 2200,
        },
        blip = {
            enabled = true,
            label = "Trauben Verkäufer",
            blip = 478,
            color= 27,
        },
        animation = {
            duration = 800,
            animation = "pickup_low",
            dictionary = "random@domestic",
            name= "Pickup",
        },
        cooldown = 2
    },
}