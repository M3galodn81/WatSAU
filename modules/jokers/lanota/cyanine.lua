SMODS.Joker{
    key = 'cyanine',
    atlas = 'watsau_jokers',                    
    pos = {x = 3, y = 0},                   
    rarity = 3,                       
    cost = 9,                              
    unlocked = true,                        
    discovered = false,                     
    blueprint_compat = false,              
    eternal_compat = true,                 
    perishable_compat = false,               
    
    config = { 
        extra = {
            mult = 0,
            bonus = 9,
        }
    },

    loc_vars = function(self,info_queue,center)
        return {
            vars = {
                center.ability.extra.mult,
                center.ability.extra.bonus,
            }
        } 
    end,

    calculate = function(self,card,context)
        if context.individual and context.cardarea == G.play then
            for i=1, #G.play.cards do
                local rank = context.other_card:get_id()
                if rank == 9 then
                    card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.bonus 
                    return {
                        mult = card.ability.extra.mult;
                    }
                end
            end

        end
    end,


}
