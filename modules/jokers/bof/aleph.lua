SMODS.Joker{
    key = 'aleph',
    atlas = 'watsau_jokers',                    
    pos = {x = 0, y = 3},                   
    rarity = 3,                             
    cost = 8,                              
    unlocked = true,                        
    discovered = false,                     
    blueprint_compat = false,              
    eternal_compat = true,                 
    perishable_compat = false,               
    
    config = { 

    },

    loc_vars = function(self,info_queue,center)

    end,

    calculate = function(self,card,context)
        if context.joker_main then
            local maxi = math.max(mult,hand_chips)

            return {
                mult_mod = maxi-mult,
                chip_mod = maxi-hand_chips,

                card = card,
                message = 'Leveled',
                colour = G.C.BLUE,
            }

        end
    end,


}
