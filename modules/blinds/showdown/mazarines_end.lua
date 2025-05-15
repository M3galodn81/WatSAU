SMODS.Blind{
    key = "final_mazarines_end",

    dollars = 8,
    mult = 2,
    boss = {min = 8, max = 16, showdown = true},
    boss_colour =HEX('33c2ed'),

    atlas = 'watsau_blinds', 
    pos = { x = 0, y = 0 },

    debuff = {
    
    }, 

    press_play = function(self)
        
    end,

    calculate = function(self,blind,context)

        -- if context.destroy_card and context.cardarea == G.play then
        --     return{
        --         remove = true
        --     }
        -- end

        if context.individual and context.cardarea == G.play then

            if context.other_card:get_id() == 3 or 
            context.other_card:get_id() == 2 or 
            context.other_card:get_id() == 14 
            
            then
                if G.GAME.current_round.hands_left > 1 then
                    self.hands_sub = G.GAME.current_round.hands_left - 1
                elseif G.GAME.current_round.hands_left == 0 then
                    self.hands_sub = 0
                else 
                    self.hands_sub = 1
                end
                ease_hands_played(-self.hands_sub)

                if G.GAME.current_round.discards_left > 1 then
                    self.discards_sub = G.GAME.current_round.discards_left - 1
                elseif G.GAME.current_round.discards_left == 0 then
                    self.discards_sub = 0
                else 
                    self.discards_sub = 1
                end
                ease_hands_played(-self.discards_sub)
            end
            
        end
    end
}
