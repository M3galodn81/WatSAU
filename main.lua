--- STEAMODDED HEADER
--- MOD_NAME: WatSAU Challenges
--- MOD_ID: WatSAU
--- MOD_AUTHOR: [M3galodn81]
--- MOD_DESCRIPTION: A mod with 5 vanilla challenges
--- PREFIX: watsau
----------------------------------------------
------------ MOD CODE -------------------------

------------------vars------------------------
SMODS.optional_features.cardareas.unscored = true
----------------------------------------------

--Load Challenges
assert(SMODS.load_file("./modules/challenges/challenges.lua"))() 

------------ MOD CODE END ----------------------
----------------------------------------------