SMODS.Joker{
    key = 'rebirth',
    atlas = 'watsau_jokers',                      
    pos = {x = 3, y = 0},                   
    rarity = 1,                             
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
        if context.individual and context.cardarea == G.play then
            
            for i=1, #G.play.cards do
                local rank = context.other_card:get_id()
                if rank <= 7 then
                    return {
                        chips = (rank*3);
                    }
                end
            end
        end
    end,


}
