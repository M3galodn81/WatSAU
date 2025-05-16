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
        ease_discard(self.discards_sub)
        ease_hands_played(self.hands_sub)
    end,


    set_blind = function(self)
        self.discards_sub = G.GAME.current_round.discards_left
        self.hands_sub = G.GAME.round_resets.hands

        ease_discard(self.hands_sub-self.discards_sub)
        ease_hands_played(self.discards_sub-self.hands_sub)
        
        
        
        local pain = function()
            local n = #G.jokers.cards
            for i = 1, math.floor(n / 2) do
                G.jokers.cards[i], G.jokers.cards[n - i + 1] = G.jokers.cards[n - i + 1],G.jokers.cards[i]  
            end
            G.jokers:set_ranks()
        end



        if not reset and #G.jokers.cards > 0 then
            G.jokers:unhighlight_all()
            for k, v in ipairs(G.jokers.cards) do
                v.pinned = true
                v:flip()
            end
            if #G.jokers.cards > 1 then 
                G.E_MANAGER:add_event(Event({ trigger = 'after', delay = 0.2, func = function() 
                    G.E_MANAGER:add_event(Event({ func = function() pain(); play_sound('cardSlide1', 0.85);return true end })) 
                    delay(0.15)
                    G.E_MANAGER:add_event(Event({ func = function() pain(); play_sound('cardSlide1', 1.15);return true end })) 
                    delay(0.15)
                    G.E_MANAGER:add_event(Event({ func = function() pain(); play_sound('cardSlide1', 1);return true end })) 
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
