SMODS.Joker{
    key = 'inferior',
    atlas = 'watsau_jokers',                    
    pos = {x = 3, y = 0},                   
    rarity = 3,                            
    cost = 6,                              
    unlocked = true,                        
    discovered = false,                     
    blueprint_compat = true,              
    eternal_compat = true,                 
    perishable_compat = true,               
    
    config = { 
        extra = {
        }
    },

    loc_vars = function(self,info_queue,center)
    end,

    calculate = function(self,card,context)
        -- gain opposite
    end,


}
