SMODS.Blind{
    key = "final_potato_chips",
    loc_txt = {
        name = "Potato Chips",
        text = {
            'All additive modifiers ',
            'to Mult affect Chips instead',
        }
    },
    dollars = 8,
    mult = 2,
    boss = {min = 1, max = 16, showdown = true},
    boss_colour =HEX('f7b300'),

    atlas = 'watsau_blinds', 
    pos = { x = 0, y = 0 },

    debuff = {

    }, 

    

    press_play = function(self)
        
    end

    debuff_card = function(self, cards, hand, handname, check)

        if not self.disabled and context.cardarea == G.jokers then
            -- All additive modifiers to Mult affect Chips instead
        end
    end
    
}
