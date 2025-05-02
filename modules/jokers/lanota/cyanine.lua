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

            if context.other_card:get_id() == 9 then
                card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.bonus 
            end
            
        end

        if context.joker_main then 
            return {
                mult = card.ability.extra.mult;
            }
        end
    end,


}
