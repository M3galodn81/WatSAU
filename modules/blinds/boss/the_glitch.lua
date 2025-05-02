SMODS.Blind{
    key = "the_glitch",
    dollars = 6,
    mult = 2,
    boss = {min = 1, max = 16},
    boss_colour =HEX('341c9e'),

    atlas = 'watsau_blinds', 
    pos = { x = 0, y = 3 },

    debuff = {
        value = 'Ace'
    }, 

    set_blind = function(self)
        
    end,


    press_play = function(self)
        -- G.GAME.blind.chips = G.GAME.blind.chips * 1.1
        -- G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
    end,

    modify_hand = function(self, cards, poker_hands, text, mult, hand_chips){
        local number = math.floor((love.math.random() * (1.5 - 0.1) + 0.1) * 100 + 0.5) / 100
        return mult * number, hand * number, true
    }
}
