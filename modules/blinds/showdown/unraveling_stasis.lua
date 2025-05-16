SMODS.Blind{
    key = "final_unraveling_stasis",
    dollars = 8,
    mult = 1.5,
    boss = {min = 1, max = 16, showdown = true},
    -- boss_colour =HEX('341c9e'),
    boss_colour =HEX('e72be3'),
    atlas = 'watsau_blinds', 
    pos = { x = 0, y = 3 },

    debuff = {

    }, 

    set_blind = function(self)
        
    end,

    press_play = function(self)
        G.GAME.blind:wiggle()
        G.GAME.blind.chips = G.GAME.blind.chips * 1.1
        G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
    end,

}
