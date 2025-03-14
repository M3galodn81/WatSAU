SMODS.Blind{
    key = "final_distorted_fate",
    loc_txt = {
        name = "Distorted Fate",
        text = {
            'One random Joker will be',
            'disabled every hand',
            -- 'until the last joker is disabled',
        }
    },
    dollars = 8,
    mult = 1.75,
    boss = {min = 1, max = 16, showdown = true},
    boss_colour =HEX('6f6ca6'),

    atlas = 'blinds', 
    pos = { x = 0, y = 0 },

    debuff = {

    }, 

    recalc_debuff = function(self, card, from_blind)

    end,


    drawn_to_hand = function(self)
        local jokers = {}
        for i = 1, #G.jokers.cards do
            if not G.jokers.cards[i].debuff or #G.jokers.cards < 2 then jokers[#jokers+1] =G.jokers.cards[i] end
            -- G.jokers.cards[i]:set_debuff(false)
        end 
        local _card = pseudorandom_element(jokers, pseudoseed('distored_fate'))
        if _card then
            _card:set_debuff(true)
            _card:juice_up()
        end
    end,

    press_play = function(self)
        if G.jokers.cards[1] then
            self.triggered = true
            self.prepped = true
        end
    end
}
