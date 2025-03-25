-- Arcaea
SMODS.Joker{
    key = 'tempestissimo',
    atlas = 'watsau_jokers',                 
    pos = {x = 3, y = 0},                  
    rarity = 3,                             
    cost = 7,                             
    unlocked = true,                        
    discovered = false,                     
    blueprint_compat = false,               
    eternal_compat = true,                  
    perishable_compat = true,               

    config = { 
        extra = {
            x_mult = 1,
            prev_hand_score = 0,
            active = false,
            streak = 1,
        }
    },

    loc_vars = function(self,info_queue,center)
        return{
            vars = {
                center.ability.extra.x_mult,
                center.ability.extra.prev_hand_score,
                center.ability.extra.streak,
            }
        }    
    end,

    calculate = function(self,card,context)
        if context.setting_blind then
        end

        if context.after and context.cardarea == G.jokers then
            
                if card.ability.extra.active then
                    if (mult*hand_chips) < card.ability.extra.prev_hand_score then
                        G.GAME.blind.chips = G.GAME.blind.chips * card.ability.extra.streak
                        G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
                        card.ability.extra.x_mult = 1
                        card.ability.extra.streak = 1 
                    else
                        card.ability.extra.x_mult = card.ability.extra.x_mult + 0.25
                        card.ability.extra.streak = card.ability.extra.streak + 1 
                    end
                end
                card.ability.extra.active = true
                card.ability.extra.prev_hand_score = (mult*hand_chips)
            
        end

        if context.joker_main then
            if card.ability.extra.x_mult > 1 then
                return {
                    Xmult_mod = card.ability.extra.x_mult,
                    message = 'X' .. card.ability.extra.x_mult .. ' Mult',
                    colour = G.C.MULT,
                    card = card,
                }
            end
        end

    end,

    set_badges = function(self, card, badges)

    end,

}