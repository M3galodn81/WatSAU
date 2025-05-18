-- ENERGY SYNERGY MATRIX

SMODS.Joker{
    key = 'esm',
    atlas = 'watsau_jokers',                    
    pos = {x = 2, y = 3},                   
    rarity = 3,                             
    cost = 8,                              
    unlocked = true,                        
    discovered = false,                     
    blueprint_compat = true,              
    eternal_compat = true,                 
    perishable_compat = true,               
    
    config = { 
        extra = {
            Xmult = 3
        }
    },

    loc_vars = function(self,info_queue,center)

    end,

    calculate = function(self,card,context)
        if context.joker_main and #context.full_hand == 3 then
            

            return {
                Xmult_mod = card.ability.extra.Xmult ,

                card = card,
                message = 'Pow',
                colour = G.C.MULT,
            }

        end
    end,


}
