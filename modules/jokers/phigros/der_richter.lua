SMODS.Joker{
    key = 'der_richter',
    atlas = 'watsau_jokers', 
    pos = {x = 2, y = 0}, 
    rarity = 3, 
    cost = 7, 
    unlocked = true,  
    discovered = true,
    blueprint_compat = true, 
    eternal_compat = false, 
    perishable_compat = false, 

    config = { 
    },
    loc_vars = function(self,info_queue,center)
    end,

    calculate = function(self,card,context)
        if context.joker_main then
            local nu_chip, nu_mult = G.GAME.selected_back:trigger_effect{context = 'joker_main', chips = hand_chips, mult = mult}
            mult = mod_mult(nu_mult or mult)
            hand_chips = mod_chips(nu_chip or hand_chips)
            return {
                card = card,
                message = 'Balanced',
                colour = G.C.PURPLE,
            }
            
        end

        
    end
}