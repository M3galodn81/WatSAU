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
            
            local tot = hand_chips + mult
                hand_chips = mod_chips(math.floor(tot / 2))
				mult = mod_mult(math.floor(tot / 2))
                update_hand_text({ delay = 0 }, { mult = mult, chips = hand_chips })
            return {
                card = card,
                message = 'Balanced',
                colour = G.C.PURPLE,
                
            }
            
        end

        
    end
}