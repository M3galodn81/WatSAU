SMODS.Joker{
    key = 'jackhammer',

    atlas = 'watsau_jokers',                     
    pos = {x = 2, y = 0},                  
    rarity = 3,
    cost = 7,                              
    unlocked = true,                       
    blueprint_compat = false,               
    eternal_compat = true,                  
    perishable_compat = true,               
    
    config = { 
        extra = {
            final_hand_count = 0,  
            perm_hand_count = 0,    
            x_mult = 1,
            is_first_round_done = false 
        }
    },

    loc_vars = function(self,info_queue,center)
        return {
            vars = {
                center.ability.extra.final_hand_count,
                center.ability.extra.perm_hand_count,
                center.ability.extra.x_mult,
                center.ability.extra.is_first_round_done,
            }
        }
    end,

    calculate = function(self,card,context)
        if context.before then
            card.ability.extra.final_hand_count = G.GAME.current_round.hands_left
            if card.ability.extra.is_first_round_done then
                print(card.ability.extra.final_hand_count .. "=" .. card.ability.extra.perm_hand_count)
                if card.ability.extra.final_hand_count < card.ability.extra.perm_hand_count then
                    card.ability.extra.x_mult = 1
                    return {
                        Xmult_mod = card.ability.extra.x_mult,
                        message = 'Miss!',
                        colour = G.C.FILTER,
                        card = card,
                    }
                end
            end
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

        if context.end_of_round and context.cardarea == G.jokers then
            if card.ability.extra.is_first_round_done == false then
                card.ability.extra.perm_hand_count = G.GAME.current_round.hands_left
                card.ability.extra.is_first_round_done = true
                return {
                    message = 'Active!',
                    colour = G.C.FILTER,
                    card = card,
                }
            else
                if card.ability.extra.perm_hand_count == card.ability.extra.final_hand_count then
                    card.ability.extra.x_mult = card.ability.extra.x_mult + 1
                    return {
                        message = 'Perfect!',
                        colour = G.C.FILTER,
                        card = card,
                    }
                elseif card.ability.extra.perm_hand_count < card.ability.extra.final_hand_count then
                    return {
                        message = 'Good!',
                        colour = G.C.FILTER,
                        card = card,
                    }
                else 
                    return {

                    }
                end
            end

            

        end
    end,

    calc_dollar_bonus = function(self,card) --for gain money at end of the round
        return 10
    end,
}
