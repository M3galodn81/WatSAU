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

-- Joker/Enhancement Atlas
SMODS.Atlas{
    key = 'watsau_jokers',
    path = 'jokers.png', 
    px = 71, 
    py = 95 
}

-- Blind Atlas
SMODS.Atlas{
    key = 'watsau_blinds', 
    path = 'blinds.png', 
    px = 34,
    py = 34, 
    atlas_table = 'ANIMATION_ATLAS',
    frames = 21,
}

-- Load Config Tab
-- assert(SMODS.load_file("./modules/ui/tab_config.lua"))() 

-- TODO: Make Config Tabs 


-- Load Jokers

-- TODO: Make auto load function based on config
-- Phigros
if true then
    assert(SMODS.load_file("./modules/jokers/phigros/der_richter.lua"))()
    assert(SMODS.load_file("./modules/jokers/phigros/concvssion.lua"))() 
    assert(SMODS.load_file("./modules/jokers/phigros/inferior.lua"))() 
    assert(SMODS.load_file("./modules/jokers/phigros/geopelia.lua"))() 
end

-- Lanota
assert(SMODS.load_file("./modules/jokers/lanota/cyanine.lua"))()


-- BOF
-- assert(SMODS.load_file("./modules/jokers/bof/burn.lua"))() Aleph
assert(SMODS.load_file("./modules/jokers/bof/burn.lua"))()

-- Arcaea
assert(SMODS.load_file("./modules/jokers/arcaea/einherjar.lua"))() 
assert(SMODS.load_file("./modules/jokers/arcaea/tempestissimo.lua"))() 

-- Random
assert(SMODS.load_file("./modules/jokers/random/haze.lua"))() 
assert(SMODS.load_file("./modules/jokers/random/myrtle.lua"))() 
assert(SMODS.load_file("./modules/jokers/random/surtr.lua"))() 
assert(SMODS.load_file("./modules/jokers/random/test_joker.lua"))() 
assert(SMODS.load_file("./modules/jokers/random/jackhammer.lua"))() 


-- Load Consumables

-- Load Blinds

-- Boss Showdown Blinds
-- assert(SMODS.load_file("./modules/blinds/showdown/mazarines_end.lua"))()  --needs fixing 
assert(SMODS.load_file("./modules/blinds/showdown/distorted_fate.lua"))() 
assert(SMODS.load_file("./modules/blinds/showdown/inverted_world.lua"))() 
assert(SMODS.load_file("./modules/blinds/showdown/unraveling_stasis.lua"))() 
-- assert(SMODS.load_file("./modules/blinds/showdown/broken_sky.lua"))() 
assert(SMODS.load_file("./modules/blinds/showdown/shatter_switch.lua"))() 

-- Boss Blinds
assert(SMODS.load_file("./modules/blinds/boss/the_flip.lua"))()  --rename
assert(SMODS.load_file("./modules/blinds/boss/the_product.lua"))()  --rename
assert(SMODS.load_file("./modules/blinds/boss/the_ace.lua"))() 

-- Load Enhancements
assert(SMODS.load_file("./modules/enhancement/reinforced.lua"))() 
assert(SMODS.load_file("./modules/enhancement/molten.lua"))() 
assert(SMODS.load_file("./modules/enhancement/burnt.lua"))() 
-- assert(SMODS.load_file("./modules/enhancement/test.lua"))() 

-- Load Rarity
assert(SMODS.load_file("./modules/rarity.lua"))() 

------------ MOD CODE END ----------------------
----------------------------------------------