SMODS.Joker{
    key = 'haze',
    loc_txt = {
        name = 'Haze',
        text = {
            'If a {C:attention}poker hand played{} is a {C:attention}High Card{},',
            'creates a random {C:blue}Spectral{} Card',
            'and gives {X:mult,C:white}X#1#{} Mult, otherwise it will',
            '{C:attention}destroy{} the {C:attention}scored played hand{}',
        }
    },
    atlas = 'watsau_jokers', 
    pos = {x = 1, y = 0}, 
    rarity = 3, 
    cost = 6, 
    unlocked = true, 
    discovered = true, 
    blueprint_compat = false, 
    eternal_compat = false, 
    perishable_compat = false, 
    
    config = { 
        extra = {
            Xmult = 2,
        }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.Xmult}} 
    end,

    calculate = function(self,card,context)
        
        -- scoring
        if context.joker_main then
            if context.scoring_name == "High Card" then
                return {
                    card = card,
                    Xmult_mod = card.ability.extra.Xmult,
                    message = 'X' .. card.ability.extra.Xmult .. ' Mult',
                    colour = G.C.MULT
                }
            end
            
        end

        -- check if high card
        if context.before and next(context.poker_hands['High Card']) and not context.blueprint then
            if context.scoring_name == "High Card" then
                if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                    card = create_card('Spectral',G.consumeables, nil, nil, nil, nil, nil, '8ba')
                    card:add_to_deck()
                    G.consumeables:emplace(card)
                else
                    return {
                        message = 'No Room!',
                        colour = G.C.FILTER     
                    }
                end 
            else 
                    return {
                        message = 'Invalid!', colour = G.C.FILTER 
                    }
            end
        end

        -- destroy cards
        if context.destroy_card and context.cardarea == G.play and not context.blueprint then
            return{
                remove = true
            }
        end
    end,

}