SMODS.Joker{
    key = 'myrtle',
    loc_txt = {
        name = 'Myrtle',
        text = {
            'Earn {C:money}10${}',
            'at end of round'
        }
    },
    atlas = 'watsau_jokers',                     
    pos = {x = 3, y = 0},                   
    rarity = 2,                             
    cost = 5,                             
    unlocked = true,                        
    discovered = false,                    
    blueprint_compat = false,               
    eternal_compat = true,                  
    perishable_compat = true,              
    
    config = { 
        extra = {
        }
    },

    loc_vars = function(self,info_queue,center)
    end,

    calculate = function(self,card,context)
        if context.joker_main then
            return {
                card = card,
            }
        end
    end,

    calc_dollar_bonus = function(self,card) --for gain money at end of the round
        return 10
    end,
}
