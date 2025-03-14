--- STEAMODDED HEADER
--- MOD_NAME: Where are the Stars Above Us
--- MOD_ID: WatSAU
--- MOD_AUTHOR: [M3galodn81]
--- MOD_DESCRIPTION: Peak Pain
--- PREFIX: watsau
----------------------------------------------
------------ MOD CODE -------------------------

------------------vars------------------------
SMODS.optional_features.cardareas.unscored = true
----------------------------------------------

-- Joker Atlas
SMODS.Atlas{
    key = 'watsau_jokers', --atlas key
    path = 'jokers.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 71, --width of one card
    py = 95 -- height of one card
}

-- Blind Atlas

SMODS.Atlas{
    key = 'watsau_blinds', --atlas key
    path = 'blinds.png', --atlas' path in (yourMod)/assets/1x or (yourMod)/assets/2x
    px = 34, --width of one card
    py = 34, -- height of one card
    atlas_table = 'ANIMATION_ATLAS',
    frames = 21,
}


-- Load Jokers
assert(SMODS.load_file("./modules/jokers/test_joker.lua"))() 
assert(SMODS.load_file("./modules/jokers/haze.lua"))() 
assert(SMODS.load_file("./modules/jokers/der_richter.lua"))()
assert(SMODS.load_file("./modules/jokers/myrtle.lua"))() 

-- Load Consumables

-- Load Blinds
-- assert(SMODS.load_file("./modules/blinds/mazarines_end.lua"))() 
assert(SMODS.load_file("./modules/blinds/distorted_fate.lua"))() 
-- assert(SMODS.load_file("./modules/blinds/broken_sky.lua"))() 
assert(SMODS.load_file("./modules/blinds/shatter_switch.lua"))() 

-- Load Enhancements
assert(SMODS.load_file("./modules/enhancement/reinforced.lua"))() 





------------ MOD CODE END ----------------------
----------------------------------------------