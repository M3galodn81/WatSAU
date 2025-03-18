SMODS.Joker{
    key = 'jackhammer',

    atlas = 'watsau_jokers',                       --atlas' key
    pos = {x = 0, y = 1},                   --position in atlas, starts at 0, scales by the atlas' card size (px and py): {x = 1, y = 0} would mean the sprite is 71 pixels to the right
    rarity = 2,                             --rarity: 1 = Common, 2 = Uncommon, 3 = Rare, 4 = Legendary
    --soul_pos = { x = 0, y = 0 },
    cost = 5,                               --cost
    unlocked = true,                        --where it is unlocked or not: if true, 
    discovered = false,                     --whether or not it starts discovered
    blueprint_compat = false,               --can it be blueprinted/brainstormed/other
    eternal_compat = true,                  --can it be eternal
    perishable_compat = true,               --can it be perishable
    
    config = { 
        extra = {
            final_hand_count = 0,   --
            perm_hand_count = 0,     --set once
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
            if card.ability.extra.x_mult == 1 then
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
