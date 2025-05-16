SMODS.Blind{
    key = "the_glitch",
    dollars = 6,
    mult = 2,
    boss = {min = 4, max = 48}, -- >:)
    boss_colour =HEX('59a06a'),

    atlas = 'watsau_blinds', 
    pos = { x = 0, y = 21 },

    debuff = {
    }, 

    set_blind = function(self)
        
    end,


    press_play = function(self)
        -- G.GAME.blind.chips = G.GAME.blind.chips * 1.1
        -- G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
    end,

    modify_hand = function(self, cards, poker_hands, text, mult, hand_chips)
        local min = 1
        local max = 130
        
        local number_m = math.random(min, max) / 100
        local number_c = math.random(min, max) / 100
        G.GAME.blind:wiggle()
        return math.max((mult*number_m ), 1), math.max((hand_chips*number_c), 0), true
    end,
}
