SMODS.Blind{
    key = "final_dispurtor_array",
    dollars = 8,
    mult = 1.75,
    boss = {min = 1, max = 16, showdown = true},
    boss_colour =HEX('f7b300'),

    atlas = 'watsau_blinds', 
    pos = { x = 0, y = 3 },

    debuff = {

    }, 
    
    modify_hand = function(self)
    end,

    disable = function(self)
        G.hand:change_size(-1)
        G.FUNCS.draw_from_deck_to_hand(1)
    end,

    press_play = function(self)
        G.hand:change_size(-1)
    end,
}
