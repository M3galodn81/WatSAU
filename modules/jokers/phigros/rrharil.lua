SMODS.Joker{
    key = 'rrharil',
    atlas = 'watsau_jokers',                    
    pos = {x = 6, y = 1},                   
    rarity = 3,                            
    cost = 5,                              
    unlocked = true,                        
    discovered = false,                     
    blueprint_compat = true,              
    eternal_compat = true,                 
    perishable_compat = true,               
    
    config = { 
        extra = {
            triggered = false
        }
    },

    loc_vars = function(self,info_queue,center)
    end,

    calculate = function(self,card,context)
        -- if ante 7 / 15 / 23 
        -- ante -1 / true
        
        -- if true and beat ante 7
        -- then false
    end,


}
