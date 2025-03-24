SMODS.Blind{
    key = "final_inverted_world",
    dollars = 8,
    mult = 2,
    boss = {min = 1, max = 16, showdown = true},
    boss_colour =HEX('405171'),

    atlas = 'watsau_blinds', 
    pos = { x = 0, y = 2 },

    debuff = {

    }, 

    disable = function(self)
        for k, v in ipairs(G.jokers.cards) do
            v.pinned = false
        end
    end,


    set_blind = function(self)
        if not reset and #G.jokers.cards > 0 then
            G.jokers:unhighlight_all()
            for k, v in ipairs(G.jokers.cards) do
                v.pinned = true
                v:flip()
            end
            if #G.jokers.cards > 1 then 
                G.E_MANAGER:add_event(Event({ trigger = 'after', delay = 0.2, func = function() 
                    G.E_MANAGER:add_event(Event({ func = function() G.jokers:reverse_order(); play_sound('cardSlide1', 0.85);return true end })) 
                    delay(0.15)
                    G.E_MANAGER:add_event(Event({ func = function() G.jokers:reverse_order(); play_sound('cardSlide1', 1.15);return true end })) 
                    delay(0.15)
                    G.E_MANAGER:add_event(Event({ func = function() G.jokers:reverse_order('aajk'); play_sound('cardSlide1', 1);return true end })) 
                    delay(0.5)
                return true end })) 
            end
        end
    end,

    modify_hand = function(self)
        local fraction = 1
        self.triggered = true
        return math.max(math.floor(hand_chips*fraction + 0.5), 0), math.max(math.floor(mult*fraction + 0.5), 1), true
    end,

}
