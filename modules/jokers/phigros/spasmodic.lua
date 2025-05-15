SMODS.Joker{
    key = 'spasmodic',
    atlas = 'watsau_jokers',                    
    pos = {x = 3, y = 0},                   
    rarity = 3,                            
    cost = 5,                              
    unlocked = true,                        
    discovered = false,                     
    blueprint_compat = true,              
    eternal_compat = true,                 
    perishable_compat = true,               
    
    config = { 

    },

    loc_vars = function(self,info_queue,center)
    end,

    calculate = function(self,card,context)
        if context.repetition and context.cardarea == G.play then
            
            if context.other_card:is_suit("Hearts") then
                    return {
                        message = localize('k_again_ex'),
                        repetitions = 1,
                    }
            end
        end
    end,


}
