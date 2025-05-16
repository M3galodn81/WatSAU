SMODS.Blind{
    key = "final_disruptor_array",
    dollars = 8,
    mult = 2,
    boss = {min = 1, max = 16, showdown = true},
    boss_colour =HEX('f7b300'),

    atlas = 'watsau_blinds', 
    pos = { x = 0, y = 4 },

    debuff = {

    }, 
    
    set_blind = function(self) 
        G.GAME.diff_hand_size = 0;
    end,

    disable = function(self)
        G.hand:change_size(G.GAME.diff_hand_size)
    end,

    defeat = function(self)
        G.hand:change_size(G.GAME.diff_hand_size)
    end,

    press_play = function(self)
        G.GAME.blind:wiggle()
        G.hand:change_size(-1)
        G.GAME.diff_hand_size = G.GAME.diff_hand_size + 1;
    end,

    calculate = function(self,blind,context)

    end
}
